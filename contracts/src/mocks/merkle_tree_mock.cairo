#[starknet::contract]
pub mod MerkleTreeMock {
    use core::array;
    use starknet::ContractAddress;
    use crate::merkle_tree::merkle_tree::MerkleTreeComponent;
    use crate::mocks::merkle_tree_mock_interface::IMerkleTreeMock;
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess, Vec, VecTrait, MutableVecTrait};
    component!(path: MerkleTreeComponent, storage: merkleTree, event: merkleTreeEvent);

    #[storage]
    struct Storage {
        balance: felt252,
        #[substorage(v0)]
        merkleTree: MerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        merkleTreeEvent: MerkleTreeComponent::Event,
    }

    // external fns of IMT
    #[abi(embed_v0)]
    impl MerkleTreeExternalImpl = MerkleTreeComponent::MerkleTreeImpl<ContractState>;

    // internal fns of IMT
    impl MerkleTreeInteralImpl = MerkleTreeComponent::MerkleTreeInternalImpl<ContractState>;

    #[constructor]
    fn constructor(ref self: ContractState, height: u64) {
        self.merkleTree._merkle_tree_constructor(height);
    }

    #[abi(embed_v0)]
    impl MerkleTreeMock of IMerkleTreeMock<ContractState> {
        fn insert_leaf(ref self: ContractState, leaf: u256){
            self.merkleTree._add_leaf(leaf);
        }

        fn hash(self: @ContractState, left: u256, right: u256) -> u256{
            self.merkleTree._hash(left, right)
        }
    }

}
