use starknet::{ContractAddress, SyscallResultTrait};
use snforge_std::{ContractClassTrait, DeclareResultTrait, declare};
use zstarkwarp::mocks::merkle_tree_mock_interface::{
    IMerkleTreeMockDispatcher, 
    IMerkleTreeMockDispatcherTrait
};
use zstarkwarp::merkle_tree::merkle_tree_interface::{
    IMerkleTreeDispatcher,
    IMerkleTreeDispatcherTrait
};

fn deploy_contract(name: ByteArray, calldata: @Array<felt252>) -> ContractAddress {
    let contract = declare(name).unwrap_syscall().contract_class();
    let (contract_address, _) = contract.deploy(calldata).unwrap_syscall();
    contract_address
}

#[test]
fn test_initial_root() {
    let expected_roots = array![
        0x17192e62a157556849d93b3c6be1e2bd1f3f1660d10dd9b1ffc429aa9021252c_u256,  // height=1, _get_zero_root(1)
        0x4d5abb4c7f77e3b5d8bc7a049d5ba6e79f29c5c5a9edf0a58726e653e8bc0c7_u256,   // height=2, _get_zero_root(2)
        0xea559a90beac7d48cc70dfad2fea27621b76f140446329b293a04454ccb0ec3_u256,    // height=3, _get_zero_root(3)
        0x26f52f9b31ef80782798f2ae44659dc1bedf53ac38366d4dfed74ce7d95ad1d5_u256,   // height=4, _get_zero_root(4)
        0x2fa27c5cf0185654d6dcf10df1b382324abdf62d73d395be1cc935ab470354f0_u256,   // height=5, _get_zero_root(5)
        0x1c08b39621c262350bc2ddca369a968a68750dacb269e7aa9915245eb0ec3f1_u256,    // height=6, _get_zero_root(6)
        0x2a39b3a355f8050db51818064cf8caa6f17148535edff5098625bc539fd4c038_u256,   // height=7, _get_zero_root(7)
        0x2f8474b5fdf6cfcdb206e08ca30a69d659ff1aa274f1951b9a240a41504a897_u256,    // height=8, _get_zero_root(8)
        0x255c8588a2609472e1547d5407c25f8f33917034302b4076d78cf07f60d69546_u256,   // height=9, _get_zero_root(9)
        0xb01ab3090cbdc900fab5c56945ae060c3c43471a6c421235e5c9fb7d9d08382_u256,    // height=10, _get_zero_root(10)
        0x15950947deae80046b47ad936c2be2f9a594f90c28645a61bd418a5bd145978d_u256,   // height=11, _get_zero_root(11)
        0x1df9f68ef245a86b3e8c13a0fbfcc4b59a1f264d88f9958bc976069b2def72ad_u256,   // height=12, _get_zero_root(12)
        0x215e5f11c3f914dba3add7303a389aaa6a9894c9bf427c71dcdf082249805311_u256,  // height=13, _get_zero_root(13)
        0x12df9d7eb43fe66c3d9169021a80939d04e9a3c3d514eef6a269a1a68857d8cd_u256,  // height=14, _get_zero_root(14)
        0x2733ef21e2d290bdeadf2f631399f90c04217e950009f2a3fae9f445934792af_u256,  // height=15, _get_zero_root(15)
        0x1b5de3d4aa8b60175a7985cc5a929ce294154ea35f854eb5cdf3f9e7f15661e2_u256,   // height=16, _get_zero_root(16)
        0x22d0214ec42623df8d4d65e3c67a0a08fe9c51325fe55b3376f6575a5197af19_u256,  // height=17, _get_zero_root(17)
        0x1c5f649dea85df276a312d1516d953b4909dad742b3b312ba460d0200a61d158_u256,  // height=18, _get_zero_root(18)
        0x2b80173de43b197a0bdada09d8d49c79c110b1db98dd14ef96f9432fc74620ad_u256,   // height=19, _get_zero_root(19)
        0x2d3c07bea6883428edd2d80d07cec4b911309fed96743822d6aadea06313a951_u256,   // height=20, _get_zero_root(20)
        0x44b605acb7c3bca11cc992ed30df8dd163eaa4ce5ccb6673c55a2f5c37d8e33_u256,    // height=21, _get_zero_root(21)
        0x822dfe90c9a51978400674882da60595fe66e40e6e065decf65926c11dbdbc5_u256,    // height=22, _get_zero_root(22)
        0x265eff4400e9bfdae062c4391ae64ccc0d218f9c81c98615691a31b5cfee38d7_u256,   // height=23, _get_zero_root(23)
        0x1146ced274f251bb955a515033ce7039c1935f9ad4d320f577fd1a63d003b35f_u256,   // height=24, _get_zero_root(24)
        0x2d531efb2344c3a3041c901451322dd82e465efc2c2a9cec7b60e35b49713746_u256,   // height=25, _get_zero_root(25)
        0x1c9dc4d75d7ccb25de67387968db68e58110d7b11915bd8f2ce863ef7acee1da_u256,   // height=26, _get_zero_root(26)
        0x14ebf8fce45888ef14e6bafa70f46357325cbb29c30ddb67869f2cb914a7a392_u256,   // height=27, _get_zero_root(27)
        0x248d0bf188574649b104753c86f238bd046e87a13ae22a0df56099534f22ba02_u256,   // height=28, _get_zero_root(28)
        0xf36d16643f39c14978705b01fe4c37ec28efc1e43fd6f5234f89d60c493b40f_u256,    // height=29, _get_zero_root(29)
        0x190243185a55d51d400818327087183ce71831506dde09050d868927f4c9ed00_u256,   // height=30, _get_zero_root(30)
        0xd7bb3ac70926cca19d0f86ce2bc7b3454da6aa534d72ab4c0b7c39ee9cf42dd_u256,    // height=31, _get_zero_root(31)
        0x19ec506fc767aa88d3397c7007611351a4aef78e1f2fc938460ccbd26a03f4f2_u256     // height=32, _get_zero_root(32)
    ];

    // Test heights from 1 to 32
    let mut height = 1;
    while height <= 32 {
        let mut calldata = ArrayTrait::new();
        height.serialize(ref calldata);

        let contract_address = deploy_contract("MerkleTreeMock", @calldata);
        let imt_dispatcher = IMerkleTreeDispatcher { contract_address };
        assert!(@imt_dispatcher.get_current_root() == expected_roots[height - 1]);

        height = height + 1;
    }
}

