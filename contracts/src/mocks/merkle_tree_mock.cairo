#[starknet::contract]
pub mod MerkleTreeMock {
    use crate::merkle_tree::merkle_tree::IncrementalMerkleTreeComponent;
    use crate::mocks::merkle_tree_mock_interface::IMerkleTreeMock;
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    component!(path: IncrementalMerkleTreeComponent, storage: merkleTree, event: merkleTreeEvent);

    #[storage]
    struct Storage {
        balance: felt252,
        #[substorage(v0)]
        merkleTree: IncrementalMerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        merkleTreeEvent: IncrementalMerkleTreeComponent::Event,
    }

    // external fns of IMT
    #[abi(embed_v0)]
    impl MerkleTreeExternalImpl = IncrementalMerkleTreeComponent::IncrementalMerkleTreeImpl<ContractState>;

    // internal fns of IMT
    impl MerkleTreeInteralImpl = IncrementalMerkleTreeComponent::IncrementalMerkleTreeInternalImpl<ContractState>;

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
