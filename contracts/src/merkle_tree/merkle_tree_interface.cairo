#[starknet::interface]
pub trait IIncrementalMerkleTree<TContractState> {
    /// get current root
    fn get_current_root(self: @TContractState) -> u256;
    fn add_root(ref self: TContractState, new_root: u256);
}