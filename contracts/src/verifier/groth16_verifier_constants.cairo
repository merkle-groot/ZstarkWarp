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
            limb0: 0x75a4e4af42d80251045d2b86,
            limb1: 0xb6a33155d26056f6bcbd360a,
            limb2: 0xb1bed73ed38651b,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xac459c7c4dd1701ec0fa5d76,
            limb1: 0xb0253f92f92add9895d9d74c,
            limb2: 0x1a8d3d575a1e83a6,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x47897af37c8f753a9cf7c0d9,
            limb1: 0x33227f0683831ad884005155,
            limb2: 0x28b9d54588788a4d,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x451b83bdd929977e064ac0d8,
            limb1: 0xf537533232308a7aeaf7f124,
            limb2: 0x2cc26274ecf34eaf,
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
            limb0: 0xe63c2916d9c4a26911153697,
            limb1: 0x79b3cbf8abbae76823923ccf,
            limb2: 0x26b281f34ffe4f44,
        },
        r0a1: u288 {
            limb0: 0xf092ef61dd7aefb131ea30b7,
            limb1: 0xfe2874db55ead35a2f8cf491,
            limb2: 0x3c52a045b2d2faf,
        },
        r1a0: u288 {
            limb0: 0x827a7c590f591412b903a0e2,
            limb1: 0x4234fb77dd454c4fc3dc1429,
            limb2: 0x1966278c2ad3f3b1,
        },
        r1a1: u288 {
            limb0: 0xa16f109061e6849d8cd59e53,
            limb1: 0x7f8dd6406345948f71555969,
            limb2: 0x22af8c198a5383b5,
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
            limb0: 0x8235a176625be9adc767c6b0,
            limb1: 0x3e9c79bdd5c670f573ef2dc1,
            limb2: 0x9b1cc7f913350e5,
        },
        r0a1: u288 {
            limb0: 0x77dedb2b5ea59c65a692cc90,
            limb1: 0xba27d0db2b96850367f475ff,
            limb2: 0x2c9f246e86047079,
        },
        r1a0: u288 {
            limb0: 0xe5f74e342cc778041f795c65,
            limb1: 0x761b4a3ea43c0c0dd3a55667,
            limb2: 0x16fe26e6b65dac78,
        },
        r1a1: u288 {
            limb0: 0xc702b9fcda3a07794ba75ef4,
            limb1: 0x38c26f761e3bc3ce262c1127,
            limb2: 0xdb4c25956de1c74,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd64ca506bdd385ef5d98111,
            limb1: 0x4349bb1b74598ed22c96d575,
            limb2: 0x944cfa78035d55a,
        },
        r0a1: u288 {
            limb0: 0x78699efc93cc4de74440b0c4,
            limb1: 0x18e4205c2486e583f138f78d,
            limb2: 0x10c846c1e7e50eab,
        },
        r1a0: u288 {
            limb0: 0x280c9e1b5232ab22028ba269,
            limb1: 0x67c58c506bedd9091adb84e9,
            limb2: 0x23de061b0455cc0f,
        },
        r1a1: u288 {
            limb0: 0xb32a2ec511cfe2fdcdd1022f,
            limb1: 0xd3f15930b8f9ba1db230a5a9,
            limb2: 0xec1888aa7dd7179,
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
            limb0: 0x78004c8b69f1fbbe4c9268fe,
            limb1: 0xc60047fb19a63abc69452242,
            limb2: 0x2ba40ea6c4c3485b,
        },
        r0a1: u288 {
            limb0: 0xedac90005429cc2e028a4af8,
            limb1: 0xa015ae79c3df27b126d4cdb2,
            limb2: 0xbf21b7c6901f8bd,
        },
        r1a0: u288 {
            limb0: 0x93d9184efe9a60a96f032b2d,
            limb1: 0xc10260d0e5f58cf3b9a08c03,
            limb2: 0x27e6b876efc7e4c5,
        },
        r1a1: u288 {
            limb0: 0x191872187b1cd6c1cfd53ae8,
            limb1: 0x81b8b7499cd451c5aa5d3288,
            limb2: 0x265f42da91d144d7,
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
            limb0: 0x46892e5ed7a81f100cf5481c,
            limb1: 0xf0a94cb026d6e5d52390f113,
            limb2: 0xbe72a60975eccd8,
        },
        r0a1: u288 {
            limb0: 0xa6c1a9a0152191cba510c080,
            limb1: 0x8b1b69e3189c5978ed59c63c,
            limb2: 0x8550fa62ec9f9b8,
        },
        r1a0: u288 {
            limb0: 0xf0e30e3cb64b0e38db2c3b3e,
            limb1: 0x6c050231a9babe0e5045cd93,
            limb2: 0x2031a282ba18eb23,
        },
        r1a1: u288 {
            limb0: 0x5c05347faba355678e59e699,
            limb1: 0xd9e521f21eacbe48ed9217c5,
            limb2: 0xd5be7e630e7d801,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95afcfcdb9769e8ad4360e05,
            limb1: 0xa4222ebe16a063f495cfb064,
            limb2: 0x1c0da86ece421e80,
        },
        r0a1: u288 {
            limb0: 0xe6e2cf3e7211b4cb2722dbec,
            limb1: 0x76b28f9fd4cc01fa240d125d,
            limb2: 0xbf5fe002d24f0f5,
        },
        r1a0: u288 {
            limb0: 0x99e1ed521ff2daa36f28dae7,
            limb1: 0x9cb29181365ef236512e572f,
            limb2: 0x97f065abbf9d2a2,
        },
        r1a1: u288 {
            limb0: 0xe704173338b9c75ae85e1180,
            limb1: 0xa55b55ac5c9f1180178b6b3a,
            limb2: 0x1d35dfbcd8acc035,
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
            limb0: 0xa500953424cbf6012a521dad,
            limb1: 0xb32726de6c53504419229dbb,
            limb2: 0x186a7ec339c4c1d5,
        },
        r0a1: u288 {
            limb0: 0x324f4125d47dd10e9803337,
            limb1: 0xc5bb63c74c4c31223e5b0d0f,
            limb2: 0x18b9102ce30c20b4,
        },
        r1a0: u288 {
            limb0: 0x961f6339e6afe259be16f4d9,
            limb1: 0xfadb8649853eb878c58bc802,
            limb2: 0x5a7fa905b820adb,
        },
        r1a1: u288 {
            limb0: 0x725f9396d13f3a116050e8cd,
            limb1: 0x64bd318d6c53e910c0d05736,
            limb2: 0x1f0fd6696b4bb9f7,
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
            limb0: 0x4ba93063670a454233c38f01,
            limb1: 0x826b1daf09da754070421b53,
            limb2: 0x1a1e2c3442f86d84,
        },
        r0a1: u288 {
            limb0: 0x3145f718ebd8c035ea1c4baf,
            limb1: 0xd4d43ada13ac8deeb574e5e9,
            limb2: 0x7d645cdcdcfe16c,
        },
        r1a0: u288 {
            limb0: 0x615bc00d2e096353df8ffa36,
            limb1: 0xeddf9d1191228ff2f85e6565,
            limb2: 0x203327060d7aa299,
        },
        r1a1: u288 {
            limb0: 0x2766af1639737da792d0a8c,
            limb1: 0x823f8047af1057cb1fa5d815,
            limb2: 0x13afdfa993d93e40,
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
            limb0: 0x823947cd49f45b6b23f99aac,
            limb1: 0x56877ecbd2837ad2c1c3b374,
            limb2: 0x6ba4fa23b451dd4,
        },
        r0a1: u288 {
            limb0: 0x3f4fb55eb2d28cee87549c2a,
            limb1: 0x4920f25f25c8bff6e3d4547f,
            limb2: 0xe3ae8b798e5b860,
        },
        r1a0: u288 {
            limb0: 0xf8e807d0cd8c9b580ce0e511,
            limb1: 0xfbf221787647434d87baee7,
            limb2: 0x2b04b52385028622,
        },
        r1a1: u288 {
            limb0: 0x60c8ffe93c9a5dd86f38abcf,
            limb1: 0xe030f2664efb433242bc9e1b,
            limb2: 0x1d14bd4bb964ae55,
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
            limb0: 0xbf4af7b9c25b7e4cf9c27ab1,
            limb1: 0x7cd5fa342e0bd7fc48935446,
            limb2: 0x29a0a565f2af74ec,
        },
        r0a1: u288 {
            limb0: 0x80e2292680f4e50e8946a2c3,
            limb1: 0xcf3088315ac871ef152e6137,
            limb2: 0x206c8dec0bd9dbb7,
        },
        r1a0: u288 {
            limb0: 0x92b8c787fce114b74fb54bcf,
            limb1: 0x79f90123a72b47f159e5bacd,
            limb2: 0x84d69d38a8d26ef,
        },
        r1a1: u288 {
            limb0: 0xbf0b88c30fdd81e62b8afe0,
            limb1: 0x6cd27f1b92bc8146f30966eb,
            limb2: 0xb30bf736ff3be89,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa7e4004fc7e45834b8bc925c,
            limb1: 0xaf8cb1bc45a1b46f5ac7e2f7,
            limb2: 0x2e53d92ab5bad020,
        },
        r0a1: u288 {
            limb0: 0x16655e12c8d71ff8b82dd274,
            limb1: 0xb5ed79550cdbae8a730103ac,
            limb2: 0x2adf330feb92c057,
        },
        r1a0: u288 {
            limb0: 0xdda88cfb322303fc14bc62dc,
            limb1: 0xde54af8d87e347fc5a439804,
            limb2: 0x18964ee8f57f2a8d,
        },
        r1a1: u288 {
            limb0: 0x26077863520aea7a3c3a3d1,
            limb1: 0x57ae9bfb566a760c09581dd8,
            limb2: 0x1299d9c6fbabbf75,
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
            limb0: 0x5d0f77d44ff612d1652fcb84,
            limb1: 0x68f4971e9a3d3b645aa15c14,
            limb2: 0x20c95b7b34c46f32,
        },
        r0a1: u288 {
            limb0: 0xe2e4625d259758557f3e53c1,
            limb1: 0x19b959e53c502f600aa67987,
            limb2: 0xa04cec65e24265b,
        },
        r1a0: u288 {
            limb0: 0xc341d98ae194790b6fb58ef0,
            limb1: 0x532e178e8ac00dd61a5d1d3,
            limb2: 0x166fb8380cb150d0,
        },
        r1a1: u288 {
            limb0: 0x820489bea8df4966e6acf39b,
            limb1: 0x671acd9f60298540ec04085b,
            limb2: 0x1fb35ecbedb072e3,
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
            limb0: 0xd9051a8cc6e151374503962c,
            limb1: 0xbc061e699029ced0092d710f,
            limb2: 0x14630c3dbb774753,
        },
        r0a1: u288 {
            limb0: 0xfcdfc9548646fe9a9f359bd0,
            limb1: 0x4f89bced9594cde3f63cda5e,
            limb2: 0x2d92bceec3ed9df2,
        },
        r1a0: u288 {
            limb0: 0xb034283e072c689035620e26,
            limb1: 0x359e62ffe65e02bc66a47ab,
            limb2: 0x9a4df12aa299729,
        },
        r1a1: u288 {
            limb0: 0x587481e12f8092d1c6c4dec2,
            limb1: 0x2a26c85da7727e4a916bb96f,
            limb2: 0x2f3206bba63f3972,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc7157ed954de378a838441d8,
            limb1: 0x4bce45e418b129f7fc497aea,
            limb2: 0x15545992bf717388,
        },
        r0a1: u288 {
            limb0: 0xf1c4fce7087df35aed3f69a3,
            limb1: 0x6c6686e15f9df8f7f03f0b19,
            limb2: 0xa7a5e73ad86e19a,
        },
        r1a0: u288 {
            limb0: 0xbfce8146cd2669df12d1024d,
            limb1: 0x89343ed0516d848c590c2a8f,
            limb2: 0xd4852300a23793b,
        },
        r1a1: u288 {
            limb0: 0x7769d6296a534b0ec1e59b08,
            limb1: 0x31137cbfecec1e792f98a0a7,
            limb2: 0x105bab67a447efc7,
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
            limb0: 0xc8488223b270b93e2c1669f8,
            limb1: 0xe4e1658f5a8789f0b3076d7f,
            limb2: 0x169451712b97ee1a,
        },
        r0a1: u288 {
            limb0: 0xe5ed80e19b6e4fd93be86a35,
            limb1: 0x886f7aaf2dda58dbf3d535c3,
            limb2: 0x3b121ed0bb44d67,
        },
        r1a0: u288 {
            limb0: 0x8880a9fcc4ac84c972e42551,
            limb1: 0x4e430fb4d97510e31a56d4b7,
            limb2: 0x19f4eb8bddcae7c4,
        },
        r1a1: u288 {
            limb0: 0xb0fec37517ef35a93ecd6712,
            limb1: 0xdbfe153bd3fcc333000f192,
            limb2: 0x8134d4a2875bb86,
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
            limb0: 0x49e25d155d9602b6e5fd796a,
            limb1: 0xf2838a9630858ce7866f3dc3,
            limb2: 0xd70b015e6df2a22,
        },
        r0a1: u288 {
            limb0: 0xa6034e37fde1b69fccb3c3d5,
            limb1: 0x275b86873d15a91648042525,
            limb2: 0xa015c42177a983e,
        },
        r1a0: u288 {
            limb0: 0xa4a2da0af4387742994008c7,
            limb1: 0xff93d5cd48eeedcf16eea87,
            limb2: 0x6e0d86dedec9a51,
        },
        r1a1: u288 {
            limb0: 0x32f38a16f5adfba5344b6ac7,
            limb1: 0x5627b115958a66140b7b8d24,
            limb2: 0xe8ccea3ded40d12,
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
            limb0: 0xfe4870024f35d80be07fb3fd,
            limb1: 0xbefd41936c7f0c621f911c65,
            limb2: 0x228f880f024ddd51,
        },
        r0a1: u288 {
            limb0: 0x9ceec7137c58bef88c3d70f8,
            limb1: 0x518b1c08f3c5ee0d4c1b6022,
            limb2: 0x67a8b443a797fd,
        },
        r1a0: u288 {
            limb0: 0x9e917f4433a6a89d87592f03,
            limb1: 0xdaacb319e74ad10b249de23f,
            limb2: 0xb3c9a7b1708114a,
        },
        r1a1: u288 {
            limb0: 0x209a340fef30093a2e74ae76,
            limb1: 0xf56a2906d34dfe3b0fc2f456,
            limb2: 0x64b29012128c0b1,
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
            limb0: 0xe3e5b6c11e12c9130316ac4e,
            limb1: 0x85624910fedeb27379c40b83,
            limb2: 0x2a86f91fd1ac9213,
        },
        r0a1: u288 {
            limb0: 0x1b68eebaffcafc2d18d29447,
            limb1: 0x3d5fc471ee4d25de212604fe,
            limb2: 0x1eb0a883d53b3f3e,
        },
        r1a0: u288 {
            limb0: 0xd4596adbf8506db6c6119643,
            limb1: 0x6970c9f99b06cf87ec752127,
            limb2: 0x25e37bd0696b8268,
        },
        r1a1: u288 {
            limb0: 0xdfa34ef30fd9e7cb6f903951,
            limb1: 0x17e80e180543a7593b598fd2,
            limb2: 0x21b5ee875957adf0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x75816947008fe37e41969460,
            limb1: 0xa6355d72deabca31697511ea,
            limb2: 0x7dcfd5b10315f84,
        },
        r0a1: u288 {
            limb0: 0x2371a2aca71cdbbade5e9469,
            limb1: 0x51cfecb2636ea902084ff898,
            limb2: 0x1df45ce010a87885,
        },
        r1a0: u288 {
            limb0: 0x1237e3ee14ec1381fdd86297,
            limb1: 0xdd6055f8650b05f483ad62fa,
            limb2: 0xdc2bebb62c98940,
        },
        r1a1: u288 {
            limb0: 0x846d7a0317662fbbba90ee68,
            limb1: 0x4d951c672d2282e324db9ef3,
            limb2: 0x8022daeede54a84,
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
            limb0: 0xa3a1c616e995f2440faa122e,
            limb1: 0x886acab6d041323f4adab1df,
            limb2: 0x7bf0f8dc47d1d68,
        },
        r0a1: u288 {
            limb0: 0xbed176a7be0e5dfd7a6668b7,
            limb1: 0xe60c48701d1c4dc97176b092,
            limb2: 0x2955e39e67d37ccf,
        },
        r1a0: u288 {
            limb0: 0xb8445f45fe97bfb8769898fc,
            limb1: 0x7568a5f98b001ffa1b09b84c,
            limb2: 0x11d8f60cbafe6f0c,
        },
        r1a1: u288 {
            limb0: 0x3f746521b7a0764c4dd3bc3,
            limb1: 0x14350fec83ae13cdf3c8306d,
            limb2: 0x25f2d4542a66eda,
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
            limb0: 0x6bd95767469921d032816dcd,
            limb1: 0x656246d31413345a2f073daa,
            limb2: 0x25bb399283c3d519,
        },
        r0a1: u288 {
            limb0: 0x6cffc2e4f2c888397b7d529c,
            limb1: 0x251c3359a803045a0ff3e1d2,
            limb2: 0x2dd2bc1ddd7426ad,
        },
        r1a0: u288 {
            limb0: 0xe65699b28faf2e15718808c2,
            limb1: 0x35e9c1cb4a29d8829c872d6d,
            limb2: 0x6524ba3f45b5f0a,
        },
        r1a1: u288 {
            limb0: 0xbfc048e4328392cf22fe5d18,
            limb1: 0xe747e78104b9c85edd5d3849,
            limb2: 0x2f371f43c1fefd55,
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
            limb0: 0x9ecc08ec332a572cafff4e5f,
            limb1: 0xf55f4befcc3e731503f9a6ee,
            limb2: 0x4113a6b235c2bf5,
        },
        r0a1: u288 {
            limb0: 0x43d366ac8053f40261ed73f0,
            limb1: 0x49593d749523d84791eca72e,
            limb2: 0x1649a864aad506e7,
        },
        r1a0: u288 {
            limb0: 0x8df5ed9582858100158adb86,
            limb1: 0x35242a31e16bf1e39a702959,
            limb2: 0x17777f2e54553530,
        },
        r1a1: u288 {
            limb0: 0x7931321f8e9d4e7a0d7ea79d,
            limb1: 0xa5440f8aed4990ea877864ab,
            limb2: 0xcc1de33b6084fce,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x23ba842a61e6a873d826e083,
            limb1: 0x91650be489d39bc01a37643,
            limb2: 0x125fd6e40f489f13,
        },
        r0a1: u288 {
            limb0: 0x53b40b1c7e8cd718dabd50db,
            limb1: 0x1df6e654d7a8e15f20a56ed6,
            limb2: 0x18640cf7230d0631,
        },
        r1a0: u288 {
            limb0: 0xc67c93b151953966c583a4eb,
            limb1: 0x6802add8491627006c70ea35,
            limb2: 0x21fcfd78c113fe79,
        },
        r1a1: u288 {
            limb0: 0x13caf4cff6699b3225a83263,
            limb1: 0xcee6aef16aef1977c9b62cb2,
            limb2: 0xc65d0ca96eceda9,
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
            limb0: 0x472ec445e0042031fd8db588,
            limb1: 0xbcd9d2e99088030fc9784a60,
            limb2: 0xd97c0bc7ef2b945,
        },
        r0a1: u288 {
            limb0: 0x625a81cc4ab2d098b4f24a0b,
            limb1: 0x6867eba6b187cf94db882768,
            limb2: 0x1102014b1ca9d0f,
        },
        r1a0: u288 {
            limb0: 0x8a6a4870f7da426bbc283c8e,
            limb1: 0xc05b50ab3a6e906cf6cd45e2,
            limb2: 0x20c94ea82d1d9ca7,
        },
        r1a1: u288 {
            limb0: 0xf34141e7b7aee01f124c4bf5,
            limb1: 0x2678a3a23d282088803426fa,
            limb2: 0x12644f7c40732382,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98ae3c60f2d7eb0fa3a4cb67,
            limb1: 0xfe27a4a13b4bbb2eeeba6d37,
            limb2: 0x2eb64090a17d82bc,
        },
        r0a1: u288 {
            limb0: 0x597a03df39836a936831dd39,
            limb1: 0xd2e8192c1a0655751a37ffb8,
            limb2: 0x709a1f9d510f9a2,
        },
        r1a0: u288 {
            limb0: 0x42928ba4d7429939982ac7e,
            limb1: 0xc3cc5bd7adbf7de33f4a8cc4,
            limb2: 0x14400bb17eeb4185,
        },
        r1a1: u288 {
            limb0: 0x1ae830e64b76d584182676a4,
            limb1: 0xdb2db8bb291e103cb8d130e6,
            limb2: 0x715832567b493a3,
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
            limb0: 0xcc3f1443301b0a920431886c,
            limb1: 0x3d60a8c13946a372c41064e,
            limb2: 0x1262b229b4721d25,
        },
        r0a1: u288 {
            limb0: 0xfa6076a525ca8a905f566780,
            limb1: 0x603c3ba0585f22e245d7698e,
            limb2: 0x23870e03cc7f8289,
        },
        r1a0: u288 {
            limb0: 0x5da315159c7ebf7dd7488996,
            limb1: 0x3ec98942578f3fafd57fb6a7,
            limb2: 0xbedcde2a2c98a02,
        },
        r1a1: u288 {
            limb0: 0xfa930f5ab8188f1c169ba366,
            limb1: 0xb1a06740e903946374a178ee,
            limb2: 0x4b87e5d16f5229c,
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
            limb0: 0xed6028cafdd865e8b6f19b24,
            limb1: 0x2f91e98a6e02bb83de217c0a,
            limb2: 0xc3115f716868383,
        },
        r0a1: u288 {
            limb0: 0x2a498eecb4da6414a30a093f,
            limb1: 0xe4a3f6cb71bbb80dedde85a,
            limb2: 0x1597b40b8c04bd82,
        },
        r1a0: u288 {
            limb0: 0x6686c2701175f507fc80ad1b,
            limb1: 0x3d07024f367ea8af839cc159,
            limb2: 0x352c7346b1d2ab2,
        },
        r1a1: u288 {
            limb0: 0x251c1a452e5ae39fabad261c,
            limb1: 0x98fa8cb22e20bf662201eedd,
            limb2: 0xf216047f65595a,
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
            limb0: 0xe7e8037ac9c772006fd451e4,
            limb1: 0x9be60bd02e4c83981258b900,
            limb2: 0x28999c62d908bfc5,
        },
        r0a1: u288 {
            limb0: 0x3fd8bb505cea61b79c28f3a3,
            limb1: 0x70483e72fa1d548cf694122c,
            limb2: 0x2b26369aa1b2b92d,
        },
        r1a0: u288 {
            limb0: 0x29aec396c2aa7d3dda814f8b,
            limb1: 0xc8aa480f3d1d6f1a3a950203,
            limb2: 0x11285104571b52d5,
        },
        r1a1: u288 {
            limb0: 0x1c38e011f8f469a48d10e07c,
            limb1: 0x9ceea9e2f506f729b869e7db,
            limb2: 0x27a8c8e6befbd7b6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4426ba2e94fb6a89d6a71586,
            limb1: 0x4a9a64cb420726559feb7441,
            limb2: 0x5c12e2f2daa61b5,
        },
        r0a1: u288 {
            limb0: 0xeb6e904c09426e032e8d7f49,
            limb1: 0xa44cc2dc88b09fe430815b08,
            limb2: 0x2cf81ee7a1e42720,
        },
        r1a0: u288 {
            limb0: 0x9feec567fda5c00bca0da1d5,
            limb1: 0x6a127529ade817e63a573ab1,
            limb2: 0x683c5bffa01aad1,
        },
        r1a1: u288 {
            limb0: 0x6dcdac3dabb7e661616dcf88,
            limb1: 0xf10f150ab6de970c1104a6e5,
            limb2: 0x1b5f6d874178776e,
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
            limb0: 0x37bc6c325841c6e38f3f402e,
            limb1: 0x30a2dae25e5e6c28fce5b7ff,
            limb2: 0x2b09f5adfe640f4,
        },
        r0a1: u288 {
            limb0: 0xe1737591d210b3613b9e6e2,
            limb1: 0x34a9da48f39702312f0dbd6b,
            limb2: 0x36317a336335679,
        },
        r1a0: u288 {
            limb0: 0x18baf9a99b71c1655a2ff5e3,
            limb1: 0xdb07e97a21982e940573a1eb,
            limb2: 0x1a2b40e69a962997,
        },
        r1a1: u288 {
            limb0: 0xfc73152c8853c2976cc365,
            limb1: 0xd39fd6b5aa9736868b5321ab,
            limb2: 0xf788368090db059,
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
            limb0: 0x2ce9f418b1e588507c09ae38,
            limb1: 0xaf09a68849abfee58dd3c3e4,
            limb2: 0x2897852253bf66fd,
        },
        r0a1: u288 {
            limb0: 0xf93dd83cd896fdaf646da6f5,
            limb1: 0x2041193a73b71ee999409d14,
            limb2: 0x20aa0648cb77a090,
        },
        r1a0: u288 {
            limb0: 0x3aa532116d3ee0e6defe0ad9,
            limb1: 0x7f263871da52ed045eb9b4f2,
            limb2: 0x8620898842d7aeb,
        },
        r1a1: u288 {
            limb0: 0xafe2c0fb72c7371ed4f5fca,
            limb1: 0xeb400488487432c31b1296b8,
            limb2: 0x7a85dcf8cc62d65,
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
            limb0: 0x8196efe01cc31f355914660d,
            limb1: 0x3f3d19cd326984d3af387d6b,
            limb2: 0x2444b7fb97bd6ead,
        },
        r0a1: u288 {
            limb0: 0x6d5f3d56e6358c0f5f9998d0,
            limb1: 0xfcee5fa67059e537afec2aa8,
            limb2: 0x1d259e8abba15164,
        },
        r1a0: u288 {
            limb0: 0x183655f36e799fa978c9eb11,
            limb1: 0xe11365c52fc569187431b97d,
            limb2: 0x218b465e3a4d1a10,
        },
        r1a1: u288 {
            limb0: 0x12befba4bd3b04fd6bdcc45f,
            limb1: 0x6ab131b08928771416df9efe,
            limb2: 0xee6532585334315,
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
            limb0: 0x3ad43654ceb2435e5b27050d,
            limb1: 0xead4416b08a9e68f3d985ee1,
            limb2: 0x14b2214d86872e33,
        },
        r0a1: u288 {
            limb0: 0xca5cbe72cc5c24bc6fa78f4e,
            limb1: 0xcd3dc3c1caa4eb24b91c7fc8,
            limb2: 0x166efb1e3289e05,
        },
        r1a0: u288 {
            limb0: 0xa0c7aa0aee05c686e6073c34,
            limb1: 0x44935d1d32f40c203098e4ce,
            limb2: 0xdb9c0e238dfee8,
        },
        r1a1: u288 {
            limb0: 0xa35685ebf1e47c0f3e539af1,
            limb1: 0xd58206a87dab1d724ceb05f8,
            limb2: 0x1d40ac4320c0c631,
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
            limb0: 0xf73d1702cb10fadc92f49ab4,
            limb1: 0xfa3e1508a86990ddc8e46461,
            limb2: 0x3f5ceab66e45225,
        },
        r0a1: u288 {
            limb0: 0x87a2e53eba45ebdb0f62c872,
            limb1: 0x212448d712ba531c9ce56493,
            limb2: 0xed993f1dda16498,
        },
        r1a0: u288 {
            limb0: 0x652f007634544651f0c94130,
            limb1: 0xba574af0b75a336bd481d8b,
            limb2: 0x88e7a1afa179922,
        },
        r1a1: u288 {
            limb0: 0x4cfeac3d8ff4d1a0c9347e4d,
            limb1: 0x5e09ff7830bf13f231852c4a,
            limb2: 0x2b6977e565c7ea75,
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
            limb0: 0xe29c68e395a4cd05bb0c17a2,
            limb1: 0xdc2fe579883057d9fc962f87,
            limb2: 0x22572ab54dc4794f,
        },
        r0a1: u288 {
            limb0: 0xcfacf9d8275e940c8e52e055,
            limb1: 0x3c391dacb67bb6ecd8e5d425,
            limb2: 0xc7ec9ba9ca06b08,
        },
        r1a0: u288 {
            limb0: 0xa1015b31f2bd4401ea64fa7a,
            limb1: 0xd4b101ee85e689ca8ee91f9b,
            limb2: 0x16fb5ca55da36eb3,
        },
        r1a1: u288 {
            limb0: 0x8c5e58a32af93c18bcb25921,
            limb1: 0x3a6160ddb56fab68433895ee,
            limb2: 0x237cba4fe1be4125,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64406c4218423a1efce7e84a,
            limb1: 0x28844250545c0ebe195eee95,
            limb2: 0x2dfe491072795742,
        },
        r0a1: u288 {
            limb0: 0x7598ca64e931ea4ffb3c4cfb,
            limb1: 0xb365eb31e865136b81bfe75b,
            limb2: 0xe6c9e573c896142,
        },
        r1a0: u288 {
            limb0: 0x15ce2ef5fdc53b5d78f125d6,
            limb1: 0xfe8aa27a7297d2547241c8b3,
            limb2: 0x26519e1636f588e5,
        },
        r1a1: u288 {
            limb0: 0x58b3221535d5d652d91124f3,
            limb1: 0xfb3f4b741242b5a01f8b4725,
            limb2: 0x1039bf491c50f8c,
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
            limb0: 0xc42fd83dd028b55ab6126a06,
            limb1: 0xb3016fb8e808d2e10b694c14,
            limb2: 0x20e440f42a57d7d6,
        },
        r0a1: u288 {
            limb0: 0xdb79c257af06c140b4937ce,
            limb1: 0x747be36ed7c2eba45815df80,
            limb2: 0x22d2ad6bd898250c,
        },
        r1a0: u288 {
            limb0: 0x1dc36fd30e154b39f73da0ae,
            limb1: 0xa5da2826b0fd7521b85c2255,
            limb2: 0x2471d918d218c593,
        },
        r1a1: u288 {
            limb0: 0xa6ad460c85f8d54228398cfd,
            limb1: 0x8264ddcbcf0f26d40cd946f3,
            limb2: 0x15346194c4449d74,
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
            limb0: 0xcc6191497c7ef4176ebf5324,
            limb1: 0x22dfaf09f28050d9745d7b4f,
            limb2: 0x2277fcb5ee17b1d5,
        },
        r0a1: u288 {
            limb0: 0x3543d971847485dfc0c1a76d,
            limb1: 0x6c0e56cbacb1bc09c7cd33ae,
            limb2: 0x862b0187354a763,
        },
        r1a0: u288 {
            limb0: 0xa79d62375766caf49d18dea0,
            limb1: 0x43582c7fb8e1d15c7f781bd2,
            limb2: 0x2153f3f27e40f4cc,
        },
        r1a1: u288 {
            limb0: 0x824298e5a3cffda084a698fc,
            limb1: 0xeaf305ca0ccaf670fc0e842d,
            limb2: 0x1bf28024d99c5241,
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
            limb0: 0x920ffe7d06209bb77f7d705c,
            limb1: 0xe7a217a5c1359c1cf169956b,
            limb2: 0xb45e987a5c1aa19,
        },
        r0a1: u288 {
            limb0: 0x99f46d26f2ee280133660e05,
            limb1: 0x1d253d1e3ea0a3c39b3e1aea,
            limb2: 0xcdb52ee01b65799,
        },
        r1a0: u288 {
            limb0: 0x5b3ed590978109e8b73485b3,
            limb1: 0xc927388c686d9e64bf30778d,
            limb2: 0xd121e3b95e3c107,
        },
        r1a1: u288 {
            limb0: 0x7772f1ec9ae997dca219b6d1,
            limb1: 0x3605b24d4c2d207a7fcd99d5,
            limb2: 0x2fc991d124b54f56,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x89e99536d8034add4197a9e,
            limb1: 0x4c18de5a9bbe402e3f02e783,
            limb2: 0x18ea69c7f7fdf3cb,
        },
        r0a1: u288 {
            limb0: 0x48cb8e5fd8c4587f9e304ba9,
            limb1: 0xd8aa3e515f289b404133e6ce,
            limb2: 0x190ed49d73e01bd6,
        },
        r1a0: u288 {
            limb0: 0x25411325b9c80e799d830d3e,
            limb1: 0x84f8fc11e4864278dd42922f,
            limb2: 0x1c3f54c28539d0b4,
        },
        r1a1: u288 {
            limb0: 0x896db607e76ced8996059165,
            limb1: 0x8e0d2806aeb93a4fe18d625f,
            limb2: 0x1045b31f21029a3,
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
            limb0: 0xe8711f14c71a784b76e195f0,
            limb1: 0xb4a8362c71eeb8b9a9cb83c3,
            limb2: 0x25a258aab5b1498f,
        },
        r0a1: u288 {
            limb0: 0x11f25ed5659841fe902d1ec2,
            limb1: 0xd72fb560c92d3bc19640f493,
            limb2: 0x16f80b93c5396f6a,
        },
        r1a0: u288 {
            limb0: 0x240fbf45fc50a03ec570a60b,
            limb1: 0xa888a9bce1461f076c9fe854,
            limb2: 0x1c6a3df7c4014700,
        },
        r1a1: u288 {
            limb0: 0xf47f533f3fbb75007469693c,
            limb1: 0xeb4ce3d21a2396d230a7d8c7,
            limb2: 0x27b8ac0b05fe104e,
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
            limb0: 0x4d30eda6d23a1089e5a3955f,
            limb1: 0xa64b0e627d6f9022f99b3333,
            limb2: 0x29c983ecde7540f4,
        },
        r0a1: u288 {
            limb0: 0xe01062a9ebc76c7942506161,
            limb1: 0xa7d0db057531e126679322ba,
            limb2: 0x1d08eb640a15d83f,
        },
        r1a0: u288 {
            limb0: 0x2ef6986484f9e1b55cd4d478,
            limb1: 0x2b08010c3c672c06cc29e150,
            limb2: 0x29aabd37d5b404af,
        },
        r1a1: u288 {
            limb0: 0x6690c7d59a1fad86a309ee4d,
            limb1: 0x13f27a32b95a4b858d743776,
            limb2: 0x1061dfd75878acd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4b96e3dee735f1eea11406f4,
            limb1: 0xa064300e0f45dea646a8cff6,
            limb2: 0x1131df3d3eb037bd,
        },
        r0a1: u288 {
            limb0: 0x1eebba12d46be25d13e177d5,
            limb1: 0x6d5768f070b2fea8410fdef1,
            limb2: 0xd62b4257c600ca4,
        },
        r1a0: u288 {
            limb0: 0x4b219a31ec9a96a8155dacff,
            limb1: 0x8bf0c3d9286ba2cd470437b,
            limb2: 0x122fbd3dbe3e619d,
        },
        r1a1: u288 {
            limb0: 0x164857fb3bf095319a8ed349,
            limb1: 0x35d6d272d501a1ca9c713466,
            limb2: 0x253a6fd250e10e70,
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
            limb0: 0x1557853aa3128082dc9d5ac6,
            limb1: 0x8fad8a2f1f0f76776fda154b,
            limb2: 0x1ca31daa24461a4e,
        },
        r0a1: u288 {
            limb0: 0x705fe36c6a3c4c72d658210f,
            limb1: 0x29a6bf042bd0efb0eeb4aafe,
            limb2: 0x204074e4d8165291,
        },
        r1a0: u288 {
            limb0: 0x9895d91aede7d8866fbc8de7,
            limb1: 0x884fec7697ab4b366c0cf82d,
            limb2: 0xe8ae1449c7022af,
        },
        r1a1: u288 {
            limb0: 0xe4a40d77ba855279d912ff31,
            limb1: 0xe5b1bd39ed6e6ad0b2027cb1,
            limb2: 0x68ea21e27dc50ad,
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
            limb0: 0xccf6d3c9960186c7b1f62b0a,
            limb1: 0xcedcc3907bb6cdfe3761fcda,
            limb2: 0x147385084e3c5b51,
        },
        r0a1: u288 {
            limb0: 0x3feddc402cb28555cbe59d57,
            limb1: 0x7e62b6a1b5464ff42dbc6144,
            limb2: 0x2148efd17ef4a497,
        },
        r1a0: u288 {
            limb0: 0x1b0a6c4755b14f9891ca4185,
            limb1: 0x27c60b073c7d3f143bf93473,
            limb2: 0x2e4ea23cf3983e38,
        },
        r1a1: u288 {
            limb0: 0xe69cb97f77e6ab29b4068239,
            limb1: 0x6d8af0a40f8860652ca39158,
            limb2: 0x2bc06572828c79d2,
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
            limb0: 0x1f6a611ee2e79c328af15d1e,
            limb1: 0x43072506a50218e9c6efeedc,
            limb2: 0x7fc9d4bc169b548,
        },
        r0a1: u288 {
            limb0: 0xd228ee46e923c227d9501c06,
            limb1: 0xd080a4a59bcd3a58b403eb4f,
            limb2: 0x12ea23372eb0e51f,
        },
        r1a0: u288 {
            limb0: 0x78e58dd49150c7de634b56c3,
            limb1: 0x6cdb04c4af188b6c4e790f08,
            limb2: 0xab1905a0128db3f,
        },
        r1a1: u288 {
            limb0: 0xf3b03bdaa2264fa26893cc16,
            limb1: 0x67d08bd9dc76aeb63bd3ae09,
            limb2: 0x122e8df09b405b74,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e9ba4a29c3134628b1c45a9,
            limb1: 0x96f4f3d39c08a3eef4c47f39,
            limb2: 0x2279e5ecd6d8b048,
        },
        r0a1: u288 {
            limb0: 0xe95bbaec66c2882d52543893,
            limb1: 0x5860931e119d39074e7f23f6,
            limb2: 0x1dd72d30216458b0,
        },
        r1a0: u288 {
            limb0: 0x236d278e03eb9c49a3fcbe12,
            limb1: 0x9b13834f4257367dc0b77ae7,
            limb2: 0x26df7bb6bec676a9,
        },
        r1a1: u288 {
            limb0: 0x9dfaa7fd93f69d3f71c9fa78,
            limb1: 0xdaf7b71ad8837a3d1d36a37f,
            limb2: 0x23c0530c1942a42d,
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
            limb0: 0xe653a9f5e6dacc04911934e8,
            limb1: 0xf0f11a20dc0b9abbada75122,
            limb2: 0x1c3cd59b5ec205cf,
        },
        r0a1: u288 {
            limb0: 0x5ebed59bc098ae53203be027,
            limb1: 0xdd0c78d31e86cbb8e6d850d6,
            limb2: 0x1a703200e588fe4c,
        },
        r1a0: u288 {
            limb0: 0x48ba66318a58a38e10bb8b7e,
            limb1: 0xffe8934849e49d3e3bd03888,
            limb2: 0x2c2987ed51140fa1,
        },
        r1a1: u288 {
            limb0: 0xf46deb69b40e97480dab6575,
            limb1: 0x45ec2fc5f8ed7e9018d311a,
            limb2: 0x29fdfd6888d23f58,
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
            limb0: 0x72b52b25748f703e63101651,
            limb1: 0xf0853fee6dc5b1c735bed208,
            limb2: 0x199631b7df9bd2bf,
        },
        r0a1: u288 {
            limb0: 0xf681203be5a243ee79b563bc,
            limb1: 0xf676526daa4f1ea74b6aba46,
            limb2: 0x1f09f416b4730eb2,
        },
        r1a0: u288 {
            limb0: 0x46cfb804e4609d312c3b53d6,
            limb1: 0x2043d742197d0b4beb43f960,
            limb2: 0x22ad951e0a5a57fc,
        },
        r1a1: u288 {
            limb0: 0x566e7f2627c4ed28ce7170de,
            limb1: 0x7a2de7346bd6b2f2e5993d1a,
            limb2: 0x2f6deb7455cc92f4,
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
            limb0: 0x1c0689ce63cc05f75ef097d5,
            limb1: 0xea17a41c6332b78b0aa51b9e,
            limb2: 0x1fe54c4c8c1d0f24,
        },
        r0a1: u288 {
            limb0: 0xfaa734faad9231e42682aaa7,
            limb1: 0x1ba87c2a421ed16579d58e7f,
            limb2: 0x15731e9b23f35c88,
        },
        r1a0: u288 {
            limb0: 0xbea2f4aef2452d39097bce4,
            limb1: 0xb8d75a953077cf49295bd5a2,
            limb2: 0x7f26a058f53951e,
        },
        r1a1: u288 {
            limb0: 0x1673f06f1c16c001bdee4338,
            limb1: 0xc1b2d87753d7d8af18ec6e9e,
            limb2: 0x2b9e0bf1b730f394,
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
            limb0: 0x72ce6f16cf91c18de242a26,
            limb1: 0xa519928bbe4d8c5d334659ea,
            limb2: 0x102d05a67da9e5ff,
        },
        r0a1: u288 {
            limb0: 0xd637091bf7f34d1de60601b6,
            limb1: 0xf0968778de4de3f6ca5acf67,
            limb2: 0xba3ff760b78ab09,
        },
        r1a0: u288 {
            limb0: 0x3aaa62976876e39afbee0b00,
            limb1: 0x540e149df7ebbdb6233fb934,
            limb2: 0x22df43ba1d8ad426,
        },
        r1a1: u288 {
            limb0: 0x4208741800ab2ce12d3d4ef0,
            limb1: 0x3e90c9a3b9e5fe62bdf1709b,
            limb2: 0x11039acb16abacff,
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
            limb0: 0xacb3d7ce9c6360fb1530f5b9,
            limb1: 0x429162b5d9fe087a7e03e329,
            limb2: 0x2ba8f257e6b2a05c,
        },
        r0a1: u288 {
            limb0: 0xc12e478d2f50bcb0b547e57d,
            limb1: 0x1c3102882f19f2c24c492775,
            limb2: 0x375b692d82e3221,
        },
        r1a0: u288 {
            limb0: 0x4a57b759a8afeb3a441124b8,
            limb1: 0xa107e8206ce92f4161535b55,
            limb2: 0x65d3820a7a44e2a,
        },
        r1a1: u288 {
            limb0: 0xff3b301ce05ebaeea0c9a59a,
            limb1: 0x532162ef6b3a405254297125,
            limb2: 0x100e7a02a933021b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b5b8df9cc1a892229bc6e6a,
            limb1: 0xc9e84f7952d7b31693509ad8,
            limb2: 0x217450d49073e7ea,
        },
        r0a1: u288 {
            limb0: 0xe6995b5a12627197222d8f34,
            limb1: 0xc8d8a4ea72bdcaa21f9a7b51,
            limb2: 0x2fdb51a742084a51,
        },
        r1a0: u288 {
            limb0: 0x379c8e48bb7ec798294126bd,
            limb1: 0xbb0762bda320afec87cddf38,
            limb2: 0xfc6eb143a7bd426,
        },
        r1a1: u288 {
            limb0: 0xd0b8f13b6c21e5cab899cfec,
            limb1: 0xc7a2d0f1047d26432d1b38e4,
            limb2: 0x261acc6101ed1632,
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
            limb0: 0xc9675a635d7360e75fb6236f,
            limb1: 0xbc02e4c9bf95bbd83f537c51,
            limb2: 0x13716d567f5ff03c,
        },
        r0a1: u288 {
            limb0: 0xb06a8de6ee3925d31769880d,
            limb1: 0xfcb8fb66aec1627c52eadba,
            limb2: 0xc4ff75967a2cc19,
        },
        r1a0: u288 {
            limb0: 0x48b65f041c5710f1aa885988,
            limb1: 0xd7eb785a8b9a68f3792dc3a3,
            limb2: 0x262d17f5ef7e8d22,
        },
        r1a1: u288 {
            limb0: 0x8e4f4ed865cbd4e6f720e937,
            limb1: 0x8db10d0fc0811880ac331630,
            limb2: 0x128022783ef7cb11,
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
            limb0: 0xaf6c5ecf41cc91d2c4da2ef6,
            limb1: 0xf495003f0acc9d00d9e10bd,
            limb2: 0x1f3c4213cb80c29a,
        },
        r0a1: u288 {
            limb0: 0xac30c1b2f2cccca6c3d4d9c,
            limb1: 0xde57374ae00cb7acbd76e93a,
            limb2: 0x2ca8f31f45698509,
        },
        r1a0: u288 {
            limb0: 0xcb071445335ec1dbe2c735e,
            limb1: 0xe263bf65a45f060b71397915,
            limb2: 0xcb11e379d64dc4d,
        },
        r1a1: u288 {
            limb0: 0xefe49b03fe57a6434b6475d0,
            limb1: 0xbb0fc0e65247616f16270273,
            limb2: 0x2d9c76e0e97c5cb8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x86ea26d28f0ca021c062457f,
            limb1: 0x690752f9f7ba4de04c88cfcd,
            limb2: 0x151a23135706060a,
        },
        r0a1: u288 {
            limb0: 0xf2bd94024253dfa0d6488030,
            limb1: 0x97b4acbaddacd6378f3c996f,
            limb2: 0x164f50f6ea673410,
        },
        r1a0: u288 {
            limb0: 0x623dc878ee46513e4ce497aa,
            limb1: 0x326e24812afc15e7e9507fc8,
            limb2: 0x2cd23ac35a1fbb67,
        },
        r1a1: u288 {
            limb0: 0x6087364ce88543ba89784556,
            limb1: 0xc05498f78d759397b55b1822,
            limb2: 0x1915f211fd2f375,
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
            limb0: 0xc2eefbe9eddd997ac72da441,
            limb1: 0xde080e11a66e0c111a7d0409,
            limb2: 0x1c16dcc8099875a8,
        },
        r0a1: u288 {
            limb0: 0xc47603dac19a825ec9feef6d,
            limb1: 0x12c3d3e0fe7cfba7dc2bd71e,
            limb2: 0x1c2e3e9c0931d25a,
        },
        r1a0: u288 {
            limb0: 0x52244c1590fbf71d79d22c0b,
            limb1: 0x95c4e71f7e259a41b259f62e,
            limb2: 0x10b0fa3e14ebbb99,
        },
        r1a1: u288 {
            limb0: 0x1e116aa3e1d3660f176fd2bf,
            limb1: 0xa47954f0130eed0d8aa8fd7e,
            limb2: 0x23c53902220ef5e4,
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
            limb0: 0xef3ba9359a4be178f7189848,
            limb1: 0xcc43522793fff54d5cce4be1,
            limb2: 0x75ba7ca199c0517,
        },
        r0a1: u288 {
            limb0: 0x29f97508ffb705e00c6f9861,
            limb1: 0xd01e4dc117540ed0aa19b00e,
            limb2: 0x155bd66fd50016a7,
        },
        r1a0: u288 {
            limb0: 0xd2bc440c1f8dca6fbb54f632,
            limb1: 0xfdcf8ca722e4bf1181f82047,
            limb2: 0xc936f8ff7f5759b,
        },
        r1a1: u288 {
            limb0: 0x1c723f9cf420995949e1c8e3,
            limb1: 0x7dc2af445f712cf1b52e8ea0,
            limb2: 0x2a80505a9b865c74,
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
            limb0: 0xb325f7e03171c6f29cc02252,
            limb1: 0x4b4069d92a55959f5a386fcb,
            limb2: 0x26906d0114180457,
        },
        r0a1: u288 {
            limb0: 0x75961c155f2062780e0dacf5,
            limb1: 0x4c01ef036a65f8abe1b82809,
            limb2: 0x1a9bb55989c70544,
        },
        r1a0: u288 {
            limb0: 0x64a2e3d356b1b5fc394ed522,
            limb1: 0x5c8d41873bd759f253bf7899,
            limb2: 0x20144dffcec63fc5,
        },
        r1a1: u288 {
            limb0: 0x6faa862e6ffc76cd62622c12,
            limb1: 0x3cdf8381be4f053608d0dfef,
            limb2: 0x1f882a7240046b34,
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
            limb0: 0xc01370c6f7945acb2cecfc0e,
            limb1: 0xe2e5efc1cfd3b8c0c43e8a1b,
            limb2: 0x15f887fd441402bf,
        },
        r0a1: u288 {
            limb0: 0xd274c427f3d841fadbc28a75,
            limb1: 0x25f570c3efa5699166b40749,
            limb2: 0x26abfd3cc61740c2,
        },
        r1a0: u288 {
            limb0: 0xf1294d5676f0bf5bd2ad6184,
            limb1: 0x80b89db2a06c4f42da2179c0,
            limb2: 0x3c1113893bc8537,
        },
        r1a1: u288 {
            limb0: 0xc595b65f0dbb0ae01d506c4f,
            limb1: 0x660f5d34e595ab753e7daa7f,
            limb2: 0x1ebdc5c57d11b45e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbe50a51457f4965c8c5fc774,
            limb1: 0x51dfa6b06736079991e2be0e,
            limb2: 0xaf470630cbacc6c,
        },
        r0a1: u288 {
            limb0: 0xe61552fdad4274e40a7376de,
            limb1: 0xb76944cbe6b607ce84502543,
            limb2: 0x187350db5ed34443,
        },
        r1a0: u288 {
            limb0: 0x2ee871564aa1bb77b152e518,
            limb1: 0x78b3af48574f9e36ad6756a2,
            limb2: 0x2cefa3c0f571ea94,
        },
        r1a1: u288 {
            limb0: 0xe40d8cc88c5f0165638ec297,
            limb1: 0xa17dca864d44ebb77969cf01,
            limb2: 0x105b8198cba7be8d,
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
            limb0: 0xb1bff80ff7b98fa428e2f589,
            limb1: 0x9bf803e312d898ac44147c11,
            limb2: 0x2a45a7ae7976d4bc,
        },
        r0a1: u288 {
            limb0: 0xad51d0f67d4a3686d97648a2,
            limb1: 0x34d4548314ba732f59a9d39a,
            limb2: 0x226ee1b64b77b8c6,
        },
        r1a0: u288 {
            limb0: 0x4f46f115a1d73684f24f70c8,
            limb1: 0x9bae1913a9c2b79752dee2c5,
            limb2: 0x17eb890d4b4348f4,
        },
        r1a1: u288 {
            limb0: 0xa95841d05566c2d1d51bc22c,
            limb1: 0x78dce0c1129f13aded475b1,
            limb2: 0x2d387802046aca2c,
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
            limb0: 0x8ec6f72fba3db908eaefeb3,
            limb1: 0x9377e18da576441ba30f1e15,
            limb2: 0x5b051d4d8eed00b,
        },
        r0a1: u288 {
            limb0: 0xeb72cbb825367877bdcf1afd,
            limb1: 0x4da4fd429381b378176e8e99,
            limb2: 0x12cdc3ece335012a,
        },
        r1a0: u288 {
            limb0: 0x5b241a6e02e828241ae111dd,
            limb1: 0x2765e3f299ae05ab9271fc1e,
            limb2: 0x2928b41238c91f15,
        },
        r1a1: u288 {
            limb0: 0x5abb05332e463d05f08c2c0c,
            limb1: 0x434fe4da5b7f92d223dc4582,
            limb2: 0x28134fe77c083614,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7c8d05678ba53da507d2783e,
            limb1: 0xba9fee579646b66ff9e3c770,
            limb2: 0x26f5c6de3bb65947,
        },
        r0a1: u288 {
            limb0: 0x725bd5b36195e6225be771a7,
            limb1: 0xc257ad3dfabb9091e3628236,
            limb2: 0x207ce943b4617e75,
        },
        r1a0: u288 {
            limb0: 0xad1e9b0b493fa9a61d631a10,
            limb1: 0x587cfa2a87bdb5a83ce992c9,
            limb2: 0x18e4a325eb0dcf7e,
        },
        r1a1: u288 {
            limb0: 0x77696366fdb8f7f9e7cefe38,
            limb1: 0x5cd85d1c348734ffaee6aa86,
            limb2: 0x2dede2a974ae97ac,
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
            limb0: 0xfa87ec8370b31c1b0fee3b6c,
            limb1: 0x69099efaf49824807ac608d3,
            limb2: 0x14592a21cfbde8c6,
        },
        r0a1: u288 {
            limb0: 0x569820caf4b623750459cfed,
            limb1: 0x875c87be273b084d4966eb5,
            limb2: 0x1db8a4d929e42735,
        },
        r1a0: u288 {
            limb0: 0x4fb55002342e4e05fe854d54,
            limb1: 0x739445de6326cd50941ca842,
            limb2: 0x9b4f53344fee91f,
        },
        r1a1: u288 {
            limb0: 0x13639ef921afcfcb67e08fe4,
            limb1: 0x19def0d030ca6216f497967d,
            limb2: 0xf918f7fc28ad840,
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
            limb0: 0xa3c279b96e41a2af02b06f88,
            limb1: 0xc35c951547396a7820920ba7,
            limb2: 0xd8cb70ff7ea0b5f,
        },
        r0a1: u288 {
            limb0: 0x2fb13e90f07bea45644ba733,
            limb1: 0x4558f2ce8eff7ef9f9ff9f60,
            limb2: 0x1afea4502c713b8b,
        },
        r1a0: u288 {
            limb0: 0xb196151ce0af2dae48c0ea8c,
            limb1: 0x9d2cf3402ec2a077e7c5bb49,
            limb2: 0x12bf3e11bb92cda0,
        },
        r1a1: u288 {
            limb0: 0x31cb87d6c6fbce238633fe6b,
            limb1: 0xb9e855a7a3e66f4836d3a912,
            limb2: 0x16eaf29eddd3eed2,
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
            limb0: 0xee444ca7a8b1330e871cee91,
            limb1: 0x684c50949e165adc76f29ae8,
            limb2: 0x1f8b47b98b71049f,
        },
        r0a1: u288 {
            limb0: 0x5ec6e5e36e3a57e001ac6518,
            limb1: 0xadbfd36c69d85ce87a2633a8,
            limb2: 0x29dcc2c366db93ee,
        },
        r1a0: u288 {
            limb0: 0xd548fe60dd9254de0cb30fbb,
            limb1: 0x2ab3b7cbbb8cc0fa8c628e8c,
            limb2: 0x2ec765b45e7b82bf,
        },
        r1a1: u288 {
            limb0: 0x597ad9a3b527257d6e9a475b,
            limb1: 0xac576f03037edbe1bf8d7ceb,
            limb2: 0xc5c2881e819b2c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8677601dd67a67c09982ceb8,
            limb1: 0x4853d4d4d8dbd3b4c2af12bf,
            limb2: 0x1531d86c073435ad,
        },
        r0a1: u288 {
            limb0: 0xa42e941edb9cfb6065075073,
            limb1: 0xf4dd6543f1c73f1c01e8cd3b,
            limb2: 0x253558e18b0178bd,
        },
        r1a0: u288 {
            limb0: 0x897b00733bda51681d265eec,
            limb1: 0xc23633e23a4f0e13ecfc7c64,
            limb2: 0x92831cb420ba024,
        },
        r1a1: u288 {
            limb0: 0x7d9be7b7e2ff5799fa24d378,
            limb1: 0xff80cd38169a95e9403cca7c,
            limb2: 0x29c534e5f708a798,
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
            limb0: 0x419726a3676bbbbd150d4c2d,
            limb1: 0xd7d1a353136ceba0e932db24,
            limb2: 0x1b72f0cbb801e96e,
        },
        r0a1: u288 {
            limb0: 0x205300a7e0c31961fcf023aa,
            limb1: 0xe3d789660064199abc3afa31,
            limb2: 0x2684ceb1673ab1b0,
        },
        r1a0: u288 {
            limb0: 0x5680fc8d2e33d4c417e059c3,
            limb1: 0xfb3715e32e5cbf5ec58179ec,
            limb2: 0xbf407692cc742d6,
        },
        r1a1: u288 {
            limb0: 0x1f0360f73c6ca9aae23c576e,
            limb1: 0xd684a633a39be705e660f8a7,
            limb2: 0x211f8f8372572551,
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
            limb0: 0x5be9860b2e87c180cb3ac91b,
            limb1: 0x3722fe94f35a43e38fe0dc04,
            limb2: 0x2ddb7a996a03bc0f,
        },
        r0a1: u288 {
            limb0: 0x821cb556a7ec5303be2f63ea,
            limb1: 0x47381c65d03729df4e1ed62c,
            limb2: 0x28d89e8bceef0901,
        },
        r1a0: u288 {
            limb0: 0x4c1b4144958117a4e32beb8f,
            limb1: 0x264b76111b7f97dbf30e927f,
            limb2: 0x70884395eb3e00,
        },
        r1a1: u288 {
            limb0: 0xf57caf80c6ffe94983711744,
            limb1: 0xcd077b45c65ac3f14939d544,
            limb2: 0x209d3c8e59739e99,
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
            limb0: 0x6cdb686943b5f95c5c19a1c6,
            limb1: 0xd66823faf13274950c51b180,
            limb2: 0x88b06ee3476c02d,
        },
        r0a1: u288 {
            limb0: 0x37e9b89107745e47d10d492e,
            limb1: 0x2ab48e9c3c888e68a0605f90,
            limb2: 0x25a33fdafc383d82,
        },
        r1a0: u288 {
            limb0: 0xafadbf8b7ab77bc0526c3c36,
            limb1: 0x8d138e45b9530dd8893f3783,
            limb2: 0x1ba3bf7b021df90e,
        },
        r1a1: u288 {
            limb0: 0xaa62362cd37689038dcc6bcb,
            limb1: 0x92d7d95805397a899e6e687d,
            limb2: 0x2d1be6b06a51bbdd,
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
            limb0: 0x5eeffc5a6433d7d85774f1fe,
            limb1: 0x18d7811e6107344f8d26e9a0,
            limb2: 0x27091a63ba517733,
        },
        r0a1: u288 {
            limb0: 0x6727ee85876aee93a143381d,
            limb1: 0xd73087ce4fcb1a36c85bdc17,
            limb2: 0xc2e2050790c8b45,
        },
        r1a0: u288 {
            limb0: 0x41f6665a0c7129ed1b41a9fc,
            limb1: 0x10a7598e0afc789d1c48d17c,
            limb2: 0x2e97896a1f0c9c23,
        },
        r1a1: u288 {
            limb0: 0x38459405c533015065ead025,
            limb1: 0x219a134afd1c5306a7a1e0b8,
            limb2: 0x2422741339f7c21a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93e8ff7850933c83b683a774,
            limb1: 0x8cb7da56916e38d057f7d3a8,
            limb2: 0x28e36c622f622990,
        },
        r0a1: u288 {
            limb0: 0x7252c971764e24351646e524,
            limb1: 0x5a126b62e1dd0b74bcda07e9,
            limb2: 0x17a453bdac34aea2,
        },
        r1a0: u288 {
            limb0: 0x3bb94bc37b66d667fceac7d4,
            limb1: 0xda34a20d1010e0e1cf1f98e5,
            limb2: 0xda9b8fc22f9f4a6,
        },
        r1a1: u288 {
            limb0: 0x4f19d44bb16e391d36301fa3,
            limb1: 0xc2f0616a0f56e0ed29477f50,
            limb2: 0x83a42141f35e79b,
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
            limb0: 0x64e758cd34150ea633e472bf,
            limb1: 0x739a599e28c6806ed86c9254,
            limb2: 0xe3418116bb5e8f0,
        },
        r0a1: u288 {
            limb0: 0xa14034b22828d180cee0c835,
            limb1: 0x1ace57d293de4da82209ffbb,
            limb2: 0x66e8a956abf9355,
        },
        r1a0: u288 {
            limb0: 0x5db2f858da60c12e9b1ff913,
            limb1: 0x996541840d14ed10c05698b6,
            limb2: 0x5b310a3074a7dcb,
        },
        r1a1: u288 {
            limb0: 0x19d8e9499cf80c0c6cca6dd3,
            limb1: 0xf253af4152db0308336ac722,
            limb2: 0x13fab7a9126919d,
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
            limb0: 0xcf87ba4c380d3d94fadaaeaa,
            limb1: 0x37576d17422975fa5780f334,
            limb2: 0x507a1d867661c7a,
        },
        r0a1: u288 {
            limb0: 0xccb677db25b9d342837646ba,
            limb1: 0x9f2a80ffc5e2d076d083ac3c,
            limb2: 0x130938304c74ed5,
        },
        r1a0: u288 {
            limb0: 0xc8da66dbc9ffdaf877871d7b,
            limb1: 0xb5c0157c801d460ec2d4a240,
            limb2: 0x1ff16f4ff5970677,
        },
        r1a1: u288 {
            limb0: 0xb2d25b8f687cae1045eddc5e,
            limb1: 0xa33b0f2cb21f07cea938fcfc,
            limb2: 0x131e0f3d3603fa08,
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
            limb0: 0xceaa541bda8718d897fe1bad,
            limb1: 0x5309a6605a549163d399e319,
            limb2: 0x297a333043d94529,
        },
        r0a1: u288 {
            limb0: 0x8710237cc76e46f4ac1e474b,
            limb1: 0x8343b71c14d73171bd3cce0c,
            limb2: 0xbb3a5a01bd4baf7,
        },
        r1a0: u288 {
            limb0: 0x63dda9b6b9ccc7d8afea2821,
            limb1: 0xdfd96bd44e3f6b7d0b9eaa3f,
            limb2: 0x3001114c5582bbaf,
        },
        r1a1: u288 {
            limb0: 0xf36ff1a9a75d3ca3ff684d1,
            limb1: 0x7626be0e1fe42ac8c5137ad8,
            limb2: 0x19697a88caeb3a6f,
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
            limb0: 0xab291a10b429a6e37845879d,
            limb1: 0x81dfc9802fdf2ddc043335be,
            limb2: 0x2533d24c0ba5e721,
        },
        r0a1: u288 {
            limb0: 0x5f204cf5e9607133bfe8aeed,
            limb1: 0x6cdb46a078b3f4299882b4d2,
            limb2: 0xa246058f24dedfb,
        },
        r1a0: u288 {
            limb0: 0x422d63e2a1b1d350090c0b40,
            limb1: 0x5b41facefb1ea6fb25984b01,
            limb2: 0x164ff025f3141cf7,
        },
        r1a1: u288 {
            limb0: 0x27caa696490a62ee29cfff29,
            limb1: 0xb39fd2a88302f2d50dfe0e1c,
            limb2: 0xb1586051f7a2acb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5a68601f4e85db36a1cffccd,
            limb1: 0x1f7b52ab583952ca9f633016,
            limb2: 0x2df07d14c781ea8b,
        },
        r0a1: u288 {
            limb0: 0x2660c19704cb7f5cf4f1e283,
            limb1: 0x37c168a58e299bb1a1071536,
            limb2: 0x286e72fb7598d915,
        },
        r1a0: u288 {
            limb0: 0x69f7fd7040a7f62bcae9d482,
            limb1: 0xa74b836eb8f15af4d01a71b5,
            limb2: 0x1e2058885c002c0f,
        },
        r1a1: u288 {
            limb0: 0x6c41bfa24b409e8ceb6d0eef,
            limb1: 0x6b72bad62c46f0235bd78b9a,
            limb2: 0x1dce0d1ef05f7f79,
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
            limb0: 0xd8ac0a9e696ce61b1ef698ed,
            limb1: 0xabb10f2a6339af5741ff30b7,
            limb2: 0x295ad2a87fd21263,
        },
        r0a1: u288 {
            limb0: 0x10c6300c4f1033361f93cf8f,
            limb1: 0x38c608750a65b9a1f2b4027,
            limb2: 0x10486ef2791a7846,
        },
        r1a0: u288 {
            limb0: 0xeee363b97bd1d54841c56d0c,
            limb1: 0x27ce8703d8fc16df45df765e,
            limb2: 0x17bccbd7c1e21ef7,
        },
        r1a1: u288 {
            limb0: 0x27ad69ca6f3b715a473d8fa2,
            limb1: 0x87ee8f6963c20867075b99e9,
            limb2: 0x1f4e3534ad7db7a,
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
            limb0: 0x5d0bd839c2d5d77a456c747a,
            limb1: 0x8dbbbbc6f299d7584441baaf,
            limb2: 0x2772130c5d1b26be,
        },
        r0a1: u288 {
            limb0: 0x4d51f39091ae96a7468c5224,
            limb1: 0xb78ec185011fccba4af457f,
            limb2: 0x240c46e3c0361de7,
        },
        r1a0: u288 {
            limb0: 0x69cdfa6beb3313a75035ac1,
            limb1: 0xefb0563f2c872e11c7dd86f7,
            limb2: 0x24532a762dde64b1,
        },
        r1a1: u288 {
            limb0: 0xd109160369eb37a752faaac4,
            limb1: 0x1b480d7c710dd5d33343cdf,
            limb2: 0x151da90042dbe792,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8f14fb2778dbda8f39fe735f,
            limb1: 0x8a20887eced1144bd2064b8e,
            limb2: 0xaaf445e5a372d45,
        },
        r0a1: u288 {
            limb0: 0xdb3f3b48808cbe0264fdcbbb,
            limb1: 0x7f1c0fb6c47bce2c2a04d429,
            limb2: 0x2bcf969208b112e1,
        },
        r1a0: u288 {
            limb0: 0x443df7e71bf28d904e7ed63b,
            limb1: 0x5e481893a0869f01b1c8cb77,
            limb2: 0xbad8f37d8f88dce,
        },
        r1a1: u288 {
            limb0: 0xd99be39b70bdb0b575003c2e,
            limb1: 0x9a112f0f42e776580a614fe0,
            limb2: 0x1942ec3271ed792f,
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
            limb0: 0xce9347407dbf23c25b47fce1,
            limb1: 0x3c11c4d2eb38cd00a19455c4,
            limb2: 0x2eb4377a7b1695c1,
        },
        r0a1: u288 {
            limb0: 0xfdb15362ad79e8093e193556,
            limb1: 0x77976bdf9358ac3722c1d4f6,
            limb2: 0x28667ae7285f7a51,
        },
        r1a0: u288 {
            limb0: 0xaf9f23e05e2e09848efde2dd,
            limb1: 0x1fc195d7e137defd4ee99142,
            limb2: 0x1f3ca6cb577d3151,
        },
        r1a1: u288 {
            limb0: 0x8256f5446c71be10b528b5ba,
            limb1: 0xef5100e930d8568dff6bf3fd,
            limb2: 0x1840107ec8c34ab6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x79fa468f97f4e18fbb678f37,
            limb1: 0x1a0bbaf93b5f5808fe25c8c9,
            limb2: 0x3034b023fe820997,
        },
        r0a1: u288 {
            limb0: 0xc794b77ad5f3c3fe512a449d,
            limb1: 0x70126717283c8ff477d9619d,
            limb2: 0x254b31da501f2cbc,
        },
        r1a0: u288 {
            limb0: 0x9199237efa4a0b54c8f5fc5e,
            limb1: 0x1a385e9d047334623e31c82e,
            limb2: 0x262eb710189335d9,
        },
        r1a1: u288 {
            limb0: 0x23120748c60b7485ea9a7202,
            limb1: 0x80af1a7c96ce6da463668a1a,
            limb2: 0x16dc3b64b68e49ff,
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
            limb0: 0x6cd714cf798280cbb8403ab6,
            limb1: 0xd23a3fbf3b3df1de9bbc064f,
            limb2: 0x10d9da87cf5f3a1b,
        },
        r0a1: u288 {
            limb0: 0xacb48d41d675024dd8c1352f,
            limb1: 0x4daeb3c1cc640249e023c402,
            limb2: 0x1da8cc79537ab033,
        },
        r1a0: u288 {
            limb0: 0x492b864d1c11171ac747a3cf,
            limb1: 0xf925f5c69a07e6dd3bc0c9b3,
            limb2: 0x2bc3bb0912732967,
        },
        r1a1: u288 {
            limb0: 0x706247d3cf09662275808f50,
            limb1: 0x75f65068f6cd063be4440cd,
            limb2: 0x2ed948178acd4a48,
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
            limb0: 0xbdb9e6a83d90fc9a5340813f,
            limb1: 0x8c9e1d70b983dd34ecbd5b79,
            limb2: 0x1c4707720ab25b8,
        },
        r0a1: u288 {
            limb0: 0xc8f0987f3c8961f160bf79dc,
            limb1: 0x197c5eb1cf9d16bbf76ca7b7,
            limb2: 0x3050c59124e3e3a8,
        },
        r1a0: u288 {
            limb0: 0x9e3c2e906274d70b4581f7c7,
            limb1: 0x69bdc560151a3386e3436a92,
            limb2: 0x1a2c26130da970cc,
        },
        r1a1: u288 {
            limb0: 0x2372d89cf9c61ffd8a6c6623,
            limb1: 0x16f66e77c659fe02e4cf6823,
            limb2: 0x24211bb8e1a6957d,
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
            limb0: 0x6e7d1b5d81497baaf0786bb7,
            limb1: 0x8b6d302469dfaf3a5c1b611b,
            limb2: 0x17e69423bf425ff7,
        },
        r0a1: u288 {
            limb0: 0x413f435f859c82bbc30fe1b3,
            limb1: 0x9522fa946e2f95c2d39f9cf3,
            limb2: 0x206e000c968049d5,
        },
        r1a0: u288 {
            limb0: 0x6d02326b518abbb1b8c8869e,
            limb1: 0x21f6a7f32e2899ae0b49d6e6,
            limb2: 0x1c18801061fbed35,
        },
        r1a1: u288 {
            limb0: 0x4e6e2fad1fc763388cf5bc60,
            limb1: 0x3796278f1624326cd6abdc02,
            limb2: 0x18997ad75c6f204d,
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
            limb0: 0xead4ff3a52fb6c43341aee00,
            limb1: 0x2c129e2d258e2c098146a44c,
            limb2: 0xf7a1243206654ea,
        },
        r0a1: u288 {
            limb0: 0xe1de0f11c54e33d8ee3659dd,
            limb1: 0x636df3c0c077d97f903f189a,
            limb2: 0xaa751edacf42f84,
        },
        r1a0: u288 {
            limb0: 0x6a3fd254282172658b971c9,
            limb1: 0x5d6590ced17009ee3dd1683,
            limb2: 0x2e15dd2778d44aae,
        },
        r1a1: u288 {
            limb0: 0x5b0821ef99a660f640f03160,
            limb1: 0x9a47048e82ef2206290f703b,
            limb2: 0x13a6244e549e1ce0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x82db2c0db85523e470612847,
            limb1: 0x4f4a18ca2ef706800c951f29,
            limb2: 0x2f3dca1af7302961,
        },
        r0a1: u288 {
            limb0: 0xecb8a2425e4b288c25787068,
            limb1: 0xe2f70818e44402581bb4a848,
            limb2: 0x211d335aae0aafd8,
        },
        r1a0: u288 {
            limb0: 0x65a9ea2eeaa6125955e43150,
            limb1: 0xa97411b7d775a7f85246e498,
            limb2: 0x2bcc7c70ca7f8645,
        },
        r1a1: u288 {
            limb0: 0x3b7154a173ebec9a7ffa6709,
            limb1: 0x9176a34364b37e058c03d158,
            limb2: 0x253bf1aaf8750477,
        },
    },
];

