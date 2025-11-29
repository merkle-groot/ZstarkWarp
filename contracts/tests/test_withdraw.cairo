// use starknet::{contract_address_const, ContractAddress, SyscallResultTrait};
// use snforge_std::fs::{FileTrait, read_json};
// use snforge_std::{ContractClassTrait, DeclareResultTrait, declare, spy_events, EventSpyAssertionsTrait, start_cheat_caller_address, stop_cheat_caller_address};
// use zstarkwarp::verifier_interface::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};
// use zstarkwarp::zstarkwarp_withdraw_interface::{IZstarkWarpDWithdrawDispatcher, IZstarkWarpDWithdrawDispatcherTrait, IZstarkWarpDWithdrawSafeDispatcher, IZstarkWarpDWithdrawSafeDispatcherTrait};
// use zstarkwarp::zstarkwarp_withdraw::ZstarkWarpWithdraw::{DepositInfo, WithdrawalInfo};
// use zstarkwarp::mocks::usdc_token_interface::{IUSDCTokenDispatcher, IUSDCTokenDispatcherTrait};

// fn get_owner_address() -> ContractAddress {
//     contract_address_const::<1000>()
// }

// fn get_alice_address() -> ContractAddress {
//     contract_address_const::<1001>()
// }

// fn get_bob_address() -> ContractAddress {
//     contract_address_const::<1002>()
// }

// fn deploy_withdraw_contract(calldata: Array<felt252>) -> ContractAddress {
//     let contract = declare("ZstarkWarpWithdraw").unwrap_syscall().contract_class();
//     let (contract_address, _) = contract.deploy(@calldata).unwrap_syscall();
//     contract_address
// }

// fn deploy_mock_usdc_contract(owner: ContractAddress, amount: u256) -> ContractAddress {
//     let mut calldata = ArrayTrait::new();
//     owner.serialize(ref calldata);
//     amount.serialize(ref calldata);
//     let contract = declare("UsdcMock").unwrap_syscall().contract_class();
//     let (contract_address, _) = contract.deploy(@calldata).unwrap_syscall();
//     contract_address
// }

// fn approve_usdc(user: ContractAddress, zstarkwarp_address: ContractAddress, usdc_address: ContractAddress, amount: u256){
//     // Start cheating
//     start_cheat_caller_address(usdc_address, user);
//     let usdc_dispatcher = IUSDCTokenDispatcher{ contract_address: usdc_address };
//     usdc_dispatcher.approve(zstarkwarp_address, amount);
//     stop_cheat_caller_address(usdc_address);
// }

// fn mint_usdc(user: ContractAddress, usdc_address: ContractAddress) {
//     let usdc_dispatcher = IUSDCTokenDispatcher{ contract_address: usdc_address };
//     usdc_dispatcher.mint_user(user);
// }

// #[test]
// fn check_constructor() {
//     let mut calldata = ArrayTrait::new();

//     let deposit_info = DepositInfo {
//         deposit_contract: contract_address_const::<829>(),
//         deposit_token: contract_address_const::<830>(),
//         deposit_amount: 100_000_000_000_000_000_000,
//     };

//     let withdrawal_amount = 100_000_000_000_000_000_000_u256;
//     let fee = 1_050_000_000_000_000_000_u256;
//     let verifier = contract_address_const::<831>();

//     let usdc_address = deploy_mock_usdc_contract(get_owner_address(), withdrawal_amount);

//     deposit_info.serialize(ref calldata);
//     usdc_address.serialize(ref calldata);
//     withdrawal_amount.serialize(ref calldata);
//     fee.serialize(ref calldata);
//     verifier.serialize(ref calldata);

//     let withdraw_address = deploy_withdraw_contract(calldata);
//     let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };

//     let (fetched_deposit_info, fetched_withdrawal_info) = withdraw_dispatcher.get_bridge_config();
//     assert!(deposit_info == fetched_deposit_info, "wrong deposit info");
//     // match result {
//     //     Option::Some(success) => println!("Verification result: {:?}", success),
//     //     Option::None => panic!("Proof verification failed - proof is invalid")
//     // };
// }

// #[test]
// fn test_solver_deposit_and_withdrawal() {
//     let mut calldata = ArrayTrait::new();

//     let deposit_info = DepositInfo {
//         deposit_contract: contract_address_const::<829>(),
//         deposit_token: contract_address_const::<830>(),
//         deposit_amount: 100_000_000_000_000_000_000,
//     };

