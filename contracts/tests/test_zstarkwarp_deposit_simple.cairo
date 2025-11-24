use starknet::{contract_address_const, ContractAddress, SyscallResultTrait};
use snforge_std::{ContractClassTrait, DeclareResultTrait, declare, spy_events, EventSpyAssertionsTrait, start_cheat_caller_address, stop_cheat_caller_address};
use snforge_std::Event;
use zstarkwarp::zstarkwarp_deposit_interface::{IZstarkWarpDepositDispatcher, IZstarkWarpDepositDispatcherTrait};
use zstarkwarp::zstarkwarp_deposit_interface::{IZstarkWarpDepositSafeDispatcher, IZstarkWarpDepositSafeDispatcherTrait};
use openzeppelin_interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
use zstarkwarp::mocks::usdc_token_interface::{IUSDCTokenDispatcher, IUSDCTokenDispatcherTrait};
use zstarkwarp::merkle_tree::merkle_tree_interface::{IMerkleTreeDispatcher, IMerkleTreeDispatcherTrait};

// use snforge_std::{start_prank, stop_prank, CheatTarget};

fn get_owner_address() -> ContractAddress {
    contract_address_const::<1000>()
}

fn get_alice_address() -> ContractAddress {
    contract_address_const::<1001>()
}

fn get_bob_address() -> ContractAddress {
    contract_address_const::<1002>()
}

fn deploy_zstarkWarp_contract(height: u64, usdc_address: ContractAddress, usdc_amount: u256) -> ContractAddress {
    let mut calldata = ArrayTrait::new();
    height.serialize(ref calldata);
    usdc_address.serialize(ref calldata);
    usdc_amount.serialize(ref calldata);

    let contract = declare("ZstarkWarpDeposit").unwrap_syscall().contract_class();
    let (contract_address, _) = contract.deploy(@calldata).unwrap_syscall();
    contract_address
}

fn deploy_mock_usdc_contract(owner: ContractAddress, amount: u256) -> ContractAddress {
    let mut calldata = ArrayTrait::new();
    owner.serialize(ref calldata);
    amount.serialize(ref calldata);
    let contract = declare("UsdcMock").unwrap_syscall().contract_class();
    let (contract_address, _) = contract.deploy(@calldata).unwrap_syscall();
    contract_address
}


fn approve_usdc(user: ContractAddress, zstarkwarp_address: ContractAddress, usdc_address: ContractAddress, amount: u256){
    // Start cheating
    start_cheat_caller_address(usdc_address, user);
    let usdc_dispatcher = IUSDCTokenDispatcher{ contract_address: usdc_address };
    usdc_dispatcher.approve(zstarkwarp_address, amount);
    stop_cheat_caller_address(usdc_address);
}

fn mint_usdc(user: ContractAddress, usdc_address: ContractAddress) {
    let usdc_dispatcher = IUSDCTokenDispatcher{ contract_address: usdc_address };
    usdc_dispatcher.mint_user(user);
}

#[test]
fn test_constructor_deployment() {
    // Deploy ZstarkWarpDeposit contract with minimal setup
    let height = 32_u64;
    let usdc_address: ContractAddress = 0x1.try_into().unwrap();
    let usdc_amount = 100000000000000000000_u256; // 100 USDC with 18 decimals

    let contract_address = deploy_zstarkWarp_contract(height, usdc_address, usdc_amount);
    let dispatcher = IZstarkWarpDepositDispatcher { contract_address };

    // Test that contract was deployed successfully
    let zero_address: ContractAddress = 0.try_into().unwrap();
    assert!(contract_address != zero_address);
    assert!(dispatcher.get_token_details() == (usdc_address, usdc_amount), "Invalid token details");
}

#[test]
fn test_zstarkwarp_deposit_interface_methods() {
    // Deploy ZstarkWarpDeposit contract
    let height = 32_u64;
    let usdc_amount = 1000000000000000000_u256; // 100 USDC with 18 decimals

    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_amount);
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };

    let zstarkwarp_address = deploy_zstarkWarp_contract(height, usdc_address, usdc_amount);
    let zstarkwarp_dispatcher = IZstarkWarpDepositDispatcher { contract_address: zstarkwarp_address };
    let merkle_tree_dispatcher = IMerkleTreeDispatcher {contract_address: zstarkwarp_address };

    // mint usdc tokens to alice
    let alice = get_alice_address();
    mint_usdc(alice, usdc_address);
    assert!(usdc_dispatcher.balance_of(alice) == usdc_amount, "Not enough usdc minted");
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);
    assert!(usdc_dispatcher.allowance(alice, zstarkwarp_address) == usdc_amount, "approval not enough");

    // deposit in the contract
    let commitment = 0x123_u256;
    let root_before = merkle_tree_dispatcher.get_current_root();
    zstarkwarp_dispatcher.deposit(alice, commitment);

    // Check if the commitment is added
    let root_after = merkle_tree_dispatcher.get_current_root();
    assert!(zstarkwarp_dispatcher.is_exist_commitment(commitment));
    assert!(root_before != root_after, "root has not changed");
}

