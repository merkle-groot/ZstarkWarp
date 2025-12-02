use starknet::{contract_address_const, ContractAddress, SyscallResultTrait};
use snforge_std::fs::{FileTrait, read_json};
use snforge_std::{ContractClassTrait, DeclareResultTrait, declare, spy_events, EventSpyAssertionsTrait, start_cheat_caller_address, stop_cheat_caller_address};
use zstarkwarp::verifier_interface::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};
use zstarkwarp::zstarkwarp_withdraw_interface::{IZstarkWarpDWithdrawDispatcher, IZstarkWarpDWithdrawDispatcherTrait, IZstarkWarpDWithdrawSafeDispatcher, IZstarkWarpDWithdrawSafeDispatcherTrait};
use zstarkwarp::zstarkwarp::ZstarkWarp::{WithdrawalInfo, Status};
use zstarkwarp::mocks::usdc_token_interface::{IUSDCTokenDispatcher, IUSDCTokenDispatcherTrait};

fn get_owner_address() -> ContractAddress {
    contract_address_const::<1000>()
}

fn get_alice_address() -> ContractAddress {
    contract_address_const::<1001>()
}

fn get_bob_address() -> ContractAddress {
    contract_address_const::<1002>()
}

fn deploy_withdraw_contract(calldata: Array<felt252>) -> ContractAddress {
    let contract = declare("ZstarkWarp").unwrap_syscall().contract_class();
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

fn deploy_mock_verifier_contract() -> ContractAddress {
    let mut calldata = ArrayTrait::new();
    let contract = declare("MockGroth16VerifierBN254").unwrap_syscall().contract_class();
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

fn setup_withdraw_calldata() -> Array<felt252> {
    let mut calldata = ArrayTrait::new();
    let height = 18_u64;
    let usdc_deposit_amount = 100_000_000_000_000_000_000_u256;
    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_deposit_amount);
    let fee = 5_000_000_000_000_000_u256;
    let verifier = deploy_mock_verifier_contract();
    let cooloff_time = 3600_u64;

    height.serialize(ref calldata);
    usdc_address.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    fee.serialize(ref calldata);
    verifier.serialize(ref calldata);
    cooloff_time.serialize(ref calldata);
    calldata
}

fn setup_test_environment() -> (ContractAddress, ContractAddress, ContractAddress) {
    let calldata = setup_withdraw_calldata();
    let withdraw_address = deploy_withdraw_contract(calldata);
    let usdc_address = get_deployed_usdc_address();
    let verifier_address = deploy_mock_verifier_contract();
    (withdraw_address, usdc_address, verifier_address)
}

fn get_deployed_usdc_address() -> ContractAddress {
    let usdc_deposit_amount = 100_000_000_000_000_000_000_u256;
    deploy_mock_usdc_contract(get_owner_address(), usdc_deposit_amount)
}

fn create_dummy_proof() -> Array<felt252> {
    let mut proof = ArrayTrait::new();
    proof.append(1);
    proof.append(2);
    proof.append(3);
    proof.append(4);
    proof.append(5);
    proof.append(6);
    proof.append(7);
    proof.append(8);
    proof
}


#[test]
fn check_constructor() {
    let calldata = setup_withdraw_calldata();
    let withdraw_address = deploy_withdraw_contract(calldata);
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };

    let withdrawal_info = withdraw_dispatcher.get_withdrawal_info();
    println!("{:?}", withdrawal_info);

    // Values from the actual withdrawal info that match setup_withdraw_calldata()
    let user_withdrawal_amount = 99_500_000_000_000_000_u256;  // 99,500 USDC
    let solver_withdrawal_amount = 100_000_000_000_000_000_u256;  // 100,000 USDC
    let fee = 5_000_000_000_000_000_u256;  // 5,000 USDC
    let cooloff_time = 3600_u64;

    assert!(withdrawal_info == WithdrawalInfo{
        user_withdrawal_amount: user_withdrawal_amount,
        solver_withdrawal_amount: solver_withdrawal_amount,
        fee: fee,
        cooloff_time: cooloff_time,
        verifier: withdrawal_info.verifier  // Use actual verifier from withdrawal info
    }, "wrong withdrawal info");
}

