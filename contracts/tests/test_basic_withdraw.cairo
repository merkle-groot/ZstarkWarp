use starknet::{contract_address_const, ContractAddress, SyscallResultTrait};
use snforge_std::{ContractClassTrait, DeclareResultTrait, declare, start_cheat_caller_address, stop_cheat_caller_address};
use zstarkwarp::zstarkwarp_withdraw_interface::{IZstarkWarpDWithdrawDispatcher, IZstarkWarpDWithdrawDispatcherTrait};
use zstarkwarp::zstarkwarp::ZstarkWarp::{WithdrawalRequest, WithdrawalInfo};
use zstarkwarp::mocks::mock_verifier::IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};
use zstarkwarp::mocks::usdc_token_interface::{IUSDCTokenDispatcher, IUSDCTokenDispatcherTrait};

fn deploy_withdraw_contract(calldata: Array<felt252>) -> ContractAddress {
    let mut calldata = ArrayTrait::new();

    let height = 18_u64;
    let usdc_deposit_amount = 100_000_000_000_000_000_u256;
    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_deposit_amount);
    let fee = 5_000_000_000_000_u256;
    let calculated_fee = 500_000_000_000_000_u256;
    let calculated_user_amount = usdc_deposit_amount - calculated_fee;
    let verifier = deploy_mock_verifier_contract();
    let cooloff_time = 3600_u64;

    height.serialize(ref calldata);
    usdc_address.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    fee.serialize(ref calldata);
    verifier.serialize(ref calldata);
    cooloff_time.serialize(ref calldata);

    let withdraw_address = declare("ZstarkWarp").unwrap_syscall().contract_class();
    let (withdraw_address, _) = contract.deploy(@calldata).unwrap_syscall();
    withdraw_address
}

fn approve_usdc(user: ContractAddress, zstarkwarp_address: ContractAddress, usdc_address: ContractAddress, amount: u256) {
    // Start cheating
    start_cheat_caller_address(usdc_address, user);
    let usdc_dispatcher = IUSDCTokenDispatcher { contract_address: usdc_address };
    usdc_dispatcher.approve(zstarkwarp_address, amount);
    stop_cheat_caller_address(usdc_address);
}

#[test]
fn test_basic_withdraw_flow() {
    let mut calldata = ArrayTrait::new();

    let height = 18_u64;
    let usdc_deposit_amount = 100_000_000_000_000_000_u256;
    let usdc_address = deploy_mock_usdc_contract(get_owner_address(), usdc_deposit_amount);
    let fee = 5_000_000_000_000_u256;
    let calculated_fee = 500_000_000_000_000_u256;
    let calculated_user_amount = usdc_deposit_amount - calculated_fee;
    let verifier = deploy_mock_verifier_contract();
    let cooloff_time = 3600_u64;

    height.serialize(ref calldata);
    usdc_address.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    usdc_deposit_amount.serialize(ref calldata);
    fee.serialize(ref calldata);
    verifier.serialize(ref calldata);
    cooloff_time.serialize(ref calldata);

    let withdraw_address = deploy_withdraw_contract(calldata);
    let withdraw_dispatcher = IZstarkWarpDWithdrawDispatcher { contract_address: withdraw_address };

    // Test the withdrawal flow
    let solver = get_alice_address();
    let user = get_bob_address();

    // 1. User requests withdrawal
    let root = 123456789_u256;
    let nullifierHash = 987654321_u256;
    let mut proof = ArrayTrait::new();
    proof.append(1);
    proof.append(2);
    proof.append(3);
    proof.append(4);
    proof.append(5);
    proof.append(6);
    proof.append(7);
    proof.append(8);

    start_cheat_caller_address(withdraw_address, user);
    withdraw_dispatcher.request_withdraw(root, nullifierHash, user, proof.span()).unwrap();
    stop_cheat_caller_address(withdraw_address);

    // 2. Verify withdrawal request exists
    let withdrawal_request = withdraw_dispatcher.get_request(0);
    assert!(withdrawal_request.root == root, "Withdrawal request root should match");
    assert!(withdrawal_request.nullifierHash == nullifierHash, "Withdrawal request nullifierHash should match");
    assert!(withdrawal_request.recipient == user, "Withdrawal request recipient should match");

    // 3. Solver approves withdrawal
    start_cheat_caller_address(withdraw_address, solver);
    withdraw_dispatcher.approve_withdraw(0).unwrap();
    stop_cheat_caller_address(withdraw_address);

    // 4. Verify withdrawal completed
    let processed_request = withdraw_dispatcher.get_request(0);
    assert!(processed_request.status == zstarkwarp::zstarkwarp::ZstarkWarp::Status::Processed, "Withdrawal request should be processed");
}