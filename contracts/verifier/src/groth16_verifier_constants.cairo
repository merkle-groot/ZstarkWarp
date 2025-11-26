use garaga::definitions::{E12D, G1Point, G2Line, G2Point, u288, u384};
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 3;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x38febe9f87f730fa3e5bd174,
            limb1: 0xf763950637a776ef9e248435,
            limb2: 0x29dc2d37c63acbda,
        },
        w1: u288 {
            limb0: 0xa31610a97aa4e4539be919ff,
            limb1: 0xfa4d4bfb72b6a3c002018e97,
            limb2: 0x1968ab971e610fce,
        },
        w2: u288 {
            limb0: 0xee6c1ce3a15313c6f9d57f7e,
            limb1: 0xd37e28396640fcfe5f122aae,
            limb2: 0x210d3763f7a27517,
        },
        w3: u288 {
            limb0: 0x7746ddac185562e756b1b92f,
            limb1: 0x44f8b75638ef5a373f319cd8,
            limb2: 0x51e9605db4edac6,
        },
        w4: u288 {
            limb0: 0xc29e0c2ac434301d671ffa56,
            limb1: 0xa06f1db2d4ca4dd88f979102,
            limb2: 0x1d0126fb7d721e02,
        },
        w5: u288 {
            limb0: 0xed2e022e10acbeb35084dc1,
            limb1: 0xf9de514baee870f114669060,
            limb2: 0x10889a0f300ce96c,
        },
        w6: u288 {
            limb0: 0xeec23aadde92d2dd00e4568e,
            limb1: 0x6d5b4b63667db8f10bd851ab,
            limb2: 0x18f1dd15d2e64c69,
        },
        w7: u288 {
            limb0: 0x2131bad24ea07a033d0bf397,
            limb1: 0xb6312a7f2622146be93b5950,
            limb2: 0x227e61ca055f0ac3,
        },
        w8: u288 {
            limb0: 0xb896f30b06350f012274ebcd,
            limb1: 0xd14298f13a76183170aafe08,
            limb2: 0x302bfd90358d23a0,
        },
        w9: u288 {
            limb0: 0x679d91263798da428fa5ea62,
            limb1: 0x806797d163f4df8b55ec774c,
            limb2: 0x29b72d4ec063face,
        },
        w10: u288 {
            limb0: 0x4dbef45fe0c5a14bef7c4a90,
            limb1: 0xd4ae215c443d0f0768198bc6,
            limb2: 0x2fcc02633e427272,
        },
        w11: u288 {
            limb0: 0x7308cad65773475443cfbd80,
            limb1: 0x972f90a77f1a8aeece6571ff,
            limb2: 0x2d3a570362a9fd7f,
        },
    },
    gamma_g2: G2Point {
        x0: u384 {
            limb0: 0xf75edadd46debd5cd992f6ed,
            limb1: 0x426a00665e5c4479674322d4,
            limb2: 0x1800deef121f1e76,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x35a9e71297e485b7aef312c2,
            limb1: 0x7260bfb731fb5d25f1aa4933,
            limb2: 0x198e9393920d483a,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xc43d37b4ce6cc0166fa7daa,
            limb1: 0x4aab71808dcb408fe3d1e769,
            limb2: 0x12c85ea5db8c6deb,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x70b38ef355acdadcd122975b,
            limb1: 0xec9e99ad690c3395bc4b3133,
            limb2: 0x90689d0585ff075,
            limb3: 0x0,
        },
    },
    delta_g2: G2Point {
        x0: u384 {
            limb0: 0x6b1cca3704df74265e47d6a2,
            limb1: 0xed83db5534d84cffd70ae0d9,
            limb2: 0x2ca65fbf4120e6e,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xd18ebc85f4564faaacb777fa,
            limb1: 0xf2cb909822da6fe75e66a516,
            limb2: 0x1f05698d5d6d72a5,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x23f76b457337eae01c86b882,
            limb1: 0x9f0cbda9229c98650e25a4a9,
            limb2: 0x19a4bb082b532afa,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x631195d12ef8eb671e0fc559,
            limb1: 0x9ccaf3e0aeb5ee676450b96f,
            limb2: 0x24b06a86e292f9aa,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 4] = [
    G1Point {
        x: u384 {
            limb0: 0xe58a5e5794572eba38d47bd5,
            limb1: 0x3437307f5879cac9d43cc114,
            limb2: 0x156ac26a1211bf1c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x8218503aa95b284bb7d171be,
            limb1: 0xad42574d63e600da09c13171,
            limb2: 0x1271c59990c6532b,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xc0fe9fade54b22ed2f230d02,
            limb1: 0xac9f0204dfb23e13b107264d,
            limb2: 0x7d7555fe9af1b4f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xd35f6937548ddb761c372cb4,
            limb1: 0x5dc065e61cfabc3f50f7197e,
            limb2: 0x2e712e799bc571dc,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x29bc20821c11ef474ec5f485,
            limb1: 0x7254c8c3b5789a44f1c2ffa,
            limb2: 0x2684f6ccf3c80099,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x2e1bc8d006f4810c8b796f88,
            limb1: 0xdb7389e2716ef00b4f48dca4,
            limb2: 0x1d0bbc99d775d80,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xeba68928b9aa3257151bd77f,
            limb1: 0x6aa1a82acfb17312b6474c7f,
            limb2: 0x224b1e74b78c9587,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x746badb85b42b75830a4dece,
            limb1: 0x9762645af50fd8a558af2f74,
            limb2: 0x2f898563c71fb5b7,
            limb3: 0x0,
        },
    },
];


pub const precomputed_lines: [G2Line; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc,
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a,
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da,
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6929a4d37ffdc6b120ff9451,
            limb1: 0xd10eddd49cb9216c23d17135,
            limb2: 0x29994d66c0e8fa03,
        },
        r0a1: u288 {
            limb0: 0x69ac29da38e3b00f9bb4736d,
            limb1: 0xa8b5ebf991788dbb78eba1af,
            limb2: 0xcd772dd3d2cffc7,
        },
        r1a0: u288 {
            limb0: 0x7bd97378bb7db5792a42d21a,
            limb1: 0x3bcca61032b60b72e4afec4d,
            limb2: 0x217fbc96cb35a041,
        },
        r1a1: u288 {
            limb0: 0x141bed171513f0b07bb24b40,
            limb1: 0xeb4824f2819cf609f1a4697f,
            limb2: 0x58b028c95c38515,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d,
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf,
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f,
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb,
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582,
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36,
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xff4825b9bc22c565b77d68f6,
            limb1: 0xe74167e1e4c836f173aff95b,
            limb2: 0x6cb010c2048a625,
        },
        r0a1: u288 {
            limb0: 0xfec5a0b3033cdc073cc889da,
            limb1: 0xf9a59bcf008caa21e95c8e1,
            limb2: 0x238cdb95a404a062,
        },
        r1a0: u288 {
            limb0: 0xec98571480a2d69dae3a2b2d,
            limb1: 0x7c839fa64ecb4ceab2d17e43,
            limb2: 0xee491dc15fbffe8,
        },
        r1a1: u288 {
            limb0: 0x5455dd76270c9b665ccab207,
            limb1: 0xcd0820c3ffe46253a5dd0112,
            limb2: 0x2ad94be64b6e1b13,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce26fe634b8d2712e83530b9,
            limb1: 0x839c09f691cc4f070cbdd1c1,
            limb2: 0x490ae5c3c07b8f2,
        },
        r0a1: u288 {
            limb0: 0x2ed6d0740b7616d09b9017f0,
            limb1: 0xb043517bc8c80dbc355c6968,
            limb2: 0x61ee1f5dce2d9cd,
        },
        r1a0: u288 {
            limb0: 0x9809340343e05ae0bac6bf9a,
            limb1: 0xb132dc3e585454c8d0a08a2c,
            limb2: 0x1ebad678a044ef56,
        },
        r1a1: u288 {
            limb0: 0x77ec0698c8c660773bfb24a2,
            limb1: 0x8dea53363b918c91479d8094,
            limb2: 0x100f3fcc74f3a98c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447,
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62,
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb,
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6524019ba227fcd15232e27,
            limb1: 0xdc9b210a1f41ace95562846c,
            limb2: 0x2279b1b49fec6a9f,
        },
        r0a1: u288 {
            limb0: 0xefca027de3dbc2423ac099d8,
            limb1: 0xbadab756eb15f41fd87f6542,
            limb2: 0x4fb62cc2634cf40,
        },
        r1a0: u288 {
            limb0: 0x83fb54346eea60eca235f4c3,
            limb1: 0x530896ebf1998df470247c30,
            limb2: 0x1b97955d4c1be9e0,
        },
        r1a1: u288 {
            limb0: 0x6655017743ee40b11baea432,
            limb1: 0x472385caf9ff813f0144805b,
            limb2: 0x1f1d1eccb9e615e9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad,
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192,
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf,
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463,
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0,
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31,
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7628499a9899554367696491,
            limb1: 0xb46d9b834bcb8c8d37f3360,
            limb2: 0x2995fe7ccf9fa81a,
        },
        r0a1: u288 {
            limb0: 0x3715fd4cc36b586490e2ee00,
            limb1: 0x9529b6cfb135397c6909146e,
            limb2: 0x14e9e0c5bbcfbb03,
        },
        r1a0: u288 {
            limb0: 0xb5a80790c1264d9bc1b77892,
            limb1: 0xf9ffcc927a06665820dd64e,
            limb2: 0x302442877c35cfad,
        },
        r1a1: u288 {
            limb0: 0x861b666c3ff13993c4acd516,
            limb1: 0x362438b0d35b3b57521f5f94,
            limb2: 0x269fbb0cca7a493e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x24dafbbc9276b462ed063db7,
            limb1: 0xa6e816a1fa831adf6c43d250,
            limb2: 0x15532e1ccff7fcca,
        },
        r0a1: u288 {
            limb0: 0x2802e68191d75a8543240e58,
            limb1: 0x90650f1ea68261c1b517b35,
            limb2: 0x2ea1714c0a84d55,
        },
        r1a0: u288 {
            limb0: 0xaf7df04f4504430d85eba0a7,
            limb1: 0x5d1d7a06376dc99d2d4a67d0,
            limb2: 0x14be3e198fdb1884,
        },
        r1a1: u288 {
            limb0: 0x4f7743a7c48243047b186114,
            limb1: 0xb45e882381d1c71a513edade,
            limb2: 0xe85b9037f3407c9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c,
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7,
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1,
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8eca11c38252033bd4db77a8,
            limb1: 0xd5e3e73b919d69b8dc0c2334,
            limb2: 0x17b538a817212617,
        },
        r0a1: u288 {
            limb0: 0x5560875487b14f1e96ced030,
            limb1: 0x8696f0ca0869b77a8ce7cf06,
            limb2: 0x1d7a3fab91f5636c,
        },
        r1a0: u288 {
            limb0: 0x1d19568e4a3ab8df4e570e0,
            limb1: 0xf3e1dab70f75c0fe50546c50,
            limb2: 0x98a06ea863c4f0,
        },
        r1a1: u288 {
            limb0: 0x51b3b6a2d89e6da01cd18d95,
            limb1: 0x46126e7a33b27fda08ade35d,
            limb2: 0x7aab41b7a38aead,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9,
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f,
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb,
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x353743e596c6a93558c4d3a,
            limb1: 0x6a7c759908b6f8953996a247,
            limb2: 0x182b2b9b98c6cb93,
        },
        r0a1: u288 {
            limb0: 0x974777c7e7093c1616c71650,
            limb1: 0x3ea74f11653565336634a32a,
            limb2: 0x34c8b94750154a1,
        },
        r1a0: u288 {
            limb0: 0xdbaf7ad1652366b751ea73c0,
            limb1: 0xeeca6fb63623bb1682e59473,
            limb2: 0x164dd2404b94738,
        },
        r1a1: u288 {
            limb0: 0x230ec7544c457f39a49b203a,
            limb1: 0x6d642f42a5d0866bd209ed40,
            limb2: 0x1397b2bcc67094b9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d,
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244,
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d,
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5e78f1bcff7c28ae5b69787,
            limb1: 0xaafb89593605ee0e8b012c54,
            limb2: 0x28fb5a68e101327d,
        },
        r0a1: u288 {
            limb0: 0x2a0b4c6f8b612a22e56ddc98,
            limb1: 0x964fad27830bcca5f3154d38,
            limb2: 0x13433680b80e79d3,
        },
        r1a0: u288 {
            limb0: 0xbf25980bb4f9a59621307dd5,
            limb1: 0x4531b1582733b21f00a667f5,
            limb2: 0x28538b3653a020a6,
        },
        r1a1: u288 {
            limb0: 0x282289d3be41caa0be61424a,
            limb1: 0x96793028cb3e10164e184d94,
            limb2: 0x2815633be50db9c9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6,
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035,
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc,
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad,
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780,
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45,
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1bedb7f8469071e150f7161,
            limb1: 0x5635258aa648fcf1c975cfb1,
            limb2: 0x1f9cb4fab58e0a85,
        },
        r0a1: u288 {
            limb0: 0x85838b3ce15def8056589a07,
            limb1: 0x9ace8b5ff22d3acc1ecf7b87,
            limb2: 0x2f37fa0d2f83dc14,
        },
        r1a0: u288 {
            limb0: 0x1df535866482d012a2daf26b,
            limb1: 0xb368dc6e305807d4292871d,
            limb2: 0x1ad852352738cd59,
        },
        r1a1: u288 {
            limb0: 0x6a3d61485701b69883364b0f,
            limb1: 0x34f1d5de1f012a6eac9b79aa,
            limb2: 0xffe264f27de6988,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x443be1663f32375897c94e59,
            limb1: 0x9afc035d42b3d8de5980d509,
            limb2: 0x13c6ea2edb789c14,
        },
        r0a1: u288 {
            limb0: 0x7f7c44c58e625e98a938f5d9,
            limb1: 0x430172fd4c9a53c37d115b61,
            limb2: 0x2228004c49db3743,
        },
        r1a0: u288 {
            limb0: 0x52caa31cf95f179b3a2e4c52,
            limb1: 0xa8f06096a66da0fbf85da199,
            limb2: 0xba5832648f61481,
        },
        r1a1: u288 {
            limb0: 0x10d152f7d49b36c808015606,
            limb1: 0x28744f3688f75277dc9d6b6b,
            limb2: 0xf7d6dfb0d1844b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30,
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb,
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf,
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf9f0fc19e2be9e4faa07ff62,
            limb1: 0xa60aeb9254429fe63c1e6cc0,
            limb2: 0x1966b73cc970ae1c,
        },
        r0a1: u288 {
            limb0: 0xbb4ff5374fe025938ebaad09,
            limb1: 0x63c1faaa3aca4b64da328c36,
            limb2: 0x11c86bfa2f5c9e2e,
        },
        r1a0: u288 {
            limb0: 0x1a3bb21a527f689c96790ebe,
            limb1: 0xe7ca15dac42c18079cc7cfa9,
            limb2: 0x1c4d4d7e012c9d92,
        },
        r1a1: u288 {
            limb0: 0xdc7d16ce5018b2b607a1060a,
            limb1: 0x6418c1e0970ad032cf94dd61,
            limb2: 0xab45019e1f3c2b2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82,
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6,
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857,
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46,
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b,
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542,
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4149288875c6c8c32c07858e,
            limb1: 0x9b77d4e47a856cec30e79f20,
            limb2: 0x2c804cef895cff7b,
        },
        r0a1: u288 {
            limb0: 0xd0112d232de410f2dff6f8d5,
            limb1: 0x6d2fe288d25753d402906413,
            limb2: 0x1dc8be0d84a5c73f,
        },
        r1a0: u288 {
            limb0: 0x8c5200e024b9ded384eb01ba,
            limb1: 0xb5cdc71c676ceb281456d07f,
            limb2: 0x4c7b375ef782c68,
        },
        r1a1: u288 {
            limb0: 0xf64797b2e631016c370cfb84,
            limb1: 0xd8c4ae7462e814f81b2d99ea,
            limb2: 0x21420592da904b5f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7b0168b3a032554a91960e94,
            limb1: 0x384f0ae1176b4d82e73f882f,
            limb2: 0x785a59b1d5aaf,
        },
        r0a1: u288 {
            limb0: 0x1b084f9140a6a156c1d8ed32,
            limb1: 0x27fedcfaecbe196b76a03934,
            limb2: 0x15eeef680c68e202,
        },
        r1a0: u288 {
            limb0: 0x226f4793a7ae86668804e71d,
            limb1: 0xbcbb8edbc28a37ba7be54da,
            limb2: 0x255c928f87d890c8,
        },
        r1a1: u288 {
            limb0: 0x58444ad88ee6875899b7512b,
            limb1: 0x21c0fdeec1817684816248de,
            limb2: 0x2e87bf9ab6820c28,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb,
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2,
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd,
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x612ac1350310b2b2d94ff2a2,
            limb1: 0x668a431acf1eb79f2f67d10b,
            limb2: 0x6418b0cb7c69588,
        },
        r0a1: u288 {
            limb0: 0xae214c3a5a6184d09f69b79a,
            limb1: 0x283959ab5df5f12e214644c0,
            limb2: 0x2bc9ebf2fbbd1e7a,
        },
        r1a0: u288 {
            limb0: 0x2d65896cada740e327b1ef2f,
            limb1: 0x9897b84f2673fe33b7d12191,
            limb2: 0x252cf48799bd6f3d,
        },
        r1a1: u288 {
            limb0: 0xbaf1ea1d6befaced98f0507c,
            limb1: 0x4b7ac2c3bb897b628ba1201d,
            limb2: 0x2ca8f90b27562108,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28,
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6,
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c,
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x623749968c7ac92386957232,
            limb1: 0x6983d134041838a19cc2e505,
            limb2: 0x4c79041385f7e1a,
        },
        r0a1: u288 {
            limb0: 0xf6ad87066791d7486bb12012,
            limb1: 0x1e16010b650a0df6dd1d5146,
            limb2: 0x878c605196b62c7,
        },
        r1a0: u288 {
            limb0: 0xbf8826615168f2bea4dec566,
            limb1: 0xb849aeb7114d6caa42b82570,
            limb2: 0x944edd16e461173,
        },
        r1a1: u288 {
            limb0: 0xcbfdf9432c56fe95c739303c,
            limb1: 0xf5e5961f18664635420d9649,
            limb2: 0x92ccf4dd982e622,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df,
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b,
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144,
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c046d42ecb00ba8a617d5fa,
            limb1: 0xad1d211a032179f848a55c56,
            limb2: 0x27009af7a8f7420d,
        },
        r0a1: u288 {
            limb0: 0xe08990a2c8304fd33f8c1f70,
            limb1: 0xe7c1a929cd149322d5dfdcb,
            limb2: 0x15979122d5b38f0b,
        },
        r1a0: u288 {
            limb0: 0xe074abcc17dd681598cac560,
            limb1: 0x473ec6e935331b628594890,
            limb2: 0x1783fa26343c6f37,
        },
        r1a1: u288 {
            limb0: 0x935d177e247a39a8f90c02f7,
            limb1: 0xc740267e22e9f97a240e0202,
            limb2: 0x3f74487197e5eb6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e,
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7,
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09,
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7,
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53,
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13,
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x55086b4eeea2d60cad3d7dce,
            limb1: 0x65998317a9b202c15812a63c,
            limb2: 0x181dce2cc57f15c6,
        },
        r0a1: u288 {
            limb0: 0x9c0b5273db9764bb8ac54bc7,
            limb1: 0xf8b241e87f2df5e65202a3ad,
            limb2: 0x2553f49b9911af31,
        },
        r1a0: u288 {
            limb0: 0x469346bc4113efabf1626025,
            limb1: 0x2275137c1cb5e4962ce20278,
            limb2: 0x12c8e48e6940db5e,
        },
        r1a1: u288 {
            limb0: 0xa75032842ebe947fd079d4ce,
            limb1: 0x41f29ae7cdcadb8971c6490,
            limb2: 0x21ffc09f51e13343,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9a324f8c9e54e58454d4bba9,
            limb1: 0x553d500730707f0a5edb3f73,
            limb2: 0x146e6f8d1dfded07,
        },
        r0a1: u288 {
            limb0: 0x51250c0bbfec095262deba98,
            limb1: 0x144a500075d6d52beef7a7cf,
            limb2: 0x26846d7255cde85f,
        },
        r1a0: u288 {
            limb0: 0x4c93d60baea8fc67201c84e,
            limb1: 0x1923e0094bc88b5b8bf1a221,
            limb2: 0x7fbadce63cca768,
        },
        r1a1: u288 {
            limb0: 0x41fc437eb02556ea9487011e,
            limb1: 0x65a7b1c733003425a4d1a667,
            limb2: 0x2fe10d02b17bdf47,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0,
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8,
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28,
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc191e22b963e4ad594054308,
            limb1: 0x7e243f974f15615f0e520312,
            limb2: 0x1c85b9528bf975a1,
        },
        r0a1: u288 {
            limb0: 0x16a7bbff11e54d584a59893c,
            limb1: 0x5bb861f5c428c8790b7fbb70,
            limb2: 0xe5014158118dc91,
        },
        r1a0: u288 {
            limb0: 0x5998304add41765107d76145,
            limb1: 0x9632c7a1b8c0e3d014a13521,
            limb2: 0x71b8b3d0b8d3bf6,
        },
        r1a1: u288 {
            limb0: 0xda50a8543588429b2cb09057,
            limb1: 0xa3f43cb461aaafaa06ff2f31,
            limb2: 0x2044baa630128a2f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff,
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6,
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2,
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb9005f1d7b7df84efe6ac0f,
            limb1: 0x2cbdd269051514ea5964c885,
            limb2: 0xa92bf3bf453f012,
        },
        r0a1: u288 {
            limb0: 0x8d63b50257621cab620f2b40,
            limb1: 0xee6d3d32fc388fd8ebe7ba1a,
            limb2: 0x1a865aacb641545e,
        },
        r1a0: u288 {
            limb0: 0x1b9ee02fdc1799f0283d6a9a,
            limb1: 0x7b2b81e9fd3d314d5443df53,
            limb2: 0x2f23571e2cd0705b,
        },
        r1a1: u288 {
            limb0: 0x46f6835bcd8ce829fb6df7b0,
            limb1: 0x81dfb10f1df1a92a33829d5,
            limb2: 0xeeb2302eb1a2a16,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d,
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce,
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1,
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95,
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118,
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5,
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf1de9e35f326156c81678a0e,
            limb1: 0x88589498e54db7e57c178905,
            limb2: 0x1b551c5d659b0770,
        },
        r0a1: u288 {
            limb0: 0x793f1893124cd7999555094f,
            limb1: 0x3a8984bfccdff0fb92a9e3b2,
            limb2: 0x111786807c54b1d8,
        },
        r1a0: u288 {
            limb0: 0xce706cb62d0f6b52cfafe27c,
            limb1: 0x7234a7ea9dea507584e165cd,
            limb2: 0x2cab8bf2833bb68f,
        },
        r1a1: u288 {
            limb0: 0x6715888bbdffe94071db5cc0,
            limb1: 0x90fb5b6dc797af0d5d3a75c1,
            limb2: 0x13df1a6b39764bc3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x66fc7060f7430244e5ef07a1,
            limb1: 0xc69a21a845dd279096dfc8f8,
            limb2: 0x52e21fb206237e5,
        },
        r0a1: u288 {
            limb0: 0x7ff033c92fe7150c8d89da06,
            limb1: 0x70f719bc8897750555970b5f,
            limb2: 0x187f03f844fa44f8,
        },
        r1a0: u288 {
            limb0: 0xdc8cf544135f478f87d2ffd5,
            limb1: 0xb4ec682767e282ec1340df0,
            limb2: 0x25c3910df0d36bc0,
        },
        r1a1: u288 {
            limb0: 0xaf00fc488eba32414100b8dd,
            limb1: 0x210933eab62c2bbc5101e8a5,
            limb2: 0x148be514589bb920,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531,
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421,
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261,
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa,
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af,
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2,
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5acc01832db9925986cb5e5,
            limb1: 0xa78cdc619f834a6b30b0316d,
            limb2: 0x1007aa43e62de274,
        },
        r0a1: u288 {
            limb0: 0xac33eb17e76cff825e2dcdc9,
            limb1: 0xaef73b46db6fbe8fe66f822e,
            limb2: 0x2cd5543159af5325,
        },
        r1a0: u288 {
            limb0: 0x4f4a20cb2a6f919e9fce4028,
            limb1: 0xc5ecd7f49f1aecaf47398579,
            limb2: 0x171d2db1b066a277,
        },
        r1a1: u288 {
            limb0: 0x4c86602c31c3789c8719d3ee,
            limb1: 0x5159540bd86e2173905f1bfe,
            limb2: 0x60d48c981c5cd76,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd7e939d4036b0b95e6cc0812,
            limb1: 0xd4505f13278c6d6af53de9b6,
            limb2: 0xeb05bb3ced12efd,
        },
        r0a1: u288 {
            limb0: 0x400086ff62e0b77cbdb339bb,
            limb1: 0x16d38e4d5b1297cc286f5454,
            limb2: 0x1840323db6d8af47,
        },
        r1a0: u288 {
            limb0: 0x580e15a439d5c0c7ff69aa1a,
            limb1: 0x4e6a71985f1e1f6e2ec9e4dd,
            limb2: 0xe4b38d68080ffc6,
        },
        r1a1: u288 {
            limb0: 0x55c7d428b32d109025ce2fa9,
            limb1: 0x86946bbe0206c77e2b9ff67b,
            limb2: 0x29e2a142c308f55b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3,
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567,
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f,
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd97610c55454e76b65aba919,
            limb1: 0x7c97dfe9ed67fdd6a7f4786b,
            limb2: 0x103b6fccf3715648,
        },
        r0a1: u288 {
            limb0: 0x35b466f6108e5146725f903e,
            limb1: 0x25bbfb19cf0935986eaf6f15,
            limb2: 0x23134bc4c181b3c6,
        },
        r1a0: u288 {
            limb0: 0x157e09f942fb98d2c525036e,
            limb1: 0x68205f5756ea7503a5f6d185,
            limb2: 0x15f4a158eeba2d83,
        },
        r1a1: u288 {
            limb0: 0x46f41f1856aa843af4f999f1,
            limb1: 0x5893a275cd028f7bbd24a3d6,
            limb2: 0x1834b5ce2937b1f0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff,
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242,
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639,
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe91e3fa5cbd0d229123d3499,
            limb1: 0x7ea896312803446b252ef207,
            limb2: 0x23ef9fa50be05d54,
        },
        r0a1: u288 {
            limb0: 0xc04098cead8cb337354be5cb,
            limb1: 0xc88f5df3d0590fc47eb91520,
            limb2: 0xd1ad8aaf868e6fd,
        },
        r1a0: u288 {
            limb0: 0x5c4e0cdf04d027fc7a050e0c,
            limb1: 0x1a58bcd81f659160cc617e5f,
            limb2: 0x48722c16024195,
        },
        r1a1: u288 {
            limb0: 0x94f0a5e4c2a2259d892609ec,
            limb1: 0x70bc19ca349a0928e775ebb9,
            limb2: 0x9abce86d72b9fb7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3,
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5,
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0,
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1,
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67,
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72,
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x970df0548e60583e116632bc,
            limb1: 0x47d0646bf681f7c57479b788,
            limb2: 0x280d5f7089653878,
        },
        r0a1: u288 {
            limb0: 0x7a145f04c4909123301bb129,
            limb1: 0x28877097879eb387d4df52fd,
            limb2: 0x888b5e00a5fc9e3,
        },
        r1a0: u288 {
            limb0: 0x5e4e2c55481d12afe7378cd3,
            limb1: 0x396f195d9061aea091063794,
            limb2: 0x2ce482e06781a089,
        },
        r1a1: u288 {
            limb0: 0x68e3d68ed7e40d01660a3c9,
            limb1: 0xc881958319649dcf720fac64,
            limb2: 0x2611a11727937443,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x119d01fa588d39719f07c865,
            limb1: 0x16f71b6887f941ed7acbf317,
            limb2: 0x2e66f0632496a654,
        },
        r0a1: u288 {
            limb0: 0x67aeaffbe853967c158499f7,
            limb1: 0xb2c3864e7f9273aeb3614c6d,
            limb2: 0x280d2984db93419f,
        },
        r1a0: u288 {
            limb0: 0xdf3defc3318e6b088233ebd0,
            limb1: 0x6c862c607926a9f45f21ecd8,
            limb2: 0x21dca7c0d164add,
        },
        r1a1: u288 {
            limb0: 0xd410156ba870d5d75e149f8d,
            limb1: 0xf4e7c50cfa8b684439c09f57,
            limb2: 0x13bedb2eba23343b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1,
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585,
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f,
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43e28f5e5884d021f562d748,
            limb1: 0x6c49a2d204fc8d8109466c55,
            limb2: 0x2548456c98990a6c,
        },
        r0a1: u288 {
            limb0: 0xd7ef55914ca164214119b7c9,
            limb1: 0x28a2f40b79f5c0d0348b4d04,
            limb2: 0x1dded9e0f53dd5e6,
        },
        r1a0: u288 {
            limb0: 0xf6f027ec571ffd62295f6b76,
            limb1: 0x904fc203d27469b0fb3babf9,
            limb2: 0x20f287f850057a3d,
        },
        r1a1: u288 {
            limb0: 0x2913c6a4cb2daf3959e9b247,
            limb1: 0x86b680150bba38e93bd119a3,
            limb2: 0xc4316c74ef504da,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43,
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c,
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d,
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x269ad461a7f1b0f545b76369,
            limb1: 0x25aa5186fa21ec8c9d6de404,
            limb2: 0x1934024a0376ddd5,
        },
        r0a1: u288 {
            limb0: 0x4d30d41b49a6e3035e936d3,
            limb1: 0x9e94ad7f64c62db196a884f2,
            limb2: 0x29a256ce232c8b6c,
        },
        r1a0: u288 {
            limb0: 0xec4b0aa1b32168e9007d07c,
            limb1: 0xe9e77803c654d82dff1ccaa0,
            limb2: 0x1d74a1a3bcfd5f10,
        },
        r1a1: u288 {
            limb0: 0x5bb83645f0d0fc306cebfb01,
            limb1: 0xd31be0579c38bcd84bcd23c3,
            limb2: 0x5f4d8e1a1c382f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113,
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba,
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87,
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7c49adce81006dd281c9ec9a,
            limb1: 0x6e3e3acc4400f61ad9f3f604,
            limb2: 0x1843cc66b77b0072,
        },
        r0a1: u288 {
            limb0: 0xb866b8e4841ff723a884f277,
            limb1: 0x54cec54148454da8a9058cbf,
            limb2: 0x19f182abd0b47743,
        },
        r1a0: u288 {
            limb0: 0xb9ffb6a7d0525367de15d602,
            limb1: 0x5dd237c02a5cc2739ca89e62,
            limb2: 0x1bb3b54ca676deb9,
        },
        r1a1: u288 {
            limb0: 0x56eb114a8481e514f67834af,
            limb1: 0x1fd219f439ea0c8c38101215,
            limb2: 0xd8fcd0643a38d82,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a,
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995,
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb,
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab37ef7580ed36b3f6a585de,
            limb1: 0x147bb7b640aa9d695448cfed,
            limb2: 0x888bbbaadd8c52a,
        },
        r0a1: u288 {
            limb0: 0x36fc7bd003a73005ba41352d,
            limb1: 0x4b1506eab71c9b1048506ba4,
            limb2: 0x2ff4ca150fa5d58b,
        },
        r1a0: u288 {
            limb0: 0x9c46225b496cdbc9c9ec9115,
            limb1: 0xd7b6aac6696e66a6ec066199,
            limb2: 0x18338fe49de33978,
        },
        r1a1: u288 {
            limb0: 0x3cfdc8f7d8bde993562125a9,
            limb1: 0x4267cbe0b77c7a5622718851,
            limb2: 0x139a0bf2e39e28c2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885,
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4,
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72,
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xefef026d2fab34a3d93788d0,
            limb1: 0xefd8bcefadb13929b3b0502d,
            limb2: 0xf38b27b53d824a6,
        },
        r0a1: u288 {
            limb0: 0x1d11a83ce0efcf95b2633a5e,
            limb1: 0x8109dd3b7d821184179fbb6f,
            limb2: 0x1275a750c5c6b36e,
        },
        r1a0: u288 {
            limb0: 0x648ed81211b6fc6188bccf1f,
            limb1: 0x4de5637868096cabf95c70e1,
            limb2: 0x2c817f8a423e0535,
        },
        r1a1: u288 {
            limb0: 0xe203b6a680ff002330bb6f51,
            limb1: 0x1f0a9dcf417fe08c4f8c41b6,
            limb2: 0x1c70fbb498abf97e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c,
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4,
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b,
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2,
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f,
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532,
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x54bc52b08b0cfe39b1c266d2,
            limb1: 0x6c676d69d2b53644833db739,
            limb2: 0x16e6dc169323237c,
        },
        r0a1: u288 {
            limb0: 0xc73df44e5b409916cfdd38c4,
            limb1: 0x78fc29e49826a0e37994dda6,
            limb2: 0x10ca666cb51f4428,
        },
        r1a0: u288 {
            limb0: 0xf35512948bcb4dc3830ad554,
            limb1: 0x446e71ef912aeef5e379cfeb,
            limb2: 0x50454e94f3bba08,
        },
        r1a1: u288 {
            limb0: 0x455ad792e76564adc15b8c1e,
            limb1: 0xd6ca8f710198631377d8ae04,
            limb2: 0x2c647923797c039a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x91607fcff1ada7229481ff6f,
            limb1: 0x6c2b78f55eba4d519ba04b29,
            limb2: 0x1ca03370bb704d8e,
        },
        r0a1: u288 {
            limb0: 0x15fe1feaa4b74c405ad5f23d,
            limb1: 0x6299e4d9d563be1fe9010d31,
            limb2: 0x266919f52377113c,
        },
        r1a0: u288 {
            limb0: 0xa0d5beb2de76357c66ec1bd2,
            limb1: 0x8c397ac337f52fefd517903d,
            limb2: 0x25ad387ebd7b49d8,
        },
        r1a1: u288 {
            limb0: 0xbc3d30b87857efccc6630b4f,
            limb1: 0xe9fe71d7504bdd9893337576,
            limb2: 0xdfb4a5d1eb50c43,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb,
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9,
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652,
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3bd69fc9129e35b6cdaca34b,
            limb1: 0x2f9ca1780e4b837b53e9612d,
            limb2: 0x29b64505cb5ea1a6,
        },
        r0a1: u288 {
            limb0: 0x76f75515728eab64afa65825,
            limb1: 0xeb62c1eebd138a734aea5bc5,
            limb2: 0xd7ace14c11a0b32,
        },
        r1a0: u288 {
            limb0: 0x4816fb8568dd930776110141,
            limb1: 0x3565f16c863a29b8435628f4,
            limb2: 0x29b5b9b8af0d476c,
        },
        r1a1: u288 {
            limb0: 0x2ab4593a8c8a2672c8ee36ee,
            limb1: 0xae64e8e5abaa32e02c799202,
            limb2: 0xdeb5493b3653e75,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053,
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6,
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879,
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x626b55e87384b8acb745e1b4,
            limb1: 0xa7b666300f9816f713cd15b0,
            limb2: 0x1e53cecc379281e4,
        },
        r0a1: u288 {
            limb0: 0x90b8621f3ee99364721a7f19,
            limb1: 0x163188dccadc50baa43b754f,
            limb2: 0x3f0a1435fc405b1,
        },
        r1a0: u288 {
            limb0: 0x413371a7c4a733eeb87c4ffc,
            limb1: 0xa3a77a4bf1fbe3494b67b3f5,
            limb2: 0x890ac90edbd9dbe,
        },
        r1a1: u288 {
            limb0: 0xe6adbd37f6ef53f57f3ed2f6,
            limb1: 0x796b88b00f23e651e85ba413,
            limb2: 0x190eb421664fdd9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1,
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b,
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae,
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b,
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00,
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57,
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x773d2d42ae6e1fd42c472463,
            limb1: 0xfb0485ac55d582155d7d3542,
            limb2: 0x1df09ceaf76efdf8,
        },
        r0a1: u288 {
            limb0: 0xc233688328e0e0223a2a89a7,
            limb1: 0xb2cf4253c06a0494d53e438a,
            limb2: 0x14b952f388949480,
        },
        r1a0: u288 {
            limb0: 0x272b1fff390203d7373a246c,
            limb1: 0xbd80acc82a9c576268ebbb37,
            limb2: 0x936fb1d6883a3fc,
        },
        r1a1: u288 {
            limb0: 0xce16309e042a9dc4019be077,
            limb1: 0xd8cb910140283a97cb3b30a0,
            limb2: 0x1fb825d779df4e62,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb9b3a6c22d5e9a0a7272cef,
            limb1: 0x5fe114e3ebb324650c626efa,
            limb2: 0x295b590c710f0160,
        },
        r0a1: u288 {
            limb0: 0x4d53367517da28c9a581f915,
            limb1: 0x229b1c24bc306c3b1a0800f8,
            limb2: 0x2976f4837bf3fcd1,
        },
        r1a0: u288 {
            limb0: 0x5ef8e74febe12bfd9075af2a,
            limb1: 0xe94cb01fdb9d048250add05a,
            limb2: 0x99044a1f92d15ec,
        },
        r1a1: u288 {
            limb0: 0xba59f16e96f9c0366fc35dde,
            limb1: 0x95a72682ce05f986f7ba104a,
            limb2: 0x836ca7d885178a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263,
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca,
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf,
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8b0194d2575d285e53a4d638,
            limb1: 0x8926539d04b1223ef6d7b33,
            limb2: 0x96bd58efc143a1b,
        },
        r0a1: u288 {
            limb0: 0xa26acd1e55f219da6bb8b76e,
            limb1: 0x6ee4330c75ae10930cf2b706,
            limb2: 0x2f2e97ddd13db22e,
        },
        r1a0: u288 {
            limb0: 0x54384377b54fe3123d25c0a2,
            limb1: 0xf2455d4fc3196cbaa51ffa7f,
            limb2: 0x1280353dc0c5bc1a,
        },
        r1a1: u288 {
            limb0: 0xb665dd38fae6bbb5321e3dd6,
            limb1: 0x405004d94e9ed624313a4458,
            limb2: 0xcde80061104d6db,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38,
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6,
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78,
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10,
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966,
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a,
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeeb70bc1709e77f3aa2f3171,
            limb1: 0x9525ec684ca6415a008c889a,
            limb2: 0x1e7c5fe0ce1a85be,
        },
        r0a1: u288 {
            limb0: 0xc7cb47ed2c3b3c10cd255fab,
            limb1: 0xe2917c6c5eb8f675dc3011c4,
            limb2: 0x85634f6aa9e4eb6,
        },
        r1a0: u288 {
            limb0: 0xeadc6579f0b74cdf0392e37a,
            limb1: 0xe24cc4b44f807de8b44508a2,
            limb2: 0x2b091b75d75ee607,
        },
        r1a1: u288 {
            limb0: 0x32d451e5a36666cbbf965333,
            limb1: 0x678eb23b8a3a7882dd2ec274,
            limb2: 0x28f7388495d6cb23,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81779f4f2e2abcced5afaebd,
            limb1: 0x7be1e88cf92a73dbff6084b4,
            limb2: 0x17c59f7267b61d4c,
        },
        r0a1: u288 {
            limb0: 0xf4e5dd3c578932aa803c0341,
            limb1: 0x5bb87f125badf43083d3de2b,
            limb2: 0x6ec6f2b1e7bfd8,
        },
        r1a0: u288 {
            limb0: 0x42706eb6cf449778e6455feb,
            limb1: 0xfa8a0f73e51dce8a06ce2977,
            limb2: 0x901e6c84f47ec17,
        },
        r1a1: u288 {
            limb0: 0x95dac139d29a007e33f93a8a,
            limb1: 0x8f699ec3208d77aa2c45e4ee,
            limb2: 0x1c678406e946fb0d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7,
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5,
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9,
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8c6efc99166b0f97b68796d0,
            limb1: 0x57e704f2275cd8fca177bb6e,
            limb2: 0x562332037128142,
        },
        r0a1: u288 {
            limb0: 0xd2ed08a09a1881bbfd7656e3,
            limb1: 0x5a44ee446bf3ed07ce431ac,
            limb2: 0x101d3a1fd9d6cdfa,
        },
        r1a0: u288 {
            limb0: 0x1df4205cd1087a92120d7409,
            limb1: 0xefff504243ce7a2f250cd20d,
            limb2: 0xfbb0bca20937046,
        },
        r1a1: u288 {
            limb0: 0x8fcbd3823038713b5959fa33,
            limb1: 0xecea77230fd41457fd2de7af,
            limb2: 0xbe9a0c7a23bb75f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e,
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e,
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77,
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe41f88e9a6937086aa66f5a4,
            limb1: 0x3be60d561af94e8aad8f1a65,
            limb2: 0x11b2316d970b858a,
        },
        r0a1: u288 {
            limb0: 0x4582c57de09f85f1acb5c873,
            limb1: 0xe9bfc839065bd75d8559277f,
            limb2: 0x11f681197046ed7,
        },
        r1a0: u288 {
            limb0: 0x25c1584625b6d34508611f64,
            limb1: 0x68a9466cff418af3fdb6f20b,
            limb2: 0x16dbd2b3fdd1f619,
        },
        r1a1: u288 {
            limb0: 0x1f49425f1c2e0ab2eb22953b,
            limb1: 0x6b3462d9c35c0498ba2b8ea1,
            limb2: 0x18c956f55a542c10,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8,
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441,
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4,
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c,
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162,
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc,
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xed3aacb1f20af8b7168f6940,
            limb1: 0xd353d47baed097e183d3a4a2,
            limb2: 0x64fce24624d8acd,
        },
        r0a1: u288 {
            limb0: 0x83bf3bc01e0e78c18fefee4f,
            limb1: 0x676056ff03bea6cfdd701fd9,
            limb2: 0x29d6c0c81d5e364e,
        },
        r1a0: u288 {
            limb0: 0x4562461dafc32c17de8d5190,
            limb1: 0x62c066d7c5eed3b6e97d633c,
            limb2: 0x17575521176bc397,
        },
        r1a1: u288 {
            limb0: 0xa5afa8ba208a2af52b6a85ba,
            limb1: 0xae14cda557bc5a75fc59db1d,
            limb2: 0xce23d0a84547678,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5fdc3b803940e4b19d4219d,
            limb1: 0xfdd84b23f3f9ccbe3d18d81e,
            limb2: 0x4cd2442d863a71e,
        },
        r0a1: u288 {
            limb0: 0xd451070ab247fdf5d91140f6,
            limb1: 0x3492d2fd4847d9c3fb977a9,
            limb2: 0x233f57139a1cfffc,
        },
        r1a0: u288 {
            limb0: 0xb443097327a93ab405228b0f,
            limb1: 0xf7134c7266bab0262c305aee,
            limb2: 0x157adf405c43ee2f,
        },
        r1a1: u288 {
            limb0: 0x7f874df3a20f1796dd2fe5b8,
            limb1: 0xcd8a0570f8d971ef90f6ea78,
            limb2: 0x16e6a00e5a878f3c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e,
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50,
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8,
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x11e3db7939c934681f5eb1c5,
            limb1: 0x54a808d647856427f0c9cb91,
            limb2: 0x1b61a9a437c80bff,
        },
        r0a1: u288 {
            limb0: 0xe99fb1342d720d4b805b6c66,
            limb1: 0x1d33b5ff10b4adeb7bcfaecd,
            limb2: 0x1fe3b8316e1f9cf5,
        },
        r1a0: u288 {
            limb0: 0x57f86c79bfc28e4f8a8917ee,
            limb1: 0x4db775d3d9963304cfeba21a,
            limb2: 0x23c297c2de52ed2e,
        },
        r1a1: u288 {
            limb0: 0xedd382a5703059c8258544ce,
            limb1: 0x7bf324193aebe517b4be10c,
            limb2: 0x3342bbef8f59844,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200,
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7,
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26,
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef3fc421aa84f908b7945fbf,
            limb1: 0xcd7300d97c611545e4c18fbb,
            limb2: 0x101216815f1384da,
        },
        r0a1: u288 {
            limb0: 0x200bc1440ca0cac0050ea259,
            limb1: 0x3601150c50dc72f4e51f2795,
            limb2: 0xc17e1aef908e014,
        },
        r1a0: u288 {
            limb0: 0x442c12bee3b14efb0f886d0e,
            limb1: 0x1c3b5ca975eacd6d452a7302,
            limb2: 0x248738ebd085f9d9,
        },
        r1a1: u288 {
            limb0: 0xd44cb52c750333339a8a0400,
            limb1: 0xe0e49aef22e130d7217c2b9c,
            limb2: 0x9931844ef121171,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da,
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941,
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3,
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb58505b2641e3a72f1c29751,
            limb1: 0x115d4570683b6eabbb680113,
            limb2: 0xa6e6f0bbb330006,
        },
        r0a1: u288 {
            limb0: 0x36e6eb10ead8ac7eaa791995,
            limb1: 0xd483e0670d2d2c1c26e55980,
            limb2: 0x261713e0768fdd90,
        },
        r1a0: u288 {
            limb0: 0xc3a4e5d339f2579f081dc13f,
            limb1: 0x28bec1d607b6d4e2aa80b365,
            limb2: 0x2ccd65c2edfcd670,
        },
        r1a1: u288 {
            limb0: 0x8ee534d57d0e89e6c4227b1,
            limb1: 0xc7262050f56455e591e6de61,
            limb2: 0x28c4fab8962b3281,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed,
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631,
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03,
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90fb591f47d0f76ba59b2fdd,
            limb1: 0xd1b7bbde9f73ca56e625d740,
            limb2: 0x248069f2e4ab26a8,
        },
        r0a1: u288 {
            limb0: 0xbe00054c4b851eb43bbfa6d7,
            limb1: 0x64e14937bc32901c33ccaaac,
            limb2: 0x2966d2cd247378c5,
        },
        r1a0: u288 {
            limb0: 0x542ae02b8d9b33d81c1a1fc1,
            limb1: 0x16eedd49a8208cbbacf9c56d,
            limb2: 0x160843fde7ebab6b,
        },
        r1a1: u288 {
            limb0: 0xabd87074c7274f85665324cd,
            limb1: 0x5dbd15a7dd930d051fc766f6,
            limb2: 0x1dbca310c4a68d85,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba,
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c,
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f,
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0,
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a,
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442,
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47501e7e312a9e76ca6d3e6c,
            limb1: 0x6090840fe2e3211595b84dc7,
            limb2: 0xe614acb84648fae,
        },
        r0a1: u288 {
            limb0: 0x9a85ad7e6d989f4a7cb16d13,
            limb1: 0x8f9fc524817faabaaa89672f,
            limb2: 0x2a187faee0f62f9f,
        },
        r1a0: u288 {
            limb0: 0xd2e27d9ea730c36db3069e1d,
            limb1: 0x5c8da9b6f8d73944320513cc,
            limb2: 0x76f1d5c5ecb2bb3,
        },
        r1a1: u288 {
            limb0: 0xe70861ed072489a64ac6f87d,
            limb1: 0x59889ffe1c9fcdb590a959ef,
            limb2: 0x19af24ef4fc311b3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fc208d159c92435be76e4ba,
            limb1: 0x9e1b6fa8150dc4accda6b9c7,
            limb2: 0x1b0f89b62e116944,
        },
        r0a1: u288 {
            limb0: 0xe3b529486e37b15c53dbdd7c,
            limb1: 0x707ca4e94e87e32f1dc88bad,
            limb2: 0x2605242ba6bba80f,
        },
        r1a0: u288 {
            limb0: 0xa5b3d88ba29665df8b2bc4b4,
            limb1: 0xc72cc6d34531fb8914d6ddb9,
            limb2: 0x25506fe3534e9319,
        },
        r1a1: u288 {
            limb0: 0xd7afa39658d7705829b1c8f5,
            limb1: 0xe61a75d57e3e95adbaaf0faa,
            limb2: 0xa1e9540b9b762fd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6,
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8,
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22,
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf758cc0edd888d1979394557,
            limb1: 0x25b86942067cd7461d271d12,
            limb2: 0x30078e01691a73c3,
        },
        r0a1: u288 {
            limb0: 0xb9b811bf909fb76c82e33008,
            limb1: 0x611dcc1c6bccfa4be37a6587,
            limb2: 0x8ea22bbe5af5252,
        },
        r1a0: u288 {
            limb0: 0xeaeb96e25dd382c39f2253ca,
            limb1: 0xd1d8545752ea1880cd540f05,
            limb2: 0x21798800764b9a34,
        },
        r1a1: u288 {
            limb0: 0x6adf4a0bfcc98731cb737650,
            limb1: 0xece6fdac6b9ed3b0bbc79c0b,
            limb2: 0x17c1dae33de1fc66,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729,
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb,
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9,
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d,
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6,
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb,
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x585b232ee6c78c8fb8f8f321,
            limb1: 0x5adb00c02b0f38622d60462a,
            limb2: 0x7104ff0e589b771,
        },
        r0a1: u288 {
            limb0: 0x72df83390164e1e4825f3d14,
            limb1: 0x4433a00b46db805c049455d0,
            limb2: 0x11b02405cea2a7ed,
        },
        r1a0: u288 {
            limb0: 0xe5d610297289fa5cd5c51316,
            limb1: 0x1866321b4cad9cd85e960c1f,
            limb2: 0x19826b6b0faa27b0,
        },
        r1a1: u288 {
            limb0: 0x9a9bebd811682bef18c0c80d,
            limb1: 0x766e9c8fb22dadb6063fd9d3,
            limb2: 0x911837eeca8980a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa666cdff5db6aa0dd6c790cd,
            limb1: 0xb987fa5eec7dad2d73cad48a,
            limb2: 0x140d8c2841db427d,
        },
        r0a1: u288 {
            limb0: 0xcfe8147318f5f714482fbbb5,
            limb1: 0x316cd19f8e6c1fa24628a48a,
            limb2: 0x25992d9830d2a65c,
        },
        r1a0: u288 {
            limb0: 0xd356b2aad8feb53fbd942f2,
            limb1: 0x7082924db118b69d0f67a360,
            limb2: 0x7c934c840a918f2,
        },
        r1a1: u288 {
            limb0: 0x893e0010d5062e4df40e5e6e,
            limb1: 0x9b05292f3d98b19930766a64,
            limb2: 0x126a98a736587861,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3,
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6,
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4,
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5dce0b653055c3d9c0fddeb8,
            limb1: 0xdf778e2feb02fec6503ea9c3,
            limb2: 0x3b72d2503ccc493,
        },
        r0a1: u288 {
            limb0: 0x217b15c349c1e04ab7989065,
            limb1: 0x10b9fd86e5a467b0973684d2,
            limb2: 0x1efe6810e53ff886,
        },
        r1a0: u288 {
            limb0: 0x1d1f4a85ebd0cf6f33908e54,
            limb1: 0x797ddfac5fb6d560fa82b5ab,
            limb2: 0x1313898fe6dec0f1,
        },
        r1a1: u288 {
            limb0: 0xc21d4fa4cb666b7a190d5d0,
            limb1: 0xd0defa701b2a6f940d0ff8e3,
            limb2: 0x10b07c8d71ad6f8f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c,
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a,
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374,
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5ac7a6ab7069bca67d1abdb,
            limb1: 0xefa1787609a2c10bd1a9f488,
            limb2: 0x102c4c99be4b79c6,
        },
        r0a1: u288 {
            limb0: 0x48ba6eedd92b94b6fed43252,
            limb1: 0x33702bab32502826b7e6ec71,
            limb2: 0x15c72b1778201fd6,
        },
        r1a0: u288 {
            limb0: 0xa6001051e2e34f807d6f7db7,
            limb1: 0xb87f65db629132b7316c62db,
            limb2: 0x2f70a3ee31a50bdc,
        },
        r1a1: u288 {
            limb0: 0x3b4cfb08da8ddd901844c38,
            limb1: 0xf727980472ff261ae0d8cb20,
            limb2: 0x25551dfa1fcebeb4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272,
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63,
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4,
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdd6655e4f8dcc9215e2736dd,
            limb1: 0x606ee7dea5720dfe33e6facb,
            limb2: 0x241ae33fd0672822,
        },
        r0a1: u288 {
            limb0: 0x6313d0d6dfcfcf2d15ba0e68,
            limb1: 0x5b44d88d156db01483027f2d,
            limb2: 0x176c9b2728a4fb9,
        },
        r1a0: u288 {
            limb0: 0x28b6d642803cf784e5276766,
            limb1: 0x5d28fc0caf8c5915f0747634,
            limb2: 0x134dec8bd2eead0b,
        },
        r1a1: u288 {
            limb0: 0xcd63ae850beb19649119e64b,
            limb1: 0xaeb1424cd38dfcb4871a1f11,
            limb2: 0x2f220692547cf022,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4,
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44,
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab,
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665,
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2,
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822,
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x52cfbf8c9fd7fc8e603d9d9a,
            limb1: 0xe1003b0d2d7df9222016e864,
            limb2: 0x28b30a157f393cfb,
        },
        r0a1: u288 {
            limb0: 0xc418c650c60fe6a79107443b,
            limb1: 0x875d37e41f36791cad049915,
            limb2: 0x21340c3dbd670329,
        },
        r1a0: u288 {
            limb0: 0xaec28efc5dc1f08e9a0b0f79,
            limb1: 0x2e3fdbd3a4650f31e7adab3e,
            limb2: 0xb55555d3975d297,
        },
        r1a1: u288 {
            limb0: 0xae661bf4bacf8da8b6c2b622,
            limb1: 0x1aff34cad7e8ad8771eced5c,
            limb2: 0x26fd3a364ce7fba3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7bdafe5981af559a6f1a8814,
            limb1: 0x6306d22b1ff8fc6c06e01d0b,
            limb2: 0x997077cca71d47e,
        },
        r0a1: u288 {
            limb0: 0x724e26041c4752aae7562f8b,
            limb1: 0xd1ce7a04f72d6e7b5fc6f0dc,
            limb2: 0x1028c5f4d0f1591,
        },
        r1a0: u288 {
            limb0: 0xe4379f3fd10f89b69df8561a,
            limb1: 0x63b9f03b6702fe2bbd6e3847,
            limb2: 0x1f5eeba648283883,
        },
        r1a1: u288 {
            limb0: 0xbe4f03bf00e0cf91fa4fe213,
            limb1: 0x7c81d51282cee1749c8f21c3,
            limb2: 0x22b6a2f51dfaa680,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e,
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857,
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf,
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4ce67f41ac482fbb4de0a076,
            limb1: 0xdd1fe9f88ad5a2f6efddaad3,
            limb2: 0xe12c006090c58,
        },
        r0a1: u288 {
            limb0: 0xbd298949a9fe9ffcd842058d,
            limb1: 0xfe9db1c7b79e159e3747553d,
            limb2: 0x332ac2ea31d29c8,
        },
        r1a0: u288 {
            limb0: 0xa2efe0b27428437e0ffcf27c,
            limb1: 0xb7c0d69d88a01c644e318742,
            limb2: 0xfe098fa725ae829,
        },
        r1a1: u288 {
            limb0: 0xf42ff472c3ab37fd26db7a3d,
            limb1: 0x2f27386ac90a27349739c166,
            limb2: 0x1017c87fcb7a9641,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d,
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff,
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae,
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd,
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377,
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e,
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0303eec19278205fa00d570,
            limb1: 0x35baf21135483cd1426c3230,
            limb2: 0x18d7352106b358a5,
        },
        r0a1: u288 {
            limb0: 0xa9ce769b1b1427cbb763ace0,
            limb1: 0xe4361e3b56869bb9173c58ed,
            limb2: 0xf63bb88a27b0ab,
        },
        r1a0: u288 {
            limb0: 0x4306fc67b927fc3c29f8f56a,
            limb1: 0xe2ff75c3c91e3d7bd569b27c,
            limb2: 0x2974f1a940e8b8ca,
        },
        r1a1: u288 {
            limb0: 0xd5dcbbd2e2da5677599b485b,
            limb1: 0x5b485b0835ce48b73ff9631d,
            limb2: 0xe13e020a208b967,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x91e6136d90314c45dcad3843,
            limb1: 0x627ef0f9587b39526fe42c82,
            limb2: 0x2d8fbb1026dc932a,
        },
        r0a1: u288 {
            limb0: 0x7e128a315e63ce03156d8c91,
            limb1: 0x6422f6221ed2575c1cdc13d1,
            limb2: 0x1c3fc3de4e8da93,
        },
        r1a0: u288 {
            limb0: 0xdd72e6b890887b53d8fb03d3,
            limb1: 0x9d3c640fa2ea3168efdc2c56,
            limb2: 0xd0d069c3e49bfa6,
        },
        r1a1: u288 {
            limb0: 0xf1bbeb3ab63d0984f6e23678,
            limb1: 0x30bb7ebb4be3189005686874,
            limb2: 0x2ec8628d523325a7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f,
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695,
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df,
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98b50e42996856288605c1c9,
            limb1: 0x308efaf5b588b7a00f697a06,
            limb2: 0x29584b027a2eea68,
        },
        r0a1: u288 {
            limb0: 0xf29bc7b2a643572f78316d41,
            limb1: 0xf89aaec02133f7e7f7794821,
            limb2: 0x22188ac142c37dd3,
        },
        r1a0: u288 {
            limb0: 0xda1d35d7b8a5456801a36903,
            limb1: 0xb90d55dcd6fa7797764e5957,
            limb2: 0x8c9ffaf2446736b,
        },
        r1a1: u288 {
            limb0: 0xc175ec415208ae030d847449,
            limb1: 0x926a9eac10ae15ef610487d2,
            limb2: 0xa0ad33d6f054456,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8,
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3,
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb,
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x85a075c32a61d5056953e2ec,
            limb1: 0x97f59a98946979e05bafac9a,
            limb2: 0x2dab3498f8487505,
        },
        r0a1: u288 {
            limb0: 0x8407c6e061067c19730230aa,
            limb1: 0x9234dd7161c5b05c8d658a35,
            limb2: 0x11d25e13cd3d70fe,
        },
        r1a0: u288 {
            limb0: 0xe0704db8fd4e6cc10b00924b,
            limb1: 0x35bfcb13d07ab0267ebb7204,
            limb2: 0x444c47880bcc531,
        },
        r1a1: u288 {
            limb0: 0x8ad559361de420ea6ee65639,
            limb1: 0x6d1c2902b30da7317d2626e,
            limb2: 0x270772db60d336b5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d,
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914,
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7,
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3,
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940,
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d,
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x20984d6ffb01f5c30c8ffb2a,
            limb1: 0x9dabb869064371a2b64ef634,
            limb2: 0x305fc20e8266170f,
        },
        r0a1: u288 {
            limb0: 0x25f938210e70a8c2e0ea0a8,
            limb1: 0x394889a4a9fb57c1daf5c15b,
            limb2: 0xff8cb6c90c93da0,
        },
        r1a0: u288 {
            limb0: 0xaa35ae43c90e8d7c0db17200,
            limb1: 0xebc5399a204bd7015e79e682,
            limb2: 0x3fcbe586d6eb91,
        },
        r1a1: u288 {
            limb0: 0xaf1955eac35d3bbc19aec45d,
            limb1: 0xa5807efe5c1c21af1f198356,
            limb2: 0xca7862c92c298ed,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x491653e3d3ea7c4866b9a964,
            limb1: 0x58693b25893f1f7ef902c835,
            limb2: 0x1d977e600ff2ec39,
        },
        r0a1: u288 {
            limb0: 0x12baa8d933bc727d1cf9d187,
            limb1: 0x45f776afd46e58b38033572f,
            limb2: 0x1dc76f55a312802d,
        },
        r1a0: u288 {
            limb0: 0xf95adb3ba9df7099028be1de,
            limb1: 0x8a6d7433a06aec1a028fc01e,
            limb2: 0xa3605e5748b0d2c,
        },
        r1a1: u288 {
            limb0: 0xa2ee2966ca31e7e136ce29cd,
            limb1: 0x26a9e3545ce2ef61e9d8e428,
            limb2: 0xa39884d8ad441a7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42,
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29,
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419,
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1ede4cc00628163add391041,
            limb1: 0xcb5eb14522cbc2bc7f02d7a8,
            limb2: 0x914a4c260119473,
        },
        r0a1: u288 {
            limb0: 0xd55e24c3c7aa02a7b3c1e47e,
            limb1: 0x5ef3a60079278c5d9d364c2c,
            limb2: 0x29dc86269cc389de,
        },
        r1a0: u288 {
            limb0: 0xc8750d4542d46b2bfd8bb3dc,
            limb1: 0x9fb80681ad52cceb222b6be1,
            limb2: 0x251c95ff84863e13,
        },
        r1a1: u288 {
            limb0: 0x26c8244f0ee5646d14cc4d56,
            limb1: 0x840b31c10bde248af946cdd3,
            limb2: 0xbb7ccc8c417d9d7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028,
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8,
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6,
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4a24b8b02615c3c7af4b1335,
            limb1: 0xfcba49856fc589b52a70cd3b,
            limb2: 0x1baccde0c19178ef,
        },
        r0a1: u288 {
            limb0: 0xf24b9ef9bb77bbfe047c3655,
            limb1: 0x773d595d895fffadcea22504,
            limb2: 0x5c9a179047fd0e3,
        },
        r1a0: u288 {
            limb0: 0x18baaea07a388f0c7c869928,
            limb1: 0x66c296186607683b05f4635,
            limb2: 0x22c32a77f4384ada,
        },
        r1a1: u288 {
            limb0: 0x17ea934ae6b71e827bbd05c9,
            limb1: 0x4f6511532748661ee808e760,
            limb2: 0x304b18d4798d592f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6,
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1,
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd,
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x179a4c1a15d8edb5383d7e87,
            limb1: 0x9c5bad49e9849f58950dc787,
            limb2: 0x22864c778ec3dc5,
        },
        r0a1: u288 {
            limb0: 0xc4a5e110d37612f7553596bd,
            limb1: 0xa1f46062f8a24150fc2202fe,
            limb2: 0x2bd5e2ec291f0b9e,
        },
        r1a0: u288 {
            limb0: 0x21048f3bc8190c9a8ae82d8c,
            limb1: 0x8ec114afa922417377c99aa9,
            limb2: 0x19dd8d8f289beaa3,
        },
        r1a1: u288 {
            limb0: 0xc618da11c86cae2bf1bacab0,
            limb1: 0x562ec82a667f65e7a7be4400,
            limb2: 0x126942fb793bd682,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed,
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7,
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944,
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7,
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec,
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924,
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd86b0e87796e7b231dfc67e0,
            limb1: 0x599139d0e1b6e37ebbc3637e,
            limb2: 0x18d7798a9bde3bca,
        },
        r0a1: u288 {
            limb0: 0x80d7fc44f3f82f227a35d770,
            limb1: 0x34d6897b9891dd56fefc14d2,
            limb2: 0x2d3d33ba01ae5659,
        },
        r1a0: u288 {
            limb0: 0xa73239f466e4462871a57227,
            limb1: 0x33eef4f806c76b646f23ecf2,
            limb2: 0xf3799eb6ae3645,
        },
        r1a1: u288 {
            limb0: 0x98a7b8ec834ad21a585bf3a7,
            limb1: 0xd570af7f4af138c40e7faf0f,
            limb2: 0xe708ff7de8aaa75,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x54007880041ef1fd2198b00f,
            limb1: 0xdd1e776c7a0d54bd0f7fd34f,
            limb2: 0x2ebc22ce1bb17eb7,
        },
        r0a1: u288 {
            limb0: 0xc669161c1e0c21ff540caf6a,
            limb1: 0xd66aa1644d05f146a1ac263d,
            limb2: 0xd1fd1a0ef850621,
        },
        r1a0: u288 {
            limb0: 0x7fe89c71c48efd8df1b98c35,
            limb1: 0xfaa31c7ab9a9e61314351cb0,
            limb2: 0x213a4bf84417985e,
        },
        r1a1: u288 {
            limb0: 0xce2c5447cf17ea1926727ffd,
            limb1: 0x1ea1e36dbbbceba57abeaedc,
            limb2: 0x22c6745d4b49af4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663,
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847,
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47,
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd26f1ae282c1ccbfa7e23784,
            limb1: 0x88d2b1c30a1041fca6d217c,
            limb2: 0x6cdb14da658f2c8,
        },
        r0a1: u288 {
            limb0: 0x601150b4f8a0c14e06573c74,
            limb1: 0x4066d0f17ec31c76679655e6,
            limb2: 0x306121f0a435f86c,
        },
        r1a0: u288 {
            limb0: 0xa1c0e70b100ef7dd3290effa,
            limb1: 0xb28562cb66d8563c319d760a,
            limb2: 0xc1a42c79fc1c611,
        },
        r1a1: u288 {
            limb0: 0xaf748b5d8af946fdcd99cfb9,
            limb1: 0x11dc18c37f849df320b9d006,
            limb2: 0x2e3bbeb7ddfc80c9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31,
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82,
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53,
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81b35bd20a7ca97c1239bab1,
            limb1: 0x204340273ee9a6eead873944,
            limb2: 0x4b9a6c0f8044802,
        },
        r0a1: u288 {
            limb0: 0x8ffec5b9e1bb4502881cf385,
            limb1: 0x517dc4e197b67768d59760a8,
            limb2: 0x10565c1ea70b1214,
        },
        r1a0: u288 {
            limb0: 0x9ba9572ba79c26c5661ea527,
            limb1: 0x45355f53c58cfc2cbcc76092,
            limb2: 0x128f59af5e118976,
        },
        r1a1: u288 {
            limb0: 0xe606389e44e5989216c98b05,
            limb1: 0x3211e8734da48719dcb02911,
            limb2: 0x10e07d15a3359965,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0,
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b,
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8,
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9142a3b4f66c2b25feb6ce14,
            limb1: 0xb1a114fc43f25794ff7bfb3c,
            limb2: 0x19526ac4377df287,
        },
        r0a1: u288 {
            limb0: 0xa903b6d9e73bac5195833a4f,
            limb1: 0x8eded5e2a0b929757072c3ab,
            limb2: 0x217a33e5c266ef20,
        },
        r1a0: u288 {
            limb0: 0x4f4ae0b333f12104b0ec2074,
            limb1: 0xeaf9b69c9de5c361aa292cda,
            limb2: 0xeb41eefac7fb1e1,
        },
        r1a1: u288 {
            limb0: 0x7d575a0614c422c2765e47ab,
            limb1: 0x17c263f76b2e58d836d0efef,
            limb2: 0x2086ba12ecbf132a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b,
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f,
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27,
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510,
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395,
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc,
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5c5540a916ebebb42c1ed01,
            limb1: 0x2a03966872ef7b1a9bed9c57,
            limb2: 0x25943ff1918bb65d,
        },
        r0a1: u288 {
            limb0: 0x367959ad0f7160f83f32b75e,
            limb1: 0x5ab18b3541f7ad400405991f,
            limb2: 0x7492b31e756a16c,
        },
        r1a0: u288 {
            limb0: 0x57ffd37d52ee1079dc9ee26e,
            limb1: 0xaa98f2ea30a8c5c3eef1d214,
            limb2: 0x30044052b54ea964,
        },
        r1a1: u288 {
            limb0: 0xa84244b5842e9653eb050e8,
            limb1: 0x443153798b4f4be9d35dc73c,
            limb2: 0x1dc6742df60f8b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x458df0a85accd8f8acd1fb63,
            limb1: 0x4ccf282ed8000ed1edc1c7a9,
            limb2: 0x10042b5bcc821973,
        },
        r0a1: u288 {
            limb0: 0xbcc0b5ca2dee0730f3d43810,
            limb1: 0xe86d8a4264ce081b461ebf9f,
            limb2: 0x293aa18bd18848e,
        },
        r1a0: u288 {
            limb0: 0x508cddf8be1b982ca372ae56,
            limb1: 0x9b5ee546fd9b7155eaaa6ba9,
            limb2: 0x312b7c0fe81e1aa,
        },
        r1a1: u288 {
            limb0: 0x6f50a31937c9538500c689f2,
            limb1: 0x47cc29af6d61210dc4cde372,
            limb2: 0xd727bc8c09e5f2b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f,
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234,
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724,
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa125313f4b6ef6249b08f05,
            limb1: 0x3cc82ca5b6eaabc2ede5df98,
            limb2: 0xd433818f145434c,
        },
        r0a1: u288 {
            limb0: 0x111b7829eed16b1cb438e0d8,
            limb1: 0xe8ef27fe7e7787e4dd52b5c2,
            limb2: 0xdd0bfe7969df60c,
        },
        r1a0: u288 {
            limb0: 0xd55055689bdd1f40f1217df9,
            limb1: 0xb0e1c938b5708f136048964d,
            limb2: 0x2e8c7b6d8435f801,
        },
        r1a1: u288 {
            limb0: 0xe575f161fa2bd5797774b118,
            limb1: 0x40bd24f01352760142ef2746,
            limb2: 0x7109e0c5fb673fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce,
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad,
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065,
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0,
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2,
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3,
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x514efec24ace80a25bc72fb7,
            limb1: 0x5d7d5763f02502d484d7c4c8,
            limb2: 0x3b4e6d8e6cedeff,
        },
        r0a1: u288 {
            limb0: 0x6b6573243e75e2c5696ee11f,
            limb1: 0x7e7baa6c0eef8e6fe2a9307a,
            limb2: 0x2cc5976a0cbec9fd,
        },
        r1a0: u288 {
            limb0: 0xc8576a11189e0ac1096dedc,
            limb1: 0x3b4ab71aef44e76c17cfc84,
            limb2: 0x16419607a613fe43,
        },
        r1a1: u288 {
            limb0: 0xe70f60567cd29af321a07689,
            limb1: 0x2eeff82aabf3a9cf59342115,
            limb2: 0x2263af81eb4c3526,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2055d2f36d4366954e6c77a,
            limb1: 0xd1fc61778cddc11c873234db,
            limb2: 0x2b45e6a86380d8d,
        },
        r0a1: u288 {
            limb0: 0xcde036bc16845e7a5e237ddb,
            limb1: 0xc100560debf62b9c3dafd5a0,
            limb2: 0xfaeeb7c0947b548,
        },
        r1a0: u288 {
            limb0: 0x9117772de913a4a5ecce0474,
            limb1: 0x831567b8515364ce86cf6a01,
            limb2: 0x237e693b8023c910,
        },
        r1a1: u288 {
            limb0: 0x19294794097b27d46c8bd03b,
            limb1: 0x3f95441440284e0b2c7fb6c,
            limb2: 0x25aab19a5ecbea74,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543,
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4,
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947,
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf,
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763,
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba,
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5f82f3db343c98361f0b378,
            limb1: 0x2b66cbe354589d7911153916,
            limb2: 0x2a34bf71ae8e3f5d,
        },
        r0a1: u288 {
            limb0: 0xf235074966f3ccff0af716d9,
            limb1: 0x6d885d843e9d1db757cfdf96,
            limb2: 0x2dbb151f39d5495e,
        },
        r1a0: u288 {
            limb0: 0xae0d44cdd8e60137d9caa7,
            limb1: 0x1b704cc3ad2eda38b3814a9d,
            limb2: 0x150ea1274ffbc005,
        },
        r1a1: u288 {
            limb0: 0x765903db95a3d492b1027575,
            limb1: 0xf2a77043c606d02f19bc7c1a,
            limb2: 0xfbb707bf2365c1f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x217e98356e44d31cc12fb46e,
            limb1: 0x569a1dc0a1385c514c255a28,
            limb2: 0x1933f038cd171d1e,
        },
        r0a1: u288 {
            limb0: 0x709720562defb67138be8962,
            limb1: 0x934342b1067e3ab641be6c67,
            limb2: 0x71befd3f5f86d44,
        },
        r1a0: u288 {
            limb0: 0xba3d3c23cad85592a81f88d8,
            limb1: 0x971854927fb03b1d0d8793fb,
            limb2: 0x1cd85d6f4ffede6e,
        },
        r1a1: u288 {
            limb0: 0x11a18c1bbadaa064855778d6,
            limb1: 0x78f50fbbffb9a6edb39cf068,
            limb2: 0x2ad06ce27838d4d3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42,
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783,
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377,
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa80a6d5e8319fb73dd3f861d,
            limb1: 0x952281c686710ec3788d2451,
            limb2: 0xeec9c6786273cd,
        },
        r0a1: u288 {
            limb0: 0x3e925702e32bbc4e248fcb5b,
            limb1: 0xb4506a4ec18eb8a38e2bf8e0,
            limb2: 0x1cd037e7e4a8eb82,
        },
        r1a0: u288 {
            limb0: 0x8186533ec78dc51a10bb8347,
            limb1: 0xb7d088d4df03ffc99801140d,
            limb2: 0x18cfb34701f6e416,
        },
        r1a1: u288 {
            limb0: 0xc6655b387a23b814bdfba9a8,
            limb1: 0x977e5edef561b3cf7ebcba4e,
            limb2: 0x18f6fe0951a856b2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c,
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064,
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132,
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4b2c17d01530b30d1dce55dd,
            limb1: 0x21eef06388aec922ed433fba,
            limb2: 0xe9fb3f24129c424,
        },
        r0a1: u288 {
            limb0: 0xf4c1b735e20f7a60298117a6,
            limb1: 0xb166bd9695c7e4711d428bae,
            limb2: 0xe3d56fc0b5e652,
        },
        r1a0: u288 {
            limb0: 0xac5adcfca333f44de478a8f1,
            limb1: 0x9b75b2ced0ff856678642875,
            limb2: 0x1dd06ba8989e66e0,
        },
        r1a1: u288 {
            limb0: 0xc5ff8e3e0a1c07e9ef899d1b,
            limb1: 0x3dcb893b4d62ac3ba2a62166,
            limb2: 0x2eeb8dfe40b61818,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed,
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99,
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368,
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x186edaa5b8c2861d6ff7deac,
            limb1: 0x390d47ea9351e5dc71c34978,
            limb2: 0x1002ee54b1b4827a,
        },
        r0a1: u288 {
            limb0: 0x32ab986e6a437d73953ffc5e,
            limb1: 0xfce8145850747e69ce0b5a37,
            limb2: 0x2d0184c3a9c8c43e,
        },
        r1a0: u288 {
            limb0: 0x978e0e17357c3fa7929383ea,
            limb1: 0xd0a74b44d2cfc829836e899c,
            limb2: 0x21a5c4e61992bea7,
        },
        r1a1: u288 {
            limb0: 0x4ad1e23f673dee6de5d02d43,
            limb1: 0xb68a1faf0a41a0ce0dd0cce5,
            limb2: 0x1d462ee38f013a94,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345,
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492,
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593,
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297,
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230,
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f,
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5cb783480c860eea3d1ab819,
            limb1: 0x5e08a0dc6fe708f3a899a760,
            limb2: 0x14785854a33603c,
        },
        r0a1: u288 {
            limb0: 0x5e37761d3c17acce13dc7eea,
            limb1: 0x4d48fb5f9597332745aadd1d,
            limb2: 0x13c6ef350a677db6,
        },
        r1a0: u288 {
            limb0: 0x37c13e663dc44d391fece6cb,
            limb1: 0x7951f74947e30931c4976fb9,
            limb2: 0x6f26f82af360046,
        },
        r1a1: u288 {
            limb0: 0x37a36418f4341342e44cc91,
            limb1: 0x99ca4475be81d30e14d2767e,
            limb2: 0x27e04c9a8841f05a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa7c98b424523efa4d8a411f6,
            limb1: 0xfee94d2023e4881270e0cea5,
            limb2: 0x23317f1931dff75d,
        },
        r0a1: u288 {
            limb0: 0xc5f6b65a15e88fbd3e38c82f,
            limb1: 0xfad043c45c850147a4b72f4d,
            limb2: 0x1b5e99cc442da790,
        },
        r1a0: u288 {
            limb0: 0x879d8be06a1630dc49b92ddc,
            limb1: 0xce1cd8ad8691fddf903ace56,
            limb2: 0x10f5c535ccbf4efd,
        },
        r1a1: u288 {
            limb0: 0x30844a9b49edfc5b67c54d25,
            limb1: 0x67edfb03fe27374f70fc6b60,
            limb2: 0xb884acb21b72b1b,
        },
    },
];

