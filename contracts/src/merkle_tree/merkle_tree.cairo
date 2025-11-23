use super::merkle_tree_interface::IIncrementalMerkleTree;

/// Incremental merkle tree
#[starknet::component] 
pub mod IncrementalMerkleTreeComponent {
    use super::IIncrementalMerkleTree;
    use garaga::hashes::poseidon_hash_2_bn254;
    use garaga::definitions::u384;

    use starknet::storage::{
        Map,
        Vec, 
        VecTrait,
        MutableVecTrait, 
        StoragePathEntry,
        StoragePointerReadAccess, 
        StoragePointerWriteAccess
    };

    const height: u8 = 32;

    #[storage]
    pub struct Storage {
        roots: Map<u256, u256>,
        leaves: Map<u32, u256>,
        current_root: u256,
        current_index: u32,
        level_hashes: Vec<u256>
    }


    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
    }

    #[embeddable_as(IncrementalMerkleTreeImpl)]
    impl IncrementalMerkleTree<TContractState, +HasComponent<TContractState>> of IIncrementalMerkleTree<ComponentState<TContractState>> {
        fn get_current_root(self: @ComponentState<TContractState>) -> u256 {
            self.current_root.read()
        }

        fn add_root(ref self: ComponentState<TContractState>, new_root: u256) {
            assert!(new_root != 0, "IMT: root can't be 0");
            let current_root = self.current_root.read();
            if (current_root == 0){
                self.roots.entry(0).write(new_root);
                self.roots.entry(new_root).write(0);
                self.current_root.write(new_root);
                return;
            }

            self.roots.entry(current_root).write(new_root);
            self.roots.entry(new_root).write(0);
            self.current_root.write(new_root);
        }
    }

    #[generate_trait]
    impl InternalFunctions<TContractState, +HasComponent<TContractState>> of IncrementalMerkleTreeInternal<TContractState> {
        fn _hash(self: @ComponentState<TContractState>, left: u256, right: u256) -> u256 {
            // Convert u256 to u384
            let left_u384: u384 = left.into();
            let right_u384: u384 = right.into();
            
            // Hash and convert result back to felt252
            let result_u384 = poseidon_hash_2_bn254(left_u384, right_u384);
            result_u384.try_into().unwrap()
        }
    }
}