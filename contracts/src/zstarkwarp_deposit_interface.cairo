use starknet::ContractAddress;
#[starknet::interface]
pub trait IZstarkWarpDeposit<TContractState> {
    fn deposit(ref self: TContractState, user: ContractAddress, commitment: u256);
    fn is_exist_commitment(self: @TContractState, commitment: u256) -> bool;
    fn get_token_details(self: @TContractState) -> (ContractAddress, u256);
}
