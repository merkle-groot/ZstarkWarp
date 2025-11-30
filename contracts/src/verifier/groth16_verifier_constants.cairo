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
            limb0: 0xbd4220bd7bda169b7701cf28,
            limb1: 0xfb3a052817a4be5f2026c2e0,
            limb2: 0x212a64d898eebfee,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xe8438343f574a5457bed296b,
            limb1: 0x1c4474c8c55a362b500d0faf,
            limb2: 0x5c2a62870a8d771,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xafb76067589ea918cc618bc6,
            limb1: 0x805f4e3a8d7e0fc01b5d3747,
            limb2: 0x176e5b428def99c4,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x735a17bea8da8be1135c36d9,
            limb1: 0xdb6b165a725e1bf583b8d937,
            limb2: 0x15761ec2d467d5f3,
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
            limb0: 0xebe50b443a7821b799126694,
            limb1: 0x3f966eaa42b9240faad15d97,
            limb2: 0x21131a33b7280852,
        },
        r0a1: u288 {
            limb0: 0x22934c89fdca1e2a0d413a46,
            limb1: 0x95dda5086d989594d03fe949,
            limb2: 0x6d1a2bef6f1438f,
        },
        r1a0: u288 {
            limb0: 0xe7e6e660d738763e24b78b01,
            limb1: 0xe64549ab4784d4f26472e396,
            limb2: 0xcc28dafe4447960,
        },
        r1a1: u288 {
            limb0: 0xcf3bb853346a0089bdc196f6,
            limb1: 0x64d1015be6ecbe77524a3f96,
            limb2: 0xca92336b4e0e830,
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
            limb0: 0x7c8cbf4901a86a5f3f6a96b3,
            limb1: 0x78b9d70c3ec8344decb00cf9,
            limb2: 0xf51343f2a0997d7,
        },
        r0a1: u288 {
            limb0: 0x45de7e033e566deccb3bc301,
            limb1: 0x2272a0ae13e8c2c8c7418148,
            limb2: 0x2992abb3ea405c9a,
        },
        r1a0: u288 {
            limb0: 0x808ae42c64e815d8b3c57246,
            limb1: 0xd20afc0b39fc836b330e86fa,
            limb2: 0x23a1c0c2fced26c8,
        },
        r1a1: u288 {
            limb0: 0x9936123a07b68b8d1abb6651,
            limb1: 0x537f445a9a9499e645372afa,
            limb2: 0x23bb2b3c2c50b7f9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8114226050fe99a025c1de95,
            limb1: 0x3859504947d33f85ab2b278e,
            limb2: 0x2fa69a6b90c98f03,
        },
        r0a1: u288 {
            limb0: 0xdeced5661f6fb764c97d5287,
            limb1: 0x6081ec8646046e54cbc032f5,
            limb2: 0xddd48f343d29929,
        },
        r1a0: u288 {
            limb0: 0x66bbbb517eb2c0aa3b7baed8,
            limb1: 0xeeb896550fcaebdf013738b,
            limb2: 0x1c6f15dda48d4c27,
        },
        r1a1: u288 {
            limb0: 0xc1d04006ecd265a705f25018,
            limb1: 0x96af0d0749dbdd03b21d59ca,
            limb2: 0x742ec5c7c5a1c0a,
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
            limb0: 0xaf6ff7cfef75e65a28fdd20,
            limb1: 0x8f66828dba9528e0192eaab9,
            limb2: 0x128b5f7b36a21c3f,
        },
        r0a1: u288 {
            limb0: 0x637179b286a8c7b877df251e,
            limb1: 0x20090cf264bb6873f49cb087,
            limb2: 0x2e3cb8531aff48c7,
        },
        r1a0: u288 {
            limb0: 0xef8f54f671d001f296de70fc,
            limb1: 0x299c068c4718584b8f78a8e1,
            limb2: 0x7572d305bd8a235,
        },
        r1a1: u288 {
            limb0: 0x5138320a84db6f22bd5e43c6,
            limb1: 0xbf811efea011d6b8a88be87e,
            limb2: 0x27ba25bc4a03fb9e,
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
            limb0: 0x5a53125a3c1e85fded97bd5,
            limb1: 0x496123d4a26ad5eeea0b6b6b,
            limb2: 0x299fbcab5ba8e739,
        },
        r0a1: u288 {
            limb0: 0xca96ac6100d07f58c089cdc6,
            limb1: 0xa3dc49cb3972566b687196cc,
            limb2: 0x1462371b10b8efc9,
        },
        r1a0: u288 {
            limb0: 0x57932489157e96baaeb441a,
            limb1: 0xfedf3dd214c88c2431db4568,
            limb2: 0x2cf8caaaf6e909dc,
        },
        r1a1: u288 {
            limb0: 0xa33e53e4252b03a437423ac5,
            limb1: 0x3134b9542d6ccb7ba22770d4,
            limb2: 0x97692ffec8ed310,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x375c695d6dbfef3a8939c7c2,
            limb1: 0x48fa91baf29a3908ecd61208,
            limb2: 0x15e093cd2a6afdd2,
        },
        r0a1: u288 {
            limb0: 0xe99c5e1d727f8402415e2d2d,
            limb1: 0x1671aa1d9ecdf7d4d8a31f02,
            limb2: 0xda613ef1f21921,
        },
        r1a0: u288 {
            limb0: 0x2e2eddf49483cc0fa4655e9b,
            limb1: 0xefa8cbc51b3d6f430bf81be6,
            limb2: 0x2afc9e3b08c90506,
        },
        r1a1: u288 {
            limb0: 0x7e1b11da4234f41dbc7d14ab,
            limb1: 0x69f73ccc4c05a6c4ec0a14ec,
            limb2: 0x2b6d79c9c453eda1,
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
            limb0: 0xd9b9c95bff43d8f0b4095a30,
            limb1: 0xdc4ea9e128f1247e25b3ccea,
            limb2: 0x7b08eb3e9c1f661,
        },
        r0a1: u288 {
            limb0: 0xe9029534b701de0113b77541,
            limb1: 0xc906d9c5037c28e38472f6de,
            limb2: 0xf46ec5864ee1809,
        },
        r1a0: u288 {
            limb0: 0xc71a5458a1be6c9d16d0f37e,
            limb1: 0x217a0c8e5e68a45975baa988,
            limb2: 0x448b1bf0e74d055,
        },
        r1a1: u288 {
            limb0: 0x44989d9f29b53275659d0576,
            limb1: 0xfbbdc246987b9224b238573d,
            limb2: 0x100c5053e03aef26,
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
            limb0: 0x2d6eb2b39c23762dccf6cb1e,
            limb1: 0xa440ba2186774b3df7b4442f,
            limb2: 0xaff1c4f2d3ed33b,
        },
        r0a1: u288 {
            limb0: 0x84a48ed34a21241ada7d7444,
            limb1: 0xb92a83eb8e506667774cff48,
            limb2: 0x2da80dcda6b73955,
        },
        r1a0: u288 {
            limb0: 0x5039028b89584e32ef1f1e7f,
            limb1: 0x7ecf74bb33581263eb8f9ad4,
            limb2: 0x18dbaea1becee963,
        },
        r1a1: u288 {
            limb0: 0x4a98d2e4aefa9d1ba7778f8,
            limb1: 0xf7097dcc58f73109cb8d25ac,
            limb2: 0x102c112e427c9e77,
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
            limb0: 0x8cfdb3b59b2613bb5fca46c9,
            limb1: 0x5277faed8ce389d322bf20ff,
            limb2: 0x1f2929494d4e47a5,
        },
        r0a1: u288 {
            limb0: 0x191da73c1e6613ca2dca8d5d,
            limb1: 0x1b54bca57f6ace7e2984c40b,
            limb2: 0xa7b71c39fec88f3,
        },
        r1a0: u288 {
            limb0: 0xba2adc66fb3e36da8a52247e,
            limb1: 0xcfb6e738aea74787f1767fb2,
            limb2: 0x1cc59c695d8818fc,
        },
        r1a1: u288 {
            limb0: 0x847c889bb6c8727614167fc8,
            limb1: 0xac225ecc04dbf6f02ee523b1,
            limb2: 0x6ae8a367f9c3cf9,
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
            limb0: 0x1fb5314777589efbf3bc6e1d,
            limb1: 0x182cbc227c6f8b6070ab5721,
            limb2: 0x1bfeb2fa88125c47,
        },
        r0a1: u288 {
            limb0: 0xf8e30b2f2b56f0e8f09281ae,
            limb1: 0x72389f53830b7797215449be,
            limb2: 0x167be1341c4e197d,
        },
        r1a0: u288 {
            limb0: 0x6891e547d5a2e2ccda1647d2,
            limb1: 0x55756191a2bdd78ba44ebf38,
            limb2: 0x14ca6a3584cefbaf,
        },
        r1a1: u288 {
            limb0: 0x4feb716d018f8101a016696d,
            limb1: 0x44f0f8bf50ec34b899fb1853,
            limb2: 0x13be0393794c99a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd411c970e5051929c324359c,
            limb1: 0xcd60bda0b062357642b7453,
            limb2: 0xe64dab339bca246,
        },
        r0a1: u288 {
            limb0: 0xdf3341bb3e4ac60db79f9a5,
            limb1: 0xf59b3558e264974d198a4f6c,
            limb2: 0x239077131cf9858c,
        },
        r1a0: u288 {
            limb0: 0xc046b3320e9f45b8845c6efa,
            limb1: 0x44e0ea9e09a13341b9a3b51,
            limb2: 0x1436f9d39784c5e1,
        },
        r1a1: u288 {
            limb0: 0xf576201d62965f9ad98ddfa,
            limb1: 0x572e77bc8f9cfe33b294aefc,
            limb2: 0x28bcaf5b48dcb76b,
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
            limb0: 0x85851b13f0f16bfa3fb7a465,
            limb1: 0x544fa02cde1cb1aa35b7314d,
            limb2: 0x2117d51aa50de080,
        },
        r0a1: u288 {
            limb0: 0x27a71e536a306a69162b35c4,
            limb1: 0x2e0450855f2c967f97557b59,
            limb2: 0x1245c352d6fdfb2e,
        },
        r1a0: u288 {
            limb0: 0xcb10e45c0efcc3696ea56e88,
            limb1: 0x6146f7f8d69d592792d7a10c,
            limb2: 0x13b4bddd8d3984cf,
        },
        r1a1: u288 {
            limb0: 0x6105492aa134867bf199615b,
            limb1: 0x9b5eb494ab9ba3dd53c6fefb,
            limb2: 0x1faa956afa005867,
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
            limb0: 0x41dcfb6db35892235c232ced,
            limb1: 0x7c2aebbcd7f09fd4be995c30,
            limb2: 0x1fcd021e1a1576c4,
        },
        r0a1: u288 {
            limb0: 0x57b5540cf5489e090fd902e6,
            limb1: 0xcca34c47059bb0500fcb4d8c,
            limb2: 0x256cf28c52b6ed19,
        },
        r1a0: u288 {
            limb0: 0x4f5e0917905db445a9e17214,
            limb1: 0xe8d8f8ac3d581e8593501910,
            limb2: 0x195a8aa0edbc5784,
        },
        r1a1: u288 {
            limb0: 0x4aedbe00d0fb47ce3564480a,
            limb1: 0xac74db9120e26f9d58be572a,
            limb2: 0x116df4fdcbaabad3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8837abb15440af4d15dd942f,
            limb1: 0x663fb10dd86bbd54d2cf1a86,
            limb2: 0xfb2a841afcd9f99,
        },
        r0a1: u288 {
            limb0: 0xbcb533e40a00c146fb68c441,
            limb1: 0x6c5fcbca4680b970bdbb4ea3,
            limb2: 0x24d6abf23c8ba3e1,
        },
        r1a0: u288 {
            limb0: 0x3d511b8b5a9ec63328d99507,
            limb1: 0xb0303441986ab2da73113431,
            limb2: 0x2ef49c582a6185cb,
        },
        r1a1: u288 {
            limb0: 0x4a993fd8b327f1729f67d217,
            limb1: 0x2e95fec06ee11b693cdc7e3f,
            limb2: 0xaa1fc8a940e60c3,
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
            limb0: 0x8a3f082a33234d7cf3517bc,
            limb1: 0x8eda1ead1607201ff48f552,
            limb2: 0x262cf9366df123bc,
        },
        r0a1: u288 {
            limb0: 0x9dccf06a140a92696df11be4,
            limb1: 0x46b917da17b594a7647bdfdb,
            limb2: 0x1d2b2cc6f6ce5487,
        },
        r1a0: u288 {
            limb0: 0x100cc7e9bf01a2852917d5e7,
            limb1: 0xce0fe5c702efdefd5261fb90,
            limb2: 0x9190c70f7f09750,
        },
        r1a1: u288 {
            limb0: 0x405bfe5e0fd1fe84cd3526fa,
            limb1: 0x32c30d2ccb6c5eaf37da1aa0,
            limb2: 0x820ee26d9daafdf,
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
            limb0: 0x69fd685cddc7522dcaecacdd,
            limb1: 0x75b09057375249064c5109ff,
            limb2: 0x2321b4b519150274,
        },
        r0a1: u288 {
            limb0: 0x802934df222322066102d6f5,
            limb1: 0xb6d165e909562413f4a6fcb1,
            limb2: 0x1e2dd69a91b91e9b,
        },
        r1a0: u288 {
            limb0: 0xb16318cc663083e1d1cda350,
            limb1: 0x29bb70b88b2b879627739a1,
            limb2: 0x282b30560a0a2a77,
        },
        r1a1: u288 {
            limb0: 0x9bf4a353b3206750de065363,
            limb1: 0x68c4e168a0bf5f90cc938423,
            limb2: 0x260e372961770fd8,
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
            limb0: 0x7783b1ef60a745dfd2b2a3c3,
            limb1: 0x43ad42ee1dc6407af47647ba,
            limb2: 0xfdc35ea04a0f0aa,
        },
        r0a1: u288 {
            limb0: 0x528c4863aa2cc01420dc05cc,
            limb1: 0x25bf02de964cb7870d2b501b,
            limb2: 0xe3f533a92e8d71c,
        },
        r1a0: u288 {
            limb0: 0x753d956eccb73d2251030a8d,
            limb1: 0xf547e2e218ffbb07172a3b10,
            limb2: 0xf0896902f9f1b15,
        },
        r1a1: u288 {
            limb0: 0x6d1f52bdf68ee487cde194b,
            limb1: 0x29702d10a317dd4ac9c7270,
            limb2: 0x1370a43946c2e96f,
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
            limb0: 0x588b3c262caaa5efbe6d2da0,
            limb1: 0xb33e09e96b9679a6639fbd61,
            limb2: 0x65e2f6e332a837e,
        },
        r0a1: u288 {
            limb0: 0xd0ca96fd6f8ea0f09f267e1,
            limb1: 0x52bd46a1b0f7c245f6905715,
            limb2: 0x2bc07263eb10df31,
        },
        r1a0: u288 {
            limb0: 0xe522285372c639726c19befb,
            limb1: 0x6bbb6b8544a594a5552d403c,
            limb2: 0x23c915d2841967b5,
        },
        r1a1: u288 {
            limb0: 0xdfd1a0d8680acb5ef2c0587f,
            limb1: 0xbf68046882f5e62ea4bf2324,
            limb2: 0x2bd38b4c91d0b9ea,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1a9fa9af4868bd8d42fde3ce,
            limb1: 0x3fc02cb243b401dee09a58b8,
            limb2: 0x9000b03f58b8910,
        },
        r0a1: u288 {
            limb0: 0x35e05e7895d2f442819f88d7,
            limb1: 0x4254974a32891b5cbe1173d8,
            limb2: 0xfd7aa40067ce9d1,
        },
        r1a0: u288 {
            limb0: 0xc451b25b330306172b9e30c8,
            limb1: 0x91fd5af189d28dba7c9d7f45,
            limb2: 0x2c3beb58eff51767,
        },
        r1a1: u288 {
            limb0: 0xe52c97852dba4eefca0e384a,
            limb1: 0x4425d7a80eba5ee8b9abc195,
            limb2: 0x591878623977c27,
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
            limb0: 0xb5310c0fb31269d798924f82,
            limb1: 0xf91200eb84d46e042770ec84,
            limb2: 0x1622e0a3f3c89c4e,
        },
        r0a1: u288 {
            limb0: 0xd6acb63a328905fd4531e0a2,
            limb1: 0x7013742a79d59a4ab409382c,
            limb2: 0xc6ed60b67332f57,
        },
        r1a0: u288 {
            limb0: 0x3a4325261a304d8967cf83b9,
            limb1: 0x33478dbf73dd0625ee9f2a9a,
            limb2: 0x2db921d5bc1e4092,
        },
        r1a1: u288 {
            limb0: 0x78e079b498c697e05644a9d5,
            limb1: 0xb6b26f174014e80c6ef29fa9,
            limb2: 0x1a4121bd2b0c24e,
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
            limb0: 0xcb5641024151f8c860c75565,
            limb1: 0xddad92a9179a9c142cee3eaa,
            limb2: 0x1a55cb804798e7ee,
        },
        r0a1: u288 {
            limb0: 0x666530a4420523bbc87d56a3,
            limb1: 0x4ff64b5e61e94d03ea73cbf4,
            limb2: 0x270ce9230ce54f52,
        },
        r1a0: u288 {
            limb0: 0x2ebe99468d2812ceca0711c2,
            limb1: 0x78941f96650349f3cb5a0808,
            limb2: 0x8ab77fa6bf51524,
        },
        r1a1: u288 {
            limb0: 0x88cac354c72af9b9198495c6,
            limb1: 0x798299b0e979cc8b45b9fbea,
            limb2: 0x1a361e231bca4052,
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
            limb0: 0xbd4bd13c4a396c6807f86ac0,
            limb1: 0x475a59bf8f47cc3254122335,
            limb2: 0x2f92c06ddd410e8e,
        },
        r0a1: u288 {
            limb0: 0xcf73c4ecbd5e5796dffc0218,
            limb1: 0x1f4a80772bdebabb2594fe99,
            limb2: 0x1a1b6b6abe4211db,
        },
        r1a0: u288 {
            limb0: 0xf6f185adb93d184999182d43,
            limb1: 0xf9348b50932a2338ad5b6849,
            limb2: 0x6d660c0383a404d,
        },
        r1a1: u288 {
            limb0: 0x863d3da7930f8041a7e80cd0,
            limb1: 0xceae4f70aeb8697445d159ef,
            limb2: 0x19810c6c861b83a1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfacc6c7a8e7ebdf611cbd9ca,
            limb1: 0xf0fc8cab17c174785be5c315,
            limb2: 0x212ad90a8d3d4c40,
        },
        r0a1: u288 {
            limb0: 0xefa8cd9fd76f4f02df90f1d7,
            limb1: 0x451e8c7090bd6a01f887aeab,
            limb2: 0x19b100f0754c9ef6,
        },
        r1a0: u288 {
            limb0: 0x67b4341eee8c944a98300c7e,
            limb1: 0xaf27892ca092d881ebdbb330,
            limb2: 0x41ad49f5eae7d3a,
        },
        r1a1: u288 {
            limb0: 0xf46457cae787137dc0c0cbea,
            limb1: 0x40ac970a6672b859fde1e2f0,
            limb2: 0x2ad8cbdef88f01c4,
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
            limb0: 0xa42e9e891d68b0f2660621fd,
            limb1: 0x5e7bfeaeaf81b32056fac85d,
            limb2: 0xbcea8fc05b66e2e,
        },
        r0a1: u288 {
            limb0: 0x5cf5b9b6f9b023cb14aa48c7,
            limb1: 0x39d39e140add8439e8aeb5cc,
            limb2: 0x19417c62b0513bf9,
        },
        r1a0: u288 {
            limb0: 0x18a79e1f979b35b09a2bbfa,
            limb1: 0xf777a929757e95c1607546e6,
            limb2: 0x740422c36621fef,
        },
        r1a1: u288 {
            limb0: 0x83494f2b89a566d877899e5d,
            limb1: 0x238f103737775f397f4f434f,
            limb2: 0xd33897a2ac6444d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ecc87fd96b8e925cd3c1be3,
            limb1: 0x3d835326e90f30ff4d93d04a,
            limb2: 0x74f996bc6dac12f,
        },
        r0a1: u288 {
            limb0: 0xf73229684ac0b98de2b1eda,
            limb1: 0x7f19e49d8a1eacf09dfcaa42,
            limb2: 0xcd5f0a425012,
        },
        r1a0: u288 {
            limb0: 0x4a1f33d66ee6225e033a2cd3,
            limb1: 0xd0076d2ca2a86dfd309f013c,
            limb2: 0x409ebc5a36c70f6,
        },
        r1a1: u288 {
            limb0: 0x204ae21abab66ad288e17d23,
            limb1: 0xf75d5680bbf0673731e6cfdc,
            limb2: 0xd91d5b542ea83da,
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
            limb0: 0xd77283dd01b633c00283b446,
            limb1: 0x31d6a9cc818cc6d33bc363e4,
            limb2: 0x12908c68caf2d861,
        },
        r0a1: u288 {
            limb0: 0xa1b4a48fc51d0b294b935469,
            limb1: 0xb2b990cbeefb068c50cc7e1,
            limb2: 0x1789c282145fb0b4,
        },
        r1a0: u288 {
            limb0: 0x2c5cb1c6011dcf58e97b7de1,
            limb1: 0x88bc6f43d3f01d2110ef6ea,
            limb2: 0x1057f81c489b9788,
        },
        r1a1: u288 {
            limb0: 0x2037863153048609207ac85e,
            limb1: 0x9a9f781df4f63a9cc00edba2,
            limb2: 0xf33339bc99e3bcf,
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
            limb0: 0x85c5f2dd5a0ccc998f8870ce,
            limb1: 0xdee98dc802958d0d417d6488,
            limb2: 0x212fdcb0dee1e00e,
        },
        r0a1: u288 {
            limb0: 0xd60845ff939732a7443205ed,
            limb1: 0x5919c5b94b3e85f17ccb94e2,
            limb2: 0x3aa7f1710f65a79,
        },
        r1a0: u288 {
            limb0: 0x7b82950333a1f6ba08e9e4fa,
            limb1: 0x10802806bbc2f7876d580d07,
            limb2: 0x2a8b8c20930854ad,
        },
        r1a1: u288 {
            limb0: 0x8c282c49b921e7a47a55cf39,
            limb1: 0x6900e8296d9bdd61a4c392cd,
            limb2: 0x22af4f271167a3e2,
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
            limb0: 0xfdd5d93f216dd975db14d2e0,
            limb1: 0xf61f00bdd8c7ff73e1213520,
            limb2: 0x303c45fc28092d7b,
        },
        r0a1: u288 {
            limb0: 0xedbccda7bf8f6fe977681651,
            limb1: 0x4231d14870c8d78b16a29273,
            limb2: 0x2fa5551212781998,
        },
        r1a0: u288 {
            limb0: 0xeacee1b5c1a8080c0f390d35,
            limb1: 0xfa9362ad975305074df1766d,
            limb2: 0x1c6f800751fb9296,
        },
        r1a1: u288 {
            limb0: 0x3b153723a0b21907bfca405d,
            limb1: 0x1abc4386ca46c4b4cad25dae,
            limb2: 0xfadb6e374520bd3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a9c4cecfe6bbd8ee4cc3229,
            limb1: 0xb4cf912961d5d844b8797e90,
            limb2: 0x132dc638ecb5a58d,
        },
        r0a1: u288 {
            limb0: 0x41b6c2af216207c7ac857d4f,
            limb1: 0xe955153898c9fc7e7d0b532b,
            limb2: 0x22b0d4087d976a4b,
        },
        r1a0: u288 {
            limb0: 0x8d3105823c4a3dc08cdc921b,
            limb1: 0xba6a7cfb134cf53b433ebc8a,
            limb2: 0xf0af4c81210927d,
        },
        r1a1: u288 {
            limb0: 0xf68aaa8955036d95dfced5eb,
            limb1: 0xf7b2004eb39b4e4f50257644,
            limb2: 0x1c2a7d341a2613b7,
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
            limb0: 0xef5ac018b3803e1cb212b23e,
            limb1: 0xb8c16ee95581e87edf9da51d,
            limb2: 0x2a7c5523a4f36c80,
        },
        r0a1: u288 {
            limb0: 0xe4e26d2d1bff4f8f14c4a885,
            limb1: 0x5fded80c04ca22c79127478d,
            limb2: 0x2626b3f3e9967470,
        },
        r1a0: u288 {
            limb0: 0x6c3bc99bc93feeae63379f5b,
            limb1: 0xb1c24853e240f21108e4cd5d,
            limb2: 0xab025786bab3585,
        },
        r1a1: u288 {
            limb0: 0xf9eac80b64b30ba348b88a4e,
            limb1: 0x9bbba6a6611eb49859c4df0c,
            limb2: 0xcf67c128aab7559,
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
            limb0: 0x2b1dfc398cd16349eb234b13,
            limb1: 0x8a2f3f75ec87a536f05d337a,
            limb2: 0x1287a70b2e9f5be4,
        },
        r0a1: u288 {
            limb0: 0x95a632e1462031d045c57f9b,
            limb1: 0x6728809eae3264f88c1703e8,
            limb2: 0x22878026d81dd752,
        },
        r1a0: u288 {
            limb0: 0xdd1f4f6e98828bbd746a96f8,
            limb1: 0xf6676ce1ea95475398d2224f,
            limb2: 0x1254011468dcceaf,
        },
        r1a1: u288 {
            limb0: 0xbe192bda40bb83645dd94c65,
            limb1: 0x32e3feff1014c16b6bfba6,
            limb2: 0x28949c8352b86df,
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
            limb0: 0x56ab5e15c3b4e92d2608ae44,
            limb1: 0x76c4157f37c02fe1fa491b82,
            limb2: 0x301f82b9d0860cef,
        },
        r0a1: u288 {
            limb0: 0x276965850baf61b9cd0b10e2,
            limb1: 0x4e21d073948b3dd852db9711,
            limb2: 0x2f704340652dc549,
        },
        r1a0: u288 {
            limb0: 0x9867eab1267b38dc49cc384,
            limb1: 0x2b7641a3a736482e3065b519,
            limb2: 0x2726ceaa164edaf4,
        },
        r1a1: u288 {
            limb0: 0xafd5076920b09f0b5ff1bd99,
            limb1: 0xc62aff0073e52c01fb4f2edf,
            limb2: 0x4053650f7de757f,
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
            limb0: 0xd9909d5aa15f882f34e6b064,
            limb1: 0xba5cd6b98d89a455155921aa,
            limb2: 0x20cc79cb9aa9596f,
        },
        r0a1: u288 {
            limb0: 0x9427d4d9dd237f4a548e6bcf,
            limb1: 0xf67de664b322e0f1f785bcbc,
            limb2: 0x9788c5949a9be9c,
        },
        r1a0: u288 {
            limb0: 0x2a168fb0291bc8010426673c,
            limb1: 0x2dbbe0f3d7317ad22edf95e6,
            limb2: 0x91bd82e14a8c18f,
        },
        r1a1: u288 {
            limb0: 0xba20313a93ade1e52854eee7,
            limb1: 0xb9f62bb394c575a19f9934d0,
            limb2: 0x194d4e521c8a7f6e,
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
            limb0: 0x51c4a016471a54848ac30943,
            limb1: 0xdfcc1a288e2ca9906dd5ec5f,
            limb2: 0x245cd5d06fae64b,
        },
        r0a1: u288 {
            limb0: 0xaabf2c649151a0b67c3cf3ab,
            limb1: 0xf7ac94b29ff3420b890585ff,
            limb2: 0x195020c402f5b898,
        },
        r1a0: u288 {
            limb0: 0x727c16086fa9d375a7cbaa34,
            limb1: 0xdd4ceb1afb0462ea48872fe9,
            limb2: 0x7e5cc76ed77b105,
        },
        r1a1: u288 {
            limb0: 0x5bf2409376ff30ed6e7c95e6,
            limb1: 0xca7274d569b24c68cf499691,
            limb2: 0xd52bf1a7d64c71c,
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
            limb0: 0x7e058663f3d269cea3dc67ea,
            limb1: 0xe742d0976f6793718719fac0,
            limb2: 0x229dd9d41d44e54c,
        },
        r0a1: u288 {
            limb0: 0x106317baebb7d0ab1e211683,
            limb1: 0x43d251fc727f847a6442a6d9,
            limb2: 0xf8282967e039872,
        },
        r1a0: u288 {
            limb0: 0xa0d3b6867321617ec08e535c,
            limb1: 0x1013571b3b6880dafb985b24,
            limb2: 0x1a7ccc2591bd7af3,
        },
        r1a1: u288 {
            limb0: 0xce25e64453202bdd22c6e2ae,
            limb1: 0x373bd63bc9f552b5f5395d57,
            limb2: 0x19e58bfe6c9dad5b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa2f9c1bda69fc5079f1fe24d,
            limb1: 0xa6cb3360c91edac2b96a6f92,
            limb2: 0x1dd60eba5650dbb,
        },
        r0a1: u288 {
            limb0: 0x21ddd0e4afe5939bd60e9b4a,
            limb1: 0x4c31486b30fd42d8bccef1f7,
            limb2: 0x2761f6c71332559c,
        },
        r1a0: u288 {
            limb0: 0x3d83afcca480cdae740880a0,
            limb1: 0x95480afbbfe7e24d7d0f8e78,
            limb2: 0x17fb089152b4cc7c,
        },
        r1a1: u288 {
            limb0: 0xeaabe680c85cc01682c60516,
            limb1: 0x8603263c847e1c8dc53b3e88,
            limb2: 0xe5e1ce6893111ae,
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
            limb0: 0x9618d9214b46a83318cc4832,
            limb1: 0x3da11f7ce919d9f6468ec1d1,
            limb2: 0x2af0ce64c481ca73,
        },
        r0a1: u288 {
            limb0: 0x557a415bee0fb853f4165d03,
            limb1: 0xe5db65a88e2b47cb4e1d437,
            limb2: 0xe2945981395d77a,
        },
        r1a0: u288 {
            limb0: 0x2670a481849808d543a00224,
            limb1: 0xcee15a2884b18da978123934,
            limb2: 0x1dcf101785d5b656,
        },
        r1a1: u288 {
            limb0: 0x62d80cf09ae561376042552b,
            limb1: 0xc594a20b4fa82c5f4690326,
            limb2: 0x15f79095c5fff689,
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
            limb0: 0x9277574bd03fa2e8ce195057,
            limb1: 0x3dd19497da92a6b3d2422465,
            limb2: 0x18c83493bae0a133,
        },
        r0a1: u288 {
            limb0: 0xa853cc9a080377a268faa706,
            limb1: 0x917de2554dd8f5dec51b7c07,
            limb2: 0xf098b2a96b05e32,
        },
        r1a0: u288 {
            limb0: 0xfc4e71bd6066262862179545,
            limb1: 0x6b70b4a7536a1875fc73e66d,
            limb2: 0x177740be4a845c09,
        },
        r1a1: u288 {
            limb0: 0x5352559964ce707021912e24,
            limb1: 0xecf056ff41436db64525b503,
            limb2: 0x1f2279c1e9156980,
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
            limb0: 0x32229659bc494291c13767c0,
            limb1: 0xa25686cba3b18939b51a518b,
            limb2: 0x12901543af31124c,
        },
        r0a1: u288 {
            limb0: 0x9efd3084a8dc0e4a62a60b00,
            limb1: 0x9bef6a37d0e1c359d68f4006,
            limb2: 0x12a5a3fde1bcbe14,
        },
        r1a0: u288 {
            limb0: 0x5dec88cb6ab023eee4f27d16,
            limb1: 0x9dda831ed9c9488f858d7012,
            limb2: 0x178433cf1a1d39d6,
        },
        r1a1: u288 {
            limb0: 0x8ad9773206db0fc2747ee6cd,
            limb1: 0x8353a1d16d5ca50fc85fc1cf,
            limb2: 0x1edd60324d3a4503,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7f6ffbb2ab023c78c13abbc3,
            limb1: 0x7dec41ef2d014b0f1ce0522d,
            limb2: 0x13784cad4dd2262a,
        },
        r0a1: u288 {
            limb0: 0x63a7f3c4afeba8cbad1397b9,
            limb1: 0x2d2cb72fc7c030f6d1c2e404,
            limb2: 0x1b98f1b02919f9bc,
        },
        r1a0: u288 {
            limb0: 0x3c70b82d2a6b91f39c249b14,
            limb1: 0xf2632849f1232e2a97abf9b6,
            limb2: 0x217c396009d843d1,
        },
        r1a1: u288 {
            limb0: 0xd6f1530024ff6526ce3024e7,
            limb1: 0x34cbeed6cb1cad9332727924,
            limb2: 0x18161694f7dbbf0e,
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
            limb0: 0x275db4f354b652a607117c88,
            limb1: 0xe1fd437be125fa41ec55382e,
            limb2: 0x37500fb92dcff38,
        },
        r0a1: u288 {
            limb0: 0xff733ecf23458b59267f3dcf,
            limb1: 0xc9168a14a58eb69352df46eb,
            limb2: 0x10006d82e355d6c0,
        },
        r1a0: u288 {
            limb0: 0x516fb7ad557f3582a2465192,
            limb1: 0x648dc159389033d9b6d9171c,
            limb2: 0x16a6fa1da7a35844,
        },
        r1a1: u288 {
            limb0: 0xdcbd66132b64dc4b873ebbe1,
            limb1: 0xfb2313f80ec4ccf29c83d0ec,
            limb2: 0x2d8ec6816bc8a65,
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
            limb0: 0xc98bcedfdccfc61c48dc5b20,
            limb1: 0x8e0661c5e0ccc84a7b037963,
            limb2: 0x1f4189a4906c8f67,
        },
        r0a1: u288 {
            limb0: 0xa9ec6ecd2f61cdb39d4aa2f8,
            limb1: 0x5bcefb4f944d1deaa090725e,
            limb2: 0x2d9f00721386c634,
        },
        r1a0: u288 {
            limb0: 0x30ba7a05828a5e22d979d369,
            limb1: 0xa93ebd5299df642a47a5d246,
            limb2: 0x2c4f9a44c44170d1,
        },
        r1a1: u288 {
            limb0: 0x651a1696d52417e774c5d505,
            limb1: 0x74314c3807880c5e930ed3b9,
            limb2: 0x1ccb6abe3df0bdd8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf8971a50869f1385a8d77f05,
            limb1: 0x79d4c172ddc1490fdd525b2,
            limb2: 0x847351196873fa5,
        },
        r0a1: u288 {
            limb0: 0x94f976f3d17682020d8f74f8,
            limb1: 0x87efc0561beceac3ec061c35,
            limb2: 0xb566ec39a2f2a24,
        },
        r1a0: u288 {
            limb0: 0x6eddb1395cac7531e375ea09,
            limb1: 0x1ca161cbe6e0f916ef16879a,
            limb2: 0x5419717891d9ecb,
        },
        r1a1: u288 {
            limb0: 0x8bfca98e16c8e39c8ab509,
            limb1: 0x947620f178a9075c54b34bf1,
            limb2: 0x2797c4ac2fef51aa,
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
            limb0: 0x5e3b8567dfc3ee1443e27f49,
            limb1: 0x411bd2b2af306ef48a8196f6,
            limb2: 0x1ddbb2e9f44c8e35,
        },
        r0a1: u288 {
            limb0: 0x9e33bcf3170e8b992b091356,
            limb1: 0x1eb0f1c7182139e135bae141,
            limb2: 0x2c53f60a10f1f256,
        },
        r1a0: u288 {
            limb0: 0x2e524da5f7e9edf3cf76a565,
            limb1: 0x8d33ddfac7a34dbde85f629f,
            limb2: 0xcd64f062f6b5921,
        },
        r1a1: u288 {
            limb0: 0x919ff70bbb814a3ff689f34a,
            limb1: 0x2a3d67555aa2026302bbd9c2,
            limb2: 0x2ef289ffe998a141,
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
            limb0: 0x9fcbf82fa500d434eefa55b2,
            limb1: 0xa9b47de512010471f5025551,
            limb2: 0xb84020dcc01cf63,
        },
        r0a1: u288 {
            limb0: 0x2971c3db3df2ba6bcadad0ae,
            limb1: 0xf776c4bcb1fff5a8438b0fd2,
            limb2: 0x1ecbef89fdc2a67b,
        },
        r1a0: u288 {
            limb0: 0xdae2a19d062b1113f1f09509,
            limb1: 0xa318b73ead7eb6090a798d79,
            limb2: 0x3d31ce043d703f,
        },
        r1a1: u288 {
            limb0: 0xb130b81e5c61bd1be85a994d,
            limb1: 0x682d3012be413e055d80faf7,
            limb2: 0x2ced73e096c17aed,
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
            limb0: 0x483afe62a711cd80f6c4fb85,
            limb1: 0x803b33a7bf50fc0315eca80b,
            limb2: 0x1eb0087b8387c38b,
        },
        r0a1: u288 {
            limb0: 0xe33653cccd8145e1697621eb,
            limb1: 0xe6607213943ae10bd494f09e,
            limb2: 0x23c6ae9f3c194307,
        },
        r1a0: u288 {
            limb0: 0x9078d6e5b9a07062ed39ad6,
            limb1: 0x1bfd581596c13092b4e70cd8,
            limb2: 0x14ee29431573b86b,
        },
        r1a1: u288 {
            limb0: 0x9af289d28ab3e8c8645a657c,
            limb1: 0xacde01b1b90838b4a508fe5,
            limb2: 0x1d528265d4f6a12b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x69dee2702a0b6a83f8b51940,
            limb1: 0x3be7dedc3baefa1d5b01b350,
            limb2: 0x2cf3ca5125af5319,
        },
        r0a1: u288 {
            limb0: 0x86db7a0079b7dd3fd50dd2ee,
            limb1: 0xcd22c993d5628cae965a5ac5,
            limb2: 0x15b9f0f18b20611,
        },
        r1a0: u288 {
            limb0: 0x7c719000b1a730d2bcd6004b,
            limb1: 0xf10cae343f4be1c8e2bc5bcb,
            limb2: 0x8908010bd0aa595,
        },
        r1a1: u288 {
            limb0: 0x53ee54a6e8899546288e0857,
            limb1: 0xe28ae77d1098d36210ea3cbc,
            limb2: 0x7f461ad3c06757a,
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
            limb0: 0x798eba4386d99d0b321fd03a,
            limb1: 0xb4c0170f85e7cfe055ff2ce8,
            limb2: 0x125a7fe2c269ba1c,
        },
        r0a1: u288 {
            limb0: 0x322edd8c75f11ec636bbb3b0,
            limb1: 0xc88badfe4828a97df8bb2803,
            limb2: 0x227399ddc67c0bb2,
        },
        r1a0: u288 {
            limb0: 0xe8c9f3d2878e25cacf9dea98,
            limb1: 0x4e0248a81ee7e27719e8a996,
            limb2: 0xcab128418274d52,
        },
        r1a1: u288 {
            limb0: 0x53e6046246700e7e49042d5d,
            limb1: 0xeda61b48b3d7848fc45e7d47,
            limb2: 0x28472646eade3de5,
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
            limb0: 0xda85754569278f662f74ce1f,
            limb1: 0xa6b54af795256c9c903fd01e,
            limb2: 0x11a9defb7781172c,
        },
        r0a1: u288 {
            limb0: 0xc95012ebd5fa37d28c8b0c9d,
            limb1: 0xa966c9113beb696caa7272c0,
            limb2: 0x24ba707ae8f19dc4,
        },
        r1a0: u288 {
            limb0: 0xa370ca26ff111f7bc3678370,
            limb1: 0x6abdf4a4a317a35d63233691,
            limb2: 0xf5f6725e9203d70,
        },
        r1a1: u288 {
            limb0: 0xbae0b5a8eea7e5a5f322cd06,
            limb1: 0x6641a1db44fdeaa672d14387,
            limb2: 0x199fc79a4b1b1c12,
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
            limb0: 0xa39ff5f1e777920db57fd556,
            limb1: 0xc4ada9cccda523bc0eaffc65,
            limb2: 0x30535ea4dc7e6bdd,
        },
        r0a1: u288 {
            limb0: 0x217e2ae58149cfb4c5597a59,
            limb1: 0xd60cd9014fc0eb083be29b4c,
            limb2: 0x10f307a0b578d624,
        },
        r1a0: u288 {
            limb0: 0x23edff6c32a4797ac0a8d8e8,
            limb1: 0xf882a9191f9275c833467295,
            limb2: 0x1d67607f32023a23,
        },
        r1a1: u288 {
            limb0: 0x2f92b17e9667d375b4d891ea,
            limb1: 0xdb56ad0213b5d49c6485fa00,
            limb2: 0x318ab85bad8b595,
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
            limb0: 0x8c1f093a6333d9cb03394f33,
            limb1: 0x52aa28be719fa51da607e968,
            limb2: 0x1cf0e1f8ca355235,
        },
        r0a1: u288 {
            limb0: 0x3811f7442da5b6c0544cf7aa,
            limb1: 0xb913b82e7c9241122b42c6ef,
            limb2: 0x1896280781845046,
        },
        r1a0: u288 {
            limb0: 0x784e2b2c1f527ea2caf52f99,
            limb1: 0x7c4e859b63f1999a69bd66d1,
            limb2: 0x960cd6e456d302d,
        },
        r1a1: u288 {
            limb0: 0xae38b340916e5d1f80aaf632,
            limb1: 0x1ecdfbab45390edb643a1c66,
            limb2: 0x191a9768cc477e62,
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
            limb0: 0xd7382af82f7794d250af70f,
            limb1: 0xde54b9c6bdf23cbabef73700,
            limb2: 0x1555ce8b6f256518,
        },
        r0a1: u288 {
            limb0: 0x2fdf120827b430638b05e76e,
            limb1: 0x2fa48ba3791de3b491804142,
            limb2: 0x2a8d4ee05acc91f,
        },
        r1a0: u288 {
            limb0: 0xa03ae6682e2f73053aeab154,
            limb1: 0xe8d5c457d6220f7aa0f0056c,
            limb2: 0x28ab0fe4a4933ab3,
        },
        r1a1: u288 {
            limb0: 0xd25eb473dfb1a7029157c1eb,
            limb1: 0xf84428519b119dc4bd4ba6f1,
            limb2: 0x3a8d68787989a7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x40ded06d43efb24423d66737,
            limb1: 0x84f7ac0edd5ee459adb742c2,
            limb2: 0x18a16e67a8966022,
        },
        r0a1: u288 {
            limb0: 0x3712c0d83442a3530cc3e4c6,
            limb1: 0xb1d69fa11a2a27040e4ac1bb,
            limb2: 0x25e73cf38f68aa47,
        },
        r1a0: u288 {
            limb0: 0xf82fca7745bc8a160faa8e53,
            limb1: 0x2b9a000bd424a24e0e27ba8d,
            limb2: 0x404984df6c07942,
        },
        r1a1: u288 {
            limb0: 0xba6912e8ad88b29cbc1a5c4e,
            limb1: 0xf919948dd7681ad59f401ea3,
            limb2: 0x245c22a27a68af2c,
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
            limb0: 0xfab0f069ff95dff3cb5bb373,
            limb1: 0xa429526264d72ad72675f9d,
            limb2: 0x1dc585391ac8ab09,
        },
        r0a1: u288 {
            limb0: 0x5761cfeb5645f74074d2f1d6,
            limb1: 0xc28192a6d5892a3135ac7ccf,
            limb2: 0x2a953e0885042865,
        },
        r1a0: u288 {
            limb0: 0x72865ea93e261e92a5313fa,
            limb1: 0x5ab876e573fa3d9cd0d46d79,
            limb2: 0x2f401e8bd68d3ebc,
        },
        r1a1: u288 {
            limb0: 0x478b12eb2f7b6b718851c0b6,
            limb1: 0xaed1589bc74339931e3b7228,
            limb2: 0x1142739c4b847fab,
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
            limb0: 0x207ffcaa1285d470da8be3cd,
            limb1: 0xd0446a0ea8003f07d598c895,
            limb2: 0x2d269d222da48be7,
        },
        r0a1: u288 {
            limb0: 0xe65759948d55dd4356cf6ca8,
            limb1: 0x924070c9bb38d3606b869afc,
            limb2: 0x24e0fe8a1189a70,
        },
        r1a0: u288 {
            limb0: 0xa87afb89c67af2b821ab4b6e,
            limb1: 0x9947dc29c18231e62043b399,
            limb2: 0x2921ba4deb8039c6,
        },
        r1a1: u288 {
            limb0: 0x33b69a63035d156612ee7def,
            limb1: 0xb72d9598c58d194b7c981e85,
            limb2: 0x13cf404500832443,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x23641b4560207cf9edd9440a,
            limb1: 0x968f16207ab3c45703392bf5,
            limb2: 0xd52dc6a7e65b66a,
        },
        r0a1: u288 {
            limb0: 0xc6d22ffc38df45b7fa4622a2,
            limb1: 0x8e38637468488bfa1cbd8ff,
            limb2: 0x368fee1e6d2129,
        },
        r1a0: u288 {
            limb0: 0xce49d63ce4e278712fd3d30d,
            limb1: 0xf9448292c788db16e7be9790,
            limb2: 0x2dca3dc845e010c8,
        },
        r1a1: u288 {
            limb0: 0xee8d5aa70f5ccb45599cb4d6,
            limb1: 0xa8a14bb7afb2c4d02bd93e7d,
            limb2: 0x2cf5cda829a5cee,
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
            limb0: 0xc109d13bb70a483dd75a3907,
            limb1: 0x70256b665e7b13066026e9ac,
            limb2: 0x419abd56e4d68fe,
        },
        r0a1: u288 {
            limb0: 0xed6dd719f385cb423065540d,
            limb1: 0x56ad82d9e7a6d090cd8955d2,
            limb2: 0x1107f271e3890db9,
        },
        r1a0: u288 {
            limb0: 0xc4325f8fa10014d6f45b6dd1,
            limb1: 0x37e8ed4829eee66ea957289e,
            limb2: 0x561180a15bdf2c4,
        },
        r1a1: u288 {
            limb0: 0xefde343467c64a34391d6fd8,
            limb1: 0x3f77a1ed2792e4a78e4d3727,
            limb2: 0x2342ee7c5e8c7200,
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
            limb0: 0xa06b6364da4d7b92a1737318,
            limb1: 0xb4ccc5b4bf3dfa1a3b54ce0,
            limb2: 0x28556ad35a1c94a1,
        },
        r0a1: u288 {
            limb0: 0x93525f221103899f5d288901,
            limb1: 0x149e9ee4fd2d71cf3c253c64,
            limb2: 0xd11f8953c60e2ff,
        },
        r1a0: u288 {
            limb0: 0x9bf16696e1eb11a5675edd8a,
            limb1: 0x731f2d5e46c651fcbf13c93d,
            limb2: 0x231c87d60d0f9a77,
        },
        r1a1: u288 {
            limb0: 0x56f55d8de1f07992c6b045a0,
            limb1: 0x6ce1b598ed79a2924be5c61c,
            limb2: 0x220d854ba78835c1,
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
            limb0: 0x4dbf47c8083862c594f784ae,
            limb1: 0x9562e33604724ef36fd0b873,
            limb2: 0xf2c07fc0d28d12b,
        },
        r0a1: u288 {
            limb0: 0xe68bc8b2a6facd2a177c9ac8,
            limb1: 0xeea042c7861a08d638a707f1,
            limb2: 0x20fc94ccefba582b,
        },
        r1a0: u288 {
            limb0: 0x4f5c6bbfad172e45794003c4,
            limb1: 0x54ede8de9eea4b441af3583b,
            limb2: 0x2d3be426200e4cb2,
        },
        r1a1: u288 {
            limb0: 0xb81cfc4049b786f42f617679,
            limb1: 0x4b2498106dc11a0568e01c03,
            limb2: 0x54973c535e5d32b,
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
            limb0: 0xa7a2c1c6c009fcd2d8dad033,
            limb1: 0x9c03300291fb74d28f0099ec,
            limb2: 0x205f506c1f1f535e,
        },
        r0a1: u288 {
            limb0: 0xe373d5d23588da08f503394d,
            limb1: 0x8f111fe04802e9f32e975925,
            limb2: 0xb9813f694e4215b,
        },
        r1a0: u288 {
            limb0: 0xa9bc0940a896620533aac1ac,
            limb1: 0xa15fe083efd155cd520626ac,
            limb2: 0x9cf5ea803f782b8,
        },
        r1a1: u288 {
            limb0: 0x951b071d6015a41af3fa7f46,
            limb1: 0xe4235e6c0ef1bbfd5412de62,
            limb2: 0xf872d5beb752300,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4da0ea80e60bab7454290d45,
            limb1: 0xffe4a2624cd6237122d8f9dc,
            limb2: 0x13db0af8d19ca1a9,
        },
        r0a1: u288 {
            limb0: 0x2fc7081808ba8605d3dcba4e,
            limb1: 0xaf9ea294f2554a0446a884,
            limb2: 0xa3c07daf938c14,
        },
        r1a0: u288 {
            limb0: 0x9df76c01ac99e524e35c226,
            limb1: 0x42e8217a605ffcb16f27de9e,
            limb2: 0x14554b8ac798f850,
        },
        r1a1: u288 {
            limb0: 0xccd4e9745b15430e7ef90ed5,
            limb1: 0x92222de10c77d8f72ce4d5e0,
            limb2: 0xf88bcee5f7cb727,
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
            limb0: 0x4728f063b81ff19e310ead16,
            limb1: 0xcad956f9ccdc26ac6ab8b6ae,
            limb2: 0xc95c722b76bea99,
        },
        r0a1: u288 {
            limb0: 0xd4846710ab56acfccd0a9e82,
            limb1: 0x2e5cdcbed6e94bbdc78919f3,
            limb2: 0xa632e959726e26d,
        },
        r1a0: u288 {
            limb0: 0x2b4070400b0bb77f4111c01a,
            limb1: 0x6e6d90981bdd32254caa5283,
            limb2: 0x23e7dcc461f6c498,
        },
        r1a1: u288 {
            limb0: 0x33604d7a70232fc56dd88af2,
            limb1: 0x43abdc8a8c4b1b5810b1f15e,
            limb2: 0x1a098d11ea58e439,
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
            limb0: 0x5da0c6d125fd8a6ac4ceeb53,
            limb1: 0x7aa6ec6a47f8548f5898d51b,
            limb2: 0x16dff597ed44aa07,
        },
        r0a1: u288 {
            limb0: 0x7f12c5a54356105327c47e85,
            limb1: 0x48fb0c72fc4652e4eb608d52,
            limb2: 0x2bb8ceff42a02126,
        },
        r1a0: u288 {
            limb0: 0x1145b3f66cae620aa80f932,
            limb1: 0xf107045588c350e51f2e9ffb,
            limb2: 0x205ff991d1e5a611,
        },
        r1a1: u288 {
            limb0: 0x6369344ca38c4663318951a9,
            limb1: 0x13cf86dd16a2ebf787c7e0a,
            limb2: 0x3261bb5d31abd92,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb49bdebf83e845d71e5f2c52,
            limb1: 0x486e94b766108a0f4500c491,
            limb2: 0x1b220cf8c2db940a,
        },
        r0a1: u288 {
            limb0: 0x4ba7b2f8f52240015269bfc2,
            limb1: 0xf1d25afeb8929b9c65611134,
            limb2: 0xbe912456332819e,
        },
        r1a0: u288 {
            limb0: 0xd6b14564cef4a1d1ded34f30,
            limb1: 0xaa82c98b44cb30eea96f1c7d,
            limb2: 0x1e5cc6445e6dbebd,
        },
        r1a1: u288 {
            limb0: 0x8d293ee336b7269480a724a7,
            limb1: 0xa97f69c95df32aeab47fb557,
            limb2: 0x2ce8d3e3e80e0226,
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
            limb0: 0xdcbae704ca5972f07213debd,
            limb1: 0xf3a0d4655bc18f3a30968bdd,
            limb2: 0xf48f78927061027,
        },
        r0a1: u288 {
            limb0: 0x57c1261237daf77c13cac53,
            limb1: 0x9ba0af4807d17a54a24f470,
            limb2: 0x1c692f06b5b3c6b8,
        },
        r1a0: u288 {
            limb0: 0x4b75b020f4997bf0ecd1ee97,
            limb1: 0x8fe0dd1de95be1c2d9c9ac9d,
            limb2: 0x9bd770f8511fe0b,
        },
        r1a1: u288 {
            limb0: 0xd6a8789cf099b46f0031e840,
            limb1: 0x75e27553abaef296984bbc65,
            limb2: 0x87c8e09830a5389,
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
            limb0: 0xe5a36991aa32008517a2b6cc,
            limb1: 0x1c0b668529e457d276eb9a8a,
            limb2: 0x2423b3a2ab86f2a0,
        },
        r0a1: u288 {
            limb0: 0x3ee5d0c96650f97cf7109c9f,
            limb1: 0x485e9b1b7678732709c4eec6,
            limb2: 0x26f06adc1f29c5c4,
        },
        r1a0: u288 {
            limb0: 0x92264c6c0e64b1e0a9854674,
            limb1: 0x201959d6809c05ab707e3081,
            limb2: 0x141dd1435b8713a8,
        },
        r1a1: u288 {
            limb0: 0x6ddaa015a274b5073b8c2d5,
            limb1: 0xc8d4f47566585f9d0536ba39,
            limb2: 0x14bb229b99445cf3,
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
            limb0: 0xeb41d844039b122c21cd4e27,
            limb1: 0x225c28cc31e41769684ffd46,
            limb2: 0x262450263d880b15,
        },
        r0a1: u288 {
            limb0: 0x432618708f505a32e8c19e09,
            limb1: 0x2ba8a602a2c318a7765a11d7,
            limb2: 0x186dff8004877ea,
        },
        r1a0: u288 {
            limb0: 0x52c642876a9a1aa675993217,
            limb1: 0xda6fdd746e29e699b89434d9,
            limb2: 0x1f24dbc31b6c5725,
        },
        r1a1: u288 {
            limb0: 0xb97fe0f2a9499651fb183c84,
            limb1: 0xcb0a50a523a7bc5c2d6212d6,
            limb2: 0x10ab7674ac5db95,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x94c3bdb2233f56903f602b34,
            limb1: 0xf1a5269bd2d7c652884d160b,
            limb2: 0x11b398d8cef5eeac,
        },
        r0a1: u288 {
            limb0: 0xb45b8f0ec1d54b5e4c74c68,
            limb1: 0x8751968dfbbad8021fb60a3a,
            limb2: 0x8135768ace6e0ff,
        },
        r1a0: u288 {
            limb0: 0xb765ce551fc1b2d4583e8554,
            limb1: 0xd98eb61a171e8973cbf29ac7,
            limb2: 0xebb1a90d4185d07,
        },
        r1a1: u288 {
            limb0: 0xaf6730e3d80bf15135bc5bf4,
            limb1: 0xe3dbd8e3783c14da616f92fd,
            limb2: 0x2a416babbd033d21,
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
            limb0: 0x8d2a6bb5322f462763b13ae6,
            limb1: 0x419003bbff9b3391876dd13a,
            limb2: 0xf0ec95769b3d5ab,
        },
        r0a1: u288 {
            limb0: 0x16ba05a4a0e16681853d11af,
            limb1: 0x5b95a4ad1125ccec8604d132,
            limb2: 0x79367a5a051b495,
        },
        r1a0: u288 {
            limb0: 0x6996666cb9a4d446f57ce82e,
            limb1: 0xeaa78a564daf36626f601454,
            limb2: 0xad4e4f9b2db3f94,
        },
        r1a1: u288 {
            limb0: 0xd689db8af2c350b45c020365,
            limb1: 0x6929a53186e79ca957a290ba,
            limb2: 0x2920317250415b0a,
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
            limb0: 0x9c80eac9b3c3bf472523ed75,
            limb1: 0x963b566e3c2ac77542206bee,
            limb2: 0x10bd361c053fdf2c,
        },
        r0a1: u288 {
            limb0: 0x730e9d85c5f54e98665670bd,
            limb1: 0x8781ac8f28dfdb9e4efa93ea,
            limb2: 0x200219be554787da,
        },
        r1a0: u288 {
            limb0: 0x339a3c7fc99b04f723bc3ba3,
            limb1: 0x7f86d5d72b81ee1e26e708a7,
            limb2: 0x16fc5aed4e94f859,
        },
        r1a1: u288 {
            limb0: 0xe0180be007b5c6d3c5d8615c,
            limb1: 0x8a8c3f8c3d8bc3fe84630ffb,
            limb2: 0x26cedb78a893b766,
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
            limb0: 0xc4046a027341da20b8ac340,
            limb1: 0x4b4c70c4965be2c44a7cc2a0,
            limb2: 0x2d729914070b424c,
        },
        r0a1: u288 {
            limb0: 0x98f123a35b69cbbdc20c47b9,
            limb1: 0xafb970929572fc585a1a53a2,
            limb2: 0x1d52b39a41c61e37,
        },
        r1a0: u288 {
            limb0: 0x3c5422ee292b4707c7bc19d2,
            limb1: 0x94bb392ea375ddfe7e847195,
            limb2: 0x18a252e5fd7c7fc1,
        },
        r1a1: u288 {
            limb0: 0x6aa7a48d6db4bc70f1ae4358,
            limb1: 0x8fce91b0e5f2f6f179496a40,
            limb2: 0x157a6e1ae23b9cdd,
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
            limb0: 0x4dcd8110b7a01f6d5464e95f,
            limb1: 0xe343127191beb74c958ae815,
            limb2: 0xe95e3be455ce4fc,
        },
        r0a1: u288 {
            limb0: 0xc86f0e2563d202aa7ed52c4d,
            limb1: 0x7f510e143aca635764056fd1,
            limb2: 0x24d8c4be306a7ec3,
        },
        r1a0: u288 {
            limb0: 0x29869e9bc1f301d22191035b,
            limb1: 0x9c2599f7cf2fa6fc5e653ddb,
            limb2: 0x26f1d3cb2ebfd36b,
        },
        r1a1: u288 {
            limb0: 0x89a65a184b309fb89c6a6d67,
            limb1: 0x194f0c1a2773095ef6032fcd,
            limb2: 0x1b61bcfc6a4e4bcb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7aadec1e98ddf3c0e568aba,
            limb1: 0xd518dc54ebf070f7deeed106,
            limb2: 0x11db570e26af1cfb,
        },
        r0a1: u288 {
            limb0: 0x4a91bb81339c25aa0da5a4a,
            limb1: 0xb2590b788a915811a11ee185,
            limb2: 0x2aa45522a2dddf7d,
        },
        r1a0: u288 {
            limb0: 0x32f2d81b404e702d40cc6878,
            limb1: 0xfacf41f3c847efb7d29c21c5,
            limb2: 0x1e74d78abe554e8d,
        },
        r1a1: u288 {
            limb0: 0x9cfe3f2ed7e2fb0f09a68b45,
            limb1: 0xcf5816acda6475f8ce8578a6,
            limb2: 0x16a07b7fc1c40bb3,
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
            limb0: 0x11fab3a46ea919d53cfb513d,
            limb1: 0x5fb5fd5181d66cf9eaaf445a,
            limb2: 0xe0e8b212222cd78,
        },
        r0a1: u288 {
            limb0: 0x9564b2e8881e1ecb231b5029,
            limb1: 0xf293dac1fa8f13f96018e0e4,
            limb2: 0xc1652456e66bb86,
        },
        r1a0: u288 {
            limb0: 0x7ebf19525447fc6984c28e36,
            limb1: 0xe63729a2a61c9292489780c5,
            limb2: 0xb601e4250b81d4a,
        },
        r1a1: u288 {
            limb0: 0x2c0ef21a8c36a08dc08da5e6,
            limb1: 0x29e07513555c286fc5e64298,
            limb2: 0x14dc1c23da34c809,
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
            limb0: 0x1a444b76270a961e694c808c,
            limb1: 0x1819d2ea286fe76c1b5f99b6,
            limb2: 0x2749f8901f5a4654,
        },
        r0a1: u288 {
            limb0: 0x8c413ee17c11fb7a8d073629,
            limb1: 0xd2c4c386307bc491ef52d4d9,
            limb2: 0x2eeaf9f70f1751a4,
        },
        r1a0: u288 {
            limb0: 0x29368b2998245e78acaa8b1a,
            limb1: 0x2a4c89fa7db5e68022641507,
            limb2: 0x165b197536d56330,
        },
        r1a1: u288 {
            limb0: 0x9aaaf84597a67c4b49c418f2,
            limb1: 0x283fea9a6da8f7d5bf99e083,
            limb2: 0x1d4e0a45434e97a1,
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
            limb0: 0xd0ffe218899cf848b7eb48f3,
            limb1: 0x7d1135b102185f6961470ae2,
            limb2: 0x291c5d6743e854fa,
        },
        r0a1: u288 {
            limb0: 0x9b7fc2d93858705071f96bc8,
            limb1: 0xcf098dae2f87ee500a5424ab,
            limb2: 0x28892433c821ec9f,
        },
        r1a0: u288 {
            limb0: 0xb2374301f252ad7d7742352,
            limb1: 0x5087924cc3428d4f44c26e87,
            limb2: 0x2cdc6b58e480829b,
        },
        r1a1: u288 {
            limb0: 0x5b230878643bf9620b44c2e6,
            limb1: 0x4601137379297b464cdd30a0,
            limb2: 0x20bdc838b49000e9,
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
            limb0: 0xb90d34e483ef41fe3246af70,
            limb1: 0xa63442b93e58baa2ff519c,
            limb2: 0x3035144fd606414,
        },
        r0a1: u288 {
            limb0: 0x8404dbe172cce4274f87df9f,
            limb1: 0x51d22300ec71d242418b42df,
            limb2: 0x201ccf811fef16a9,
        },
        r1a0: u288 {
            limb0: 0x9562d780a0aa719519b2e416,
            limb1: 0x767cdc539cd904a49b3e5fca,
            limb2: 0x1829ec99c9e185fc,
        },
        r1a1: u288 {
            limb0: 0xfcf4c1377bf4b48bd1498404,
            limb1: 0x21556113ad482d43fbca6afc,
            limb2: 0x288f5dc7cd6569c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf01e3425b5766e69e24cc2aa,
            limb1: 0x996aae4f4fe8819a2f9c41d4,
            limb2: 0x25a308ac6ac4cba1,
        },
        r0a1: u288 {
            limb0: 0x2dd7332146f15f583ac23c0b,
            limb1: 0xbbfa5bebf39fe70c08a6c665,
            limb2: 0x2ced6355f5580b37,
        },
        r1a0: u288 {
            limb0: 0xd93c77dd7a8d0111fffab37a,
            limb1: 0x71c3de147b25a67b565d6787,
            limb2: 0x3b9192bf23d6e70,
        },
        r1a1: u288 {
            limb0: 0x89eee41db0ae69df02bcfc50,
            limb1: 0x38d5f6d0fd14c9a7f03291f7,
            limb2: 0x2fe8308efb65c1ce,
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
            limb0: 0xa85286b11665a3dc03fe9130,
            limb1: 0xb676e2f5959161f142dfedfd,
            limb2: 0x9fa1402b4975b0f,
        },
        r0a1: u288 {
            limb0: 0x961a030f879514ef399ee1ea,
            limb1: 0x3fe280bbc09abaab4ebaed3a,
            limb2: 0x2dfd4743d220d164,
        },
        r1a0: u288 {
            limb0: 0x5aefbd75e94b93866e6090c5,
            limb1: 0x25c0bbb3cb3dae55bcf243aa,
            limb2: 0x4c593814e2c0ec,
        },
        r1a1: u288 {
            limb0: 0xad7e71613e4deeafb140d755,
            limb1: 0xd064fdfa28a41ae43cae91ef,
            limb2: 0x6b98c712bf2dba4,
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
            limb0: 0xdd12c5f623e52d61972c45f0,
            limb1: 0x9d9f2a9c1ad4668e6a715f13,
            limb2: 0x2877e5d064b62ea6,
        },
        r0a1: u288 {
            limb0: 0x2eaf46a73b51603ee7e7be67,
            limb1: 0x4e56a4d1a699e4d98f4d2671,
            limb2: 0x28d04a63c471fcea,
        },
        r1a0: u288 {
            limb0: 0x55ef26fc0b69e845dbbd5a0d,
            limb1: 0x9bc6fd76230e477f1e9b9f66,
            limb2: 0x12915d124e51dade,
        },
        r1a1: u288 {
            limb0: 0x678d2ea692247058c356fd7d,
            limb1: 0x656f904c3c0ec775c33e03fb,
            limb2: 0x131aee164794fc67,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaf1413b36a612659e7903e26,
            limb1: 0xd66f405eb5074d0c1aa754d0,
            limb2: 0x265ffe5db9cf7c4d,
        },
        r0a1: u288 {
            limb0: 0x6827b0fc20a4ffc53c3d0285,
            limb1: 0xc60cf7ff99683a39791f6768,
            limb2: 0x5f1a92459dce29a,
        },
        r1a0: u288 {
            limb0: 0xfb90185fe1d9aae1e145199d,
            limb1: 0xf142f506b1307e64a13d63b8,
            limb2: 0x225f1169cc1a2903,
        },
        r1a1: u288 {
            limb0: 0x8c41e6e44761d0e586bad9c4,
            limb1: 0x7d4de533eb2bf44143020ff4,
            limb2: 0x1530b17c7066d69f,
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
            limb0: 0xa69dc76874ad9ba700da21b4,
            limb1: 0xa1ba293949164ee9fa876,
            limb2: 0x190432f57bcf3be,
        },
        r0a1: u288 {
            limb0: 0x2de32d5844d07209adec6114,
            limb1: 0xbce7c558b147f73a467280f3,
            limb2: 0x2e8dd718a581f7fa,
        },
        r1a0: u288 {
            limb0: 0x13f239908bb8138fe80ac83,
            limb1: 0xd9950cc195916689a8a0e2ee,
            limb2: 0x2e4836b6f5eac388,
        },
        r1a1: u288 {
            limb0: 0x3de215eaa03e591d07dde678,
            limb1: 0x3d38ca9d242c3f0683c58054,
            limb2: 0x20a37507e97f925,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb6e976e086bc3b1bd66dc41d,
            limb1: 0x2a0c219a928387bda10996c5,
            limb2: 0x1c011141c195ffdf,
        },
        r0a1: u288 {
            limb0: 0x4e086e090b86126b4b7306fb,
            limb1: 0x57b4014ed59fbe1c930fbfa6,
            limb2: 0xb5c42dd5042cf90,
        },
        r1a0: u288 {
            limb0: 0x20666c06aecb2a0f76c26327,
            limb1: 0xce1362d003b218a6ee8a3b7c,
            limb2: 0x26472c28789e1741,
        },
        r1a1: u288 {
            limb0: 0x49566b0389a22f7a36e974f6,
            limb1: 0xf0f4fdccf566659af825a91,
            limb2: 0x3dc5d5d68159130,
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
            limb0: 0x4678834fa37c9c265ef458db,
            limb1: 0x71e144cf9e55d9de33721661,
            limb2: 0x8b7c0d6f2bc3040,
        },
        r0a1: u288 {
            limb0: 0xc3e61ec744a77ac644d05834,
            limb1: 0x4f654c81099bc6a42f0fcebe,
            limb2: 0x7786d13f06a7c1f,
        },
        r1a0: u288 {
            limb0: 0x25296c203302585b5381cb41,
            limb1: 0x38a987fde883004f57adb98a,
            limb2: 0x280acc1e94aafb75,
        },
        r1a1: u288 {
            limb0: 0xa067b021c20e0a39f3e7023f,
            limb1: 0x957d995bde912d10aff284e,
            limb2: 0xac182fe65b5815b,
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
            limb0: 0x7c4b0146393276365b8a8a26,
            limb1: 0x5d95b0fed8ddca9df5fb7561,
            limb2: 0x1f62cb756d7cbdfa,
        },
        r0a1: u288 {
            limb0: 0xf886fe90f7dcb398c67eb69a,
            limb1: 0x3b5a68f7914faa1defe422c,
            limb2: 0x11c9f5ba006da2ed,
        },
        r1a0: u288 {
            limb0: 0xfb824f038465deb9273016a,
            limb1: 0x882d2aa632709bd42885aca3,
            limb2: 0xd3c22a6c22e1f4c,
        },
        r1a1: u288 {
            limb0: 0xab5106fb03cb4489e05193a0,
            limb1: 0xc77e6b5acbef29cc1e3affe5,
            limb2: 0x2b9f561d546363b0,
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
            limb0: 0xc2944d04d8f73d1b63196015,
            limb1: 0xdab14f4ff5d9e93665ba1731,
            limb2: 0xb1686e21946ea89,
        },
        r0a1: u288 {
            limb0: 0x7aad35c3c7f69600ab3dc1a7,
            limb1: 0x1c2200a3ad901c0e8cae285b,
            limb2: 0x2300ca002af3b5c5,
        },
        r1a0: u288 {
            limb0: 0x5d0fb8c60b69ac5bdea2845c,
            limb1: 0x5575645c915faae5d7f90cc4,
            limb2: 0x629f985daeae369,
        },
        r1a1: u288 {
            limb0: 0xc92f27e4905e99e352d54620,
            limb1: 0xaa80d57c7a6273be7426d868,
            limb2: 0xd5ae401fe74f0c,
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
            limb0: 0xc995317b7f9a91c54474eefd,
            limb1: 0x84ecb8a9f9d3b6b0b8f95b2b,
            limb2: 0x1ca9ea87ae53e508,
        },
        r0a1: u288 {
            limb0: 0xd329dc284d9150699bf0af1e,
            limb1: 0x6a61fa9dacbcb5fcbe6fe8ee,
            limb2: 0x2c57201f22ae803b,
        },
        r1a0: u288 {
            limb0: 0x87588cdca5f2bf730ec2a539,
            limb1: 0x41a607c89f7ebc70dc674449,
            limb2: 0x29a24d3b2912779d,
        },
        r1a1: u288 {
            limb0: 0x24f42ac86b8f717f6cabed2a,
            limb1: 0x4f92422ae483a25b989bfdff,
            limb2: 0x97b8e60faf2ae9a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4638e2d8e7514eac1411bae9,
            limb1: 0x57e1cabdf983e318aba46589,
            limb2: 0x2b59a33df48808e6,
        },
        r0a1: u288 {
            limb0: 0xb4029df5feb17c771faaf604,
            limb1: 0xdf555151864e90e7b8339d94,
            limb2: 0x19f187f4504d491b,
        },
        r1a0: u288 {
            limb0: 0xbc5acc8afb25695edd7b4959,
            limb1: 0x53df5b90444c08b5e4a016ed,
            limb2: 0x74eeb7c71ccaa88,
        },
        r1a1: u288 {
            limb0: 0xf86ea9f832187f93269912e8,
            limb1: 0x323a0102cec00337a5ab47dc,
            limb2: 0x2dfc6a1579b9583b,
        },
    },
];