//     let withdrawal_amount = 100_000_000_000_000_000_000_u256;
//     let fee = 1_050_000_000_000_000_000_u256;
//     let verifier = contract_address_const::<831>();

//     let usdc_address = deploy_mock_usdc_contract(get_owner_address(), withdrawal_amount);

//     deposit_info.serialize(ref calldata);
//     usdc_address.serialize(ref calldata);
//     withdrawal_amount.serialize(ref calldata);
//     fee.serialize(ref calldata);
//     verifier.serialize(ref calldata);

//     let withdraw_address = deploy_withdraw_contract(calldata);
//     let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };
//     let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };

//     // Test solver deposit functionality
//     let solver = get_alice_address();
//     let deposit_amount = 50_000_000_000_000_000_000_u256; // 50 USDC

//     // Mint USDC to solver (only owner can mint)
//     start_cheat_caller_address(usdc_address, get_owner_address());
//     usdc_dispatcher.mint(solver, deposit_amount);
//     stop_cheat_caller_address(usdc_address);

//     // Check initial balance
//     let initial_solver_balance = usdc_dispatcher.balance_of(solver);
//     assert!(initial_solver_balance == deposit_amount, "Solver should have initial USDC balance");

//     // Approve the withdraw contract to spend solver's USDC
//     approve_usdc(solver, withdraw_address, usdc_address, deposit_amount);

//     // Check allowance before deposit
//     let allowance_before = usdc_dispatcher.allowance(solver, withdraw_address);
//     assert!(allowance_before >= deposit_amount, "Insufficient allowance");

//     // Check solver balance in withdraw contract before deposit
//     let initial_contract_balance = withdraw_dispatcher.get_solver_balance(solver);
//     assert!(initial_contract_balance == 0_u256, "Initial solver balance in contract should be 0");

//     // Perform solver deposit (set caller as solver)
//     start_cheat_caller_address(withdraw_address, solver);
//     withdraw_dispatcher.solver_deposit(deposit_amount);
//     stop_cheat_caller_address(withdraw_address);

//     // Check solver balance in withdraw contract after deposit
//     let after_deposit_balance = withdraw_dispatcher.get_solver_balance(solver);
//     assert!(after_deposit_balance == deposit_amount, "Solver balance should match deposited amount");

//     // Check that solver's USDC balance decreased
//     let final_solver_balance = usdc_dispatcher.balance_of(solver);
//     assert!(final_solver_balance == 0_u256, "Solver's USDC balance should be 0 after deposit");

//     // Test solver withdrawal functionality
//     let withdrawal_amount_test = 25_000_000_000_000_000_000_u256; // 25 USDC

//     // Perform solver withdrawal (set caller as solver)
//     start_cheat_caller_address(withdraw_address, solver);
//     withdraw_dispatcher.solver_withdrawal(withdrawal_amount_test);
//     stop_cheat_caller_address(withdraw_address);

//     // Check solver balance in withdraw contract after withdrawal
//     let after_withdrawal_balance = withdraw_dispatcher.get_solver_balance(solver);
//     let expected_balance = deposit_amount - withdrawal_amount_test;
//     assert!(after_withdrawal_balance == expected_balance, "Solver balance should be reduced by withdrawal amount");

//     // Check that solver's USDC balance increased
//     let final_usdc_balance = usdc_dispatcher.balance_of(solver);
//     assert!(final_usdc_balance == withdrawal_amount_test, "Solver should receive withdrawn USDC amount");
// }

// #[test]
// #[feature("safe_dispatcher")]
// fn test_solver_deposit_failures() {
//     let mut calldata = ArrayTrait::new();

//     let deposit_info = DepositInfo {
//         deposit_contract: contract_address_const::<829>(),
//         deposit_token: contract_address_const::<830>(),
//         deposit_amount: 100_000_000_000_000_000_000,
//     };

//     let withdrawal_amount = 100_000_000_000_000_000_000_u256;
//     let fee = 1_050_000_000_000_000_000_u256;
//     let verifier = contract_address_const::<831>();

//     let usdc_address = deploy_mock_usdc_contract(get_owner_address(), withdrawal_amount);

//     deposit_info.serialize(ref calldata);
//     usdc_address.serialize(ref calldata);
//     withdrawal_amount.serialize(ref calldata);
//     fee.serialize(ref calldata);
//     verifier.serialize(ref calldata);