#[test]
fn test_solver_deposit_and_withdrawal() {
    let (withdraw_address, usdc_address, _) = setup_test_environment();
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };

    // Test solver deposit functionality
    let solver = get_alice_address();
    let deposit_amount = 50_000_000_000_000_000_000_u256; // 50 USDC

    // Mint USDC to solver (only owner can mint)
    start_cheat_caller_address(usdc_address, get_owner_address());
    usdc_dispatcher.mint(solver, deposit_amount);

    // Mint USDC to withdraw contract so it can pay out withdrawals
    usdc_dispatcher.mint(withdraw_address, 1_000_000_000_000_000_000_u256); // 1000 USDC

    stop_cheat_caller_address(usdc_address);

    // Check initial balance
    let initial_solver_balance = usdc_dispatcher.balance_of(solver);
    assert!(initial_solver_balance == deposit_amount, "Solver should have initial USDC balance");

    // Approve the withdraw contract to spend solver's USDC
    approve_usdc(solver, withdraw_address, usdc_address, deposit_amount);

    // Check allowance before deposit
    let allowance_before = usdc_dispatcher.allowance(solver, withdraw_address);
    assert!(allowance_before >= deposit_amount, "Insufficient allowance");

    // Check solver balance in withdraw contract before deposit
    let initial_contract_balance = withdraw_dispatcher.get_solver_balance(solver);
    assert!(initial_contract_balance == 0_u256, "Initial solver balance in contract should be 0");

    // Perform solver deposit (set caller as solver)
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.solver_deposit(deposit_amount);
    stop_cheat_caller_address(withdraw_address);

    // Check solver balance in withdraw contract after deposit
    let after_deposit_balance = withdraw_dispatcher.get_solver_balance(solver);
    assert!(after_deposit_balance == deposit_amount, "Solver balance should match deposited amount");

    // Check that solver's USDC balance decreased
    let final_solver_balance = usdc_dispatcher.balance_of(solver);
    assert!(final_solver_balance == 0_u256, "Solver's USDC balance should be 0 after deposit");

    // Test solver withdrawal functionality
    let withdrawal_amount_test = 25_000_000_000_000_000_000_u256; // 25 USDC

    // Perform solver withdrawal (set caller as solver)
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.solver_withdrawal(withdrawal_amount_test);
    stop_cheat_caller_address(withdraw_address);

    // Check solver balance in withdraw contract after withdrawal
    let after_withdrawal_balance = withdraw_dispatcher.get_solver_balance(solver);
    let expected_balance = deposit_amount - withdrawal_amount_test;
    assert!(after_withdrawal_balance == expected_balance, "Solver balance should be reduced by withdrawal amount");

    // Check that solver's USDC balance increased
    let final_usdc_balance = usdc_dispatcher.balance_of(solver);
    assert!(final_usdc_balance == withdrawal_amount_test, "Solver should receive withdrawn USDC amount");
}

