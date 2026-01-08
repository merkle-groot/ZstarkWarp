use starknet::ContractAddress;
use zstarkwarp::zstarkwarp::ZstarkWarp::{WithdrawalRequest, WithdrawalInfo};

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
    );
    // fn get_bridge_config(self: @TContractState) -> (DepositInfo, WithdrawalInfo);
    fn get_solver_balance(self: @TContractState, solver: ContractAddress) -> u256;
    fn approve_withdraw(
        ref self: TContractState, 
        index: u64
    ); 
    fn get_withdrawal_info(self: @TContractState) -> WithdrawalInfo;
    fn get_request(self: @TContractState, index: u64) -> WithdrawalRequest;
    fn get_request_len(self: @TContractState) -> u64;
}