//     let withdraw_address = deploy_withdraw_contract(calldata);
//     let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };

//     let solver = get_alice_address();
//     let deposit_amount = 50_000_000_000_000_000_000_u256;

//     // Test 1: Deposit with zero amount should fail
//     let result = safe_dispatcher.solver_deposit(0_u256);
//     assert!(result.is_err(), "Deposit with 0 amount should fail");

//     // Test 2: Deposit without approval should fail
//     // Mint USDC to solver but don't approve
//     start_cheat_caller_address(usdc_address, get_owner_address());
//     let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
//     usdc_dispatcher.mint(solver, deposit_amount);
//     stop_cheat_caller_address(usdc_address);

//     // Try to deposit without setting caller as solver (but don't approve)
//     start_cheat_caller_address(withdraw_address, solver);
//     let result = safe_dispatcher.solver_deposit(deposit_amount);
//     stop_cheat_caller_address(withdraw_address);
//     assert!(result.is_err(), "Deposit without approval should fail");

//     // Test 3: Deposit without sufficient balance should fail
//     // Approve but don't have enough balance
//     approve_usdc(solver, withdraw_address, usdc_address, deposit_amount * 2_u256);

//     start_cheat_caller_address(withdraw_address, solver);
//     let result = safe_dispatcher.solver_deposit(deposit_amount * 2_u256);
//     stop_cheat_caller_address(withdraw_address);
//     assert!(result.is_err(), "Deposit without sufficient balance should fail");
// }

// #[test]
// #[feature("safe_dispatcher")]
// fn test_solver_withdrawal_failures() {
//     let mut calldata = ArrayTrait::new();

//     let deposit_info = DepositInfo {
//         deposit_contract: contract_address_const::<829>(),
//         deposit_token: contract_address_const::<830>(),
//         deposit_amount: 100_000_000_000_000_000_000,
//     };

//     let withdrawal_amount = 100_000_000_000_000_000_000_u256;
//     let fee = 1_050_000_000_000_000_000_u256;
//     let verifier = contract_address_const::<831>();

//     let usdc_address = deploy_mock_usdc_contract(get_owner_address(), withdrawal_amount);

//     deposit_info.serialize(ref calldata);
//     usdc_address.serialize(ref calldata);
//     withdrawal_amount.serialize(ref calldata);
//     fee.serialize(ref calldata);
//     verifier.serialize(ref calldata);

//     let withdraw_address = deploy_withdraw_contract(calldata);
//     let safe_dispatcher = IZstarkWarpDWithdrawSafeDispatcher { contract_address: withdraw_address };
//     let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };

//     let solver = get_alice_address();
//     let deposit_amount = 50_000_000_000_000_000_000_u256;
//     let withdrawal_amount_test = 25_000_000_000_000_000_000_u256;

//     // Test 1: Withdrawal with zero amount should fail
//     start_cheat_caller_address(withdraw_address, solver);
//     let result = safe_dispatcher.solver_withdrawal(0_u256);
//     stop_cheat_caller_address(withdraw_address);
//     assert!(result.is_err(), "Withdrawal with 0 amount should fail");

//     // Test 2: Withdrawal without sufficient balance should fail
//     // Try to withdraw without any deposits
//     start_cheat_caller_address(withdraw_address, solver);
//     let result = safe_dispatcher.solver_withdrawal(withdrawal_amount_test);
//     stop_cheat_caller_address(withdraw_address);
//     assert!(result.is_err(), "Withdrawal without balance should fail");

//     // Test 3: Withdrawal amount greater than deposited balance should fail
//     // Make a deposit first
//     start_cheat_caller_address(usdc_address, get_owner_address());
//     let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
//     usdc_dispatcher.mint(solver, deposit_amount);
//     stop_cheat_caller_address(usdc_address);

//     approve_usdc(solver, withdraw_address, usdc_address, deposit_amount);

//     start_cheat_caller_address(withdraw_address, solver);
//     withdraw_dispatcher.solver_deposit(deposit_amount);
//     stop_cheat_caller_address(withdraw_address);

//     // Try to withdraw more than deposited
//     start_cheat_caller_address(withdraw_address, solver);
//     let result = safe_dispatcher.solver_withdrawal(deposit_amount * 2_u256);
//     stop_cheat_caller_address(withdraw_address);
//     assert!(result.is_err(), "Withdrawal exceeding deposited balance should fail");
// }