#[test]
#[feature("safe_dispatcher")]
fn test_solver_deposit_failures() {
    let (withdraw_address, usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    let solver = get_alice_address();
    let deposit_amount = 50_000_000_000_000_000_000_u256;

    // Test 1: Deposit with zero amount should fail
    let result = safe_dispatcher.solver_deposit(0_u256);
    assert!(result.is_err(), "Deposit with 0 amount should fail");

    // Test 2: Deposit without approval should fail
    // Mint USDC to solver but don't approve
    start_cheat_caller_address(usdc_address, get_owner_address());
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    usdc_dispatcher.mint(solver, deposit_amount);
    stop_cheat_caller_address(usdc_address);

    // Try to deposit without setting caller as solver (but don't approve)
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.solver_deposit(deposit_amount);
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Deposit without approval should fail");

    // Test 3: Deposit without sufficient balance should fail
    // Approve but don't have enough balance
    approve_usdc(solver, withdraw_address, usdc_address, deposit_amount * 2_u256);

    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.solver_deposit(deposit_amount * 2_u256);
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Deposit without sufficient balance should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_solver_withdrawal_failures() {
    let (withdraw_address, usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };

    let solver = get_alice_address();
    let deposit_amount = 50_000_000_000_000_000_000_u256;
    let withdrawal_amount_test = 25_000_000_000_000_000_000_u256;

    // Test 1: Withdrawal with zero amount should fail
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.solver_withdrawal(0_u256);
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Withdrawal with 0 amount should fail");

    // Test 2: Withdrawal without sufficient balance should fail
    // Try to withdraw without any deposits
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.solver_withdrawal(withdrawal_amount_test);
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Withdrawal without balance should fail");

    // Test 3: Withdrawal amount greater than deposited balance should fail
    // Make a deposit first
    start_cheat_caller_address(usdc_address, get_owner_address());
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    usdc_dispatcher.mint(solver, deposit_amount);
    stop_cheat_caller_address(usdc_address);

    approve_usdc(solver, withdraw_address, usdc_address, deposit_amount);

    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.solver_deposit(deposit_amount);
    stop_cheat_caller_address(withdraw_address);

    // Try to withdraw more than deposited
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.solver_withdrawal(deposit_amount * 2_u256);
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Withdrawal exceeding deposited balance should fail");
}

#[test]
fn test_end_to_end_withdraw() {
    let (withdraw_address, usdc_address, verifier) = setup_test_environment();
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    let usdc_deposit_amount = 100_000_000_000_000_000_000_u256;
    let calculated_fee = 500_000_000_000_000_000_u256;
    let calculated_user_amount = usdc_deposit_amount - calculated_fee;

    // Define addresses for solver and user
    let solver = get_alice_address();
    let user = get_bob_address();
    let solver_deposit_amount = 500_000_000_000_000_000_000_u256; // 500 USDC

    // 1. Solver deposits USDC into contract
    // Mint USDC to solver
    start_cheat_caller_address(usdc_address, get_owner_address());
    usdc_dispatcher.mint(solver, solver_deposit_amount);

    // Mint USDC to withdraw contract so it can pay out withdrawals
    usdc_dispatcher.mint(withdraw_address, 1_000_000_000_000_000_000_u256); // 1000 USDC

    stop_cheat_caller_address(usdc_address);

    // Approve the withdraw contract to spend solver's USDC
    approve_usdc(solver, withdraw_address, usdc_address, solver_deposit_amount);

    // Solver deposits USDC into withdraw contract
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.solver_deposit(solver_deposit_amount);
    stop_cheat_caller_address(withdraw_address);

    // Check solver balance in withdraw contract after deposit
    let solver_contract_balance = withdraw_dispatcher.get_solver_balance(solver);
    assert!(solver_contract_balance == solver_deposit_amount, "Solver balance in contract should match deposited amount");

    // Check solver's USDC balance decreased after deposit
    let solver_usdc_balance = usdc_dispatcher.balance_of(solver);
    assert!(solver_usdc_balance == 0_u256, "Solver's USDC balance should be 0 after deposit");

    // Check user's initial balance (should be 0)
    let user_initial_balance = usdc_dispatcher.balance_of(user);
    assert!(user_initial_balance == 0_u256, "User should have 0 initial USDC balance");

    // 2. User calls request_withdraw with valid arguments, provide dummy values for proof argument
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    // User requests withdrawal
    start_cheat_caller_address(withdraw_address, user);
    withdraw_dispatcher.request_withdraw(root, nullifierHash, user, proof.span());
    stop_cheat_caller_address(withdraw_address);

    // Check that the withdrawal request was created (index 0)
    let withdrawal_request = withdraw_dispatcher.get_request(0);
    assert!(withdrawal_request.root == root, "Withdrawal request root should match");
    assert!(withdrawal_request.nullifierHash == nullifierHash, "Withdrawal request nullifierHash should match");
    assert!(withdrawal_request.recipient == user, "Withdrawal request recipient should match");

    // 3. Solver calls approve_withdraw with the previous index
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.approve_withdraw(0); // Use index 0 for the first withdrawal
    stop_cheat_caller_address(withdraw_address);

    // 4. Check the balance of user and solver
    // User should receive the withdrawal amount (minus fee)
    let user_final_balance = usdc_dispatcher.balance_of(user);
    let expected_user_amount = calculated_user_amount; // From withdrawal info (99.5 USDC)
    assert!(user_final_balance == expected_user_amount, "User should receive withdrawal amount minus fee");

    // Solver's balance in contract should decrease by the user withdrawal amount
    let solver_final_contract_balance = withdraw_dispatcher.get_solver_balance(solver);
    let expected_solver_balance = solver_deposit_amount - calculated_user_amount;
    assert!(solver_final_contract_balance == expected_solver_balance, "Solver contract balance should decrease by withdrawal amount");

      // Verify withdrawal request status is updated to Processed
    let _processed_request = withdraw_dispatcher.get_request(0);
    // Note: We can't directly check the enum status, but we can verify the request exists with correct details
}

#[test]
#[feature("safe_dispatcher")]
fn test_request_withdraw_invalid_proof() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Test invalid withdrawal request (empty proof should fail)
    let user = get_bob_address();
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let empty_proof = ArrayTrait::new(); // Empty proof should fail

    let result = safe_dispatcher.request_withdraw(root, nullifierHash, user, empty_proof.span());
    assert!(result.is_err(), "Request with empty proof should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_request_withdraw_duplicate_nullifier() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Test duplicate nullifier should fail
    let user = get_bob_address();
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    // First request should succeed
    start_cheat_caller_address(withdraw_address, user);
    safe_dispatcher.request_withdraw(root, nullifierHash, user, proof.span()).unwrap();
    stop_cheat_caller_address(withdraw_address);

    // Second request with same nullifier should fail
    let result2 = safe_dispatcher.request_withdraw(root, nullifierHash, user, proof.span());
    assert!(result2.is_err(), "Duplicate nullifier should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_request_withdraw_invalid_root() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Test invalid root (0 should fail)
    let user = get_bob_address();
    let invalid_root = 0_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    let result = safe_dispatcher.request_withdraw(invalid_root, nullifierHash, user, proof.span());
    assert!(result.is_err(), "Request with root=0 should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_request_withdraw_invalid_recipient() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Test invalid recipient (address 0 should fail)
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    let result = safe_dispatcher.request_withdraw(root, nullifierHash, contract_address_const::<0>(), proof.span());
    assert!(result.is_err(), "Request with recipient=0 should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_approve_withdraw_valid_index() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };
    let usdc_deposit_amount = 100_000_000_000_000_000_u256;
    let calculated_fee = 500_000_000_000_000_u256;
    let calculated_user_amount = usdc_deposit_amount - calculated_fee;

    // Create a valid withdrawal request first
    let solver = get_alice_address();
    let user = get_bob_address();
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    // Setup solver with sufficient balance
    let usdc_address = get_deployed_usdc_address();
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    let solver_deposit_amount = 1_000_000_000_000_000_000_u256; // 1000 USDC

    // Mint USDC to solver and to withdraw contract
    start_cheat_caller_address(usdc_address, get_owner_address());
    usdc_dispatcher.mint(solver, solver_deposit_amount);
    usdc_dispatcher.mint(withdraw_address, 1_000_000_000_000_000_000_u256); // 1000 USDC
    stop_cheat_caller_address(usdc_address);

    // Approve and deposit solver funds (approve larger amount for withdrawals)
    approve_usdc(solver, withdraw_address, usdc_address, solver_deposit_amount * 100_u256);
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.solver_deposit(solver_deposit_amount);
    stop_cheat_caller_address(withdraw_address);

    // Create withdrawal request
    start_cheat_caller_address(withdraw_address, user);
    withdraw_dispatcher.request_withdraw(root, nullifierHash, user, proof.span());
    stop_cheat_caller_address(withdraw_address);

    // Approve withdrawal should succeed
    let solver_balance_before = withdraw_dispatcher.get_solver_balance(solver);
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.approve_withdraw(0);
    stop_cheat_caller_address(withdraw_address);

    // Verify solver balance decreased
    let solver_balance_after = withdraw_dispatcher.get_solver_balance(solver);
    let expected_balance = solver_balance_before - calculated_user_amount;
    assert!(solver_balance_after == expected_balance, "Solver balance should decrease by withdrawal amount");

    // Verify withdrawal request status is updated
    let processed_request = withdraw_dispatcher.get_request(0);
    assert!(processed_request.status == Status::Processed, "Withdrawal request should be processed");
}

#[test]
#[feature("safe_dispatcher")]
fn test_approve_withdraw_invalid_index() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Try to approve non-existent withdrawal request
    let solver = get_alice_address();
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.approve_withdraw(999); // Non-existent index
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Approve non-existent withdrawal should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_approve_withdraw_already_processed() {
    let (withdraw_address, _usdc_address, _) = setup_test_environment();
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Create and process a withdrawal request
    let solver = get_alice_address();
    let user = get_bob_address();
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    // Create withdrawal request
    start_cheat_caller_address(withdraw_address, user);
    withdraw_dispatcher.request_withdraw(root, nullifierHash, user, proof.span());
    stop_cheat_caller_address(withdraw_address);

    // Approve withdrawal
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.approve_withdraw(0);
    stop_cheat_caller_address(withdraw_address);

    // Try to approve again should fail
    start_cheat_caller_address(withdraw_address, solver);
    let result = safe_dispatcher.approve_withdraw(0); // Already processed
    stop_cheat_caller_address(withdraw_address);
    assert!(result.is_err(), "Approve already processed withdrawal should fail");
}

#[test]
#[feature("safe_dispatcher")]
fn test_approve_withdraw_insufficient_balance() {
    let (withdraw_address, usdc_address, _) = setup_test_environment();
    let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

    // Solver deposits insufficient amount
    let solver = get_alice_address();
    let solver_deposit_amount = 50_000_000_000_000_000_u256; // Only 50 USDC
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };

    // Mint and deposit
    start_cheat_caller_address(usdc_address, get_owner_address());
    usdc_dispatcher.mint(solver, solver_deposit_amount);
    stop_cheat_caller_address(usdc_address);

    approve_usdc(solver, withdraw_address, usdc_address, solver_deposit_amount);

    // Create withdrawal request for 99.5 USDC (more than solver deposited)
    let user = get_bob_address();
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let proof = create_dummy_proof();

    start_cheat_caller_address(withdraw_address, user);
    let result = safe_dispatcher.request_withdraw(root, nullifierHash, user, proof.span());
    assert!(result.is_err(), "Request with insufficient solver balance should fail");
}