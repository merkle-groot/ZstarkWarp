use super::merkle_tree_interface::IIncrementalMerkleTree;

/// Incremental merkle tree
#[starknet::component] 
pub mod IncrementalMerkleTreeComponent {
    use super::IIncrementalMerkleTree;
    use garaga::hashes::poseidon_hash_2_bn254;
    use garaga::definitions::u384;
    // use core::num::traits::Pow;

    use starknet::storage::{
        Map,
        Vec, 
        VecTrait,
        MutableVecTrait, 
        StoragePathEntry,
        StoragePointerReadAccess, 
        StoragePointerWriteAccess
    };

    const END_POINTER: u256 = 1337;

    // u32 works for all the cases here; u64 used for cleaner indexing
    #[storage]
    pub struct Storage {
        roots: Map<u256, u256>,
        leaves: Map<u64, u256>,
        current_root: u256,
        current_index: u64,
        level_hashes: Vec<u256>,
        height: u64
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

        fn is_valid_root(self: @ComponentState<TContractState>, root: u256) -> bool{
            self.roots.entry(root).read() != 0_u256
        }
    }

    #[generate_trait]
    pub impl IncrementalMerkleTreeInternalImpl<TContractState, +HasComponent<TContractState>> of IncrementalMerkleTreeInternalTrait<TContractState> {
        fn _merkle_tree_constructor(ref self: ComponentState<TContractState>, height: u64) {
            let level = 0;
            self.height.write(height);
            while level < height {
                self.level_hashes.push(self._get_zero_root(level));
            }

            let root = self._get_zero_root(height);
            self.roots.entry(END_POINTER).write(root);
            self.roots.entry(root).write(END_POINTER);

        }

        fn _hash(self: @ComponentState<TContractState>, left: u256, right: u256) -> u256 {
            // Convert u256 to u384
            let left_u384: u384 = left.into();
            let right_u384: u384 = right.into();
            
            // Hash and convert result back to felt252
            let result_u384 = poseidon_hash_2_bn254(left_u384, right_u384);
            result_u384.try_into().unwrap()
        }

        fn _add_leaf(ref self: ComponentState<TContractState>, leaf: u256) {
            // add the leaf to the merkle tree
            let mut index = self.current_index.read();
            let height: u64 = self.height.read();
            // TODO: Add a limit
            // assert!(index < 2_u.pow(height), "IMT: crossed max leaves");
            self.leaves.entry(index).write(leaf);
            self.current_index.write(index + 1);

            // update the levelhashes and the root
            let mut current_level = 0;
            let mut current_hash= leaf;
            let mut left = 0_u256;
            let mut right = 0_u256;
            
            while(current_level < height) {
                if index % 2 == 0 {
                    // update the level hash
                    self.level_hashes[current_level].write(current_hash);
                    left = current_hash;
                    right = self._get_zero_root(current_level);
                } else {
                    left = self.level_hashes.get(index).map(|ptr| ptr.read()).unwrap();
                    right = current_hash;
                }

                current_hash = self._hash(left, right);
                index = index / 2;
                current_level += 1;
            };

            let previous_root = self.current_root.read();
            self.current_root.write(current_hash);
            self.roots.entry(previous_root).write(current_hash);
            self.roots.entry(current_hash).write(END_POINTER);
        }

