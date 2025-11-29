use starknet::ContractAddress;

#[starknet::interface]
pub trait IZstarkWarpDWithdraw<TContractState> {
    fn solver_deposit(ref self: TContractState, amount: u256);
    fn solver_withdrawal(ref self: TContractState, amount: u256);
    fn request_withdraw(
        ref self: TContractState, 
        root: u256, 
        nullifierHash: u256, 
        recipient: ContractAddress, 
        proof: Span<felt252>
    ) -> Span<u256>;
    // fn get_bridge_config(self: @TContractState) -> (DepositInfo, WithdrawalInfo);
    fn get_solver_balance(self: @TContractState, solver: ContractAddress) -> u256;
}
