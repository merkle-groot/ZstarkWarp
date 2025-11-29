#[starknet::contract]
pub mod ZstarkWarp {
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
    use openzeppelin_interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
    use zstarkwarp::zstarkwarp_withdraw_interface::IZstarkWarpDWithdraw;

    component!(path: MerkleTreeComponent, storage: merkleTree, event: MerkleTreeEvent);
    
    #[derive(starknet::Store, Serde, Drop)]
    pub enum Chain {
        Starknet,
        Ztarknet
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


        // withdraw
        withdrawal_amount: u256,
        solver_balance: Map<ContractAddress, u256>,
        nullifierHashes: Map<u256, bool>,
        pendingWithdrawals: Vec<WithdrawalRequest>,
        verifier: ContractAddress,
        fee: u256,

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
    fn constructor(ref self: ContractState, height: u64, token: ContractAddress, deposit_amount: u256, withdrawal_amount: u256, fee: u256, verifier: ContractAddress) {
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
        self.fee.write(fee);
        self.withdrawal_amount.write(withdrawal_amount);
        self.verifier.write(verifier);
    }

    #[abi(embed_v0)]
    impl ZstarkWarpDeposit of IZstarkWarpDeposit<ContractState> {
        fn init_sibling_info(ref self: ContractState, siblingInfo: SiblingInfo) {
            self.sibling.write(siblingInfo);
        }

        fn deposit(ref self: ContractState, user: ContractAddress, commitment: u256) {
            // Get token payment from the user
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.token.read()};
            assert!(token_dispatcher.transfer_from(user, get_contract_address(), self.deposit_amount.read()), "ZWD: not enough allowance/balance");
            
            // Cannot deposit with an existing commitment
            assert!(!self.commitments.entry(commitment).read(), "ZWD: Duplicate commitment");

            // Add the leaf to the merkle tree and update the boolean state
            let index = self.merkleTree._add_leaf(commitment);
            self.commitments.entry(commitment).write(true);

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
    }

    #[abi(embed_v0)]
    impl ZstarkWarpWithdraw of IZstarkWarpDWithdraw<ContractState> {
        fn solver_deposit(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            // Get token payment from the user
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.token.read()};
            let solver = get_caller_address();
            assert!(token_dispatcher.transfer_from(solver, get_contract_address(), amount), "ZWW: not enough allowance/balance");

            let previous_balance = self.solver_balance.entry(solver).read();
            self.solver_balance.entry(solver).write(previous_balance + amount);
        }

        fn solver_withdrawal(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.token.read() };
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
        ) -> Span<u256>{
            assert!(!self.nullifierHashes.entry(nullifierHash).read(), "ZWW: Duplicate nullifierHash");
            assert!(root != 0 && root != 1337, "ZWW: Invalid root");
            assert!(recipient != contract_address_const::<0>(), "ZWW: Invalid recipient");

            let verifier_dispatcher = IGroth16VerifierBN254Dispatcher { contract_address: self.verifier.read() };
            verifier_dispatcher.verify_groth16_proof_bn254(proof).unwrap()
        }

        // fn get_bridge_config(self: @ContractState) -> (DepositInfo, WithdrawalInfo) {
        //     (
        //         self.deposit_info.read(),
        //         WithdrawalInfo {
        //             withdrawal_contract: get_contract_address(),
        //             withdrawal_token: self.withdrawal_token.read(),
        //             withdrawal_amount: self.withdrawal_amount.read()
        //         }
        //     )
        // }

        fn get_solver_balance(self: @ContractState, solver: ContractAddress) -> u256 {
            self.solver_balance.entry(solver).read()
        }
    }
}