        fn _get_zero_root(self: @ComponentState<TContractState>, level: u64) -> u256 {
            assert!(level < 32, "IMT: invalid level");

            match level {
                0 => 0x2fe54c60d3acabf3343a35b6eba15db4821b340f76e741e2249685ed4899af6c_u256,
                1 => 0x256a6135777eee2fd26f54b8b7037a25439d5235caee224154186d2b8a52e31d_u256,
                2 => 0x1151949895e82ab19924de92c40a3d6f7bcb60d92b00504b8199613683f0c200_u256,
                3 => 0x20121ee811489ff8d61f09fb89e313f14959a0f28bb428a20dba6b0b068b3bdb_u256,
                4 => 0x0a89ca6ffa14cc462cfedb842c30ed221a50a3d6bf022a6a57dc82ab24c157c9_u256,
                5 => 0x24ca05c2b5cd42e890d6be94c68d0689f4f21c9cec9c0f13fe41d566dfb54959_u256,
                6 => 0x1ccb97c932565a92c60156bdba2d08f3bf1377464e025cee765679e604a7315c_u256,
                7 => 0x19156fbd7d1a8bf5cba8909367de1b624534ebab4f0f79e003bccdd1b182bdb4_u256,
                8 => 0x261af8c1f0912e465744641409f622d466c3920ac6e5ff37e36604cb11dfff80_u256,
                9 => 0x0058459724ff6ca5a1652fcbc3e82b93895cf08e975b19beab3f54c217d1c007_u256,
                10 => 0x1f04ef20dee48d39984d8eabe768a70eafa6310ad20849d4573c3c40c2ad1e30_u256,
                11 => 0x1bea3dec5dab51567ce7e200a30f7ba6d4276aeaa53e2686f962a46c66d511e5_u256,
                12 => 0x0ee0f941e2da4b9e31c3ca97a40d8fa9ce68d97c084177071b3cb46cd3372f0f_u256,
                13 => 0x1ca9503e8935884501bbaf20be14eb4c46b89772c97b96e3b2ebf3a36a948bbd_u256,
                14 => 0x133a80e30697cd55d8f7d4b0965b7be24057ba5dc3da898ee2187232446cb108_u256,
                15 => 0x13e6d8fc88839ed76e182c2a779af5b2c0da9dd18c90427a644f7e148a6253b6_u256,
                16 => 0x1eb16b057a477f4bc8f572ea6bee39561098f78f15bfb3699dcbb7bd8db61854_u256,
                17 => 0x0da2cb16a1ceaabf1c16b838f7a9e3f2a3a3088d9e0a6debaa748114620696ea_u256,
                18 => 0x24a3b3d822420b14b5d8cb6c28a574f01e98ea9e940551d2ebd75cee12649f9d_u256,
                19 => 0x198622acbd783d1b0d9064105b1fc8e4d8889de95c4c519b3f635809fe6afc05_u256,
                20 => 0x29d7ed391256ccc3ea596c86e933b89ff339d25ea8ddced975ae2fe30b5296d4_u256,
                21 => 0x19be59f2f0413ce78c0c3703a3a5451b1d7f39629fa33abd11548a76065b2967_u256,
                22 => 0x1ff3f61797e538b70e619310d33f2a063e7eb59104e112e95738da1254dc3453_u256,
                23 => 0x10c16ae9959cf8358980d9dd9616e48228737310a10e2b6b731c1a548f036c48_u256,
                24 => 0x0ba433a63174a90ac20992e75e3095496812b652685b5e1a2eae0b1bf4e8fcd1_u256,
                25 => 0x019ddb9df2bc98d987d0dfeca9d2b643deafab8f7036562e627c3667266a044c_u256,
                26 => 0x2d3c88b23175c5a5565db928414c66d1912b11acf974b2e644caaac04739ce99_u256,
                27 => 0x2eab55f6ae4e66e32c5189eed5c470840863445760f5ed7e7b69b2a62600f354_u256,
                28 => 0x002df37a2642621802383cf952bf4dd1f32e05433beeb1fd41031fb7eace979d_u256,
                29 => 0x104aeb41435db66c3e62feccc1d6f5d98d0a0ed75d1374db457cf462e3a1f427_u256,
                30 => 0x1f3c6fd858e9a7d4b0d1f38e256a09d81d5a5e3c963987e2d4b814cfab7c6ebb_u256,
                31 => 0x2c7a07d20dff79d01fecedc1134284a8d08436606c93693b67e333f671bf69cc_u256,
                _ => panic!("IMT: invalid level"),
            }
        }
    }
}