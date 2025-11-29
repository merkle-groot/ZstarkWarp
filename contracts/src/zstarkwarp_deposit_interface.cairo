use starknet::ContractAddress;
use zstarkwarp::zstarkwarp::ZstarkWarp::SiblingInfo;

#[starknet::interface]
pub trait IZstarkWarpDeposit<TContractState> {
    fn init_sibling_info(ref self: TContractState, siblingInfo: SiblingInfo);
    fn deposit(ref self: TContractState, user: ContractAddress, commitment: u256);
    fn is_exist_commitment(self: @TContractState, commitment: u256) -> bool;
    fn get_token_details(self: @TContractState) -> (ContractAddress, u256);
}
