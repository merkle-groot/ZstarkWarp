#[starknet::interface]
pub trait IMerkleTreeMock<TContractState> {
    /// Insert a leaf into the merkle tree
    fn insert_leaf(ref self: TContractState, leaf: u256);
    /// Hash two nodes together
    fn hash(self: @TContractState, left: u256, right: u256) -> u256;
}