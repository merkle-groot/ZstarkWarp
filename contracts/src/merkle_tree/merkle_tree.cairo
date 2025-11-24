use super::merkle_tree_interface::IMerkleTree;

/// Incremental merkle tree
#[starknet::component] 
pub mod MerkleTreeComponent {
    use super::IMerkleTree;
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

    #[embeddable_as(MerkleTreeImpl)]
    impl MerkleTree<TContractState, +HasComponent<TContractState>> of IMerkleTree<ComponentState<TContractState>> {
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

        fn get_level_hashes(self: @ComponentState<TContractState>) -> Array<u256> {
            let height = self.height.read();

            let mut level_hashes = ArrayTrait::new();
            let mut level = 0;
            while level < height {
                level_hashes.append(self.level_hashes.get(level).map(|ptr| ptr.read()).unwrap());
                level += 1;
            };

            level_hashes
        }
    }

    #[generate_trait]
    pub impl MerkleTreeInternalImpl<TContractState, +HasComponent<TContractState>> of MerkleTreeInternalTrait<TContractState> {
        fn _merkle_tree_constructor(ref self: ComponentState<TContractState>, height: u64) {
            assert!(height > 0, "IMT: height cannot be 0");
            let mut level = 0;
            self.height.write(height);
            // for height = 32, inner levels = 31 (0 to 30)
            while level < height {
                self.level_hashes.push(self._get_zero_root(level));
                level += 1;
            }

            let root = self._get_zero_root(height);
            self.roots.entry(END_POINTER).write(root);
            self.roots.entry(root).write(END_POINTER);
            self.current_root.write(root);

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
                    left = self.level_hashes.get(current_level).map(|ptr| ptr.read()).unwrap();
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
            assert!(level <= self.height.read(), "IMT: invalid level");

            match level {
                0 => 0x2a09a9fd93c590c26b91effbb2499f07e8f7aa12e2b4940a3aed2411cb65e11c_u256,
                1 => 0x17192e62a157556849d93b3c6be1e2bd1f3f1660d10dd9b1ffc429aa9021252c_u256,
                2 => 0x4d5abb4c7f77e3b5d8bc7a049d5ba6e79f29c5c5a9edf0a58726e653e8bc0c7_u256,
                3 => 0xea559a90beac7d48cc70dfad2fea27621b76f140446329b293a04454ccb0ec3_u256,
                4 => 0x26f52f9b31ef80782798f2ae44659dc1bedf53ac38366d4dfed74ce7d95ad1d5_u256,
                5 => 0x2fa27c5cf0185654d6dcf10df1b382324abdf62d73d395be1cc935ab470354f0_u256,
                6 => 0x1c08b39621c262350bc2ddca369a968a68750dacb269e7aa9915245eb0ec3f1_u256,
                7 => 0x2a39b3a355f8050db51818064cf8caa6f17148535edff5098625bc539fd4c038_u256,
                8 => 0x2f8474b5fdf6cfcdb206e08ca30a69d659ff1aa274f1951b9a240a41504a897_u256,
                9 => 0x255c8588a2609472e1547d5407c25f8f33917034302b4076d78cf07f60d69546_u256,
                10 => 0xb01ab3090cbdc900fab5c56945ae060c3c43471a6c421235e5c9fb7d9d08382_u256,
                11 => 0x15950947deae80046b47ad936c2be2f9a594f90c28645a61bd418a5bd145978d_u256,
                12 => 0x1df9f68ef245a86b3e8c13a0fbfcc4b59a1f264d88f9958bc976069b2def72ad_u256,
                13 => 0x215e5f11c3f914dba3add7303a389aaa6a9894c9bf427c71dcdf082249805311_u256,
                14 => 0x12df9d7eb43fe66c3d9169021a80939d04e9a3c3d514eef6a269a1a68857d8cd_u256,
                15 => 0x2733ef21e2d290bdeadf2f631399f90c04217e950009f2a3fae9f445934792af_u256,
                16 => 0x1b5de3d4aa8b60175a7985cc5a929ce294154ea35f854eb5cdf3f9e7f15661e2_u256,
                17 => 0x22d0214ec42623df8d4d65e3c67a0a08fe9c51325fe55b3376f6575a5197af19_u256,
                18 => 0x1c5f649dea85df276a312d1516d953b4909dad742b3b312ba460d0200a61d158_u256,
                19 => 0x2b80173de43b197a0bdada09d8d49c79c110b1db98dd14ef96f9432fc74620ad_u256,
                20 => 0x2d3c07bea6883428edd2d80d07cec4b911309fed96743822d6aadea06313a951_u256,
                21 => 0x44b605acb7c3bca11cc992ed30df8dd163eaa4ce5ccb6673c55a2f5c37d8e33_u256,
                22 => 0x822dfe90c9a51978400674882da60595fe66e40e6e065decf65926c11dbdbc5_u256,
                23 => 0x265eff4400e9bfdae062c4391ae64ccc0d218f9c81c98615691a31b5cfee38d7_u256,
                24 => 0x1146ced274f251bb955a515033ce7039c1935f9ad4d320f577fd1a63d003b35f_u256,
                25 => 0x2d531efb2344c3a3041c901451322dd82e465efc2c2a9cec7b60e35b49713746_u256,
                26 => 0x1c9dc4d75d7ccb25de67387968db68e58110d7b11915bd8f2ce863ef7acee1da_u256,
                27 => 0x14ebf8fce45888ef14e6bafa70f46357325cbb29c30ddb67869f2cb914a7a392_u256,
                28 => 0x248d0bf188574649b104753c86f238bd046e87a13ae22a0df56099534f22ba02_u256,
                29 => 0xf36d16643f39c14978705b01fe4c37ec28efc1e43fd6f5234f89d60c493b40f_u256,
                30 => 0x190243185a55d51d400818327087183ce71831506dde09050d868927f4c9ed00_u256,
                31 => 0xd7bb3ac70926cca19d0f86ce2bc7b3454da6aa534d72ab4c0b7c39ee9cf42dd_u256,
                32 => 0x19ec506fc767aa88d3397c7007611351a4aef78e1f2fc938460ccbd26a03f4f2_u256,
                _ => panic!("IMT: invalid level"),
            }
        }
    }
}