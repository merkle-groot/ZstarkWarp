use starknet::{ContractAddress, SyscallResultTrait};
use snforge_std::{ContractClassTrait, DeclareResultTrait, declare};
use zstarkwarp::mocks::merkle_tree_mock_interface::{
    IMerkleTreeMockDispatcher, 
    IMerkleTreeMockDispatcherTrait
};
use zstarkwarp::merkle_tree::merkle_tree_interface::{
    IIncrementalMerkleTreeDispatcher,
    IIncrementalMerkleTreeDispatcherTrait
};

fn deploy_contract(name: ByteArray, calldata: @Array<felt252>) -> ContractAddress {
    let contract = declare(name).unwrap_syscall().contract_class();
    let (contract_address, _) = contract.deploy(calldata).unwrap_syscall();
    contract_address
}

#[test]
fn test_increase_balance() {
    let mut calldata = ArrayTrait::new();
    let arguments = array![3];
    arguments.serialize(ref calldata);
    let contract_address = deploy_contract("MerkleTreeMock", @calldata);

    let mock_dispatcher = IMerkleTreeMockDispatcher { contract_address };
    let imt_dispatcher = IIncrementalMerkleTreeDispatcher { contract_address };
    assert!(imt_dispatcher.get_current_root() == 0x20121ee811489ff8d61f09fb89e313f14959a0f28bb428a20dba6b0b068b3bdb_u256);
    // dispatcher.add_root(123);
    // assert!(dispatcher.get_current_root() == 123, "incorrect root");
    // let x = 13;
    // assert!(x/2 == 0, "x = {x:?}");

    // let balance_before = dispatcher.get_balance();
    // assert(balance_before == 0, 'Invalid balance');

    // dispatcher.increase_balance(42);

    // let balance_after = dispatcher.get_balance();
    // assert(balance_after == 42, 'Invalid balance');
}

// #[test]
// #[feature("safe_dispatcher")]
// fn test_cannot_increase_balance_with_zero_value() {
//     let contract_address = deploy_contract("HelloStarknet");

//     let safe_dispatcher = IHelloStarknetSafeDispatcher { contract_address };

//     let balance_before = safe_dispatcher.get_balance().unwrap();
//     assert(balance_before == 0, 'Invalid balance');

//     match safe_dispatcher.increase_balance(0) {
//         Result::Ok(_) => core::panic_with_felt252('Should have panicked'),
//         Result::Err(panic_data) => {
//             assert(*panic_data.at(0) == 'Amount cannot be 0', *panic_data.at(0));
//         }
//     };
// }