#[test]
#[feature("safe_dispatcher")]
fn test_deposit_failures() {
    let height = 32_u64;
    let usdc_amount = 1000000000000000000_u256; // 100 USDC with 18 decimals

    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_amount);
    let zstarkwarp_address = deploy_zstarkWarp_contract(height, usdc_address, usdc_amount);

    // Use Safe dispatcher for testing failures
    let safe_dispatcher = IZstarkWarpDepositSafeDispatcher {
        contract_address: zstarkwarp_address
    };

    let alice = get_alice_address();

    // Test 1: Deposit without approval should fail
    let commitment = 0x123_u256;
    mint_usdc(alice, usdc_address);
    let result = safe_dispatcher.deposit(alice, commitment);

    assert!(result.is_err(), "Expected deposit to fail without approval");
    match result {
        Result::Ok(_) => panic!("Should have failed"),
        Result::Err(_) => {} // Expected to fail
    }

    // Test 2: Deposit without balance should fail
    // Burn the tokens so alice has no balance
    start_cheat_caller_address(usdc_address, alice);
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    usdc_dispatcher.burn(usdc_amount);
    stop_cheat_caller_address(usdc_address);

    let result = safe_dispatcher.deposit(alice, commitment);
    assert!(result.is_err(), "Expected deposit to fail without balance");

    // Test 3: Mint tokens and do first successful deposit
    mint_usdc(alice, usdc_address);
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);

    // This should work
    let dispatcher = IZstarkWarpDepositDispatcher { contract_address: zstarkwarp_address };
    dispatcher.deposit(alice, commitment);
    assert!(dispatcher.is_exist_commitment(commitment));

    // Test 4: Duplicate commitment should fail
    mint_usdc(alice, usdc_address);
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);

    let result = safe_dispatcher.deposit(alice, commitment);
    assert!(result.is_err(), "Expected duplicate commitment to fail");
    match result {
        Result::Ok(_) => panic!("Duplicate commitment should have failed"),
        Result::Err(_) => {} // Expected to fail
    }

    // Test 5: Verify commitment 0 and 1337 should fail (validation in _add_leaf)
    let zero_commitment = 0_u256;
    let commitment_1337 = 1337_u256;

    // Test commitment 0 should fail
    mint_usdc(alice, usdc_address);
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);
    let result = safe_dispatcher.deposit(alice, zero_commitment);
    assert!(result.is_err(), "Expected commitment 0 to fail");

    // Test commitment 1337 should fail
    mint_usdc(alice, usdc_address);
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);
    let result = safe_dispatcher.deposit(alice, commitment_1337);
    assert!(result.is_err(), "Expected commitment 1337 to fail");
}

#[test]
fn test_deposit_event_emission() {
    let height = 32_u64;
    let usdc_amount = 1000000000000000000_u256; // 100 USDC with 18 decimals

    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_amount);
    let zstarkwarp_address = deploy_zstarkWarp_contract(height, usdc_address, usdc_amount);
    let zstarkwarp_dispatcher = IZstarkWarpDepositDispatcher { contract_address: zstarkwarp_address };

    // Set up event spy to capture all events
    let mut spy = spy_events();

    // Get alice and give her tokens
    let alice = get_alice_address();
    mint_usdc(alice, usdc_address);
    approve_usdc(alice, zstarkwarp_address, usdc_address, usdc_amount);

    // Make a deposit - this should emit a DepositEvent
    let commitment = 0x99999_u256;
    zstarkwarp_dispatcher.deposit(alice, commitment);

    // Check that DepositEvent was emitted
    // The DepositEvent has keys: ["DepositEvent"] and data: [commitment, index]
    let mut keys = array![];
    keys.append(selector!("DepositEvent")); // Event name

    let mut data = array![];
    data.append(commitment.low.into()); // Commitment low part as felt252
    data.append(commitment.high.into()); // Commitment high part as felt252
    data.append(0.into()); // Index 0 as felt252

    let expected_event = Event { keys, data };

    spy.assert_emitted(@array![(zstarkwarp_address, expected_event)]);

    // Verify the deposit worked
    assert!(zstarkwarp_dispatcher.is_exist_commitment(commitment), "Commitment should exist after deposit");
}
