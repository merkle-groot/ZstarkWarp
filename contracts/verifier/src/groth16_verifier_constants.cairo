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
            limb0: 0x50919d017f1beb6b0826231c,
            limb1: 0xa2ee021aee7721250fe9913e,
            limb2: 0x1868b0dde0498f77,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x86438ef4d4200d02bce102f0,
            limb1: 0xa4c8ed250d5e54d6acbc1062,
            limb2: 0x234ec9c1a08ddcfc,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xc1dea62056e9252fec4f388c,
            limb1: 0x115e811994b8be7d1839a3c0,
            limb2: 0x23371047e225dbff,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xc0fee2f305beb795c5df0fa1,
            limb1: 0x8c68c7c297c4255078902739,
            limb2: 0x2c62118f40baaf6a,
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
            limb0: 0xdcf2915ae0ab68da5b56b7a4,
            limb1: 0x3945e53e3283f91ad381a8c8,
            limb2: 0xb3d8a6c2546b051,
        },
        r0a1: u288 {
            limb0: 0xc5d9fee87c19e5ba3678dbc5,
            limb1: 0xb9a75d3087bf9262f7e8bf74,
            limb2: 0x171e8f3aae42d31f,
        },
        r1a0: u288 {
            limb0: 0x8a1d436994233f3cac0bcaad,
            limb1: 0xf2912b883e06cc45d4740fe9,
            limb2: 0x1466d5c952e15d3f,
        },
        r1a1: u288 {
            limb0: 0x2514119f21b49952f5679468,
            limb1: 0x1bea7e1359ba300e00751538,
            limb2: 0xdc08a0c83324d0e,
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
            limb0: 0x8b7f39325b75233c7d2645a3,
            limb1: 0x7f0a60784efd5f42c3ffc1c8,
            limb2: 0x2526c406bbeaefd8,
        },
        r0a1: u288 {
            limb0: 0xa297cba4c006a65ca2042182,
            limb1: 0xfea8e885f9c1c5fa9f98ab1c,
            limb2: 0x1945bf3832eecd09,
        },
        r1a0: u288 {
            limb0: 0xde548723a7fd4cda2c71329a,
            limb1: 0xc5bf1a2e437a8c17c30d5aa7,
            limb2: 0x1bfd78a98e5042e9,
        },
        r1a1: u288 {
            limb0: 0x435db8ee1a6bf2c3e31568df,
            limb1: 0x9c65c7a327c7284f970c5559,
            limb2: 0x22a3c4665dff531b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x153aff3bbb4e7d79e844e479,
            limb1: 0x561a41a5b18fdf8d1285bf8,
            limb2: 0x26058cb64ebb4830,
        },
        r0a1: u288 {
            limb0: 0x251169d9350711634717b83f,
            limb1: 0xcf8a1af6e751c3f558b80180,
            limb2: 0x18b217e965066ad0,
        },
        r1a0: u288 {
            limb0: 0xe71b46b2b449ba68c1b3d367,
            limb1: 0xac4915d848300f2f7a63cd0a,
            limb2: 0x278abf6110b5e9dc,
        },
        r1a1: u288 {
            limb0: 0x7cdaabdf3c1f455947f2667,
            limb1: 0x563d92ace46ca762e6407a46,
            limb2: 0x1e30d4d8d8a8a830,
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
            limb0: 0xf3f8e7bb3256a0e8d83d05b9,
            limb1: 0xf8193bdbd489fef1424a2613,
            limb2: 0x26df9c96cdaae164,
        },
        r0a1: u288 {
            limb0: 0x86a417951909fa710b3ed430,
            limb1: 0xb5862da2194159da317e50c0,
            limb2: 0x2a9cab21e035412d,
        },
        r1a0: u288 {
            limb0: 0x519155130fec716f1fce0301,
            limb1: 0xd87e6eff424a325261068ac7,
            limb2: 0x12b8f2a78589e0f,
        },
        r1a1: u288 {
            limb0: 0x58134fc096dd211963ed95f0,
            limb1: 0xacca29f307565507b936ec86,
            limb2: 0x75e7d27cd17ceba,
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
            limb0: 0x5214f4a984ec24946dcb965a,
            limb1: 0x33fb27601adf7b5c8e224098,
            limb2: 0x584c5507f103b89,
        },
        r0a1: u288 {
            limb0: 0xa959d90cf2ebc96ed6083dd7,
            limb1: 0xd335a4d0672521174f310bca,
            limb2: 0x26765307eb5e5038,
        },
        r1a0: u288 {
            limb0: 0x2d04b2f998e59ada0893b220,
            limb1: 0xda73f53226daa3d5b5eae080,
            limb2: 0xbea842b79981737,
        },
        r1a1: u288 {
            limb0: 0xeb8000fd3df59dab4567a24e,
            limb1: 0xc637c73c9323c7b63dd8d667,
            limb2: 0x19f6effd5dd8b338,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5611cd75c400249470300e3c,
            limb1: 0x68efce8b588ca05a9b7aab12,
            limb2: 0x15a71841e7871fd9,
        },
        r0a1: u288 {
            limb0: 0x1cad06c9bf48b7b1bea081a1,
            limb1: 0x5e33a0cc4699276fe9241c23,
            limb2: 0x117d3aa64c589ad2,
        },
        r1a0: u288 {
            limb0: 0x223bfc89746a70b3cde5c75a,
            limb1: 0x6572290b1ec8b4ebc43c4bf7,
            limb2: 0x10695e3c51af6f23,
        },
        r1a1: u288 {
            limb0: 0x37d430ed83ced84084fcd665,
            limb1: 0x92c43089f4dc5c63d853b4bc,
            limb2: 0x111d4da22ab26628,
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
            limb0: 0x2272ac6ad90699d2d4dab4d4,
            limb1: 0x3f5a8b91daad5b45a288344d,
            limb2: 0x2dead435de449c8d,
        },
        r0a1: u288 {
            limb0: 0xb410874abeaa8b865d963027,
            limb1: 0x99b840787463d298bb91d5b4,
            limb2: 0x11ae56f7e80b68aa,
        },
        r1a0: u288 {
            limb0: 0xef183726d2e6b88d361bac50,
            limb1: 0x22de051275cb8f5e3eb3a25d,
            limb2: 0x9b3792bc5ed2379,
        },
        r1a1: u288 {
            limb0: 0x2acdf99a7195c621cf0e5bef,
            limb1: 0x171565af051761f58113ff96,
            limb2: 0x2a1e75b932048d6d,
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
            limb0: 0xde31a9528597a57a1868200a,
            limb1: 0xc0e514a822d623f8e3a09ff4,
            limb2: 0xb20b9e0d598cf3f,
        },
        r0a1: u288 {
            limb0: 0xcd15bb37cfd90bbd0b69e5a9,
            limb1: 0x67809753acb94bae9d96e54e,
            limb2: 0x1356beab607356fe,
        },
        r1a0: u288 {
            limb0: 0xa9d2facf6f40fd6847229fc9,
            limb1: 0xdb6c04aecab6f43976ad556b,
            limb2: 0x17a42622933d9cfc,
        },
        r1a1: u288 {
            limb0: 0x61b3ce9e6cd47e6a3e602402,
            limb1: 0x1a024906fa0f5a4eac9cd87,
            limb2: 0xf361847a4ab0fe4,
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
            limb0: 0xc612fde03fc9ea2cc2f24437,
            limb1: 0x86708fa211b3d9a22cce5bfa,
            limb2: 0x2d4a5face3cc5690,
        },
        r0a1: u288 {
            limb0: 0xb22438b100ae530b5cfe4a05,
            limb1: 0xbeb3d35311bcdf5c2d657a86,
            limb2: 0x1112261fd882ba41,
        },
        r1a0: u288 {
            limb0: 0x388c66b7e6cb45a335dc81d9,
            limb1: 0x4b45abe6ab4e27f055b4bbee,
            limb2: 0x1732fd8a86d7892c,
        },
        r1a1: u288 {
            limb0: 0x590c0a1993830c1ea53f5dd2,
            limb1: 0xe5604bab2281be3fb4780e9d,
            limb2: 0x87ad8b549660198,
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
            limb0: 0x16ab434f52d208fed1c7c6ba,
            limb1: 0x5bcf05f13cc086ee07e8d6b5,
            limb2: 0x27c848afb2d76d16,
        },
        r0a1: u288 {
            limb0: 0x375e95041fc22c66fd18fc4a,
            limb1: 0xb6ce57932f0ffcafb81e80ef,
            limb2: 0x2d7f320905f39fa3,
        },
        r1a0: u288 {
            limb0: 0x39577ede8f178baf252c9dc,
            limb1: 0x3eb72a38036bfede5c27b9a5,
            limb2: 0x5cdc83765f646b5,
        },
        r1a1: u288 {
            limb0: 0x281c11e484e76084782ff7d7,
            limb1: 0x8bc79ea4250f9838fdb420dd,
            limb2: 0x15aa67714c54dcc1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87b4604fc5228b32256d5a86,
            limb1: 0x50002990be116f9899506b31,
            limb2: 0x29ff6d459cd69d6e,
        },
        r0a1: u288 {
            limb0: 0x100cb2d1c7dbd28a315b6ef0,
            limb1: 0x181e64d6db7a7b1608539aec,
            limb2: 0xcf2129f10e8bb25,
        },
        r1a0: u288 {
            limb0: 0x61a8e2c80132eb863ed3e202,
            limb1: 0x4d34da53263a62f965d272ba,
            limb2: 0x1c2a189372cb6a39,
        },
        r1a1: u288 {
            limb0: 0x8c31033e81d6e4db83969f21,
            limb1: 0x9fb6f4ff26fde9c1f2c179ca,
            limb2: 0xf7d1ace39b27fba,
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
            limb0: 0x9e604f912fb87502d37b0557,
            limb1: 0x24b680b5cb051892d7ff7a70,
            limb2: 0x2bfd066edadff62e,
        },
        r0a1: u288 {
            limb0: 0x8b6048477ac7d56cd2a6d986,
            limb1: 0xbcddd81c24e1a83e9286c9d4,
            limb2: 0x2019ed38aaeee239,
        },
        r1a0: u288 {
            limb0: 0xbd10a8193bd1a01cd6a6d225,
            limb1: 0xd94bfac7abbe9ac88120394,
            limb2: 0x292b3cde5972209e,
        },
        r1a1: u288 {
            limb0: 0x4542d3de74685cb97197883,
            limb1: 0x43a63c040c3ad63d808518a9,
            limb2: 0x138471c29e3c1c42,
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
            limb0: 0x8ffa96fd8a7c0ce8d3d8e3e3,
            limb1: 0x89ac38eabf5cd618dc7de14d,
            limb2: 0x1f1174bbe716eec0,
        },
        r0a1: u288 {
            limb0: 0x7df49eee7eceba7fb7850dfb,
            limb1: 0xbd525f4f696ebb914b6de8aa,
            limb2: 0xfa40cd9a60f5bef,
        },
        r1a0: u288 {
            limb0: 0x4fc482d3683f045b18f13e61,
            limb1: 0xf98bb58756b1cd23df1aa053,
            limb2: 0x305095037132b561,
        },
        r1a1: u288 {
            limb0: 0x98bd42e9e7625b4be882b98a,
            limb1: 0x5dc44b8435c8902a447c0d08,
            limb2: 0x95c296f6599fd3a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6f6f9ee482003867df1a70da,
            limb1: 0x116e4802c0c57387726c6c6,
            limb2: 0x2091823352fdb8c1,
        },
        r0a1: u288 {
            limb0: 0xfd4b1dd0449f88b5c016a512,
            limb1: 0x73f775d5b991b3a68e8ad9d5,
            limb2: 0x12cb2ec0bb63ac90,
        },
        r1a0: u288 {
            limb0: 0xdb565571f50a2aa609285559,
            limb1: 0x5bb5c430e218bd114126c6cd,
            limb2: 0x28ac309722a40bfa,
        },
        r1a1: u288 {
            limb0: 0x62fa21c8c170d20c60f41fe2,
            limb1: 0xa88dfe2efb3550003c6e97c0,
            limb2: 0x21eb9e139d52e1f5,
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
            limb0: 0xf9d4e34c57b67b31462eaaf2,
            limb1: 0x50b390b66bd6966694ccd176,
            limb2: 0x7dcb7ae21a0a0f2,
        },
        r0a1: u288 {
            limb0: 0x9b5bd0754573834701fc59d1,
            limb1: 0x223b55e55744389d50808e36,
            limb2: 0x29fa0e046d2fd7c4,
        },
        r1a0: u288 {
            limb0: 0x99bd05c764ad7aeba40ba952,
            limb1: 0xec3ed6bf1fe21450604b691b,
            limb2: 0x253208a96142c509,
        },
        r1a1: u288 {
            limb0: 0x3629c56964e28638f11003eb,
            limb1: 0x49437d988606fbb89edd7ad2,
            limb2: 0x225667c3fbec9556,
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
            limb0: 0x67059353d6f0942402f68a0a,
            limb1: 0x28105623d4b915e8973caf05,
            limb2: 0x2e0b1b0b28aa81ff,
        },
        r0a1: u288 {
            limb0: 0x9f2ed0741c8a4f0d8ba8679e,
            limb1: 0x28271c75d86224f3883c1cee,
            limb2: 0x1d2210dc40315e7a,
        },
        r1a0: u288 {
            limb0: 0xd8f4635e65f5eca7ed13f9c8,
            limb1: 0x23992a70f758e5495b041762,
            limb2: 0x303ac40fbed323ec,
        },
        r1a1: u288 {
            limb0: 0x4b6aa96c9d40a1a4b84a9c5f,
            limb1: 0x6612e2ed5975bce75ee2a1c9,
            limb2: 0x2eadb4749ae987f4,
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
            limb0: 0x5ddc2c367a179c941a8f4e9c,
            limb1: 0x8328ceeeadb2be57a5352a6a,
            limb2: 0x20dd804423b7391d,
        },
        r0a1: u288 {
            limb0: 0x5f55d9bda6e373a62d469588,
            limb1: 0x5394f39b511131a7360c0bb8,
            limb2: 0x28494e6e30390086,
        },
        r1a0: u288 {
            limb0: 0x74268c992bea9ee32b39719f,
            limb1: 0x10692cdb12a139272f5da1a6,
            limb2: 0x13069f7aaa600c8d,
        },
        r1a1: u288 {
            limb0: 0x8f9119ef082cb73f7d1b875e,
            limb1: 0xbacadbc77a671d9efaf0adb3,
            limb2: 0x1801253cd39b7ebf,
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
            limb0: 0x9f1d4761d494b34f390fd49f,
            limb1: 0xe22bf67a85e1aecbe33e441a,
            limb2: 0x2b7b1c492958b097,
        },
        r0a1: u288 {
            limb0: 0x81eb61b12d89020c1b32639d,
            limb1: 0xfab0c8178eab1154c707f952,
            limb2: 0x9a81d45195ee1d0,
        },
        r1a0: u288 {
            limb0: 0xe9d9de8a2b57026cb779234a,
            limb1: 0x7e3bdf35bf94e5fe813f539,
            limb2: 0x54b6dbf5e1fe39b,
        },
        r1a1: u288 {
            limb0: 0xba30836cc0de62558e94bd83,
            limb1: 0xd4eb5e7fa0c45f63e46af5ce,
            limb2: 0x2834c85051a763a8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x462b14387a46af46ed120f65,
            limb1: 0xc12540d3c963cb8f241ab3c4,
            limb2: 0x103059fd13f5da28,
        },
        r0a1: u288 {
            limb0: 0x2b86a27c6c8a250201f377c5,
            limb1: 0x45eeb210fe6de38882980362,
            limb2: 0x1d8fcb77c63bc9f,
        },
        r1a0: u288 {
            limb0: 0x65e600b6a0e3e13fbee33357,
            limb1: 0xd10ae37a7107cc55c02de03f,
            limb2: 0xe0ea70b2df3980d,
        },
        r1a1: u288 {
            limb0: 0x109dc38fbd391cb38e86ff7d,
            limb1: 0xee607728ab43ee9373e8f276,
            limb2: 0x2bfff9aaa905d5d3,
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
            limb0: 0xe957313d9b8e4d5c8a9ce712,
            limb1: 0xe7676ac42977d614b63c267,
            limb2: 0xacd37701c6a577f,
        },
        r0a1: u288 {
            limb0: 0x203d8d698ba8068c1e9c0233,
            limb1: 0xe58db2db9f0a838d96308099,
            limb2: 0x1dc302d89e126957,
        },
        r1a0: u288 {
            limb0: 0xc95a58c4194a7152a41bc924,
            limb1: 0x6ca13c777790b91987f77940,
            limb2: 0x5489037e5aa3bac,
        },
        r1a1: u288 {
            limb0: 0x1e79a025377d7d9c7ce0a753,
            limb1: 0xf20632647075191b1ab516b2,
            limb2: 0x2d5da1f08646b0,
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
            limb0: 0x6097087a469f26d92197c74c,
            limb1: 0xf41c21eb3fec1021199e47db,
            limb2: 0x1da4e6f5c04ed26a,
        },
        r0a1: u288 {
            limb0: 0x681ecf5202d34cb2b9fe894f,
            limb1: 0x7eb26ba0460d50271ef03539,
            limb2: 0x10270c14c349f833,
        },
        r1a0: u288 {
            limb0: 0x9498eca37444b310eae8f7b5,
            limb1: 0x35e965fdc1db373d2827843b,
            limb2: 0x1f94dce85f0bff95,
        },
        r1a1: u288 {
            limb0: 0xc31fa727a07da1096e7ee399,
            limb1: 0x668f62924a4eb30d6a420614,
            limb2: 0x1cf5d85058a84bfc,
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
            limb0: 0xf5ce30e9d79fbd18622d5e9f,
            limb1: 0xc15816a984ae7020c8f2f92f,
            limb2: 0x4ccfac34e9f6950,
        },
        r0a1: u288 {
            limb0: 0x2e5cac1eb2dc927cddb004f,
            limb1: 0x965e2b7312d35465d1c39a7a,
            limb2: 0xaa45bd8ec0316da,
        },
        r1a0: u288 {
            limb0: 0xe21972bb1d1b0225b7f14ab0,
            limb1: 0xda341b822828fb6e8fe289c5,
            limb2: 0x1343a7f06a9459a7,
        },
        r1a1: u288 {
            limb0: 0xc431303d480174bc4db7b515,
            limb1: 0x659b930778354bdbdbeba239,
            limb2: 0x1d434a763e3e15a2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18796c1b97300c6af584f545,
            limb1: 0xf7ade3ab2ece2eda5fca5e0d,
            limb2: 0x61725e8c2cd5936,
        },
        r0a1: u288 {
            limb0: 0xd43d92efb2e3cf8ac763f4b,
            limb1: 0x650ee5b274305ea862dc692f,
            limb2: 0x15d560fb58ae6e2,
        },
        r1a0: u288 {
            limb0: 0xaf51fe2e10491c039f3c3916,
            limb1: 0x116e5837313fb6ff7af71008,
            limb2: 0xc6cbb0b1fa5f701,
        },
        r1a1: u288 {
            limb0: 0x88a541043edd32cadf28e157,
            limb1: 0x2970fde06a297fd3939cd67b,
            limb2: 0x20f51969b6958da,
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
            limb0: 0x8e003e117cb7c976dac10f4d,
            limb1: 0xe88aa38bc76acb8623acdec1,
            limb2: 0x45ed822a7e77f9c,
        },
        r0a1: u288 {
            limb0: 0x2444c800cf61699430ca8319,
            limb1: 0x1c723eb5a2ba12814180fac2,
            limb2: 0x189153e237c1cc83,
        },
        r1a0: u288 {
            limb0: 0xd40fb8997b6a865f62a222ca,
            limb1: 0xb53b7c82435af58eabf74b2e,
            limb2: 0xf06e734459c851,
        },
        r1a1: u288 {
            limb0: 0x8eb9b64667134ebc4598c28,
            limb1: 0xe8e3e98fc1c5b40fcb97caa9,
            limb2: 0x24e74bf3776df1d6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x595ecf951166f43920188307,
            limb1: 0xde0f1f973998812bb77a7f68,
            limb2: 0x1d39d717153ffaf9,
        },
        r0a1: u288 {
            limb0: 0x68d32b3a9b64e2011549d6c2,
            limb1: 0x4cd030c5f8adc2daf4dc8a79,
            limb2: 0x24372244c4f5e143,
        },
        r1a0: u288 {
            limb0: 0xa18bd6e3560d85574c8131cf,
            limb1: 0xc90d22ae18eb2a128df0144e,
            limb2: 0x176445bf7ea58be7,
        },
        r1a1: u288 {
            limb0: 0xd9728ca3c38bbe6b9004ffd7,
            limb1: 0xd606354983cdb69f799ef905,
            limb2: 0x9171644d55fb805,
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
            limb0: 0x6b0bf53bbe38c04f75f6954a,
            limb1: 0x7b055ed90f4bc8d933a3c580,
            limb2: 0x1bd075e1191e0f1a,
        },
        r0a1: u288 {
            limb0: 0xc4af1460ac09219d92b0ab03,
            limb1: 0xef9e326f608f8243ae4f50a7,
            limb2: 0x3008de88a9e4503c,
        },
        r1a0: u288 {
            limb0: 0xc8a9d89c37769f6ee1db2dc3,
            limb1: 0x6e1faec95f03a668924baf29,
            limb2: 0x155e5008e3ed3843,
        },
        r1a1: u288 {
            limb0: 0x9bf609cb05c7794e69d49c5f,
            limb1: 0x6ecbb7dc8233be8fad4e9be3,
            limb2: 0x9db798a10ef8fde,
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
            limb0: 0xed1b1b1a1bd7a3b1d5c10898,
            limb1: 0x7b8fbcbe97652ff316b0c71a,
            limb2: 0xcd9876931c902eb,
        },
        r0a1: u288 {
            limb0: 0x79ed85ef905f7f18e2c912a4,
            limb1: 0x249c4f96119b550a654d488f,
            limb2: 0x1bd59790c282ee4a,
        },
        r1a0: u288 {
            limb0: 0xcb918434e0ad34f861d16c33,
            limb1: 0x768569535ddd1536dfcad11e,
            limb2: 0x122b9fa99d3ae87,
        },
        r1a1: u288 {
            limb0: 0x361ed4857909d8445f9f392a,
            limb1: 0x8c374e426f259cfe91df87d4,
            limb2: 0x2583198a8c3294d1,
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
            limb0: 0xf3532d91878cdefab295eb4b,
            limb1: 0x900778ae0569aad4e12fd550,
            limb2: 0x227a100ea2894d86,
        },
        r0a1: u288 {
            limb0: 0x5bb872e6e9625b11105bb41d,
            limb1: 0x2092eb3b33b47c79074f66a1,
            limb2: 0xa33766c24c5131a,
        },
        r1a0: u288 {
            limb0: 0x71b0ace7144b0935db45a1a8,
            limb1: 0xb7fe0be6a9d938edc3a55f1d,
            limb2: 0x2e9ab6f1ca0bf73a,
        },
        r1a1: u288 {
            limb0: 0x3b008dbbe7de3ff28d4dda25,
            limb1: 0x133b693493d20a490254d836,
            limb2: 0x665dc7b6d1d5f86,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72e52c32c660748719d88f1e,
            limb1: 0x2f04243da9007039b08bdcfe,
            limb2: 0x2e4f8e6c8049e181,
        },
        r0a1: u288 {
            limb0: 0x6bd02dc1d298c35edd08f54b,
            limb1: 0xb2c9d1e6da490aaa20d9fd03,
            limb2: 0x2fc50c75934585d1,
        },
        r1a0: u288 {
            limb0: 0x10c6bb4e4d58f2278b6cb3a6,
            limb1: 0x64002defb07f08571792fa67,
            limb2: 0x1c07336c34d5883d,
        },
        r1a1: u288 {
            limb0: 0x58fa55540032321da4d6707,
            limb1: 0x844e1a8931239bd72c3a038b,
            limb2: 0x1a00cd0d70761509,
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
            limb0: 0xf271fb5b7a296f7af33cac63,
            limb1: 0x8664891765cc132c689faba4,
            limb2: 0xf2d3eafe577aee2,
        },
        r0a1: u288 {
            limb0: 0x81a4936d42593115895d40df,
            limb1: 0xe528389562d658e16881137,
            limb2: 0x1afdafe4ffac8830,
        },
        r1a0: u288 {
            limb0: 0xd68f5b05b799da617157e91d,
            limb1: 0x38bb6dc1768493102f3c28fb,
            limb2: 0x27acf9ffb2af1781,
        },
        r1a1: u288 {
            limb0: 0x92eec092e5a031620d48d3a8,
            limb1: 0x74bff7cbf56826f107b8da20,
            limb2: 0x1523d5ac9f58b321,
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
            limb0: 0xee37c141b09b5d387104d1c2,
            limb1: 0x80160c8de476e0b51c3b6d54,
            limb2: 0x1d7b900ec31b09cc,
        },
        r0a1: u288 {
            limb0: 0x8babae2ea6c293fe27d594b,
            limb1: 0x52617c4894f0587fcf57512,
            limb2: 0x27e2acd501cdb519,
        },
        r1a0: u288 {
            limb0: 0x1d15b5c7eac3bc7eb14a9875,
            limb1: 0xb06c2d698f0d2619b9795f57,
            limb2: 0x84d94e37761688c,
        },
        r1a1: u288 {
            limb0: 0xcddcf8e0edbc49e203b0cb78,
            limb1: 0x8878bb3ba6c9ee6b8ea7bce0,
            limb2: 0x1afd2f6d293aa533,
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
            limb0: 0x25f9881cc989a52358a9a57,
            limb1: 0xab1b2b5a88cf2209ae0139b8,
            limb2: 0xb524b2333cb3338,
        },
        r0a1: u288 {
            limb0: 0xf215d754eba84e4e7fa0ed03,
            limb1: 0xfe4e7caa308a3794ea5749d,
            limb2: 0xcd7445c17d5cfd6,
        },
        r1a0: u288 {
            limb0: 0x205c236a057e814eede8e368,
            limb1: 0x5f30ddea0aaab254b328a216,
            limb2: 0x2ea561d7041df90a,
        },
        r1a1: u288 {
            limb0: 0x9aa47cac88b6a1d31ccc6a3a,
            limb1: 0x9c94e067469159c91dcda85,
            limb2: 0x2930009ff5bb1ab7,
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
            limb0: 0x7a98a29adab95676bff73c90,
            limb1: 0x8b2584e1dda1b000bb4466fb,
            limb2: 0x1e97919b34b7ed06,
        },
        r0a1: u288 {
            limb0: 0x7d8c3c07e12bf7266c75f8cf,
            limb1: 0x3a47e3278bb6eb3a4cebfbab,
            limb2: 0x792f2ce3e7f2da9,
        },
        r1a0: u288 {
            limb0: 0xcf40ce69761a64482d572ded,
            limb1: 0xbe1d19c9cb4ff703759fb719,
            limb2: 0x665dfc417d6e274,
        },
        r1a1: u288 {
            limb0: 0x1ffe83820ea40e3c5c89e690,
            limb1: 0xc83394461642ce699075d168,
            limb2: 0x1cebb8dd6b28e1d1,
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
            limb0: 0x4a07874bc86579d8eecc654,
            limb1: 0x8e3e8aeb8643b88184e7aa15,
            limb2: 0x2473b02c2b2c4ea3,
        },
        r0a1: u288 {
            limb0: 0x89fb3a4b4929c2ef46fd3dd,
            limb1: 0xb1e95705764e6693d3e12ab2,
            limb2: 0xc33ab755bf8e234,
        },
        r1a0: u288 {
            limb0: 0x440eb9161e3ec441a3c1ee17,
            limb1: 0x15a0350b70ab412f4c8ae90a,
            limb2: 0x193a1a341507a99,
        },
        r1a1: u288 {
            limb0: 0x8f634d52b5bb1d8456f25e2b,
            limb1: 0xb6e65c0dc92d811d5f317e91,
            limb2: 0x2747d33e0c9f5213,
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
            limb0: 0x6012c302c60e6d58e261f5e8,
            limb1: 0x7f87d22b481b180e46881d25,
            limb2: 0x2eca05cc712c556c,
        },
        r0a1: u288 {
            limb0: 0x24c7fc4e53a509dedc126de8,
            limb1: 0xfa63ec7476342a57b8c9a741,
            limb2: 0xb442852137ca5bc,
        },
        r1a0: u288 {
            limb0: 0xf09c3959f18cf9e2bed26047,
            limb1: 0xd9b2a6fae60343ae9329103,
            limb2: 0x1164f6b6c6538d07,
        },
        r1a1: u288 {
            limb0: 0xd20b50836571a762cb1d3585,
            limb1: 0x6796c84b046461ea2ad900fd,
            limb2: 0xd0b7b12e5e0b2e2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0c5fffd45a9aef9e2a31b4f,
            limb1: 0x644cbfeb5f2214477993cd3a,
            limb2: 0x1dcaa6b74e63a534,
        },
        r0a1: u288 {
            limb0: 0x3136a89e704db7fe9c9ca60b,
            limb1: 0xf7490b3a396ba7cc0c9fd168,
            limb2: 0x1fd701cc4f9c1f36,
        },
        r1a0: u288 {
            limb0: 0x6fda9a48041e65aad728742a,
            limb1: 0xbebb3c4f22d314d8e41fdb47,
            limb2: 0x18fbc9762bd4b1c,
        },
        r1a1: u288 {
            limb0: 0xdeebfad3b94325122762747,
            limb1: 0x53e1e0de00a30c80fd97149c,
            limb2: 0xd90b029d138345f,
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
            limb0: 0x88653032992b430b7589e07c,
            limb1: 0xee39a8a9e03160a40bebdcbc,
            limb2: 0x2995d083134e8a7,
        },
        r0a1: u288 {
            limb0: 0x1b3ac39f7c3cd4ed35244fbf,
            limb1: 0x185292caffbb31776470cca0,
            limb2: 0x8e2742ef203367c,
        },
        r1a0: u288 {
            limb0: 0xe5a1c4787f584cd0d4ce5545,
            limb1: 0x6e26f1d4c98e373abf9d9927,
            limb2: 0x6039707b04190c2,
        },
        r1a1: u288 {
            limb0: 0xf5286e5e1c20704d279068d5,
            limb1: 0x653c3af442a80fcd97a2fa51,
            limb2: 0x16e652818bcbc3e9,
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
            limb0: 0x5e717ba84186abc40977e544,
            limb1: 0xa3c3df57e5bc32b5076e5153,
            limb2: 0x3053ae23dc8244c4,
        },
        r0a1: u288 {
            limb0: 0xb99b040e516d3b578e2814e3,
            limb1: 0x1d2b0513cc2c6c5344886d56,
            limb2: 0x1daeadb52918ecba,
        },
        r1a0: u288 {
            limb0: 0xa7ee93fb5d7d672751cb1f89,
            limb1: 0xe3d15076f35e069b82fb7c47,
            limb2: 0x2bd923a742e1f418,
        },
        r1a1: u288 {
            limb0: 0xf5b02b5d877d7039d31ccd1,
            limb1: 0xb2b68f771df6718ce3d2aaf3,
            limb2: 0x6cfe0e3e3cf2130,
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
            limb0: 0x951f909ee72a622d35282066,
            limb1: 0xb505c7c4a41bb207bb1f3528,
            limb2: 0x6da2b0bdbfade4,
        },
        r0a1: u288 {
            limb0: 0xc04889c8fc655357031bd2dd,
            limb1: 0xb9651f2a6f2c1def4bf303ca,
            limb2: 0x26587a024927ee1b,
        },
        r1a0: u288 {
            limb0: 0x942f56d7095a25b1ad1e3b72,
            limb1: 0x4d6d4af09e02b37c5768a063,
            limb2: 0x2529ae41a47cb2a6,
        },
        r1a1: u288 {
            limb0: 0xcca9e05212aa2a8b9440f182,
            limb1: 0xd9bd620a38e4d824172ea1c2,
            limb2: 0xe61af3db0b2b53d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc7f494f3c0e44e3332e6f727,
            limb1: 0x38e8b544e5d25d08a5787884,
            limb2: 0xb4c4ad3c2044504,
        },
        r0a1: u288 {
            limb0: 0x7a858e7b57c26a2c513fb14f,
            limb1: 0x59a36b8d21c1b5462382e6ea,
            limb2: 0x223e600e943e1ab3,
        },
        r1a0: u288 {
            limb0: 0x78451ff37483b2c0394836f8,
            limb1: 0x4b61bbcc237fac8db3aa7e0b,
            limb2: 0x23bc1de40057a8e7,
        },
        r1a1: u288 {
            limb0: 0xe7b35e232cf237cac3e71eb8,
            limb1: 0x915d01883fe76f6cd6a41f10,
            limb2: 0x1d77773bdfb9d99a,
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
            limb0: 0x369c57bfd44b2d5e7fb6b79,
            limb1: 0xd9d87449b9b47e2bf3c72466,
            limb2: 0x1c10d7ed06e351b0,
        },
        r0a1: u288 {
            limb0: 0xf38a497de8a9389f89b75e2d,
            limb1: 0x971f0523fe0b029853669fdf,
            limb2: 0x303aae0cd52b636b,
        },
        r1a0: u288 {
            limb0: 0xf43206536bef0d26898213c2,
            limb1: 0x8282a0df2c073580e435c6cf,
            limb2: 0x2dd7c3cd09ada101,
        },
        r1a1: u288 {
            limb0: 0xfed51abb807c924bb9c30ec0,
            limb1: 0x61e1433537140486aae42d6d,
            limb2: 0x86da1e660efc337,
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
            limb0: 0x544a5e4ac64c4d235399e20,
            limb1: 0xb483f777fa531dfc4ca72550,
            limb2: 0x125f287861d4c038,
        },
        r0a1: u288 {
            limb0: 0x52354fc2cf107480601db02e,
            limb1: 0x5a9f8005e037cd1d75945add,
            limb2: 0x1e27a03ca95470ce,
        },
        r1a0: u288 {
            limb0: 0x450d02224ea6d8bf903e3df4,
            limb1: 0x3da304c8626871f54bbd63de,
            limb2: 0x10dbb0d725fc59fb,
        },
        r1a1: u288 {
            limb0: 0x18f6aa42cbb43c9a9ff42504,
            limb1: 0xab61846a5c6d4aca0142b92f,
            limb2: 0x1c76e8c2d88e9040,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x837a27dabec187b80dfdd7f0,
            limb1: 0xc64a2723c102b56557a9f605,
            limb2: 0x2ac006d73acba9b4,
        },
        r0a1: u288 {
            limb0: 0x473d7cf76495956b321b279c,
            limb1: 0xa59c1b51ab81adb046e5ce42,
            limb2: 0x521c2be7d833024,
        },
        r1a0: u288 {
            limb0: 0xd9ab37156e6ec55f2e1b8956,
            limb1: 0x7843efa37df77d990b526042,
            limb2: 0x217116c78175439a,
        },
        r1a1: u288 {
            limb0: 0x4bfd336a8db83c26612ce59d,
            limb1: 0xdc05c77f73a1b9f5e5983306,
            limb2: 0x13b0f1728520518d,
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
            limb0: 0xabd6e0a46f4467969a634ccd,
            limb1: 0x4d49c326411ddc59463260b6,
            limb2: 0xc09ddd007f2909b,
        },
        r0a1: u288 {
            limb0: 0x68c22aa2e55157a42181e246,
            limb1: 0x54f39143f0b770993b95a466,
            limb2: 0x305ffa6b48702ec2,
        },
        r1a0: u288 {
            limb0: 0x32b95305364620d34d4d2d93,
            limb1: 0xb9d86fbc892aa8df7e54b329,
            limb2: 0xa9c80f9bc098956,
        },
        r1a1: u288 {
            limb0: 0x6249c5016ed4c99f9705fee4,
            limb1: 0x6a8b11ead198b71cec61adc0,
            limb2: 0x19c640f229973d34,
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
            limb0: 0x4d63009985eb9bcb7270601d,
            limb1: 0x6248a0580dc5f167606f5cd1,
            limb2: 0xf4ff30e1e7ff78b,
        },
        r0a1: u288 {
            limb0: 0x7ef240f52a1480633d64f63c,
            limb1: 0x3ddcb1c8466fc9540e1c97d3,
            limb2: 0x23547d10b775056b,
        },
        r1a0: u288 {
            limb0: 0xb95a0732a658966be6110a0e,
            limb1: 0x32160ce7e5e62ccb80dc413,
            limb2: 0x674552713bd79cb,
        },
        r1a1: u288 {
            limb0: 0xccee612e0ac8bebe65016074,
            limb1: 0xaadd56ff6cfc868f3ee3aaf4,
            limb2: 0x496913e982c6f5d,
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
            limb0: 0x134cd7090b0f367a91d29893,
            limb1: 0x8cd69c6ccdbb7671d8f56a21,
            limb2: 0x20f994e8af5eb5f1,
        },
        r0a1: u288 {
            limb0: 0xb1a4675af72cc68387ecda3c,
            limb1: 0xcef133d6aaf329b9857b93e8,
            limb2: 0x2cff3312ee7716b7,
        },
        r1a0: u288 {
            limb0: 0x486707648dcec79d549de7be,
            limb1: 0xa78919d0c7bc4f4dd12db680,
            limb2: 0x12beca54b1068c15,
        },
        r1a1: u288 {
            limb0: 0xf1081719abc3f0fd92c5d69d,
            limb1: 0x5faf00b6967f386ccd954b2,
            limb2: 0xf2519209404508a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x12e4a1530f9e6491bdfafffa,
            limb1: 0xf8ea1d858d3bf1ce44a245df,
            limb2: 0x1c046bfde05a9b6d,
        },
        r0a1: u288 {
            limb0: 0x49174e971f4fb85ab907b239,
            limb1: 0x37246ea1414497c6a755b04a,
            limb2: 0x2d5bc804a747943a,
        },
        r1a0: u288 {
            limb0: 0x4dfb7e4a9ab81b8d70356c36,
            limb1: 0x3b1bd5c67fd868963c7c9d8,
            limb2: 0x2c66bb5b8adb3799,
        },
        r1a1: u288 {
            limb0: 0xe8b4d7508aa87bbdd0b8d87e,
            limb1: 0xa25bafa38a856a6537cc17cf,
            limb2: 0x2c402122af8188f5,
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
            limb0: 0xcd5c4064599035388dac06ab,
            limb1: 0xeb7189543c011473d9a5bf7b,
            limb2: 0x1dd49f2d47a0ba46,
        },
        r0a1: u288 {
            limb0: 0x7e6ba1a4ca24552e44899f88,
            limb1: 0xa81f713c3757a99c87dc6710,
            limb2: 0x2106378a1f0af439,
        },
        r1a0: u288 {
            limb0: 0x407c1834491a050c7b8392ad,
            limb1: 0xbb02081431484b98e0185127,
            limb2: 0x1f40e594fdfdd42,
        },
        r1a1: u288 {
            limb0: 0x9278e0c112927712154a471b,
            limb1: 0xe5f7b98adf81fff2f67a2df7,
            limb2: 0x171d973ed5be12bb,
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
            limb0: 0xb8bccb129d5d86db022dae25,
            limb1: 0xdd88a7cc8d0a31d50ecf161a,
            limb2: 0x1ca05d1a4ec922c4,
        },
        r0a1: u288 {
            limb0: 0xdd8910091bbb8cbbd2582bb6,
            limb1: 0xb1845cd062e790a37f238cc4,
            limb2: 0xdd03164ebe50d73,
        },
        r1a0: u288 {
            limb0: 0xe72bb9189dd60e3b1cb90f2e,
            limb1: 0x32f7a340c28270a2fa8e3bc4,
            limb2: 0x11a8d7040c17c4c8,
        },
        r1a1: u288 {
            limb0: 0x693d620d7a6fa22fc6ad7120,
            limb1: 0x6deeb0604ad4e885302d0111,
            limb2: 0x2dd3ec742a03848f,
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
            limb0: 0x4f540d69314dc88b376be05b,
            limb1: 0xf98cbdeb9ccad8075730289b,
            limb2: 0xc18329f183730ad,
        },
        r0a1: u288 {
            limb0: 0x3651428c399d3d36128995b1,
            limb1: 0xbbdd687ee64b4d96ace97738,
            limb2: 0x21af208f6e306fb1,
        },
        r1a0: u288 {
            limb0: 0xa6db087124a6af4fc79c3fd8,
            limb1: 0x368c8067ec341708e0b28baf,
            limb2: 0x258a53387b473959,
        },
        r1a1: u288 {
            limb0: 0x56ae25b79f615677e2e2f817,
            limb1: 0x74cfb863bba920dc87963522,
            limb2: 0x8c8437337c3b49d,
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
            limb0: 0xc457dfe5b7a1f7d2ecbaa87,
            limb1: 0xbff71db22105ae608db42a93,
            limb2: 0x1fdc54f4498fea5f,
        },
        r0a1: u288 {
            limb0: 0xfa508b35bb5095413ad36807,
            limb1: 0x70bf4f89327ccca6d92a876d,
            limb2: 0xc92cb5b18cb4f22,
        },
        r1a0: u288 {
            limb0: 0x46dde18ec993575de65d753d,
            limb1: 0xdc08b817c0613113aa7b1b79,
            limb2: 0x2e3da7962a5c897f,
        },
        r1a1: u288 {
            limb0: 0x67005a3afe60ea58e42b97c9,
            limb1: 0xeeeddf416989e8b473b8ef93,
            limb2: 0x2cb1d30e3c7c7e10,
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
            limb0: 0x3ed9ac42c82042557db837de,
            limb1: 0x65557262811da538728a6865,
            limb2: 0x1c1c2c19f07b41b5,
        },
        r0a1: u288 {
            limb0: 0x320bc15d4ddbd597d6eebd92,
            limb1: 0x2540a601c29ca1b77a0096b0,
            limb2: 0x173fc1438393d455,
        },
        r1a0: u288 {
            limb0: 0x428e03115299073238f7981c,
            limb1: 0xf2ef54a71173036a7b7f354,
            limb2: 0x24c8fad9d15c001f,
        },
        r1a1: u288 {
            limb0: 0x68afc78a20c8ebebcdc4f652,
            limb1: 0x904856845c70654e44593a98,
            limb2: 0x2ad5f92a96e4957a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x59beaaef4c06058f036a2fea,
            limb1: 0x94e9f9c54bfe231bcfe7d055,
            limb2: 0x1e2586bf807d5b0b,
        },
        r0a1: u288 {
            limb0: 0x508f5a1de8630582fc491017,
            limb1: 0xb743d92b45b281cb1f3f4c02,
            limb2: 0x25fd485fe1e8c592,
        },
        r1a0: u288 {
            limb0: 0x1113de88837faa8a0eedb502,
            limb1: 0x1f7138c7ddb7e5afc2aacfcc,
            limb2: 0x12e718f6efe768ec,
        },
        r1a1: u288 {
            limb0: 0x32f418d738ccfce16a648374,
            limb1: 0x973b5983ab168d5df987842,
            limb2: 0x5e92e051ead705f,
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
            limb0: 0x4158f8572d2930d188990fd3,
            limb1: 0x76150784216ddf3b65d43af9,
            limb2: 0x20a6c5675b619872,
        },
        r0a1: u288 {
            limb0: 0xa385716ba66e76eb43e5bc5a,
            limb1: 0xd8fe569f2753c8f778d79013,
            limb2: 0x2f233600a052383c,
        },
        r1a0: u288 {
            limb0: 0xfca25d0835e87cbe7f978b62,
            limb1: 0x2b4fe252f15369f858f838e0,
            limb2: 0x182cd9f531332fbe,
        },
        r1a1: u288 {
            limb0: 0x23ab93a6af20953fe5dee608,
            limb1: 0xafa8427bd79a6987f6b93b4f,
            limb2: 0x262002d52f8cf66,
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
            limb0: 0x792b985fff1666fc923f6d4d,
            limb1: 0x7581107f6f923a445f6189a6,
            limb2: 0x71a5e85542f21f6,
        },
        r0a1: u288 {
            limb0: 0xdc84ad84ba010b65b1a79411,
            limb1: 0x213fc1ef00f2ffd31071901d,
            limb2: 0x35b7d2a38f70c6a,
        },
        r1a0: u288 {
            limb0: 0x50fe398d66cc3e4c06b3aec0,
            limb1: 0xd136494c209a94466d43c4db,
            limb2: 0x8bca984d10a7021,
        },
        r1a1: u288 {
            limb0: 0xa03e03323896bec834cae9db,
            limb1: 0x63c7620324846883299e68a9,
            limb2: 0x169b82407d777394,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x362ae262274c8dd2da9b1d80,
            limb1: 0x43d65074dd6da8ccd9b59cde,
            limb2: 0x2176e2494687a73f,
        },
        r0a1: u288 {
            limb0: 0xc1b2eaa9d7cb711171436bb0,
            limb1: 0x5b9e9deeeaba7754ce3c38a8,
            limb2: 0x2929cb80d92e1ca1,
        },
        r1a0: u288 {
            limb0: 0xe564f689b2cb03b6990e0de8,
            limb1: 0x4eee9d6542e8e1735ab84bb9,
            limb2: 0x2fd6a5ee28c2cac5,
        },
        r1a1: u288 {
            limb0: 0x2be734ddd9663482b87a069d,
            limb1: 0x618f859bd18184ead6bc71fc,
            limb2: 0x195a779e5fd39830,
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
            limb0: 0x6626a2ba7c782ba23ddc498,
            limb1: 0x8c36a8c4b60c33c3a82f4e83,
            limb2: 0x19a26e0f53ebf22b,
        },
        r0a1: u288 {
            limb0: 0xea3615b876ff9b444f69006,
            limb1: 0x9045862b78cd6b05dae90842,
            limb2: 0xc3443f7cc408d82,
        },
        r1a0: u288 {
            limb0: 0x12aadc7733ed134a65d286ea,
            limb1: 0xe078c139ef195c45c7a7d4be,
            limb2: 0x17fe19dfe0c86dc0,
        },
        r1a1: u288 {
            limb0: 0x3c275a778e1a158f23beb869,
            limb1: 0xe54fe804f33b6d032ebf0f30,
            limb2: 0x1a29ae6784c03a47,
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
            limb0: 0x76cd7d84125b46e3237cb730,
            limb1: 0x9ba91e36d8d01cc06fff469,
            limb2: 0x2ba19148c6136386,
        },
        r0a1: u288 {
            limb0: 0x15afe39eb5876e54b02a2726,
            limb1: 0xcb5a323cc092adc77b7a6430,
            limb2: 0x2866675fc90fb5b2,
        },
        r1a0: u288 {
            limb0: 0xff548129fc85ee8a2d7fefc9,
            limb1: 0x4ee6a577280ce87838ee8ccd,
            limb2: 0xd584e00ba93c29a,
        },
        r1a1: u288 {
            limb0: 0xf58c848229cae34728217cc1,
            limb1: 0x7112ec95323c52e6eecdf9a5,
            limb2: 0x15b007c82dfdfc77,
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
            limb0: 0xc4aa8edb8e5a6a119d52c655,
            limb1: 0xc75404814438e9f3ef5d81c5,
            limb2: 0xfca6ee307dd6fb6,
        },
        r0a1: u288 {
            limb0: 0x5f4d02612115d4c596b249f8,
            limb1: 0x623cb1e1e77e9beb6d785ca0,
            limb2: 0x240114d53fb1b2e2,
        },
        r1a0: u288 {
            limb0: 0xaa48b9cc69a82e7fb78d8911,
            limb1: 0x1c3482d7d807c357549ed7f8,
            limb2: 0xd127de68096c7ed,
        },
        r1a1: u288 {
            limb0: 0x2087b9ab3d8a99c0560a4d27,
            limb1: 0xc028e264c0c60c71ab321b9e,
            limb2: 0x2c07a07a44599ffa,
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
            limb0: 0xca25bb89672158b2f1ead9ad,
            limb1: 0xea1f8281dfdf3cc0113a8e2,
            limb2: 0x747e24298dab21,
        },
        r0a1: u288 {
            limb0: 0xbf5a2cb2b19c328fa504c99a,
            limb1: 0xc97a5c0b293cab9b12253dd1,
            limb2: 0x240eef95fe14c7f0,
        },
        r1a0: u288 {
            limb0: 0x1c1e6cf76ddb7019a3c92b83,
            limb1: 0xc4db6ea45a9713e957c84824,
            limb2: 0x2e600f22c714521e,
        },
        r1a1: u288 {
            limb0: 0x21a454637fe20e8fccdab849,
            limb1: 0x4d9fd0c5dfdfb1c9f7821de4,
            limb2: 0x199c35dc0fa56131,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18680aac09c6ed300cdbf791,
            limb1: 0x38fb94b98a037b200f413ea1,
            limb2: 0x215749ca7bcc4e2a,
        },
        r0a1: u288 {
            limb0: 0x42f6eba94ea01138d8e8aa2d,
            limb1: 0x9f90b45cc2f4de849ce57293,
            limb2: 0x1f904b7bde2dc33c,
        },
        r1a0: u288 {
            limb0: 0x8fa328e885e1e314029a26ff,
            limb1: 0xf493873ec2c09a43ac1bc837,
            limb2: 0x224fe06a83df166a,
        },
        r1a1: u288 {
            limb0: 0x8a74519f5cef9a9cf0ad5e88,
            limb1: 0x39ff045ace09c31c997f3613,
            limb2: 0x2e3f61001a1554e7,
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
            limb0: 0x1c667b7ad9f45a5ec5f44f8b,
            limb1: 0xae85565281135b42dac5280c,
            limb2: 0x264476bd9502558,
        },
        r0a1: u288 {
            limb0: 0x4be35ce562ef323b980d3ead,
            limb1: 0x155ecbda491a8ba396cdac84,
            limb2: 0x12068b01f0878fc3,
        },
        r1a0: u288 {
            limb0: 0x449bb350d2b4d9de21de2b5c,
            limb1: 0xc394d7c928d5cb9dd48fec0e,
            limb2: 0x29e32cba58edc9b3,
        },
        r1a1: u288 {
            limb0: 0x62bdf4a3150d5d125d058a15,
            limb1: 0x797d5a52ecc5f9e4bafa3015,
            limb2: 0x10795a2d5578f96b,
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
            limb0: 0xc727dd1c7000e0a0f89a7c26,
            limb1: 0x9cc34118942277c14f9fce30,
            limb2: 0x43f18ac37e3a87c,
        },
        r0a1: u288 {
            limb0: 0x85943c30e7364322efe697a0,
            limb1: 0x3a96ec5ec709d7b2c2e372d9,
            limb2: 0x1fbbe16d43261730,
        },
        r1a0: u288 {
            limb0: 0x3a2441582201356e9267ae03,
            limb1: 0x4a478b6dccb76da64ed23e4a,
            limb2: 0x208a7936ef44bd72,
        },
        r1a1: u288 {
            limb0: 0x69a8e1efcf8e2ef06589b6cb,
            limb1: 0x9e3fef44a25729d4fc987c0f,
            limb2: 0xd1efa1e304f0aef,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b77926c71242dc89c58016e,
            limb1: 0xa417991fd7b1f71d08e9e462,
            limb2: 0x129d80b6c5207d2a,
        },
        r0a1: u288 {
            limb0: 0x9bc6e6facbf85cac3d91eb75,
            limb1: 0x798b918922b75a4813c6b766,
            limb2: 0x2020a9678019edca,
        },
        r1a0: u288 {
            limb0: 0x9852876298ce25194e46f940,
            limb1: 0xf4ee6e97b313be9c181a9272,
            limb2: 0xe34249ed04b52ed,
        },
        r1a1: u288 {
            limb0: 0x31fdb5e9a9e147e52098bdc1,
            limb1: 0x65d4600e4cfc9e7eae9d85df,
            limb2: 0xec29fa2ac9fda15,
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
            limb0: 0x47a5b1b58d9b732ad78fecff,
            limb1: 0x1dfb7320139a4124965b3260,
            limb2: 0x18f42c8ede564cff,
        },
        r0a1: u288 {
            limb0: 0x33b1676eefadde83b5241f5c,
            limb1: 0xaf0181b20fabb78c07ba3ba5,
            limb2: 0x5c9e4b743533f85,
        },
        r1a0: u288 {
            limb0: 0xd77c173016c7f286ce57c7c8,
            limb1: 0x5054522fe6f416f2e9e823c5,
            limb2: 0x1aae75c9bb5395d1,
        },
        r1a1: u288 {
            limb0: 0x897fd746bef858e58c2436ec,
            limb1: 0x6325adf15b17f0cb92559088,
            limb2: 0x353c36fad8d3af4,
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
            limb0: 0x807b725584ca42668fefee4a,
            limb1: 0xbafb992b449d1e4d3785a2b0,
            limb2: 0x2a3cc72d9ab5fa99,
        },
        r0a1: u288 {
            limb0: 0xc91f8244cb69aef5e3b2ede3,
            limb1: 0xa67e67e8510af93cf0c84c1d,
            limb2: 0x2cef65a4374aa7ca,
        },
        r1a0: u288 {
            limb0: 0xa1d0deb3d52ad2c8641c00c,
            limb1: 0x2eb59a2f9338421d89a43b3a,
            limb2: 0x2fbc36271758cfb4,
        },
        r1a1: u288 {
            limb0: 0xbaf3861c315d453602ba742a,
            limb1: 0xbf0e0dac645740290bcc3b7b,
            limb2: 0x3056e2676715a7b3,
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
            limb0: 0x632a751c363f7d77a991a1ff,
            limb1: 0xc05d8865151a74b2ba794d69,
            limb2: 0x22b7832fd9d0220b,
        },
        r0a1: u288 {
            limb0: 0xb3a73548b9f6635657b85af9,
            limb1: 0x2c886d9d5c7ceb9e44929434,
            limb2: 0x36817b3c5f137c7,
        },
        r1a0: u288 {
            limb0: 0x34190c1605005814b968a730,
            limb1: 0xe306e88f9491c3e807ab1122,
            limb2: 0xeefb1a796bef1,
        },
        r1a1: u288 {
            limb0: 0x145f9b6115e338e99818953,
            limb1: 0xeda5630a5837ec31513c33b1,
            limb2: 0x137c82e1c43177bc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9860aa471354ad69117caaa5,
            limb1: 0x18e2c0b66ae9375c1f4b7ac2,
            limb2: 0x1ebf02b255ad55ad,
        },
        r0a1: u288 {
            limb0: 0x3c6ee333c9657f69d949114,
            limb1: 0xfff5059f226ec7f98f63d7c3,
            limb2: 0x19ae11cca33713b4,
        },
        r1a0: u288 {
            limb0: 0x809102ccdd402e129117012d,
            limb1: 0x67103eba2d62bbe291b04db9,
            limb2: 0x1713e66f158cbe06,
        },
        r1a1: u288 {
            limb0: 0x8a522a9d1ae32c710f97f74f,
            limb1: 0xa9d875352bb08cfb40d7b8f3,
            limb2: 0x11673a1896fddb1b,
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
            limb0: 0xf209f06d276deb1a65e59e44,
            limb1: 0xd7cb7b9d090e5671fcafe42d,
            limb2: 0x1263db1ea83543aa,
        },
        r0a1: u288 {
            limb0: 0x89f77c7f327907dbc008c719,
            limb1: 0xce44947bb5b039bbad83c5c1,
            limb2: 0x18875006447da84a,
        },
        r1a0: u288 {
            limb0: 0xcb69ce95fc4e8820f5cf859,
            limb1: 0x650ede5b19ddc8037acdd94a,
            limb2: 0xb3aafe5e3010298,
        },
        r1a1: u288 {
            limb0: 0x6679ac61d917b804c5b000d6,
            limb1: 0x2644e2c98d6615c616759a63,
            limb2: 0xd49143ef55020cc,
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
            limb0: 0x243a867061d17419ab0d201a,
            limb1: 0x9922130f6cf9f2c671526f70,
            limb2: 0x1aee8067f81c389c,
        },
        r0a1: u288 {
            limb0: 0x1520f78743eaca35feb87b29,
            limb1: 0xd8f9971f2b7effaeebd4a469,
            limb2: 0x51eb5ffa8d01f1,
        },
        r1a0: u288 {
            limb0: 0x3b579cf866c700345be85235,
            limb1: 0x6a2039109b1f2fdd9a60fb1,
            limb2: 0xf4ffb4be44025c7,
        },
        r1a1: u288 {
            limb0: 0x4eedd63ce5dfa139e2eb4113,
            limb1: 0x4afead1b0a796126765ce78c,
            limb2: 0x17b1d72bcfe6c5e2,
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
            limb0: 0x4381d8928bd271200b0e4419,
            limb1: 0xabb59aeed41ba6a066b8b257,
            limb2: 0x1b7bd53f0fc423bc,
        },
        r0a1: u288 {
            limb0: 0x609496705f94a1aa0c7c72e9,
            limb1: 0x5eed0a61071ff46a739c455d,
            limb2: 0x24912ca04de26633,
        },
        r1a0: u288 {
            limb0: 0xb0ecae979ee54a5d709121b5,
            limb1: 0x5f5cc53d4f4d426cdb46e50d,
            limb2: 0x7b5dfdc1efbe8f5,
        },
        r1a1: u288 {
            limb0: 0xd080e2df656924d98184555a,
            limb1: 0x65f7e72a1fa8f131ad30299c,
            limb2: 0x11f4d99c461354b9,
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
            limb0: 0x85b3e40d9fa268ca72b53f61,
            limb1: 0x21f3ae227a72b99830cf41cc,
            limb2: 0x1047304e35b8aa4a,
        },
        r0a1: u288 {
            limb0: 0x3bd9f389ec266a417e6638f1,
            limb1: 0xb261932aa507a521a82511f2,
            limb2: 0x17c1f3b7d7ee2433,
        },
        r1a0: u288 {
            limb0: 0x1712a59b7e5c7572fddee330,
            limb1: 0x11173f010af361362d14e981,
            limb2: 0x25b64a1b00c2d791,
        },
        r1a1: u288 {
            limb0: 0xa2bda28ed8b4350be1c928b2,
            limb1: 0x4bb9f7cb1d8f5d3f4dfad7f4,
            limb2: 0x2261c6913a7fd3fb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3eef5b331218d12e4a88e31f,
            limb1: 0x411c5a6948f107be1950ad68,
            limb2: 0x1823263c6b70d086,
        },
        r0a1: u288 {
            limb0: 0x368c739af09841364776632f,
            limb1: 0xf6bc10620deac033d0a30342,
            limb2: 0x230285c8f5f6d93d,
        },
        r1a0: u288 {
            limb0: 0x1635ed28ed383e5d0b91e755,
            limb1: 0xce417e005dbb2583f9edc87c,
            limb2: 0x9abe7b10fa171f6,
        },
        r1a1: u288 {
            limb0: 0xb5b9655f53461c5a788953eb,
            limb1: 0x86d48e79a619a97ac549262a,
            limb2: 0x7ef087a4187c0ed,
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
            limb0: 0x9977adbdb7ac5ec55d67580f,
            limb1: 0x1601ab4c9383c61736dd6e95,
            limb2: 0xfd59c271654afce,
        },
        r0a1: u288 {
            limb0: 0x7f3ec1a8138cef6f3be87202,
            limb1: 0xf535ec8ae0f6982acf949fe3,
            limb2: 0xf94d41993b98fa1,
        },
        r1a0: u288 {
            limb0: 0xce3d1e21f2995a5edce3b891,
            limb1: 0x8ff039aedbd67a0049318516,
            limb2: 0x21c08f55b73e2f11,
        },
        r1a1: u288 {
            limb0: 0x2b7fcb1f1f2716c15245d23c,
            limb1: 0x24ca23b9e0a0489c67f012c5,
            limb2: 0x223ce2897b72f295,
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
            limb0: 0xaa50e843235c3f80d06036a9,
            limb1: 0x98556db065a5b339eeee2de7,
            limb2: 0x297bb82bce523108,
        },
        r0a1: u288 {
            limb0: 0x21731ba541ba3b69007722a7,
            limb1: 0x9828a983b69a6b79bd1aeb56,
            limb2: 0x12087f30bfb94b30,
        },
        r1a0: u288 {
            limb0: 0xc22978d6d6016981e2ec16aa,
            limb1: 0xc0ace5937273fb441eaf97fd,
            limb2: 0x221f7cce2ff76c94,
        },
        r1a1: u288 {
            limb0: 0xa317ac7a0095ce4be6fd1386,
            limb1: 0x35f789a7c5f3fa81233c9505,
            limb2: 0xae58defe9c13dd0,
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
            limb0: 0xc8cb1885a9dd728d99fb723,
            limb1: 0x8f5e9c41c1c15a59c7c755ed,
            limb2: 0x298777742cdb4247,
        },
        r0a1: u288 {
            limb0: 0x81b9fdb47700fc96e8f3db70,
            limb1: 0x991cffa55fffc2afab898331,
            limb2: 0x1d4c3805854cd867,
        },
        r1a0: u288 {
            limb0: 0x6c6fe73a5f4ab3dd00f3fc51,
            limb1: 0x568662dc4440153df3c6886b,
            limb2: 0xd9702b4802a881,
        },
        r1a1: u288 {
            limb0: 0x62012d73ca002ce00e920a9c,
            limb1: 0xfe37fe74bda66203ac38306e,
            limb2: 0x2826aa6aafe1a64d,
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
            limb0: 0x245834af36e2864a2ebdb32b,
            limb1: 0x777355b2bcf7c34445e893cc,
            limb2: 0x155825911571aa0f,
        },
        r0a1: u288 {
            limb0: 0x9bdf22ea1e89208695865c86,
            limb1: 0xdd7667884aeca6ce9413afdc,
            limb2: 0x30d9f12a864197,
        },
        r1a0: u288 {
            limb0: 0x3befbda6f8fecb88c0dda524,
            limb1: 0x6fdb0cced48fc98c9206d66e,
            limb2: 0x25f9cc789f8f207a,
        },
        r1a1: u288 {
            limb0: 0x88e8849bd8c26a9c70f116ac,
            limb1: 0x9a4f6115a63b0e30a15d6132,
            limb2: 0x165039f0df2ed8fb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe172b7bba1e1262ac243a380,
            limb1: 0x34d5a2a0910db857e3b7939c,
            limb2: 0x2aa0263103d0370b,
        },
        r0a1: u288 {
            limb0: 0x44594304c77e90ea98242a50,
            limb1: 0x4d65a1a194cdd5c73de105b2,
            limb2: 0x14eb4a31bdf5c0cc,
        },
        r1a0: u288 {
            limb0: 0x67ab284d09acd3dbd97e4744,
            limb1: 0x4a618d45c973dfeb37d701fe,
            limb2: 0x294d96a120a36229,
        },
        r1a1: u288 {
            limb0: 0x98f6d0f8ff540cace9f3608c,
            limb1: 0xf07b3a107ba7c62b22617bbe,
            limb2: 0x27a2c24fb19468c5,
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
            limb0: 0x76e40d3d9dc3b8d2ceb04b0d,
            limb1: 0xfc1ebb74a4fb7d33b61448a4,
            limb2: 0x13732901f350bd78,
        },
        r0a1: u288 {
            limb0: 0xfcd0be676d98068cb53e8025,
            limb1: 0xfb65aac57c13a0001f1b773f,
            limb2: 0x1e622c6a96937994,
        },
        r1a0: u288 {
            limb0: 0x56d39c7c5a0372917a38bce6,
            limb1: 0xd5e7120de8a1e78d837e3d26,
            limb2: 0x2543a1d3e0a9879e,
        },
        r1a1: u288 {
            limb0: 0xb39234bc3fe5a32728e10dff,
            limb1: 0x261b988178a7f8894b21f7b8,
            limb2: 0xb6b964ca313246d,
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
            limb0: 0x5fa769ce0491a0cd950f482d,
            limb1: 0x2849754299a29f90f960b84f,
            limb2: 0x27ab76e58ff5d45d,
        },
        r0a1: u288 {
            limb0: 0x840150612c179bb05eb8079,
            limb1: 0x2939970e0ded636eeaa33863,
            limb2: 0x272d98d88674874c,
        },
        r1a0: u288 {
            limb0: 0xf59eb294080d9fe936d23e5d,
            limb1: 0x800b8ad8fe31f6d9bc70c76e,
            limb2: 0x1e1b0542a3cf4f20,
        },
        r1a1: u288 {
            limb0: 0x84c960d8f397356879928f77,
            limb1: 0xce01be1f4ee3cc3676fb0513,
            limb2: 0x2bdcc1f818eee59d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3368b26e1359e27a905daf9a,
            limb1: 0xa24b1f29a42837c40be10686,
            limb2: 0x2ff4d02a20cd6b73,
        },
        r0a1: u288 {
            limb0: 0x907229caa699ada73d5ceb30,
            limb1: 0xd75aadac81cefeea1d0952ac,
            limb2: 0x2a781c53c651359e,
        },
        r1a0: u288 {
            limb0: 0x2e5f06e14ecbf1ea8c1e4df8,
            limb1: 0xb5810d805fcdf9edc1b44637,
            limb2: 0xd1056f40d4058c4,
        },
        r1a1: u288 {
            limb0: 0xbf85cef4824c59ad0b6a11e6,
            limb1: 0xb6ba3873073c70ae81252749,
            limb2: 0x6ace4e2bd8432e6,
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
            limb0: 0xe9c3b0788c2e58df70d1c65c,
            limb1: 0xf6cb1adc748f8c2f1ec7c1f8,
            limb2: 0x259ffd36dce3da4d,
        },
        r0a1: u288 {
            limb0: 0xab61eb9073b5eed3c99b583b,
            limb1: 0x53ddc9855ae9e0b438168153,
            limb2: 0x1daf33710e79df96,
        },
        r1a0: u288 {
            limb0: 0x727f01ee8cc7bdee4ac8643f,
            limb1: 0xf6f63cc1b0eca4c25cb837c2,
            limb2: 0x16895fc709c19962,
        },
        r1a1: u288 {
            limb0: 0xfbc23b0300ea6aaca256ae67,
            limb1: 0x91a72f71d8b96b69807ba6ca,
            limb2: 0x6196fb6193f8bc7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x835710c815d18f8993dfb859,
            limb1: 0x4889ff97b9afddff43110a24,
            limb2: 0x192eba75722ed270,
        },
        r0a1: u288 {
            limb0: 0x362b91a53949f4bf5442f5ec,
            limb1: 0x4bbe614303dc1a2f2a7d56be,
            limb2: 0x182bf4447a1ea3f2,
        },
        r1a0: u288 {
            limb0: 0xf907133b2340a678882b83c,
            limb1: 0xf1a83c80b808d37e0312c4b8,
            limb2: 0x278b59beb878b6b3,
        },
        r1a1: u288 {
            limb0: 0xf6061e245f4af0e7f277f171,
            limb1: 0xa86e132d4de04a9286bdf5d0,
            limb2: 0x22b77850c01e4525,
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
            limb0: 0x5c297f7b94081400be3db73e,
            limb1: 0x511fc3dfb66107be93aefb36,
            limb2: 0x16cb602e714bc0d6,
        },
        r0a1: u288 {
            limb0: 0xc40db1c77f35a03c5c73eedf,
            limb1: 0x33a850e54a7fc15719c964b3,
            limb2: 0x2a2d56e6eb62ebb7,
        },
        r1a0: u288 {
            limb0: 0x84453adafe73a099b54101e6,
            limb1: 0x4f8021d1bf95afce8232c8dd,
            limb2: 0xe3055a8700a5d0f,
        },
        r1a1: u288 {
            limb0: 0x46964b1d3b0f618307c8a54a,
            limb1: 0x483833b0e897addaac2d3987,
            limb2: 0x1f3d23f02d86bf13,
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
            limb0: 0x6643603708e533b2e3a1f5da,
            limb1: 0xdc6cc116b5eff563f761c8a4,
            limb2: 0x29bf403a8e97f2ee,
        },
        r0a1: u288 {
            limb0: 0xbf50be33ed595a49a4006b93,
            limb1: 0xc903bb5dc527c976fc69c4b5,
            limb2: 0x222b77d4b91b1500,
        },
        r1a0: u288 {
            limb0: 0x4e4caeb7b99bbe5ccf56c7d7,
            limb1: 0xbea5ea3223917fc91becfb5c,
            limb2: 0x290a52ef4bdce344,
        },
        r1a1: u288 {
            limb0: 0x8d5fb77ecda36a5114fea8d,
            limb1: 0x64cd96d89378adfc355112bd,
            limb2: 0xa74dc8d4f1243d3,
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
            limb0: 0x3249e1d21d426b66b1b80ebf,
            limb1: 0x28d3f6fc23f27adecd7bef04,
            limb2: 0x2272347e5b91585f,
        },
        r0a1: u288 {
            limb0: 0x3e95c42c0184545b2e146c5,
            limb1: 0x9ec91b27a09aeb413701f0eb,
            limb2: 0x133b4f7de5ec1283,
        },
        r1a0: u288 {
            limb0: 0x195a7b55949fa611265014a6,
            limb1: 0xd44a055b36268dbb6f25278f,
            limb2: 0x1dc5f91b6ab08f8,
        },
        r1a1: u288 {
            limb0: 0x7ff98bfd9c008606c3d8b24a,
            limb1: 0xe2ce79985fd7ebc0262434a7,
            limb2: 0x1e515a48388193d6,
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
            limb0: 0x1d053aea102116d5779c3ac0,
            limb1: 0xdecf5e3f6aa7024c4096f6be,
            limb2: 0x24e00eb4d9ffc84a,
        },
        r0a1: u288 {
            limb0: 0xcda34eb87d0f3bb0a2b1e51a,
            limb1: 0x710072d3311711089f4631cf,
            limb2: 0x1fe0615c4242f58f,
        },
        r1a0: u288 {
            limb0: 0x41a7ca26486745c27ae8f5ee,
            limb1: 0x66c346b66da8a88c27a7052c,
            limb2: 0x4a7f7e018f8c3f0,
        },
        r1a1: u288 {
            limb0: 0x2aeae47a200545e7a899e8c8,
            limb1: 0xb2c49e1ee42d6fcef6491feb,
            limb2: 0x1a8f1903e4fa17f3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f61a4f24857884cc7848b58,
            limb1: 0x254c225597d93921cf237d59,
            limb2: 0xf2373f4da9537b6,
        },
        r0a1: u288 {
            limb0: 0x8cf56591182a6ef1e812fbbd,
            limb1: 0xed1d1074e3db40dee2655d71,
            limb2: 0xc52e78018885987,
        },
        r1a0: u288 {
            limb0: 0xa18ba28036e9207ddc8bc255,
            limb1: 0xe617009967181e0b9b684a1f,
            limb2: 0x915727084249641,
        },
        r1a1: u288 {
            limb0: 0xd838dcb55dd0e2bde0b1f7d8,
            limb1: 0x14bb7419aaf5a621e02b819e,
            limb2: 0x2ae17cfcc87ef12a,
        },
    },
];

