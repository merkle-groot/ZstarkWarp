#[starknet::contract]
pub mod ZstarkWarpDeposit {
    use zstarkwarp::verifier_interface::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};
    use openzeppelin_interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
    use zstarkwarp::zstarkwarp_withdraw_interface::IZstarkWarpDWithdraw;
    use starknet::{ContractAddress, contract_address_const, get_contract_address, get_caller_address};
    use starknet::storage::{
        Map,
        Vec, 
        VecTrait,
        MutableVecTrait, 
        StoragePathEntry,
        StoragePointerReadAccess, 
        StoragePointerWriteAccess
    };

    #[derive(starknet::Store, Serde, Drop)]
    pub struct DepositInfo {
        pub deposit_contract: ContractAddress,
        pub deposit_token: ContractAddress,
        pub deposit_amount: u256,
    }

    #[derive(starknet::Store)]
    pub struct WithdrawalRequest {
        pub root: u256,
        pub nullifierHash: u256,
        pub recipient: ContractAddress,
    }

    #[storage]
    struct Storage {
        deposit_info: DepositInfo,
        withdrawal_token: ContractAddress,
        withdrawal_amount: u256,
        solver_balance: Map<ContractAddress, u256>,
        nullifierHashes: Map<u256, bool>,
        pendingWithdrawals: Vec<WithdrawalRequest>,
        verifier: ContractAddress
    }

    #[constructor]
    fn constructor(
        ref self: ContractState, 
        deposit_info: DepositInfo, 
        withdrawal_token: ContractAddress, 
        withdrawal_amount: u256, 
        fee: u256,
        verifier: ContractAddress,
    ) {
        assert!(
            deposit_info.deposit_contract != contract_address_const::<0>() &&
            deposit_info.deposit_token != contract_address_const::<0>() &&
            deposit_info.deposit_amount != 0_u256 &&
            deposit_info.deposit_amount != withdrawal_amount &&
            deposit_info.deposit_token != withdrawal_token,
            "ZWW: Invalid deposit struct"
        );

        assert!(
            withdrawal_token != contract_address_const::<0>() &&
            withdrawal_amount != 0_u256,
            "ZWW: Invalid withdrawal struct"
        );

        assert!(
            verifier != contract_address_const::<0>(),
            "ZWW: Invalid verifier contract"
        )
        self.deposit_info.write(deposit_info);
        self.withdrawal_token.write(withdrawal_token);
        self.withdrawal_amount.write(withdrawal_amount);
        self.verifier.write(verifier);
    }

    #[abi(embed_v0)]
    impl ZstarkWarpWithdraw of IZstarkWarpDWithdraw<ContractState> {
        fn solver_deposit(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            // Get token payment from the user
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.withdrawal_token.read()};
            let solver = get_caller_address();
            assert!(token_dispatcher.transfer_from(solver, get_contract_address(), amount), "ZWW: not enough allowance/balance");

            let previous_balance = self.solver_balance.entry(solver).read();
            self.solver_balance.entry(solver).write(previous_balance + amount);
        }

        fn solver_withdrawal(ref self: ContractState, amount: u256) {
            assert!(amount != 0, "ZWW: Invalid amount");
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.withdrawal_token.read() };
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
    }
}