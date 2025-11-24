#[starknet::contract]
pub mod ZstarkWarpDeposit {
    use crate::merkle_tree::merkle_tree::MerkleTreeComponent;
    use crate::zstarkwarp_deposit_interface::IZstarkWarpDeposit;
    use openzeppelin_interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
    use starknet::ContractAddress;
    use starknet::get_contract_address;
    use starknet::storage::{
        Map,
        StoragePointerReadAccess, 
        StoragePointerWriteAccess,
        StoragePathEntry
    };

    component!(path: MerkleTreeComponent, storage: merkleTree, event: MerkleTreeEvent);
    
    #[derive(Drop, starknet::Event)]
    pub struct DepositEvent {
        pub commitment: u256,
        pub index: u64
    }

    #[storage]
    struct Storage {
        balance: felt252,
        #[substorage(v0)]
        merkleTree: MerkleTreeComponent::Storage,
        token_amount: u256,
        token: ContractAddress,
        commitments: Map<u256, bool>,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {
        MerkleTreeEvent: MerkleTreeComponent::Event,
        DepositEvent: DepositEvent,
    }

    // external fns of IMT
    #[abi(embed_v0)]
    impl MerkleTreeExternalImpl = MerkleTreeComponent::MerkleTreeImpl<ContractState>;

    // internal fns of IMT
    impl MerkleTreeInteralImpl = MerkleTreeComponent::MerkleTreeInternalImpl<ContractState>;

    #[constructor]
    fn constructor(ref self: ContractState, height: u64, token: ContractAddress, token_amount: u256) {
        self.merkleTree._merkle_tree_constructor(height);
        // assert!(token != ContractAddress(), "ZWD: Invalid address");
        assert!(token_amount != 0, "ZWD: Invalid amount");
        self.token.write(token);
        self.token_amount.write(token_amount);
    }

    #[abi(embed_v0)]
    impl ZstarkWarpDeposit of IZstarkWarpDeposit<ContractState> {
        fn deposit(ref self: ContractState, user: ContractAddress, commitment: u256) {
            // Get token payment from the user
            let mut token_dispatcher = IERC20Dispatcher { contract_address: self.token.read()};
            assert!(token_dispatcher.transfer_from(user, get_contract_address(), self.token_amount.read()), "ZWD: not enough allowance/balance");
            
            // Cannot deposit with an existing commitment
            assert!(!self.commitments.entry(commitment).read(), "ZWD: Duplicate commitment");

            // Add the leaf to the merkle tree and update the boolean state
            let index = self.merkleTree._add_leaf(commitment);
            self.commitments.entry(commitment).write(true);

            self.emit(DepositEvent {
                commitment,
                index
            });
        }

        fn get_token_details(self: @ContractState) -> (ContractAddress, u256) {
            (self.token.read(), self.token_amount.read())
        }

        fn is_exist_commitment(self: @ContractState, commitment: u256) -> bool {
            self.commitments.entry(commitment).read()
        }
    }
}