#[test]
fn test_leaf_insertion() {
    // Deploy a tree with height 32
    let mut calldata = ArrayTrait::new();
    let height = 32;
    height.serialize(ref calldata);

    let contract_address = deploy_contract("MerkleTreeMock", @calldata);
    let imt_dispatcher = IMerkleTreeDispatcher { contract_address };
    let mock_dispatcher = IMerkleTreeMockDispatcher { contract_address };

    // Insert first leaf
    let leaf1 = 0xbeef_u256;
    mock_dispatcher.insert_leaf(leaf1);

    // Get level hashes after insertion
    let level_hashes = imt_dispatcher.get_level_hashes();

    // Expected level hashes (excluding the last level as instructed)
    let expected_hashes = array![
        0xbeef_u256,  // Level 0
        0x23462d89e0b257e5244d60b8b5a14050aa23437aac24a2eed7b48c8bb62fe5d6_u256,  // Level 1
        0x19fbff5a6f47b2505ce477faf519620bcf9309adb83b42cc1af8b84dd0872a2b_u256,  // Level 2
        0x229ca7172a9e18a906e717b3e21d31fffa52a64f2b2458a8fc6d8e3ada699e5c_u256,  // Level 3
        0x24fe19b24d8b09b5e4a6de3619fe9b70a7cf10b4a8ebf0257f35fffed13894d5_u256,  // Level 4
        0xddbebabc9df0356716ac89330bdc74163eebf6652a4dd2d35dd2f9be0678c39_u256,   // Level 5
        0x2c34556451a7a1fd877d178861f5ca12d742dcb494e67c26ff607ef6fea0035e_u256,   // Level 6
        0x230391bdf9a36dfc4526586b11009bdf40e33650ef04b3dad6a17d898d35b67c_u256,   // Level 7
        0x23683e7256c2540a85a5314a59eaf4f6254cb49e76258bfd2ed57cb01c00a6c9_u256,   // Level 8
        0x1b2a2a722bc01226f18e8df04ed6e48e6716555013eb89989129104ba5faebd7_u256,   // Level 9
        0x2c9264073c9056eb7b603e2ac290975d0b097004dc2ad5ed27a7f6afc45b423b_u256,   // Level 10
        0xfaa5fbac3a14ba40a037d578bd58740e93f81d200e1dffb880d65e439969c63_u256,    // Level 11
        0x130ee7afb30d1b396d5f5e4add606f5a49ead0caa4fdca57e28595916dedf2c0_u256,   // Level 12
        0x11e939053b894e0e76c9b0ef3342b9d735313b3ecd729d965634e44ff464b293_u256,   // Level 13
        0x193cbb310a5cfa4b15984c81880b1490fdca7869f875bf09a00e9cab28707e24_u256,   // Level 14
        0x2592dbe0c87cfc73a838c27a4e4b11740c224db23017a5bb8989c74320c53373_u256,   // Level 15
        0x1a8d33ed9763b2f7513a347ad083dc7d0932db6b74c0e9b75f9531da364bbf39_u256,   // Level 16
        0x1b4f7bdd546d03e841b3f6ae90d3240c20819c1254743e2b698af867835aa0d8_u256,   // Level 17
        0x998a7a23de0e08a4ec986c9526b8d0f98588656be396c9b774d8666f14f4db3_u256,    // Level 18
        0x29723f5faf370c00644aecc4183450a640f5bb84622d09cfc1733ce56a39598b_u256,   // Level 19
        0x3012db4f87cf7db735983cc21011acffdb7184e6ef5888f1dbe1ed0bc6b6b57a_u256,   // Level 20
        0x2a6ce62599d607668e9e0ab322b395c3775b36cc16dd34e13011c0a8eb80d684_u256,   // Level 21
        0x158830744d0583362ced7e879d9b61478b7126e4fa7dca8f5f05f020bb76f24_u256,    // Level 22
        0x1fcbcb07d8e70ce53509928a2ce5693693bc244a663367f4efd6d9e770eb92be_u256,   // Level 23
        0x27724524de122b078886b2559fd58fbddad88fb0abef5832facbdd755b65dd6c_u256,   // Level 24
        0x2c87ad6f1e25838ad980a5bdd8e058babf2ccf0959b55947b564fe547229b4c8_u256,   // Level 25
        0x2bc7ed984bcad2ecb36023ed0e2b923efdfc448732dba36dec744c65eddc46c3_u256,   // Level 26
        0x291ee7d38f899dee7ca95f515e94f2a1bdea3a6f297b945816ad5b210364c753_u256,   // Level 27
        0x9c10b6673c3abee58267e6805a6d8705bd7ba244fcaf227b76b8b1ad98fe9ba_u256,    // Level 28
        0x2b3da045c549e573464165323ea0a40f1502b7bff895f93e5e54f22ea162136a_u256,   // Level 29
        0x8055ac773ce5285f471852d128900aad5ace05ae1067ac58bb5b7bc9183875_u256,    // Level 30
        0xd2437fef46a9ec75d27a5d8f1b44857e757e7a05d58c0e5fec6c5da83685683_u256     // Level 31
    ];

    // Verify that we have at least the expected number of levels
    assert!(level_hashes.len() >= expected_hashes.len(), "Unexpected number of levels after first leaf");

    // Compare each level hash (excluding the last level)
    let mut i = 0;
    while i < expected_hashes.len() {
        assert!(
            level_hashes[i] == expected_hashes[i],
            "Hash mismatch at level {} after first leaf", i
        );
        i = i + 1;
    }

    // Insert second leaf
    let leaf2 = 0xdead_u256;
    mock_dispatcher.insert_leaf(leaf2);

    // Get level hashes after second insertion
    let level_hashes = imt_dispatcher.get_level_hashes();

    // Expected level hashes after second leaf (excluding the last level)
    let expected_hashes_2nd = array![
        0xbeef_u256,  // Level 0
        0x2ec66f86df65c4904715c7cc0cc3351c28c3f9efb8f56b37aab44b8426b9165d_u256,  // Level 1
        0x28d3331bee12287ca8cc631f55e7204ecbffb7f7b58d94c719231b8b9ff1ab1b_u256,  // Level 2
        0x206ba586f37837beccf5c3370ea4f788146b05bfd478cfd00482f9113ba21964_u256,  // Level 3
        0x2f72af3aad1668391c919dcd76f8b36c210ae49b6c16eec9b6cb3c5261dc328_u256,   // Level 4
        0xe0ef5f51190dbce732bfca779d0c4d82d1e6944f58cd6dadeef123ca4282c91_u256,    // Level 5
        0x8f6a815095767073f8e2defbce95f997144bc274013c823b21e7d79b4cba0ac_u256,    // Level 6
        0x2f58c49076b2367f561428df1123fddadda06717315a0febe87328e766c54ca4_u256,   // Level 7
        0x24c07d49ea2d6b3875a4f41eb834e5d0dfdfaaceeed95f7ad8faebf358f29699_u256,   // Level 8
        0x19615b98e977abb54240163a128e55fc49e0d22e5ce236d00719a5e4680ace72_u256,   // Level 9
        0x2d71316e6548ed879d2ce8a8493e5fedb2bbb94a422c18fb66fd42288bec5c41_u256,   // Level 10
        0x92f57b282e28f886c2e457fef5b4112a4f5d41bdcd91ee679f6372966a1b136_u256,    // Level 11
        0x2d8bd0c6be1de117672ea348485794706502543f664bbd7691e827f9e7eea35d_u256,   // Level 12
        0x172f446adc77b033c34ebc5548d732b16d371f42d1ade35a00a1bee496cd8136_u256,   // Level 13
        0x1e871f1ec781c9d96c5a9837b32b12524b9302c86d8a1a04fbf673ddee227e17_u256,   // Level 14
        0x26e51961f6626f85a35950f34f449c020ffd73bdc102884ffd651374e2f24fa7_u256,   // Level 15
        0x16a38a26ce75c78464c415d93c33d7a0bbf9945fa9759c3ee18dcddc5d203d28_u256,   // Level 16
        0x2b52ebee627d77876164356ed7cc400440dfc416fc18ecc50250cdffb09596c0_u256,   // Level 17
        0x1ba44b94bc47635292f5f735e43895282755bb52ac938aa667c0b66aaf14da40_u256,   // Level 18
        0x34890c36bc47187a11f0d8b528f2171b151df33b4725858d2f5eb66e4f7821_u256,     // Level 19
        0x117643c721a520d79fa8374a648b71d7cf67bac0f949cd97a3c34f24b7d4f4ea_u256,   // Level 20
        0x2a765edc0cf77b53f226f636dec334697f7c16b657d880ed73b9eb488da7b816_u256,   // Level 21
        0x12baff0607b529b1a8134847225e2f0de8987f91e79c213e8bcd8c89fb51e955_u256,   // Level 22
        0x1c8f509825c356c081cd413dc61b9b2103474780a542db42a53a5f7d9f459e56_u256,   // Level 23
        0x1a3fed100a7076fb2a760c9149992cd387b075ffc102ab8a7ec129954f8e0eb1_u256,   // Level 24
        0x225db2d77906d1a7e246cf4e72abe8726ece2bb5cf9d750797c00d6767fd4074_u256,   // Level 25
        0x15ec86db297595fc1ccc6147096cc094ce0fbeb451ac9d8f56b6c0b7df27eaa3_u256,   // Level 26
        0x305d0f34c3bac0368ed388b52469e0d3a53a919a30c7517d0a15a7fb43d3549d_u256,   // Level 27
        0x2282c7e98723a72eff048183c8857795c2deb91d03652dfe05ff111d50ace706_u256,   // Level 28
        0x1c5c66d62d32412298c005bfb4083a96f494438a7598829efd9cffcd79eff3f3_u256,   // Level 29
        0x1ef295890ab610f715c7308469467b1345725360ea09c9ab32e7205aab0f5d88_u256,   // Level 30
        0x1e46459aaeb052d981378a3834b414df9143c8c9137729ff5d8a9a5c1ca8c820_u256    // Level 31
    ];

    // Verify that we have at least the expected number of levels
    assert!(level_hashes.len() >= expected_hashes_2nd.len(), "Unexpected number of levels after second leaf");

    // Compare each level hash (excluding the last level)
    let mut i = 0;
    while i < expected_hashes_2nd.len() {
        assert!(
            level_hashes[i] == expected_hashes_2nd[i],
            "Hash mismatch at level {} after second leaf", i
        );
        i = i + 1;
    }
}

