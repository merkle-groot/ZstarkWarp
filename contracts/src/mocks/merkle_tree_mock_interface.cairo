#[starknet::interface]
pub trait IMerkleTreeMock<TContractState> {
    /// get current root
    fn insert_leaf(ref self: TContractState, leaf: u256);
    fn hash(self: @TContractState, left: u256, right: u256) -> u256;
}