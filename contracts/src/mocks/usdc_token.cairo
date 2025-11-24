#[starknet::contract]
pub mod UsdcMock {
    use openzeppelin_access::ownable::OwnableComponent;
    use openzeppelin_token::erc20::{DefaultConfig, ERC20Component, ERC20HooksEmptyImpl};
    use starknet::ContractAddress;
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: ERC20Component, storage: erc20, event: ERC20Event);

    // Ownable Mixin
    #[abi(embed_v0)]
    impl OwnableMixinImpl = OwnableComponent::OwnableMixinImpl<ContractState>;
    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;

    // ERC20 Mixin
    #[abi(embed_v0)]
    impl ERC20MixinImpl = ERC20Component::ERC20MixinImpl<ContractState>;
    impl ERC20InternalImpl = ERC20Component::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        #[substorage(v0)]
        ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        erc20: ERC20Component::Storage,
        test_amount: u256
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        OwnableEvent: OwnableComponent::Event,
        #[flat]
        ERC20Event: ERC20Component::Event,
    }

    #[constructor]
    fn constructor(ref self: ContractState, owner: ContractAddress, test_amount: u256) {
        let name = "USD Coin";
        let symbol = "USDC";

        self.erc20.initializer(name, symbol);
        self.ownable.initializer(owner);
        assert!(test_amount != 0, "ERC20: test amount cannot be 0");
        self.test_amount.write(test_amount);
    }

    #[external(v0)]
    fn mint(ref self: ContractState, recipient: ContractAddress, amount: u256) {
        // Only owner can mint new tokens
        self.ownable.assert_only_owner();
        self.erc20.mint(recipient, amount);
    }

    #[external(v0)]
    fn mint_user(ref self: ContractState, recipient: ContractAddress) {
        self.erc20.mint(recipient, self.test_amount.read());
    }

    #[external(v0)]
    fn burn(ref self: ContractState, amount: u256) {
        // Any token holder can burn their own tokens
        let caller = starknet::get_caller_address();
        self.erc20.burn(caller, amount);
    }
}
