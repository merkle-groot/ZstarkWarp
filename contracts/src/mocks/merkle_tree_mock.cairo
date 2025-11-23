#[starknet::contract]
pub mod MerkleTreeMock {
    use crate::merkle_tree::merkle_tree::IncrementalMerkleTreeComponent;
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    component!(path: IncrementalMerkleTreeComponent, storage: merkleTreeStorage, event: merkleTreeEvent);

    #[storage]
    struct Storage {
        balance: felt252,
        #[substorage(v0)]
        merkleTreeStorage: IncrementalMerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        merkleTreeEvent: IncrementalMerkleTreeComponent::Event,
    }

    #[abi(embed_v0)]
    impl OwnableImpl = IncrementalMerkleTreeComponent::IncrementalMerkleTreeImpl<ContractState>;
}
