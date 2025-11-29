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
            limb0: 0x546314818ab84e9d1d17ec47,
            limb1: 0xc9109a51beacf5191915a308,
            limb2: 0x142b3f148a54e825,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xf51b91bed0c9b75690c1be7c,
            limb1: 0xbe52203ea959e4263c93aca6,
            limb2: 0x1ead7e6c0134344f,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x49211e0cc7416152c31cf561,
            limb1: 0xffe69ffd51012c84e88a5787,
            limb2: 0x62c6d0a1a6d150e,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x682a83e6bab57765328209d0,
            limb1: 0x29b7239f52cce1937cbf49c6,
            limb2: 0x11af0b4d59431444,
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
            limb0: 0x9696e6157063f4430e8eb9e4,
            limb1: 0x6c2ff60a8009a82d35db339b,
            limb2: 0xfb40083286688e2,
        },
        r0a1: u288 {
            limb0: 0xd0a6ef5265762697431e510d,
            limb1: 0xe2357cd4ac7514a2fe1b1e15,
            limb2: 0xb8a23d969585c55,
        },
        r1a0: u288 {
            limb0: 0xcb7b1293ca97eb1e1bdef58d,
            limb1: 0x29fa4f45908fdc30ef69acc9,
            limb2: 0xae5591f94bb0ff4,
        },
        r1a1: u288 {
            limb0: 0xef797a3b8b33ed240eb75c56,
            limb1: 0x5b9536d4745f490f597c7df7,
            limb2: 0x21403d02652a4cba,
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
            limb0: 0xd1dae477cbbc97d3c9ee4363,
            limb1: 0x4c204fac0177b03061a636f5,
            limb2: 0x20b04defb8cb1747,
        },
        r0a1: u288 {
            limb0: 0x97cadb3ad6aa657f955eac3a,
            limb1: 0xd61ac8e1d50c43ba99664c7b,
            limb2: 0x24da2a9977d943d3,
        },
        r1a0: u288 {
            limb0: 0x9cf6b7f97188a0f8bc9e07ba,
            limb1: 0x8e55f670f0f17c2ca817bdc7,
            limb2: 0x257ef5534c769035,
        },
        r1a1: u288 {
            limb0: 0x78f85051b0ec9ef2c9c5a0f1,
            limb1: 0x5cbb0ee20d220f4e3e04ec99,
            limb2: 0xf2411707c07536f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x82a80f51bee7fbaba71476c5,
            limb1: 0x13d820cfe8701d5de2b7f14f,
            limb2: 0x110833116de35ae3,
        },
        r0a1: u288 {
            limb0: 0xbf013e4fe0bd89e5ef09a6f5,
            limb1: 0x9a40e225289b0c558e67d668,
            limb2: 0xc862e76db0ac0f1,
        },
        r1a0: u288 {
            limb0: 0xe0c9d9e5741c971849b20e4a,
            limb1: 0x225ff83d2ff9611a17faaabf,
            limb2: 0xc9146042a24fd19,
        },
        r1a1: u288 {
            limb0: 0x168327f7ced876cfffa0d9,
            limb1: 0x4a240704e1d61d48b1076708,
            limb2: 0xacb651db37857b5,
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
            limb0: 0xd8fd5e2bc55fb50199c4ff2f,
            limb1: 0x2bff325a8e636406bbfc3d9a,
            limb2: 0xa1ce82f9f0bf863,
        },
        r0a1: u288 {
            limb0: 0xc52037b471d4d2e405af0da7,
            limb1: 0xa355429aa28a9324fe93bdfe,
            limb2: 0x12eabedd9a1b66df,
        },
        r1a0: u288 {
            limb0: 0x592976c22a19180c2b2d9cb7,
            limb1: 0x4084d6ad2c8deb0ea48c15c0,
            limb2: 0x2afcca1cc42acc0f,
        },
        r1a1: u288 {
            limb0: 0x5cd57314d66d18ad15ddc61e,
            limb1: 0x12931d29db6637d2833ed26e,
            limb2: 0x27b9d796759ce8a5,
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
            limb0: 0x5c1d6e9604af65ab1fa34fa5,
            limb1: 0x310b6224ed8d1a5890c0a5ff,
            limb2: 0x252453c5102fe32,
        },
        r0a1: u288 {
            limb0: 0xf0e8636f921669b15ed80b90,
            limb1: 0x987c9aa7e4af611079513074,
            limb2: 0x1cb93b792723e0dc,
        },
        r1a0: u288 {
            limb0: 0x3e02b84490257bbd03fbcae2,
            limb1: 0x2c06738f8f74292e1d40f246,
            limb2: 0x27ddcda596a1e9ef,
        },
        r1a1: u288 {
            limb0: 0xc435e30fc174128caac9c9e2,
            limb1: 0x5bc9a1258e888ce527a75096,
            limb2: 0x559f1148b9d2375,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa321330da216d19e561ca054,
            limb1: 0xc9ae4d9c7e823f8cb1b5e26b,
            limb2: 0x2c996b334b247d9e,
        },
        r0a1: u288 {
            limb0: 0x7bb98ac6e8228aa88ba31937,
            limb1: 0x6c0d429c277e298ffab5a00b,
            limb2: 0x2f7b0778247841a2,
        },
        r1a0: u288 {
            limb0: 0x487aa40537fdb82e43f6ea97,
            limb1: 0xb6b2d7a165602d0f0aa19322,
            limb2: 0x1ddb975dba26eea8,
        },
        r1a1: u288 {
            limb0: 0x20c6bd276dbf30bebad4152a,
            limb1: 0x58395d636b72c63a1332f254,
            limb2: 0x1e70e78e44a56bce,
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
            limb0: 0xcc444b1e526f8f6a32cdef11,
            limb1: 0x3da2a216b8cd7ea7de8f4864,
            limb2: 0xb182005daf5aa23,
        },
        r0a1: u288 {
            limb0: 0xefa5da278558c11c40118e95,
            limb1: 0x3ab4c9e8c0e49dea346ac769,
            limb2: 0x38e1bbc836c82ad,
        },
        r1a0: u288 {
            limb0: 0x70ba00c978897cfe6b079ecd,
            limb1: 0xb9093530b0adcdb81dc598ee,
            limb2: 0x1f4c4a38bd9a611,
        },
        r1a1: u288 {
            limb0: 0x47e0059c51221bb117ebbbd3,
            limb1: 0x90dc1dea15b28a52daeb56a8,
            limb2: 0x10251cef3521a155,
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
            limb0: 0x4fd6c9b6d234e9f5a29e427a,
            limb1: 0x5666dc3757f9967af6f4ee2c,
            limb2: 0x2ea670b34e770a05,
        },
        r0a1: u288 {
            limb0: 0x66ee220ee446f4b244ec47f4,
            limb1: 0xdc593074f87efe3cf6244bd6,
            limb2: 0x7915057a9d198bc,
        },
        r1a0: u288 {
            limb0: 0x199bc73261355954a6823fb5,
            limb1: 0x962c6e181bf8cc03d80cf0ae,
            limb2: 0x136966bc331dba12,
        },
        r1a1: u288 {
            limb0: 0x9e787ed00d469d0845885035,
            limb1: 0x44111009eead6b94e96db7b8,
            limb2: 0xdbecff058541482,
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
            limb0: 0x7def52843a57a988e833975d,
            limb1: 0x5996361edbb9a7d6a22e9f73,
            limb2: 0xc505ef125736e79,
        },
        r0a1: u288 {
            limb0: 0x536dfe2b824f209f2343d427,
            limb1: 0x7678f4e2eca65916f62c0c41,
            limb2: 0x12035a9884a7060d,
        },
        r1a0: u288 {
            limb0: 0x9f694a78362ede2d7d237984,
            limb1: 0xeb6228a1cde8d6cd11369edc,
            limb2: 0x24b95730af1933da,
        },
        r1a1: u288 {
            limb0: 0x1eacab4c79eb46310fa1d8ea,
            limb1: 0x45c5ca0c4bdd2d6f834069b1,
            limb2: 0x14a935001ff7a42d,
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
            limb0: 0x2db498b47d8c69dff918f7fd,
            limb1: 0x73d084db4ae418a6df99883a,
            limb2: 0x75c51532075d9c3,
        },
        r0a1: u288 {
            limb0: 0xa95e0a1c40f8cfcd97ce4307,
            limb1: 0xcc86e26fe05212ec16fac203,
            limb2: 0x55a0c6a506f372c,
        },
        r1a0: u288 {
            limb0: 0x74d98ddaa11e710f82cdedd7,
            limb1: 0xda3ad6bcf98434d884ec0225,
            limb2: 0x2f5fabc23aa33196,
        },
        r1a1: u288 {
            limb0: 0x36808af7a94fbb634277ebe4,
            limb1: 0x67ec42dbcb579db4e9b29b26,
            limb2: 0x2990ec2cb882e4ac,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa2d201c4531985441b9e3bfb,
            limb1: 0x4d5f2f7313d6a8ac414ea2cb,
            limb2: 0x1053b823649ba831,
        },
        r0a1: u288 {
            limb0: 0x2afddd0a79ccf2a08e1b1ec0,
            limb1: 0x72744fed2571055d224f570f,
            limb2: 0x2ab67b503ed743b0,
        },
        r1a0: u288 {
            limb0: 0x722e7ba0431cbfeee7d8b3fa,
            limb1: 0x517a9b469ed7616600970a63,
            limb2: 0x13f7c37f771a82c8,
        },
        r1a1: u288 {
            limb0: 0x6aad9cb6fb52eb127c9ebe66,
            limb1: 0x98529fd9a3715c2c1e10a680,
            limb2: 0xbed6bedeec090f3,
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
            limb0: 0xac2045c8995a8e8be3273cb8,
            limb1: 0x102b1147eb956bc06a8fc70,
            limb2: 0x12a4a3a674c05fb9,
        },
        r0a1: u288 {
            limb0: 0x23ba20d99e937ad65f1c44f7,
            limb1: 0x879c9addfaa0d92d2b278445,
            limb2: 0x2382d94ba58dac3e,
        },
        r1a0: u288 {
            limb0: 0xcf818861ce213dba83f82da3,
            limb1: 0x8f7b503cc8110536b6aad145,
            limb2: 0x1ac48ef45727953d,
        },
        r1a1: u288 {
            limb0: 0xcf6614873cca4bba963c1b09,
            limb1: 0x81e1cf23626318153b1b5447,
            limb2: 0x54cf9a66cd4e6ad,
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
            limb0: 0x2b0d01e8ef7941cb9f02fa3,
            limb1: 0x8dd133b4066ce0ce00fcbc9d,
            limb2: 0x28e1aee652ad62e5,
        },
        r0a1: u288 {
            limb0: 0x4c86a31896d63f2e9a213054,
            limb1: 0x6599015c54774b8df5676ca5,
            limb2: 0x16cd18a37ee15853,
        },
        r1a0: u288 {
            limb0: 0x23da30172427cf391ce53212,
            limb1: 0x4c28cc3b8690e7dddf0d2984,
            limb2: 0x5a9e7820a398d5a,
        },
        r1a1: u288 {
            limb0: 0x6585c5c35ad60edae8032a20,
            limb1: 0x48966302cd12c2918116c3b0,
            limb2: 0x2dd6e97f607faea5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x57c5816dc63b6abb3c107e73,
            limb1: 0x8e632bb80bc4ced7721480fe,
            limb2: 0xca75212123f4a3f,
        },
        r0a1: u288 {
            limb0: 0x5a06bc25f84d3f8039d1b577,
            limb1: 0x72fc36ae1482365494fc12d5,
            limb2: 0x5d90b7f3e15fa4e,
        },
        r1a0: u288 {
            limb0: 0x278883edddc1e7fad3792c0a,
            limb1: 0x39451544c2fd850795a8f71f,
            limb2: 0x213279c7868d07aa,
        },
        r1a1: u288 {
            limb0: 0x7e5356af59eaa0282b2d6c8b,
            limb1: 0x44f20e74d9d2992482ab2b51,
            limb2: 0xc54f80cabb8e384,
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
            limb0: 0x14507e0779fdca47648cba03,
            limb1: 0x6e32e87e7ab183febb5f20dd,
            limb2: 0x1be2070f42188eae,
        },
        r0a1: u288 {
            limb0: 0xe5ccc677135c4ae48d4f4c4,
            limb1: 0xd6b9cc251da4bcce6ee0b38f,
            limb2: 0x20037bcb5e7df85e,
        },
        r1a0: u288 {
            limb0: 0xb21d7c2644938ef9f6943555,
            limb1: 0x58047dbb1a1f2ea63e9e2ff,
            limb2: 0x2e19379041907591,
        },
        r1a1: u288 {
            limb0: 0xa0440d35884ae422248998d8,
            limb1: 0xe296d68b7a863578d22edf8a,
            limb2: 0x254d4d50fad8442b,
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
            limb0: 0x8230839ee7a32b1d04e72675,
            limb1: 0x673bae79f8e307581ab153b1,
            limb2: 0x20a2ac4063fcbf,
        },
        r0a1: u288 {
            limb0: 0x9fb3c2b5277f150e747b5672,
            limb1: 0x4bb03facf5a9c35cff696948,
            limb2: 0xaba50753a5d5cc6,
        },
        r1a0: u288 {
            limb0: 0x9bfc6253ddf71b215df87ef1,
            limb1: 0xeb9b1f0fd5eeabe899d7ac08,
            limb2: 0x1a894d54ed74dc9a,
        },
        r1a1: u288 {
            limb0: 0x9660e7a78c67044a6bf56341,
            limb1: 0xe2515e3e4067d9e08e2a0dbe,
            limb2: 0x271b985a2a762c97,
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
            limb0: 0x1dc61531d029131c109b6831,
            limb1: 0x97922e2e87fc496a3608e674,
            limb2: 0x8f1d0e4b4908c2b,
        },
        r0a1: u288 {
            limb0: 0xe2156e565d4a49d21ec05b0e,
            limb1: 0x1fd7b04c1d7194f7b1001c22,
            limb2: 0x1457a40b042b816c,
        },
        r1a0: u288 {
            limb0: 0x576f7875efdb981a503b1c1,
            limb1: 0x7d450f47834fc7298138f91d,
            limb2: 0x1ffe2debc889728,
        },
        r1a1: u288 {
            limb0: 0xd42191ce02116b405d419824,
            limb1: 0xf93df737ecae1350b2f4929f,
            limb2: 0x4617a366391c035,
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
            limb0: 0x447a68c5ebb6a23be9d33df7,
            limb1: 0xc4a84f4bdc6bc7942b0e2c36,
            limb2: 0x24dfe98850150633,
        },
        r0a1: u288 {
            limb0: 0x8c73069a5de783d98118b990,
            limb1: 0x9291c3712919555e5bc7697d,
            limb2: 0x292f8d6a956dba68,
        },
        r1a0: u288 {
            limb0: 0x22f47449888a9739e8410662,
            limb1: 0xdad883a9660c2cf0960a7f,
            limb2: 0x22e230fd1cf247b1,
        },
        r1a1: u288 {
            limb0: 0xd577791cfd47c44daefe7b4c,
            limb1: 0x11c4551fb4919f4068ef5189,
            limb2: 0x2579e9781a4fd5e6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc1effda7b8229598ffa95cbe,
            limb1: 0x8152842662cb1dc07a7176df,
            limb2: 0x19fbe3612f2f9ccf,
        },
        r0a1: u288 {
            limb0: 0xe23184b50df03dfbb241f024,
            limb1: 0xe219d67a217d773ac0045b9,
            limb2: 0x2a1f47dcefe089da,
        },
        r1a0: u288 {
            limb0: 0x68db6c687704faa13f6c3dbf,
            limb1: 0xe2c3509594e5ca6771573b04,
            limb2: 0x2207cbe2e13b1dc8,
        },
        r1a1: u288 {
            limb0: 0xaf26d916e193b14b9f47acdd,
            limb1: 0x5c0ca752618e23ff4a46ead4,
            limb2: 0x17912989436b7a40,
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
            limb0: 0xebef1ef14a151621d0854b03,
            limb1: 0x72b9d46d6d136a427be0710a,
            limb2: 0x411b8a8ba0ec7ab,
        },
        r0a1: u288 {
            limb0: 0xd91091fc11b5481f543e446d,
            limb1: 0xaee9f5bb672c47bac88cc9df,
            limb2: 0x14539334cc5a79fc,
        },
        r1a0: u288 {
            limb0: 0xddce3a205d200919637df729,
            limb1: 0xa8df59efb8475ab62e3cdabb,
            limb2: 0xb8cd71cf18744f1,
        },
        r1a1: u288 {
            limb0: 0xf91fa2fca0afcbf60a8c999f,
            limb1: 0x6827a340fb84174d43d6eb3a,
            limb2: 0x890bd76e30b5c24,
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
            limb0: 0xe1825c63d7ca009b6b92e217,
            limb1: 0x7aaad21005be056fa6c6c642,
            limb2: 0x2f1a0f5a6794b891,
        },
        r0a1: u288 {
            limb0: 0x3b40ec0a3fe820cb0aacbb44,
            limb1: 0xbbafa4dba3785f7d459e7fa0,
            limb2: 0x29aa7144d49b805c,
        },
        r1a0: u288 {
            limb0: 0xe6c70edd27d225f935a4239f,
            limb1: 0x3ccf330e729e965655679b76,
            limb2: 0x11e8a452e34cde0a,
        },
        r1a1: u288 {
            limb0: 0xdb7c268eecadcd83c6cfd9fc,
            limb1: 0x3b6967d8801e20ec1daf2e51,
            limb2: 0x298fdeb462981a71,
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
            limb0: 0xa2c57977db4238e73a4834f,
            limb1: 0x28ba9b8d4edc0f42f7121edd,
            limb2: 0xbdb006d1fefcc5,
        },
        r0a1: u288 {
            limb0: 0x22a213476132113cf72515c0,
            limb1: 0x13d6c0c3a79b17f3a8d7cab4,
            limb2: 0xfe8d1bb02bdbd3c,
        },
        r1a0: u288 {
            limb0: 0x9acbf7d7d3dad18f5b221c3d,
            limb1: 0xacab3bd0c161e14de6dc00ee,
            limb2: 0x8ae613d160c6b84,
        },
        r1a1: u288 {
            limb0: 0xb134c539bd2c5476d1380662,
            limb1: 0x7565969dd8950bf374437fef,
            limb2: 0x1c1c28886435eb6e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3241e8a34bcbcc8780513e67,
            limb1: 0xe20ce7207eed8bb5fa1a4757,
            limb2: 0x250fcbd9cd41565d,
        },
        r0a1: u288 {
            limb0: 0xe1e2f31215980495dcffb377,
            limb1: 0x46ca486d436064f341fbb2f0,
            limb2: 0xda2f025a633fe3d,
        },
        r1a0: u288 {
            limb0: 0x2829d8872fec8a31875488ab,
            limb1: 0xa665d1700e3283c0fea966a7,
            limb2: 0x2b27b62c76db1099,
        },
        r1a1: u288 {
            limb0: 0xebc5195f4d38b877e6b63643,
            limb1: 0x36aeb9027461bf8a6ee9ae0e,
            limb2: 0xf1e19ba3dd3c7bd,
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
            limb0: 0xc20b792c79925a453f07ad15,
            limb1: 0x8654f92c992d9e921b8a053d,
            limb2: 0x2a11df6e6d716756,
        },
        r0a1: u288 {
            limb0: 0xf31f070810d1a8d5c3fd448e,
            limb1: 0x695bb17090bac6e3bbf33a3f,
            limb2: 0x1f2549061c51be95,
        },
        r1a0: u288 {
            limb0: 0xcc4115d00da012b3bd4a6985,
            limb1: 0xb253b19e4a5a55f049136998,
            limb2: 0x115a528d55b8256c,
        },
        r1a1: u288 {
            limb0: 0x3a2679a2cef49a75b819485a,
            limb1: 0x43968e4583941c99f5799f34,
            limb2: 0x2848f8b061b68224,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xad212482e7c36d8030dcba2b,
            limb1: 0xd3fc834849bd3e15fe637e73,
            limb2: 0x253526daf8222d3e,
        },
        r0a1: u288 {
            limb0: 0xdd16b760aec9d5d3f8378c99,
            limb1: 0x3af4747e8ed4ae153539a225,
            limb2: 0x2320fa18a13e00e5,
        },
        r1a0: u288 {
            limb0: 0x9cd0130bf117a398d0d8351b,
            limb1: 0x6cfa5573431565b26931ed0f,
            limb2: 0x22c045b5031c635,
        },
        r1a1: u288 {
            limb0: 0x66de2eab3c84caccede99505,
            limb1: 0x2d121ab99739382bdb4f4e7,
            limb2: 0x86f2f3a46000655,
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
            limb0: 0x6d818eb1ebcdef23b455b85c,
            limb1: 0x1e78218646ae7dfccbadd3c,
            limb2: 0x1680c7e1fe3343a1,
        },
        r0a1: u288 {
            limb0: 0x577f291ed7fa4c0c7470eb43,
            limb1: 0xa99759bca9b6305b842d6709,
            limb2: 0x256f9e2d394e48ef,
        },
        r1a0: u288 {
            limb0: 0xf1a1bafb230d51afbe58d3e2,
            limb1: 0x95b01df42cae0dae77317496,
            limb2: 0x10b37e58d0d8933f,
        },
        r1a1: u288 {
            limb0: 0x622c7d355da0237502219113,
            limb1: 0x45aff053662afe8648af8962,
            limb2: 0x1fbf16be221128db,
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
            limb0: 0xcf9cf23dcbd8f707c24ea987,
            limb1: 0xd2f9b7a4ab829f27c70531e1,
            limb2: 0xc64b5d655d1a96d,
        },
        r0a1: u288 {
            limb0: 0x922342809943b074dc3bdd90,
            limb1: 0x70aedd58fc3123c231e5a062,
            limb2: 0x1e57efac9fd61c60,
        },
        r1a0: u288 {
            limb0: 0xd4fd34cad8e2223b908f4d9,
            limb1: 0x67ddf489a4ab2db32f491024,
            limb2: 0x2d01f14797c3838d,
        },
        r1a1: u288 {
            limb0: 0xd31d8b959baf4fd2709c7112,
            limb1: 0x86d99d17292e8fdd99f158f9,
            limb2: 0x6727e9235cbf78d,
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
            limb0: 0xb9b20f3ab907915968258611,
            limb1: 0xd634675b9f0d8d3a93594a47,
            limb2: 0xaacb5e0b1ec9db6,
        },
        r0a1: u288 {
            limb0: 0xac74c6af44b22cf1b675c2cd,
            limb1: 0xa7b908cc962b07bfeb273ad3,
            limb2: 0x15aeaebc0c44a581,
        },
        r1a0: u288 {
            limb0: 0x37bc204d786dd3cd7eb05568,
            limb1: 0x1cab2c27a5c656b675a641e9,
            limb2: 0x15178b1a07f3ebf3,
        },
        r1a1: u288 {
            limb0: 0x54b96f4fbe7158f8a955b889,
            limb1: 0x54cb4613a49e3231a4a3f393,
            limb2: 0x12e484580f52fd8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe8efc61383d1350c297feaab,
            limb1: 0x5cfbfa0c39e592f5200d8bd5,
            limb2: 0x20ded90d2b662eda,
        },
        r0a1: u288 {
            limb0: 0x36150f046202b30467ecbbca,
            limb1: 0xe892d1adc2354de203eb1b03,
            limb2: 0x8ae5909edc84e2c,
        },
        r1a0: u288 {
            limb0: 0x2682323054c0d38aae4fdd6a,
            limb1: 0xadeec2950a5e6c097feeb706,
            limb2: 0x164b39d4567cb23a,
        },
        r1a1: u288 {
            limb0: 0xdba9ebae032789d53fcf48a,
            limb1: 0xaccba397508a7a2664f5465f,
            limb2: 0x73b1d42200dd4b5,
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
            limb0: 0x1a55dfda6b7bf4211644d59d,
            limb1: 0x62a81e4460067c16d23c3937,
            limb2: 0x1cf37f31746b144e,
        },
        r0a1: u288 {
            limb0: 0x3e310cdea0b28793de3c1752,
            limb1: 0xf73a60a138655492ef7e8b05,
            limb2: 0x289a8bdec37932b,
        },
        r1a0: u288 {
            limb0: 0xa2fe1d70b29684a1df75930f,
            limb1: 0xf4ada22e1ca4108e38f583fb,
            limb2: 0xf2159177c4ccc01,
        },
        r1a1: u288 {
            limb0: 0xd3aba9eaceb311b3cfc48d3e,
            limb1: 0xe93d40d24b13f31e7796df40,
            limb2: 0x277ee93f92308c80,
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
            limb0: 0x94224a3a3b2ba090c5de956e,
            limb1: 0x24873f8433202630d51014f1,
            limb2: 0x13279a0f142cf566,
        },
        r0a1: u288 {
            limb0: 0xd16e387646e4819f1886b492,
            limb1: 0x5b209074e230618745c1067d,
            limb2: 0x12ebbdac17d2b437,
        },
        r1a0: u288 {
            limb0: 0x9468952d187c053bd101c5ad,
            limb1: 0xc2b52f7431f07e838e3f38b8,
            limb2: 0xf7cf36fa99df909,
        },
        r1a1: u288 {
            limb0: 0x7ac872b4a981308939a1f3bf,
            limb1: 0xd0c40108335aac0d4dbfba3b,
            limb2: 0x221814312e5cbdc5,
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
            limb0: 0x7355cd68534b8832fee74db2,
            limb1: 0x130cc029711b30c6d56b7644,
            limb2: 0x198c4ad70909543c,
        },
        r0a1: u288 {
            limb0: 0xef8a759e46906b87e76c5d88,
            limb1: 0x1ddf6d34cd4b7e41c68c55dc,
            limb2: 0x10ccf6f901d78fa3,
        },
        r1a0: u288 {
            limb0: 0xf64202484776fa3d7ffc5056,
            limb1: 0x9f63121ea88e518807442a48,
            limb2: 0x1f8d9cb99c0b79c7,
        },
        r1a1: u288 {
            limb0: 0xba6271e8a50b1b5f6fd6654a,
            limb1: 0xce0ec09b498766544acf94ef,
            limb2: 0x118c3e8ef5752142,
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
            limb0: 0x714f31068ddf9ea887f305ac,
            limb1: 0x533c9e18f3075cee92fb0227,
            limb2: 0x843061390a02e77,
        },
        r0a1: u288 {
            limb0: 0x56c76a600c559487803ef8b1,
            limb1: 0xd3a542ca1f76d43184ffd0cb,
            limb2: 0x1b574d8ded06447,
        },
        r1a0: u288 {
            limb0: 0x3d549f5d46b82c592e530f5b,
            limb1: 0x85865f22b38b769aea18dfb2,
            limb2: 0xdc6fd84e335655,
        },
        r1a1: u288 {
            limb0: 0x36308dc1dc98f0f7809366d1,
            limb1: 0xbd9344079d953227a8c67a5a,
            limb2: 0xc5885baf3d48eca,
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
            limb0: 0x8d605449b5a0e7d13867981f,
            limb1: 0xa5223e4df4f28e2821403750,
            limb2: 0xa01ea80408be827,
        },
        r0a1: u288 {
            limb0: 0x9f9db06796d81eb818bfcd85,
            limb1: 0xcf7d559f97a9a7bed680bd9a,
            limb2: 0x1739a6df3005e5d4,
        },
        r1a0: u288 {
            limb0: 0xf92e95cd273ffa7f6c02a77e,
            limb1: 0x7afbb0b7a22a7b1a2cd343d,
            limb2: 0x1c6c440e20186fb0,
        },
        r1a1: u288 {
            limb0: 0x1809a89b0c55e0b45a55bb9e,
            limb1: 0xf54de476e791ac57b16083cf,
            limb2: 0x593c24e6f868408,
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
            limb0: 0x8fbb67660e2ccd2ee605507a,
            limb1: 0x278c29f19c7ffcd1a1f29117,
            limb2: 0x2f4dd7ce6c4cd37b,
        },
        r0a1: u288 {
            limb0: 0x616846d3dac6a50c366c1cc2,
            limb1: 0x9c7dc9d520f288b01ed89991,
            limb2: 0x281de1906c39d235,
        },
        r1a0: u288 {
            limb0: 0x9589ba93a9d72f6f41fb3661,
            limb1: 0x1483b9e4538deb0e15e68afa,
            limb2: 0x2ac0e9efe36d7efc,
        },
        r1a1: u288 {
            limb0: 0x1cd84c467847855764c73f8d,
            limb1: 0x394b55f25688b396c8efcefd,
            limb2: 0xa585e5f54a5eef3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2977d3b796f03b5143bd7967,
            limb1: 0x85a674db28bc04397235cbca,
            limb2: 0x1916e3badcd8d33d,
        },
        r0a1: u288 {
            limb0: 0x5624e04feb7752c4746d8af,
            limb1: 0x85aa245429acab328b010290,
            limb2: 0x293102ce9c2de74b,
        },
        r1a0: u288 {
            limb0: 0x21dd151989a294268475f9c4,
            limb1: 0xa98653af0836d3580c256b23,
            limb2: 0x1fe2691c2c3961eb,
        },
        r1a1: u288 {
            limb0: 0x72b8db44d30bea496a6fc1e2,
            limb1: 0x3ba384f04deee5bdc31ece9e,
            limb2: 0x88749c8f8a72f4d,
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
            limb0: 0x253a06437fd78e2b38be13bd,
            limb1: 0xd7e762c3b7300d61b36336a1,
            limb2: 0x470328e78c92ef1,
        },
        r0a1: u288 {
            limb0: 0xa9aba1770c8a0467a6811702,
            limb1: 0x7ca7a709c77d7b7faa298971,
            limb2: 0x2d810ad4b8016883,
        },
        r1a0: u288 {
            limb0: 0x116fd3bbeaa28edaa0f989dc,
            limb1: 0xe2982c223ca987756076a74a,
            limb2: 0x32c7449c850b2df,
        },
        r1a1: u288 {
            limb0: 0xd022c3fff5df4797fedf6910,
            limb1: 0xea262b46633aa17bb7bc698f,
            limb2: 0x9088c82500b7933,
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
            limb0: 0x915f5dee5c4f13e1afed673a,
            limb1: 0xc5c3e1a8268e55c706986d52,
            limb2: 0x201e0a75e41296d7,
        },
        r0a1: u288 {
            limb0: 0x67071c31081c5992b858e74a,
            limb1: 0x6bc49a58efbbf62e52e2dafc,
            limb2: 0x196669f97e6860f8,
        },
        r1a0: u288 {
            limb0: 0x13683a9ac9cce9a532a8cc94,
            limb1: 0x7ec468b0d82ec2b4b6e4279e,
            limb2: 0x13c1c57104022862,
        },
        r1a1: u288 {
            limb0: 0x28b0bb4955adfab3abeef098,
            limb1: 0xc276cc3bfc965e86b63d295,
            limb2: 0x23ea16bac23ff060,
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
            limb0: 0x34d667379621451c6352da66,
            limb1: 0xbbc5951f1f5a75785563c79f,
            limb2: 0xac7bf6beb7780ff,
        },
        r0a1: u288 {
            limb0: 0x211920fad66a73fcf0076647,
            limb1: 0x3bac305e114fad1c8bc6f933,
            limb2: 0x15f629cb30e6b2f8,
        },
        r1a0: u288 {
            limb0: 0xcff0c8e58e4ef703a8be39d6,
            limb1: 0x82e2480c98292266a5e3ce87,
            limb2: 0x18e5c8ca6c9cd8ac,
        },
        r1a1: u288 {
            limb0: 0xc933d91ead27adee13ca3f3,
            limb1: 0x2cab6014b5be87b3aa18b838,
            limb2: 0x90932f46b57f512,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49f64c93917d183b6a3a8779,
            limb1: 0x11f6316675345746f668f712,
            limb2: 0x1bf8eefa14d49907,
        },
        r0a1: u288 {
            limb0: 0x919f06ff6720b21b547fe086,
            limb1: 0x26c6f7cb05558f2bff8143ab,
            limb2: 0x16902e9771378d0b,
        },
        r1a0: u288 {
            limb0: 0x21319572d9b99ac2b0d462e9,
            limb1: 0x88d103e9d6ccddd080357335,
            limb2: 0x18e4a6a98b788cc,
        },
        r1a1: u288 {
            limb0: 0xa294119eeb1757003971e579,
            limb1: 0x5ceca9d97a221b238b6d2ef3,
            limb2: 0x1166350a5d8ab8b1,
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
            limb0: 0x404b4252f07c711e59cd73f7,
            limb1: 0xbe5c8e0ad2127c2d2c5e1a9,
            limb2: 0xe0927aaa2115ced,
        },
        r0a1: u288 {
            limb0: 0x26a7e8592c91ec737ac78b1,
            limb1: 0x6fa5196bf1fe08fa544f9f47,
            limb2: 0x3621fe2534c781f,
        },
        r1a0: u288 {
            limb0: 0x6ed6fcdcc9c1ff3c973d1072,
            limb1: 0x156e1dabb5bcf4b6a5475fb1,
            limb2: 0x207e580720c820a0,
        },
        r1a1: u288 {
            limb0: 0xc4ccf1f79d28a4c867d06e6d,
            limb1: 0xe05f11e611abe627a5c0d7ae,
            limb2: 0x27b8590728ce931c,
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
            limb0: 0xd1dc25fe58e28d26781d8ef3,
            limb1: 0x78b7d918c4bbabf7607af84d,
            limb2: 0x2cf3d3495e0711e2,
        },
        r0a1: u288 {
            limb0: 0xea7b22e2ba0a26e54721a65f,
            limb1: 0x950dd0977c6128ccf2adec31,
            limb2: 0x1500f8bbc702bf95,
        },
        r1a0: u288 {
            limb0: 0x7c9672243d9a398b68700d28,
            limb1: 0x327dc5d53cddce4c5283aafb,
            limb2: 0x1f84af56adb028c5,
        },
        r1a1: u288 {
            limb0: 0x544c0beae8db960e35412065,
            limb1: 0x98e51398f76f51b479fa5c15,
            limb2: 0x2cd15d03d1120c9a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x900cf946f4c81e84017afb1a,
            limb1: 0x1439a13f9595cbb952352ffb,
            limb2: 0x3e1f8cb3b54da58,
        },
        r0a1: u288 {
            limb0: 0x9ee80406974e5ad5c9a972e4,
            limb1: 0x7a65e85bc00e2a77dc331853,
            limb2: 0x244bd11ea208ca10,
        },
        r1a0: u288 {
            limb0: 0xb9757edf811fb692fa6a72a5,
            limb1: 0xffe4a42586181599f317a48e,
            limb2: 0x17b583d9ca99e95c,
        },
        r1a1: u288 {
            limb0: 0x5b6d4f4672684153fa16cd49,
            limb1: 0x1f65b57891f52d7171b858e9,
            limb2: 0x27a4a1b5b2235e62,
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
            limb0: 0xbc3c1ebb266da245fd9d63d7,
            limb1: 0x4508c88c31cc34d7429a3c58,
            limb2: 0xcd1571e03f7a6b7,
        },
        r0a1: u288 {
            limb0: 0x691cb697988a5d6362391a5b,
            limb1: 0x13017f0a83add3b29db91bb7,
            limb2: 0x1e1c501385414822,
        },
        r1a0: u288 {
            limb0: 0xcc8fdc6b558e170f9f037926,
            limb1: 0x19b0bc8fa7382c3d05fd363f,
            limb2: 0x1e52e1c82bb6f4e0,
        },
        r1a1: u288 {
            limb0: 0x37ec585928c176cc338ba184,
            limb1: 0x1f8ed039ce7e71159d3de550,
            limb2: 0xaf7221e316b7a12,
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
            limb0: 0x77318f88f018dafe6367190f,
            limb1: 0xce7c76c36f522e46d0edb00d,
            limb2: 0xdc0d164947b68e,
        },
        r0a1: u288 {
            limb0: 0x2fc88c7f9bb127288da27e7,
            limb1: 0x618166083166bb87420000b3,
            limb2: 0x1d63d50d23abd1db,
        },
        r1a0: u288 {
            limb0: 0x4069fb0557565d2544eef983,
            limb1: 0xccd6ee28fab4ce1e4bf6c17d,
            limb2: 0x2d6d7961a7be0ab,
        },
        r1a1: u288 {
            limb0: 0x4a11361af5c815a41eedb534,
            limb1: 0xa17779c35da2fce21c285b68,
            limb2: 0x18da70d1404de413,
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
            limb0: 0x657b93f35eb57a4e616ac81f,
            limb1: 0x8fe353a61b5e5a23ab589998,
            limb2: 0xd6f804d02bbea19,
        },
        r0a1: u288 {
            limb0: 0x917acc6c13d0b1a0d3426c8e,
            limb1: 0xd8ec911f2788ce70e6c40b31,
            limb2: 0x3f2d32f7d856335,
        },
        r1a0: u288 {
            limb0: 0xaa4aec99daa5c884db265937,
            limb1: 0x2b327ea0b7688fbe9a5d114c,
            limb2: 0xb774f1cb79624e1,
        },
        r1a1: u288 {
            limb0: 0xdaa05bd4bfaf6068aab84d1d,
            limb1: 0xc9a8aed8090ebbb93a6ca516,
            limb2: 0x100b367e90c32dbf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ceb8921e72b2f06cdceaf6c,
            limb1: 0xd788064e33e5bc2100e56433,
            limb2: 0x1eac3110011c927d,
        },
        r0a1: u288 {
            limb0: 0xaca87f4a54e78e9396890402,
            limb1: 0xd94a6dc1bd07653fd0ebf533,
            limb2: 0xb48a7dcdca786fc,
        },
        r1a0: u288 {
            limb0: 0x211df7880176bb3886ed63e5,
            limb1: 0x5ed8f8a90cc2838cfec8cdb9,
            limb2: 0xc9ae9785cfe3b75,
        },
        r1a1: u288 {
            limb0: 0xfc866a9a7b33c14d1d9affe5,
            limb1: 0xaba9075813f97dd3031049c6,
            limb2: 0x85590aaebc7da4c,
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
            limb0: 0xedf3942a808cbc65393e3425,
            limb1: 0x41a3eb13ca3f06678c9841a2,
            limb2: 0x125ef480fdacc6d,
        },
        r0a1: u288 {
            limb0: 0x2a38802b789aeb0db9da33a1,
            limb1: 0x4544e4209195f3b7b7a636fc,
            limb2: 0x260e10a08f59d721,
        },
        r1a0: u288 {
            limb0: 0xead6d8a0bdef0dc6adca0fec,
            limb1: 0x58ec5b454e7e5f24ea23419d,
            limb2: 0x1e65b1444ee057ff,
        },
        r1a1: u288 {
            limb0: 0x89c800b41dfadc3618082f54,
            limb1: 0x73c6843d248ced141d27ccae,
            limb2: 0x7b7708c5d3b56af,
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
            limb0: 0x84ff20ad18f81f32d02502d5,
            limb1: 0x1f516a29ff056fbb90d46271,
            limb2: 0x8337f0e2c9f5897,
        },
        r0a1: u288 {
            limb0: 0xef6ade926feb762bddac5856,
            limb1: 0x73f49a98d94fb26752c8896f,
            limb2: 0x223c4fa8284a90ad,
        },
        r1a0: u288 {
            limb0: 0x2300f54730e96d415c94a3e3,
            limb1: 0x2ddffbb0ef7169610a217dff,
            limb2: 0x25a9a10146f55d2,
        },
        r1a1: u288 {
            limb0: 0xf76e0fad4dd7fab84a3717d1,
            limb1: 0x4fae970fc93b17b4d73453ef,
            limb2: 0x134f2a299971b75,
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
            limb0: 0xe20d69e1e3995d0eef65fc9b,
            limb1: 0x2d221810b2c2908d1aea42f6,
            limb2: 0x2b14a33a7afdebf0,
        },
        r0a1: u288 {
            limb0: 0xe2c9e983cdc2e40a67544b66,
            limb1: 0xa0509e59a2ea2167e2af48f9,
            limb2: 0x27b6388324ef6b65,
        },
        r1a0: u288 {
            limb0: 0xc3393420856e3147d22b42ea,
            limb1: 0x82e9b146210eb77d42620ac4,
            limb2: 0xd3f66856c8d470f,
        },
        r1a1: u288 {
            limb0: 0x2fec2e1c2f9b49a7c158b6f7,
            limb1: 0xcdcaf2ec250636c1426008b0,
            limb2: 0x2bca10d367172845,
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
            limb0: 0xb7447b70e1ec6bd00cac2e78,
            limb1: 0xbe3a68ada0c8c8a21f2e0942,
            limb2: 0x261086e92daecdae,
        },
        r0a1: u288 {
            limb0: 0x49650cda9108cdd2b09d51aa,
            limb1: 0xd4f2980c1cf72c76a154fa83,
            limb2: 0x3ee63a26b205693,
        },
        r1a0: u288 {
            limb0: 0x51376c47727066fdec1c5997,
            limb1: 0x80b5e5cad8ec9ea1a43b3563,
            limb2: 0x10978101ec2a5717,
        },
        r1a1: u288 {
            limb0: 0xb737ec29ae440ede3fa4cb13,
            limb1: 0x147c02f506aced4d766e8973,
            limb2: 0x1e08aa8a4b528ef1,
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
            limb0: 0xa7208077bfe14edaa9cb6fdc,
            limb1: 0xa0820d8afd0697bcbb6ec776,
            limb2: 0x2952dd492f2ea299,
        },
        r0a1: u288 {
            limb0: 0x6f23a0a0397c40283cc74bee,
            limb1: 0x4e08dfb95e7ae4198387d194,
            limb2: 0x22dbe924c1a742e5,
        },
        r1a0: u288 {
            limb0: 0x78cb30ea1216ca34caa98127,
            limb1: 0x7a7250297bbe31aaad18658a,
            limb2: 0x125f677740f8b707,
        },
        r1a1: u288 {
            limb0: 0xfbc46ebf81ba896d9e1703ec,
            limb1: 0x8d7a3a06931946c23ccb09b7,
            limb2: 0x193ec2bfa584f9f8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0d4dfbc00881097eae4a616,
            limb1: 0xf58d8c0450eba2d517ec0d47,
            limb2: 0x1a6fd0ac904f75ec,
        },
        r0a1: u288 {
            limb0: 0x103e26987e7725c527c57cfc,
            limb1: 0x66439eca99aace78fd3c3ec6,
            limb2: 0x28cbfd7691982bc2,
        },
        r1a0: u288 {
            limb0: 0xf3d704997b6f5b83c6160b07,
            limb1: 0x4f9b55e761abab238288147d,
            limb2: 0x2f4c85cdd3af606d,
        },
        r1a1: u288 {
            limb0: 0xc3fe3017d36a35cc12c584c9,
            limb1: 0x64047ddfca7df795c79abf4b,
            limb2: 0x2030973ba8cc28ab,
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
            limb0: 0xfdb63a970cf7e7ebed12c3b8,
            limb1: 0x6cd136ccc79cc24be67fc617,
            limb2: 0x25acc1c5a98b8830,
        },
        r0a1: u288 {
            limb0: 0x2e15f55b84265c930c13106c,
            limb1: 0x311f51ed2212a6bc300828be,
            limb2: 0x243b6513151dd429,
        },
        r1a0: u288 {
            limb0: 0x9c7021ca97ae3d6a01ee3228,
            limb1: 0x11e5ec88c58212251fa7a76,
            limb2: 0x2a9e7d9d222d8f58,
        },
        r1a1: u288 {
            limb0: 0xf00cd4ced7092f9346926a73,
            limb1: 0x541c047f070e9fd5ea84a838,
            limb2: 0x2676b0ea984f368a,
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
            limb0: 0x55dfcc4d2ed909feb5206e9b,
            limb1: 0x8b2b1c8bc478da80f517b230,
            limb2: 0x159f36a8eaefde68,
        },
        r0a1: u288 {
            limb0: 0x3333893deb4cd2f056c491a7,
            limb1: 0xae0d8a933aaaada793254801,
            limb2: 0x1e6bcbaf4ac14017,
        },
        r1a0: u288 {
            limb0: 0x62072b400393fe7f0c145487,
            limb1: 0xb3999f0445f360b2d22747fc,
            limb2: 0x20a33c673ac8d243,
        },
        r1a1: u288 {
            limb0: 0x61f180638d8a5735b7ac4cf0,
            limb1: 0x293f69b5aa1893bf09e05774,
            limb2: 0x8fdc087a6150818,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfac0f880db3b290af7e94129,
            limb1: 0xf47b91e39993714a523c1240,
            limb2: 0x5e4aba8045f31b6,
        },
        r0a1: u288 {
            limb0: 0x8cd0a3a9c99628b516b72d73,
            limb1: 0x80b470adc52b67d4ea2b521d,
            limb2: 0xad9027cd9bbbda1,
        },
        r1a0: u288 {
            limb0: 0x89485c34de1893e870de4806,
            limb1: 0x8e1055574e3d886526f233be,
            limb2: 0x19bcb620ad4b3f3b,
        },
        r1a1: u288 {
            limb0: 0xe6802be3030565b20e2e48aa,
            limb1: 0x326df17a071d56b06040b274,
            limb2: 0x14b0016e24e66c6c,
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
            limb0: 0xe64ef5c609ba7492aa1a9bf9,
            limb1: 0x6798825fe7f3db26b34b1c13,
            limb2: 0x2e94097ae89454,
        },
        r0a1: u288 {
            limb0: 0x152ddc3d94b54622f15ee3d7,
            limb1: 0x3ad8a7757381cb029da67045,
            limb2: 0x12710c38f2375c25,
        },
        r1a0: u288 {
            limb0: 0xc237f331fc22cfcee3c9a0a2,
            limb1: 0xab6c26f8d4f8a4cc1378d0ba,
            limb2: 0x25243a56d376590e,
        },
        r1a1: u288 {
            limb0: 0x5781b9a7d9fe7c25ce4f4714,
            limb1: 0x2da4569bda930d84cf982520,
            limb2: 0x16e516b3f4a9253c,
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
            limb0: 0x9c911be891ba9b342bc8bec6,
            limb1: 0xca2732628c1ddf88657e2fb3,
            limb2: 0x12f4f3e4e5f4d7c2,
        },
        r0a1: u288 {
            limb0: 0x1e6488cdadc01a09e54a0f3b,
            limb1: 0x7effaa6220458654df4cf200,
            limb2: 0x6621113e3edbe85,
        },
        r1a0: u288 {
            limb0: 0xe65083e46d634e0d91bcef78,
            limb1: 0x8b96497f7e632e02ddb8a5b3,
            limb2: 0x2d8e4a135c606a58,
        },
        r1a1: u288 {
            limb0: 0x14063f9874715eebea888075,
            limb1: 0xfcf4baf85a0e355d6be920e9,
            limb2: 0x1d480f642af7a3eb,
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
            limb0: 0xd83fda3937559af5a0f4b34b,
            limb1: 0x6c82747323ce74b6394b929e,
            limb2: 0xd2673cc6d669b1d,
        },
        r0a1: u288 {
            limb0: 0xa54253d5dd779ac8b6f80ee2,
            limb1: 0x73cd49cf02eb08450f4530f4,
            limb2: 0x11b29b4e13e1371,
        },
        r1a0: u288 {
            limb0: 0xb700a9332736efd1bd656467,
            limb1: 0xcf59c835fc6bd990871dd5a6,
            limb2: 0x1cf70e55c3883b0a,
        },
        r1a1: u288 {
            limb0: 0x53bbfe2b54bbf2253e27af4a,
            limb1: 0x74982fe42b9430570b2a252c,
            limb2: 0x8914661a7448d85,
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
            limb0: 0xc05fb9ebc030441225c02a35,
            limb1: 0x69dec422620ec32a3bf28e0a,
            limb2: 0xd4d2fcd1837b420,
        },
        r0a1: u288 {
            limb0: 0x57e391187b1d9aec919677de,
            limb1: 0x66403c424865a8e32c036abe,
            limb2: 0x194b784d65838406,
        },
        r1a0: u288 {
            limb0: 0xab22f5e132b6e101040af021,
            limb1: 0x8e9b8ad1f2944eb9f44273d6,
            limb2: 0x114eecdb5a1f46a3,
        },
        r1a1: u288 {
            limb0: 0x407a81a8cf8684b1314768d7,
            limb1: 0x84c08d1fa0a4ef2d5c5fa02e,
            limb2: 0x1e0244fa9d1b59af,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5dfb1d6264a7da0addfb5e2e,
            limb1: 0x78cbe92b310cb4a3782b84b0,
            limb2: 0x159c447cc4d9d18e,
        },
        r0a1: u288 {
            limb0: 0xaa151797d7a82222c3a0765b,
            limb1: 0x857f19c15d978b7b7f408013,
            limb2: 0x6dd0d4d260491e7,
        },
        r1a0: u288 {
            limb0: 0xac0bd5f273874027c33acac,
            limb1: 0xeb53b62f6e191f570ab7e8ec,
            limb2: 0x1834196034ee6f4f,
        },
        r1a1: u288 {
            limb0: 0x2890b84c705ae524601bef78,
            limb1: 0xe22ce55f23d357006111264f,
            limb2: 0x230b05cea8edf589,
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
            limb0: 0x6f12a03488c4f61f31d82c6e,
            limb1: 0xa332f0439242268a8da6b064,
            limb2: 0xa23e5ebcd9f7901,
        },
        r0a1: u288 {
            limb0: 0x4719a73208846944784c14c6,
            limb1: 0x2e3c55a56ddb01b0c6a388a9,
            limb2: 0x2a67f9331cd9c93c,
        },
        r1a0: u288 {
            limb0: 0xee0a9bfdca5a2f2cf8343d45,
            limb1: 0xa72abc1c80108c5774a3e988,
            limb2: 0x1abca2b3d1cdd5eb,
        },
        r1a1: u288 {
            limb0: 0x897c6b85e429008f44c4107b,
            limb1: 0xa498ac195b32eb22deb195ac,
            limb2: 0xf9e921cc072b98c,
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
            limb0: 0x9cb6a7ad54f46ea8b4da38f3,
            limb1: 0x2d27cbc01ded83d1bbd4628d,
            limb2: 0x248075d37a0e281,
        },
        r0a1: u288 {
            limb0: 0xa11563d685e1ec8c087c138a,
            limb1: 0x39f5d778d4206b83801cbd7f,
            limb2: 0x1ae2bf223e9ea46d,
        },
        r1a0: u288 {
            limb0: 0x78b7e291175898532af360c,
            limb1: 0xb5bff85f16f1a9f28bd0635b,
            limb2: 0xf2edcec8d045aee,
        },
        r1a1: u288 {
            limb0: 0x540d00ae59a02824fed00102,
            limb1: 0x6e5692e53550d74eda87d6c,
            limb2: 0x290cfe0dc52be4b6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc732833467f01738dd9ed51b,
            limb1: 0xa4533dadfc30977d3c26a969,
            limb2: 0xf397a1549b65122,
        },
        r0a1: u288 {
            limb0: 0xdb83b8393b7de637ed27d7b9,
            limb1: 0xe3acdd1cc287336e620503b6,
            limb2: 0x421c7783dbc3e71,
        },
        r1a0: u288 {
            limb0: 0xde2ab138bdbc1ac7a0be313b,
            limb1: 0x5f905c2f22808917716eed53,
            limb2: 0x2635986677c24e03,
        },
        r1a1: u288 {
            limb0: 0xd45e931ddc65c689c1e33847,
            limb1: 0x619790917acbfe02771a4772,
            limb2: 0x1d25b2ea2e64a508,
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
            limb0: 0xa83d8eca0db80e351f2c5e78,
            limb1: 0xe88e82a771af68bc872abfae,
            limb2: 0x27e9ced031b44ed8,
        },
        r0a1: u288 {
            limb0: 0xce033176935bf25f66f0bce7,
            limb1: 0xbf50f83efe5aefe611d54661,
            limb2: 0x17b00046cf1dca6c,
        },
        r1a0: u288 {
            limb0: 0xd583dc5991a3da15dffdbe7c,
            limb1: 0x7ef963e797fffdc85cf6f0b1,
            limb2: 0x2b44af19c8b74a98,
        },
        r1a1: u288 {
            limb0: 0x63b5facc0a1250223b68002,
            limb1: 0x34d544ddd6bfd36dc8a0650f,
            limb2: 0xb14c4027283bacf,
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
            limb0: 0x166ece609f6a3e83798ede2c,
            limb1: 0xf4ec4bef1c2e70c76cadf5f5,
            limb2: 0x133fe6516217ae47,
        },
        r0a1: u288 {
            limb0: 0x8b14fb4b8711b24d71b5b760,
            limb1: 0x851815d89c3f0262e1d0d90d,
            limb2: 0x1eec658707e698c0,
        },
        r1a0: u288 {
            limb0: 0x7a99459a2d12314d703e706f,
            limb1: 0x16f29db7a73a7265c6c3efb4,
            limb2: 0x2af7c10f6e7bd501,
        },
        r1a1: u288 {
            limb0: 0xa2c11ff1906b0c0d8ebb7461,
            limb1: 0xe12684ba7ea41dab7c833222,
            limb2: 0x287a7763af4d1e69,
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
            limb0: 0xb9b38aba1b0a155db6f57f6e,
            limb1: 0xde225f05f751c5266c6b1567,
            limb2: 0x1331cfb389239791,
        },
        r0a1: u288 {
            limb0: 0x25e67fd94264f0a5fab5d4f0,
            limb1: 0xdc10718ef729fc322b218c02,
            limb2: 0x305b8e9b145f42f3,
        },
        r1a0: u288 {
            limb0: 0x520ed9208087b5ac795b9dc3,
            limb1: 0xc93ab6d3f5cf38b60591493,
            limb2: 0x252a2d5df50059ed,
        },
        r1a1: u288 {
            limb0: 0xaf635252321abc2fdf11c814,
            limb1: 0xb676e2184795b93c1f03245,
            limb2: 0x2a2f0f2cd477fb2d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x308f7838a04b2f1385136751,
            limb1: 0xd43ccced98e3969054580c74,
            limb2: 0x1b3eae501c60a45d,
        },
        r0a1: u288 {
            limb0: 0xb305a229e4938ec46f1bdf1d,
            limb1: 0x6c23589b1479ee6f5c87164,
            limb2: 0xbb7335441cce919,
        },
        r1a0: u288 {
            limb0: 0x5ac5d3205f440f220604c53e,
            limb1: 0xe901f0c4a92ef6005065efb3,
            limb2: 0x63494f24f697331,
        },
        r1a1: u288 {
            limb0: 0x4dbd358a3fed116c0c361f24,
            limb1: 0x6e0bc95b4e1a04a0cca845f1,
            limb2: 0x205d5358396f256,
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
            limb0: 0x792ba2eb6da785e7cf0045e2,
            limb1: 0x5c6fa31380d17cf308909c81,
            limb2: 0x20ee75c3accbf4a2,
        },
        r0a1: u288 {
            limb0: 0xd736e90888a85491c6d6bf04,
            limb1: 0x6bd6e7de0db72c20e09ebeda,
            limb2: 0x2142e3ced2788882,
        },
        r1a0: u288 {
            limb0: 0x1a118a90ae0b59b3aef30cf2,
            limb1: 0x703d58ced7ea8a01e4ef073c,
            limb2: 0xcf0208ff224bf85,
        },
        r1a1: u288 {
            limb0: 0xf7bb8d8ca649ca436aa9ebac,
            limb1: 0xe63afe6299f2822c33e2a75b,
            limb2: 0x230f54263a07efe9,
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
            limb0: 0x14f5dfc8424725ec656ff004,
            limb1: 0xfeb4f47a50f082b5925033be,
            limb2: 0x13102ae894f9ac71,
        },
        r0a1: u288 {
            limb0: 0x834be07513732bea77caf93,
            limb1: 0x9b021bca2029ad3edcc2281c,
            limb2: 0x17453658499965b1,
        },
        r1a0: u288 {
            limb0: 0x130fdf112d9f137bc2475c21,
            limb1: 0xa7e383bc4d6b1ce9f0d69e44,
            limb2: 0x1a04d5740e99e220,
        },
        r1a1: u288 {
            limb0: 0x9b290c43f5c52d70b082ed47,
            limb1: 0x89366320e76bbb49f86427b6,
            limb2: 0xac0efb793ac51a6,
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
            limb0: 0x945a8aaa29f5104433554f12,
            limb1: 0xb855777938b068d111960c1a,
            limb2: 0x29f1b97ae5abacbc,
        },
        r0a1: u288 {
            limb0: 0x76002a3f155de62fd00081c7,
            limb1: 0x4133e7eded8b6c79046bde97,
            limb2: 0x11e544acf3fbdbf3,
        },
        r1a0: u288 {
            limb0: 0xa3924514dfa9e14e9a380caa,
            limb1: 0x1184b4b2d4bb6a7ad0624744,
            limb2: 0x240a0056981816d2,
        },
        r1a1: u288 {
            limb0: 0xf301f95ab4106d8df55aa268,
            limb1: 0xc6c2f8f4574ad886c8470643,
            limb2: 0x293ad0f55518614d,
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
            limb0: 0x5090dabcc19c22519a2b65bf,
            limb1: 0x10ae209ad3dfadf116229582,
            limb2: 0x23e9e8d48b4872da,
        },
        r0a1: u288 {
            limb0: 0x1d4462bfceb4004f4e0893c2,
            limb1: 0x9420295719ba853717559ac7,
            limb2: 0x2e273077fe5a6afa,
        },
        r1a0: u288 {
            limb0: 0xbd43d35d19952280c6c9b49a,
            limb1: 0x6dd019c31d35d5ad8da3ca51,
            limb2: 0x1c6a43643be8b14f,
        },
        r1a1: u288 {
            limb0: 0xec088e25cda672504a9dd131,
            limb1: 0x9841422b597e198a354467a5,
            limb2: 0x142427c2da236fb0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xac3d41d7c826553ade597019,
            limb1: 0x8888c08da203df6be9741f9a,
            limb2: 0x2706a7592c4869ff,
        },
        r0a1: u288 {
            limb0: 0x46f2bd272b94fa0f3e9728f6,
            limb1: 0xa7ae05687801e15e86f19589,
            limb2: 0x70d707e6670744c,
        },
        r1a0: u288 {
            limb0: 0x6b214f270d5b6bd92d7c444c,
            limb1: 0x31999193920ef4a10dee129e,
            limb2: 0x23f71662e26c042b,
        },
        r1a1: u288 {
            limb0: 0x3c2c8b2333eb0313684ac7a5,
            limb1: 0x1f8147e932aa46e8e2656325,
            limb2: 0x21237a59bd1b4d5,
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
            limb0: 0xca9f6ae2a4c778d00bb2acd3,
            limb1: 0xa92af3a445f1fccb3ca64c63,
            limb2: 0x213304a2acd1dd3c,
        },
        r0a1: u288 {
            limb0: 0x421bf822d5a4d14a392ba64d,
            limb1: 0x971dae9b43be2ba92f24064c,
            limb2: 0x2027832c0d37d8f2,
        },
        r1a0: u288 {
            limb0: 0x2e294695f9ca8bce1322e3bd,
            limb1: 0x83e9181e3796526f27834dd6,
            limb2: 0x23ab7792974f8f4e,
        },
        r1a1: u288 {
            limb0: 0xc2a5a6b5c7724b3557c687e8,
            limb1: 0x7c8a08b9372971de4558392a,
            limb2: 0x1b8abb12295c70a1,
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
            limb0: 0x29e56cb2ed9137bba60ba50d,
            limb1: 0x1ba7808d4937624fbad7b502,
            limb2: 0x186f1f49be288812,
        },
        r0a1: u288 {
            limb0: 0x6394d9433981f7ecacf2c4be,
            limb1: 0x21540146ba3e3d68f62c1790,
            limb2: 0x907d036eaa07c59,
        },
        r1a0: u288 {
            limb0: 0xc04a19cdf01fbf4f7fddb5c9,
            limb1: 0x3357b54c0544695740013ab6,
            limb2: 0x96a1234f76878ad,
        },
        r1a1: u288 {
            limb0: 0xedc76326ff6be3fa2ab4818c,
            limb1: 0x3c1e2b67be33774485e254c6,
            limb2: 0x12826eff912464ff,
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
            limb0: 0x9507b21ccb0a5d2d6b1bfb13,
            limb1: 0xfe30ddf86901d5bedf80689e,
            limb2: 0x20b572143c504ee2,
        },
        r0a1: u288 {
            limb0: 0xa6df708946f4d114dab4b1c4,
            limb1: 0x44513a5f98e5967171fb49c7,
            limb2: 0x1908c748dbb3e92c,
        },
        r1a0: u288 {
            limb0: 0xa6963b122b8c033ecb6af02b,
            limb1: 0xa3320c6df4b27d2c9ca41721,
            limb2: 0x2157a5cf2c937ae3,
        },
        r1a1: u288 {
            limb0: 0xd81ba462c2c108395f8b5476,
            limb1: 0x108d80e118600993cee662df,
            limb2: 0x8a71b8bfba11f0b,
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
            limb0: 0xb787deedd640bc71a2a54923,
            limb1: 0xec60a76c7111f5e2bf148fa7,
            limb2: 0x2f989dc8c3d7534e,
        },
        r0a1: u288 {
            limb0: 0x36dae7dfa7a3231a6f363185,
            limb1: 0x1d56942be45e6de6b1771963,
            limb2: 0x27bc7a1ddec9c041,
        },
        r1a0: u288 {
            limb0: 0x1a6d299173d1c12047e618bb,
            limb1: 0x44579fc90d2d457d54fe7099,
            limb2: 0x14f4156ad9bf7fcd,
        },
        r1a1: u288 {
            limb0: 0xb96364a15ac3d1ad7610af49,
            limb1: 0x4497e55de813f179b701d5a4,
            limb2: 0x2985ad9a24391497,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x552f084c892ed7bed7043e9c,
            limb1: 0x9b4db98c3e1de262d1533b37,
            limb2: 0x5188e1a03a78f93,
        },
        r0a1: u288 {
            limb0: 0x9f7c31e35286d30fe3814cd9,
            limb1: 0xd191af36923e9b6683f127b0,
            limb2: 0x10add47889e16b94,
        },
        r1a0: u288 {
            limb0: 0x7faccb562d6151506fec22ff,
            limb1: 0x3116ac8da770d4437b400b29,
            limb2: 0x1e40c90bd0870e38,
        },
        r1a1: u288 {
            limb0: 0x853b30693c93d2fb2840a68f,
            limb1: 0xccb81b3de9d8fa6873468123,
            limb2: 0x92d6868d22d936e,
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
            limb0: 0x2a45acd07d70e1e98e858c69,
            limb1: 0x778cef627156ae880c5c953a,
            limb2: 0x247cc4540ee775c,
        },
        r0a1: u288 {
            limb0: 0xa211d3f7742685c2643c5ece,
            limb1: 0x88c2f3f4457a184bcd3eb51b,
            limb2: 0x78dbf8de91cdce2,
        },
        r1a0: u288 {
            limb0: 0x153e18b4cd97cc19e4888879,
            limb1: 0x9cffda257e092f01b865526e,
            limb2: 0x301370318e5a0988,
        },
        r1a1: u288 {
            limb0: 0x4dec22b7edb42b0f0245c40f,
            limb1: 0xf29e1466b5ef6be3ef2432ae,
            limb2: 0x2eb495e98ac85297,
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
            limb0: 0xb179643a72c0d6042d454aee,
            limb1: 0xf43b2f8d5af143758f8b173f,
            limb2: 0x21dc4568f3045c9f,
        },
        r0a1: u288 {
            limb0: 0x1777ce5389b8a28265032a20,
            limb1: 0x22f4f9d02c47d396f3b99e41,
            limb2: 0x1db5b95f3b417942,
        },
        r1a0: u288 {
            limb0: 0xe3cd57e21ab7ac490f15a000,
            limb1: 0x21d2e42876ce1a089bb9787d,
            limb2: 0x1e3889e20b2a768,
        },
        r1a1: u288 {
            limb0: 0x45bd36ff85741738a4a7f358,
            limb1: 0xb67b7f0740e68c49bdf082d,
            limb2: 0x242ebbf5fa2e3ff6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1909abf3f9489fdc0ecbe4ce,
            limb1: 0xe50c3a4b7aacbd8ef9227c59,
            limb2: 0x238aecc84ffb820d,
        },
        r0a1: u288 {
            limb0: 0x5cc81f427179acab730631c,
            limb1: 0x726132f3847a3475f36f5deb,
            limb2: 0x20dc16a88777bb01,
        },
        r1a0: u288 {
            limb0: 0x1a565e952c06a8b5c30df944,
            limb1: 0x255cde190102b6521630061f,
            limb2: 0x22a790facf5a422b,
        },
        r1a1: u288 {
            limb0: 0x22be2e93601472c0eb5ad4a4,
            limb1: 0xa8da34cf1402e7bb0bb04d97,
            limb2: 0x11ff290c84601acc,
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
            limb0: 0x991c576cbe99d743e99cf60,
            limb1: 0x93131875e43c6b2c20aa2a1a,
            limb2: 0x22c8cd9cbb80bb95,
        },
        r0a1: u288 {
            limb0: 0x1b19e1b084069e354380fb01,
            limb1: 0x817bfdb9e8c518b6d9623111,
            limb2: 0x26bd34a2ebd7d9d2,
        },
        r1a0: u288 {
            limb0: 0xe274336fa065746ad3bc5d53,
            limb1: 0x176c85542ed0ded4afd5f989,
            limb2: 0x2b07eea5674183ee,
        },
        r1a1: u288 {
            limb0: 0x2bbe073a69065e64e10eb763,
            limb1: 0x92714cf2b8e8b2a93a7adb48,
            limb2: 0x1bfafb072d62f3c9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2c15ab2a65325b05893181d,
            limb1: 0x43b3f2ab05905f4663fbd11f,
            limb2: 0x200074122ab973fb,
        },
        r0a1: u288 {
            limb0: 0x876024f28936789010bf7177,
            limb1: 0x85bd4f2577a8494947171301,
            limb2: 0xcbd44f62c5df0,
        },
        r1a0: u288 {
            limb0: 0x8b2a56bb60b43dcff285e8c7,
            limb1: 0x820759ea05bd5a5624b185bd,
            limb2: 0x2911ecc3680e6e54,
        },
        r1a1: u288 {
            limb0: 0x72d1ba738020dc752f07fded,
            limb1: 0x800ce7c519a4455fb09a6217,
            limb2: 0x2a294b792740f7b5,
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
            limb0: 0xc724eacaffa8087b5f823e92,
            limb1: 0x2fbdc030fe44efee7a0b9733,
            limb2: 0x29eaf3f6e082d1c5,
        },
        r0a1: u288 {
            limb0: 0xb40cad24fba6ed7e20d024a8,
            limb1: 0x4874adc79aecd7bcdf771e1f,
            limb2: 0x2338ead27a898308,
        },
        r1a0: u288 {
            limb0: 0xa2f4ac7510c8cde85be6b4e3,
            limb1: 0x610509b5f7afdd9a5d88b834,
            limb2: 0x17d0128307461dbd,
        },
        r1a1: u288 {
            limb0: 0x3071dadfc5786f14c670dbd0,
            limb1: 0xccc2118ce9f8f638405121d0,
            limb2: 0xefe585743852cf0,
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
            limb0: 0x11b3ce2b6d3acf013ca817c8,
            limb1: 0x18ed7b52fbd14dfe2f54be02,
            limb2: 0x6dd96984495daa8,
        },
        r0a1: u288 {
            limb0: 0x28d60f2d5af663724b15d568,
            limb1: 0xe1d73c491e43af2a6232c80,
            limb2: 0x1e3ec038a7b0a2d3,
        },
        r1a0: u288 {
            limb0: 0xfe5153c87082088f67fbadad,
            limb1: 0xd7158403f22486619c8e7677,
            limb2: 0x16c9262596bbb1c0,
        },
        r1a1: u288 {
            limb0: 0xe52ff03833c37809de218a3f,
            limb1: 0xb5d1508101b5ec61e10ceb10,
            limb2: 0x102830a73aa0d9cf,
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
            limb0: 0x7f8536741dfbe9cda93f67df,
            limb1: 0xbf14f97c86affe7516fd4add,
            limb2: 0xa9aab9f65980743,
        },
        r0a1: u288 {
            limb0: 0x9c472a65e0e2c0732340ce82,
            limb1: 0x8e9e4663a3eb4987746a32fd,
            limb2: 0x566c03510db3240,
        },
        r1a0: u288 {
            limb0: 0x657ca9ce38d5b2f5c6021224,
            limb1: 0x8ef05df71dfba2c45d1568d4,
            limb2: 0xfdfdbfb115e66a5,
        },
        r1a1: u288 {
            limb0: 0x52c3e8c3da977b09d50e04a4,
            limb1: 0x707322dccefbe8a4c675fd40,
            limb2: 0x272b824b3db92ffb,
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
            limb0: 0xc14e8001eff07628153a5396,
            limb1: 0x42eed087a5d619dd9ae39f7b,
            limb2: 0x7fb052da061cf80,
        },
        r0a1: u288 {
            limb0: 0x57f4d70517f74f71c51f197,
            limb1: 0xd8dae8cdfe0489d2cf63cf6e,
            limb2: 0x3256ed8b25e3225,
        },
        r1a0: u288 {
            limb0: 0xd1ca31e0cf8efb4cc196b830,
            limb1: 0x5a929f489e5910494d135c49,
            limb2: 0x267e6d14e210fddb,
        },
        r1a1: u288 {
            limb0: 0x38b57b7e74fed6a454374fed,
            limb1: 0x1135bf956a483230fb02bb10,
            limb2: 0x124a726603c2c605,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43fea8aedd6d9f8125c0ec6c,
            limb1: 0x9a58fbe97ab16a15c0715c4e,
            limb2: 0xa85e7ac02ca0371,
        },
        r0a1: u288 {
            limb0: 0x74406f5b0daa8e23d293a289,
            limb1: 0x2e2fcfc709faeca17c851160,
            limb2: 0x237c1237b850e0c2,
        },
        r1a0: u288 {
            limb0: 0xf21642ac698dd76587daf547,
            limb1: 0x9d9f376c735ad561eb8230a1,
            limb2: 0x47255e3a87c559c,
        },
        r1a1: u288 {
            limb0: 0x27b023e45c7612cd60a73fed,
            limb1: 0xa9ebe677c8132ae519b12f4f,
            limb2: 0x273c6647ea2e89d7,
        },
    },
];

