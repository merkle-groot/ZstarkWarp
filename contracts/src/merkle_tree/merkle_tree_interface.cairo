#[starknet::interface]
pub trait IMerkleTree<TContractState> {
    /// get current root
    fn get_current_root(self: @TContractState) -> u256;
    fn is_valid_root(self: @TContractState, root: u256) -> bool;
    fn get_level_hashes(self: @TContractState) -> Array<u256>;
}