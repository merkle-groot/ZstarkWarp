#[starknet::contract]
pub mod ZstarkWarp {
    use core::num::traits::Pow;
    use starknet::get_block_info;
    use crate::merkle_tree::merkle_tree::MerkleTreeComponent;
    use crate::zstarkwarp_deposit_interface::IZstarkWarpDeposit;
    use starknet::{
        ContractAddress,
        contract_address_const,
        get_caller_address
    };
    use starknet::get_contract_address;
    use starknet::storage::{
        Map,
        Vec, 
        VecTrait,
        MutableVecTrait, 
        StoragePointerReadAccess, 
        StoragePointerWriteAccess,
        StoragePathEntry
    };
    use zstarkwarp::verifier_interface::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};
    use openzeppelin_interfaces::erc20::{ERC20ABIDispatcher, ERC20ABIDispatcherTrait};
    use zstarkwarp::zstarkwarp_withdraw_interface::IZstarkWarpDWithdraw;

    component!(path: MerkleTreeComponent, storage: merkleTree, event: MerkleTreeEvent);
    
    #[derive(starknet::Store, Serde, Drop)]
    #[allow(starknet::store_no_default_variant)]
    pub enum Chain {
        Starknet,
        Ztarknet
    }

    #[derive(starknet::Store, Serde, Drop, PartialEq)]
    #[allow(starknet::store_no_default_variant)]
    pub enum Status {
        Pending,
        Processed
    }

    #[derive(Drop, starknet::Event)]
    pub struct DepositEvent {
        pub commitment: u256,
        pub index: u64
    }

    #[derive(starknet::Store, Serde, Drop)]
    pub struct SiblingInfo {
        pub sibling_chain: Chain,
        pub sibling_contract: ContractAddress,
        pub sibling_token: ContractAddress,
        pub sibling_deposit_amount: u256,
    }

    #[derive(starknet::Store, Serde, Drop)]
    pub struct WithdrawalRequest {
        pub root: u256,
        pub nullifierHash: u256,
        pub recipient: ContractAddress,
        pub status: Status,
    }

    #[derive(starknet::Store, Debug, Serde, Drop, PartialEq)]
    pub struct WithdrawalInfo {
        pub user_withdrawal_amount: u256,
        pub solver_withdrawal_amount: u256,
        pub fee: u256,
        pub cooloff_time: u64,
        pub verifier: ContractAddress,
    }

    #[storage]
    struct Storage {
        // common 
        #[substorage(v0)]
        merkleTree: MerkleTreeComponent::Storage,
        token: ContractAddress,

        // deposit
        deposit_amount: u256,
        commitments: Map<u256, bool>,
        commitment_to_index: Map<u256, u64>,

        // withdraw
        fee: u256,
        solver_withdrawal_amount: u256,
        user_withdrawal_amount: u256,
        solver_balance: Map<ContractAddress, u256>,
        nullifierHashes: Map<u256, bool>,
        pendingWithdrawals: Vec<WithdrawalRequest>,
        pendingPayout: Vec<(ContractAddress, u64)>,
        verifier: ContractAddress,
        cooloff_time: u64,
        
        // sibling contract
        sibling: SiblingInfo
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        MerkleTreeEvent: MerkleTreeComponent::Event,
        DepositEvent: DepositEvent,
    }

    // external fns of IMT
    #[abi(embed_v0)]
    impl MerkleTreeExternalImpl = MerkleTreeComponent::MerkleTreeImpl<ContractState>;

    // internal fns of IMT
    impl MerkleTreeInteralImpl = MerkleTreeComponent::MerkleTreeInternalImpl<ContractState>;

    #[constructor]
    fn constructor(
        ref self: ContractState, 
        height: u64, 
        token: ContractAddress, 
        deposit_amount: u256, 
        withdrawal_amount: u256, 
        fee: u256, 
        verifier: ContractAddress, 
        cooloff_time: u64
    ) {
        self.merkleTree._merkle_tree_constructor(height);
        // assert!(token != ContractAddress(), "ZWD: Invalid address");
        assert!(deposit_amount != 0, "ZWD: Invalid amount");

        assert!(
            withdrawal_amount != 0_u256,
            "ZWW: Invalid withdrawal struct"
        );

        assert!(
            verifier != contract_address_const::<0>(),
            "ZWW: Invalid verifier contract"
        )
        self.token.write(token);
        self.deposit_amount.write(deposit_amount);
        let decimals: u32 = ERC20ABIDispatcher { 
            contract_address: token 
        }.decimals().into();

        let normalizer: u256 = Pow::pow(10_u256, decimals);

        let calculated_fee = (withdrawal_amount * fee.into()) / normalizer;
        self.fee.write(calculated_fee);

        let user_withdrawal_amount = withdrawal_amount - calculated_fee;
        self.solver_withdrawal_amount.write(withdrawal_amount);
        self.user_withdrawal_amount.write(user_withdrawal_amount);
        self.verifier.write(verifier);
        self.cooloff_time.write(cooloff_time);
    }

    #[abi(embed_v0)]
    impl ZstarkWarpDeposit of IZstarkWarpDeposit<ContractState> {
        fn init_sibling_info(ref self: ContractState, siblingInfo: SiblingInfo) {
            self.sibling.write(siblingInfo);
        }

        fn deposit(ref self: ContractState, user: ContractAddress, commitment: u256) {
            // Get token payment from the user
            let mut token_dispatcher = ERC20ABIDispatcher { contract_address: self.token.read()};
            assert!(token_dispatcher.transfer_from(user, get_contract_address(), self.deposit_amount.read()), "ZWD: not enough allowance/balance");
            
            // Cannot deposit with an existing commitment
            assert!(!self.commitments.entry(commitment).read(), "ZWD: Duplicate commitment");

            // Add the leaf to the merkle tree and update the boolean state
            let index = self.merkleTree._add_leaf(commitment);
            self.commitments.entry(commitment).write(true);

            self.commitment_to_index.entry(commitment).write(index);

            self.emit(DepositEvent {
                commitment,
                index
            });
        }

        fn get_token_details(self: @ContractState) -> (ContractAddress, u256) {
            (self.token.read(), self.deposit_amount.read())
        }

        fn is_exist_commitment(self: @ContractState, commitment: u256) -> bool {
            self.commitments.entry(commitment).read()
        }

        fn get_commitment_index(self: @ContractState, commitment: u256) -> u64 {
            assert!(self.commitments.entry(commitment).read(), "ZWD: commitment doesn't exist");
            self.commitment_to_index.entry(commitment).read()
        }
    }

    #[abi(embed_v0)]
    impl ZstarkWarpWithdraw of IZstarkWarpDWithdraw<ContractState> {
        fn solver_deposit(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            // Get token payment from the user
            let mut token_dispatcher = ERC20ABIDispatcher { contract_address: self.token.read()};
            let solver = get_caller_address();
            assert!(token_dispatcher.transfer_from(solver, get_contract_address(), amount), "ZWW: not enough allowance/balance");

            let previous_balance = self.solver_balance.entry(solver).read();
            self.solver_balance.entry(solver).write(previous_balance + amount);
        }

        fn solver_withdrawal(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            let mut token_dispatcher = ERC20ABIDispatcher { contract_address: self.token.read() };
            let solver = get_caller_address();

            let previous_balance = self.solver_balance.entry(solver).read();
            self.solver_balance.entry(solver).write(previous_balance - amount);
            assert!(token_dispatcher.transfer(solver, amount), "ZWW: balance deficit");
        }

        fn request_withdraw(
            ref self: ContractState, 
            root: u256, 
            nullifierHash: u256, 
            recipient: ContractAddress, 
            proof: Span<felt252>
        ) {
            assert!(!self.nullifierHashes.entry(nullifierHash).read(), "ZWW: Duplicate nullifierHash");
            assert!(root != 0 && root != 1337, "ZWW: Invalid root");
            assert!(recipient != contract_address_const::<0>(), "ZWW: Invalid recipient");

            let verifier_dispatcher = IGroth16VerifierBN254Dispatcher { contract_address: self.verifier.read() };
            verifier_dispatcher.verify_groth16_proof_bn254(proof).unwrap();

            self.nullifierHashes.entry(nullifierHash).write(true);

            // ToDo: validate public inputs
            self.pendingWithdrawals.push(WithdrawalRequest{
                root,
                nullifierHash,
                recipient,
                status: Status::Pending
            });
        }

        fn approve_withdraw(
            ref self: ContractState, 
            index: u64
        ) {
            let withdraw_request = self.pendingWithdrawals.get(index).map(|ptr| ptr.read()).unwrap();
            assert!(withdraw_request.status != Status::Processed, "ZWW: Request is already processed");
            
            let solver = get_caller_address();
            let solver_balance = self.get_solver_balance(solver);
            let amount = self.user_withdrawal_amount.read();
            assert!(solver_balance >= self.user_withdrawal_amount.read(), "ZWW: Insuffient solver balance");

            let mut token_dispatcher = ERC20ABIDispatcher { contract_address: self.token.read()};
            assert!(token_dispatcher.transfer(withdraw_request.recipient, amount), "ZWW: Defecit!");

            // Reduce solver's balance
            let solver_balance = self.get_solver_balance(solver);
            self.solver_balance.entry(solver).write(solver_balance - amount);

            self.pendingWithdrawals[index].write(WithdrawalRequest{
                root: withdraw_request.root,
                nullifierHash: withdraw_request.nullifierHash,
                recipient: withdraw_request.recipient,
                status: Status::Processed
            });

            let block_info = get_block_info();
            self.pendingPayout.push(
                (solver, block_info.block_timestamp + self.cooloff_time.read())
            );
        }

        fn get_withdrawal_info(self: @ContractState) -> WithdrawalInfo {
            WithdrawalInfo {
                user_withdrawal_amount: self.user_withdrawal_amount.read(),
                solver_withdrawal_amount: self.solver_withdrawal_amount.read(),
                fee: self.fee.read(),
                cooloff_time: self.cooloff_time.read(),
                verifier: self.verifier.read()
            }
        }

        fn get_request(self: @ContractState, index: u64) -> WithdrawalRequest {
            self.pendingWithdrawals.get(index).map(|ptr| ptr.read()).unwrap()
        }

        fn get_solver_balance(self: @ContractState, solver: ContractAddress) -> u256 {
            self.solver_balance.entry(solver).read()
        }
    }
}