#[test]
fn test_hash_function() {
    // Deploy a tree with height 3
    let mut calldata = ArrayTrait::new();
    let height = 3;
    height.serialize(ref calldata);

    let contract_address = deploy_contract("MerkleTreeMock", @calldata);
    let mock_dispatcher = IMerkleTreeMockDispatcher { contract_address };

    // Test hash function with known inputs
    let left = 0x1_u256;
    let right = 0x2_u256;
    let hash_result = mock_dispatcher.hash(left, right);

    // Hash should be deterministic
    // pre-computed using circomlibjs lib
    assert!(hash_result == 0x115cc0f5e7d690413df64c6b9662e9cf2a3617f2743245519e19607a4417189a_u256);

    // Hash should be commutative if we swap inputs with different values
    let hash_swapped = mock_dispatcher.hash(right, left);
    // Note: Poseidon is not commutative, so this should be different
    assert!(hash_result != hash_swapped);

    // Hash with same inputs should be same
    let hash_same = mock_dispatcher.hash(left, left);
    let hash_same2 = mock_dispatcher.hash(left, left);
    assert!(hash_same == hash_same2);
}

#[test]
fn test_root_validation() {
    // Deploy a tree with height 3
    let mut calldata = ArrayTrait::new();
    let height = 3;
    height.serialize(ref calldata);

    let contract_address = deploy_contract("MerkleTreeMock", @calldata);
    let imt_dispatcher = IMerkleTreeDispatcher { contract_address };

    // Initial root should be valid
    let initial_root = imt_dispatcher.get_current_root();
    assert!(imt_dispatcher.is_valid_root(initial_root));

    // Invalid root should not be valid
    let invalid_root = 0x0_u256;
    assert!(!imt_dispatcher.is_valid_root(invalid_root));

    // Another invalid root
    let invalid_root2 = 0xdeadbeefdeadbeef_u256;
    assert!(!imt_dispatcher.is_valid_root(invalid_root2));
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
