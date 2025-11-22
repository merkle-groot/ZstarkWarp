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
            limb0: 0xdf191e56363f3cfb26ca4789,
            limb1: 0x1255954ae8fe9db889f37853,
            limb2: 0x2e726ce7990c8a96,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x25bf78c3102de40028fdefe5,
            limb1: 0xaa3120097a1218329bcfecc7,
            limb2: 0x11ddbd36b9611b50,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xb7235bc78a1016ec71a400c8,
            limb1: 0xddef893228c8c034fce92fbd,
            limb2: 0x1c67c12207952134,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x3762f818e72c4b8a64bcd5a,
            limb1: 0xa614795ce8d00a63f136d506,
            limb2: 0x258200196ddf9254,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 4] = [
    G1Point {
        x: u384 {
            limb0: 0xb1eb2fb26fec9419d10e346c,
            limb1: 0x7c47d0b65502c812fed39b66,
            limb2: 0x1409b51bb67e2f8c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xb60799179fb473686a9e9ba5,
            limb1: 0xe529bbc05a222476d7f2cc50,
            limb2: 0x26b9b6acb0586e4,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x429368094dd7d3f29def80ab,
            limb1: 0xcbcdd119384b6761a63988a0,
            limb2: 0xc0191bc0e75bd5a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x2efd8c72aec319f8184f508f,
            limb1: 0x9042a447a7131f78c8f0b8ea,
            limb2: 0x2878a1178fc70b99,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3dcfc4be714c837b22354f80,
            limb1: 0x77a07a11d8ac0cfdce4420da,
            limb2: 0x2c3783b1e5c5f909,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x8bf4b7c42501e5818ca6fdf5,
            limb1: 0x58549be40b5318e0d6ba8f4d,
            limb2: 0x2b4833c327cb5c8e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xae34ad5af2bf91301b7376f8,
            limb1: 0xfd7120aba95bdb96d4cde0c7,
            limb2: 0x26dde95b12f2bdaa,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xae69ce2e899461240711f5b3,
            limb1: 0x6a9bab39d041965d49d5f9d8,
            limb2: 0xa45f9c72f0cfe0b,
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
            limb0: 0x9adc91550283b8b5ffbf77d,
            limb1: 0x8764968bfe3afaf28bc46120,
            limb2: 0x18804aa2933eb248,
        },
        r0a1: u288 {
            limb0: 0x3349b135e11994a3a62843cb,
            limb1: 0x3ff8300a0e92e5a0936785ac,
            limb2: 0x2625289d43837450,
        },
        r1a0: u288 {
            limb0: 0xa7ed11785d58f701e79f509,
            limb1: 0xebd9e46fd0f4d9bb55b97c3b,
            limb2: 0x169233435f68d855,
        },
        r1a1: u288 {
            limb0: 0x8d7c2a8aa661535c240c1d12,
            limb1: 0xe3686140a415e108b0113d89,
            limb2: 0xb762d9363f0355a,
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
            limb0: 0x5ec40177ebf8508b788105ca,
            limb1: 0x30ebaf2a83465d6b0bbd0971,
            limb2: 0x17e403d04df2ede1,
        },
        r0a1: u288 {
            limb0: 0x352819575b06f7733254b97c,
            limb1: 0x785815ac72ee72bd0419e4e5,
            limb2: 0xa3f25d59dae2bd9,
        },
        r1a0: u288 {
            limb0: 0x5df2f975b64afca6ba03083e,
            limb1: 0xcc766146b08c7ea241c7ee56,
            limb2: 0x19d21b2f81c8c7d3,
        },
        r1a1: u288 {
            limb0: 0xdaf5a00295bf38bab470e035,
            limb1: 0xd4e7e475dd6b7754e7702d07,
            limb2: 0x24ee20df7d416ace,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9774a143800f67aa18f403b5,
            limb1: 0x6a7ced4eab8b24803763105b,
            limb2: 0xead4c20e8d32156,
        },
        r0a1: u288 {
            limb0: 0x5c19e8751d05654a6409c4aa,
            limb1: 0x4940f4d01b71c06f745359ef,
            limb2: 0xae3518b899ceb3a,
        },
        r1a0: u288 {
            limb0: 0x6558b4006314340d0e9240dd,
            limb1: 0x781a51c7c5e62900fb7016ca,
            limb2: 0xae29b92bde867d3,
        },
        r1a1: u288 {
            limb0: 0xebad1ddf3d17797608e6530,
            limb1: 0xe1fa65ba38795375f8038fed,
            limb2: 0x59805fde6d6fbd5,
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
            limb0: 0xc8cd710a022850a95e9920ba,
            limb1: 0x40a14a0c8e6160a34d13e87a,
            limb2: 0x14737ba69ca549e1,
        },
        r0a1: u288 {
            limb0: 0xfeb58a97240bbb097b93844,
            limb1: 0xa09319b1323508a5f53db122,
            limb2: 0x21bc41782f708953,
        },
        r1a0: u288 {
            limb0: 0x139643ed7d4fc796c25c3d7c,
            limb1: 0xf59928e4bc6f63490d4a8ded,
            limb2: 0x235fbae2d2f1ba35,
        },
        r1a1: u288 {
            limb0: 0x33c42f2204d93b24de162f33,
            limb1: 0x52bf02ed97ed836230fecb7c,
            limb2: 0x13a4c177ecfada4c,
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
            limb0: 0x5545b223e9da9e1f64210d81,
            limb1: 0x52ccfadc20d70c0ae71b05a2,
            limb2: 0x1f07d344a58bbeab,
        },
        r0a1: u288 {
            limb0: 0x1236224011970d46c17fa23,
            limb1: 0x139a29ffe2edfd80846b3c54,
            limb2: 0x2cebba37b0a2df91,
        },
        r1a0: u288 {
            limb0: 0x498151bf41253f6237c1d52c,
            limb1: 0xbe617e8f0986d637b0e4b2b6,
            limb2: 0x1edce4661615f35c,
        },
        r1a1: u288 {
            limb0: 0x9cdb6bad3b2ebbce8ec76561,
            limb1: 0xce505a83ae5effe5d8e1e6ec,
            limb2: 0x225026f88f05dcf6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd7525dbcaf89975c5a485d9d,
            limb1: 0x9689634a480d806a85da5770,
            limb2: 0x28e946058c7f219f,
        },
        r0a1: u288 {
            limb0: 0xaa9591677ec2ff4f3e930acc,
            limb1: 0xa29db2907265af5aaa5622e1,
            limb2: 0x1b1b980c4c6ed771,
        },
        r1a0: u288 {
            limb0: 0xf91d3ad06fe928262a12515a,
            limb1: 0x4da629da3250944bde7962b4,
            limb2: 0x7b6e278cd40a392,
        },
        r1a1: u288 {
            limb0: 0x95d7c75e629d8f26a811c4e7,
            limb1: 0xebd238cbe906865a2cbf6b9c,
            limb2: 0x28c322be2012a202,
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
            limb0: 0x17ce6cdc2ed06168c4a01104,
            limb1: 0x65b0b0b087a3533934686217,
            limb2: 0x31473f644157d67,
        },
        r0a1: u288 {
            limb0: 0x4e5b55ae6627302f376f3f96,
            limb1: 0x2c9df5635adae8a3be71303a,
            limb2: 0x26d7f8c59ccfbc27,
        },
        r1a0: u288 {
            limb0: 0xe05c7baf32832ee1994c84d5,
            limb1: 0x853a6262145dd9d28bdca4a4,
            limb2: 0x2e0803691fa29028,
        },
        r1a1: u288 {
            limb0: 0x69ad289bcbdcde44802cd9c0,
            limb1: 0x3f2953dd5444e5f21e4e2f59,
            limb2: 0x84352a832c1a5b5,
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
            limb0: 0xe4b4883bb77d5924cfef8887,
            limb1: 0xae823092c78949bd173d490b,
            limb2: 0x85c8a1a2d9b52b2,
        },
        r0a1: u288 {
            limb0: 0x7340a018044f809891ad8d88,
            limb1: 0x1e5cb2ebd5a0577b5afe1a86,
            limb2: 0x1c39a11733542ba,
        },
        r1a0: u288 {
            limb0: 0xf4b9b2476391d13f9fda5166,
            limb1: 0x427545f2a7b9ae24757e40ec,
            limb2: 0x7fd3f95f64d9025,
        },
        r1a1: u288 {
            limb0: 0x905ddb15fd53f2debc69de9d,
            limb1: 0xf96eaeeac5e4dfd59b17e968,
            limb2: 0x38e5db788187913,
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
            limb0: 0x47ac6b57958a4a4c2891cd49,
            limb1: 0x8ea9e0df119ee5079c269f5e,
            limb2: 0xee70683b20e6dbb,
        },
        r0a1: u288 {
            limb0: 0x5d0f1c79881c4681dbbcf673,
            limb1: 0xe758c96e2431e7ca812cbad6,
            limb2: 0x187dfdd3a84a4b60,
        },
        r1a0: u288 {
            limb0: 0xa6ce40ac0cc85d96173adc5c,
            limb1: 0x2dbfcff4cb8fb7a77dc32ac4,
            limb2: 0x1a5a4b649f04c0e2,
        },
        r1a1: u288 {
            limb0: 0x88a387df9e33bd0bea1e4a4a,
            limb1: 0xcffaf3fee43f32047b803706,
            limb2: 0x267c02b23225c580,
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
            limb0: 0x3da9977917560f54ac3f1b46,
            limb1: 0x27f6b4d8277e06e92e94fcfb,
            limb2: 0x64db03ffce09af1,
        },
        r0a1: u288 {
            limb0: 0x2defbc70fece16039ffe17b6,
            limb1: 0xd1551ec9b10cddb4a6df7ed0,
            limb2: 0x161e340a5ddadd5,
        },
        r1a0: u288 {
            limb0: 0x2681fe1e8ba925754bd89fd2,
            limb1: 0x89e329389ae790967c51ad18,
            limb2: 0x1ad264cc9731127d,
        },
        r1a1: u288 {
            limb0: 0xe8907a59de153926cce6997b,
            limb1: 0xd1625a9783e61558b807211d,
            limb2: 0x53f630fd6a95d7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x196d167610c370a0f365bbbe,
            limb1: 0xc27fc961df74bc2f0133c2ab,
            limb2: 0xdea489d23f6ab9b,
        },
        r0a1: u288 {
            limb0: 0xcc8d952a2ecaa7aa424fb175,
            limb1: 0xae80087dff433d907dc6c46e,
            limb2: 0x255f3af38035e4bb,
        },
        r1a0: u288 {
            limb0: 0x849b6201fdf224711817e39,
            limb1: 0x6de7552fa5f4c2221ce514ec,
            limb2: 0x104432e6ef67c41e,
        },
        r1a1: u288 {
            limb0: 0xe9c0b2efb91871389e507e1d,
            limb1: 0x855a0fa039e604db0038cee2,
            limb2: 0x1643b0155ca984ea,
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
            limb0: 0x4bc02cb1ae80a3e64cfcdcc3,
            limb1: 0xd7ef7b0ce58de06c56b40051,
            limb2: 0x23fde60bb083803f,
        },
        r0a1: u288 {
            limb0: 0xa7445e9c3f6e28dbd5b01079,
            limb1: 0x4251ced3d578a33626ba3e4d,
            limb2: 0x27f644bd5499885,
        },
        r1a0: u288 {
            limb0: 0xe7fc12b0bed7d2fa80c9724d,
            limb1: 0x92be45e054ba3dd8a4e1e4c1,
            limb2: 0x30d5ed327eb0e90,
        },
        r1a1: u288 {
            limb0: 0x5be3c50d24f53b20a77e9bb8,
            limb1: 0x623d5ddf04928d79b588951c,
            limb2: 0x23131fdac27dd6ea,
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
            limb0: 0x6047d45130efd10e2b778b0e,
            limb1: 0x19d16a38d811f8b395aaea5b,
            limb2: 0x9bdce411f6af4f1,
        },
        r0a1: u288 {
            limb0: 0xac0ce424d7356c073e14b9be,
            limb1: 0xf2194ae5105189093d0a4642,
            limb2: 0x2a1842085f1aa927,
        },
        r1a0: u288 {
            limb0: 0xb2054cf9db24e5257e3ae55c,
            limb1: 0x787005a7b57ef7dd8c10377e,
            limb2: 0x1e03b574748047ce,
        },
        r1a1: u288 {
            limb0: 0x4ccd01d89c65b3ebcf854f31,
            limb1: 0xb90f46d3d3debcdd42b64343,
            limb2: 0x7d1df0ecc543603,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb737d0d0913efb437ff4a66,
            limb1: 0x66f9bed4a0d851b691d7d1cf,
            limb2: 0x8a6f8634095de31,
        },
        r0a1: u288 {
            limb0: 0xac22720d81d2ae02d1b737fc,
            limb1: 0xcefb801110d068ab84a49b9b,
            limb2: 0x810ec20c7d2523c,
        },
        r1a0: u288 {
            limb0: 0xfc5e480f6b146b54c6424ef7,
            limb1: 0x2e23a43a11c6cfd36e375170,
            limb2: 0x3a75899d25be005,
        },
        r1a1: u288 {
            limb0: 0xf8cdbc942191e910e67b2557,
            limb1: 0x4fe1d3bbfffb44112eed2e81,
            limb2: 0x1371b215175233fb,
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
            limb0: 0xce7cc3ff31fa8d946f85ba28,
            limb1: 0xdaff76a3c6229144071bb392,
            limb2: 0x1cb637b42ff5ddd4,
        },
        r0a1: u288 {
            limb0: 0xe1ee7d3295b55cc5e101e71c,
            limb1: 0x26b3fc22a14426192ee04551,
            limb2: 0x4cb7d8d6667bf2,
        },
        r1a0: u288 {
            limb0: 0x45822e045b60885e46a46e60,
            limb1: 0xa70560e66fc1cc7440305f75,
            limb2: 0xeed9f77ebd48ea3,
        },
        r1a1: u288 {
            limb0: 0x11bb7f13ca25f563ea9be029,
            limb1: 0xd6e92572085acf12ecf55ef6,
            limb2: 0x194105a5e09202c9,
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
            limb0: 0x4ba5b4c8bb1b9f503f736ad8,
            limb1: 0xe7d60f0e353263225026cdf1,
            limb2: 0x569044cb5a84f38,
        },
        r0a1: u288 {
            limb0: 0x250521401457f6ff354e4d3c,
            limb1: 0x88528795956514341a2df19e,
            limb2: 0x29b0e2c64fc26dc,
        },
        r1a0: u288 {
            limb0: 0x847d7804d552e949852dc06d,
            limb1: 0xc8d635e1024fc3cd879843fe,
            limb2: 0x1957db86dfbeea78,
        },
        r1a1: u288 {
            limb0: 0xbff5de15379ce36d31353a59,
            limb1: 0xbbac133c713114152e24a449,
            limb2: 0x291bbb3a10b929a2,
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
            limb0: 0x3a8d33a103fee9f5f7c8c397,
            limb1: 0x3425aeb8fe60d1cbe2d86288,
            limb2: 0x13f06d19cfb7048a,
        },
        r0a1: u288 {
            limb0: 0xae697a9562ba69006f4a0854,
            limb1: 0x457afdefecbb7d9fed7b9bcf,
            limb2: 0x21a90f7180a17399,
        },
        r1a0: u288 {
            limb0: 0xc83ac4a3dcc5ed7e0838f0d6,
            limb1: 0xd31378b33cdedb83f2a84007,
            limb2: 0x1a9798c5435886de,
        },
        r1a1: u288 {
            limb0: 0x4be21202deb0479f9732b5e2,
            limb1: 0x656ffb0db456764a4a406100,
            limb2: 0x8b6f0536a16bac1,
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
            limb0: 0x978d9c33ae1d5c3d99260fdd,
            limb1: 0xd0883e2309ae893750b44b69,
            limb2: 0x49f093ff11a3c1f,
        },
        r0a1: u288 {
            limb0: 0x4de50f2d37d8551471b528ff,
            limb1: 0xe2814bd2a7aa31261b81b884,
            limb2: 0x799100777cf5817,
        },
        r1a0: u288 {
            limb0: 0xd35583c0acbc23595c109b18,
            limb1: 0x870aa7dab539082ae3a8ff30,
            limb2: 0x272462e96334660,
        },
        r1a1: u288 {
            limb0: 0x5c70b99f1afe8a03067be168,
            limb1: 0x507ad358b6e09181d9780dcb,
            limb2: 0x1bc3089db3641a00,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x893f60f7a7bf6e30de0b14f8,
            limb1: 0x6d81c99bba43092e09126de3,
            limb2: 0x24832edfb172381e,
        },
        r0a1: u288 {
            limb0: 0xff5ebce62ce499c13128816e,
            limb1: 0x3ef3293ef31a3fe65eed8d06,
            limb2: 0x4a7b2a16bcb61da,
        },
        r1a0: u288 {
            limb0: 0x99918af6a8ea5fb6e743e58e,
            limb1: 0x379352f4eb72ac7447588316,
            limb2: 0x1ffd31d664f59ced,
        },
        r1a1: u288 {
            limb0: 0x9ea6a6771b956b1ad5620529,
            limb1: 0xe5bd26dcb117e44393f464e6,
            limb2: 0x79aee8de5e64386,
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
            limb0: 0x772d384ca11e6133f1cf1641,
            limb1: 0xa6c949127d82818c67d4ab4e,
            limb2: 0x28a9398369c55d72,
        },
        r0a1: u288 {
            limb0: 0x60191b9835adb1ffd345e8a4,
            limb1: 0x166050042a297f77e5a866bf,
            limb2: 0x8d627fc4f8ca7ae,
        },
        r1a0: u288 {
            limb0: 0x71af4d13d2860ecc73d3d196,
            limb1: 0x90d03ed1dcb0dbf1d822f8b8,
            limb2: 0x5f5fabb74ce684,
        },
        r1a1: u288 {
            limb0: 0x334fb7b2c053a2647308724c,
            limb1: 0x56af0f85a47c95a7704a8bf7,
            limb2: 0x941ff56da1d237a,
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
            limb0: 0x2d5819371092436e0fd742a4,
            limb1: 0x798b9c7374f60df0c8973ee5,
            limb2: 0x3ebca7a18afe0e2,
        },
        r0a1: u288 {
            limb0: 0x8f1534f336ceccf759f7cd5a,
            limb1: 0x896c81b559c439870e956f2e,
            limb2: 0x1f936cb4f3c2aad6,
        },
        r1a0: u288 {
            limb0: 0x4baf60f87b19fb00d93cf37f,
            limb1: 0x3df8400f260d11f8e4981816,
            limb2: 0x1cea1233e118ce65,
        },
        r1a1: u288 {
            limb0: 0xdc75301de771a4c54736153c,
            limb1: 0xbf674fa8910f9306a44ada16,
            limb2: 0x2ee0d3d5c211e912,
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
            limb0: 0xe6a79f860fbd6ed4cf51dbeb,
            limb1: 0x190129ec11e954c326422065,
            limb2: 0x268c7fba256ef863,
        },
        r0a1: u288 {
            limb0: 0x601a7bfe254eba3f66ec10df,
            limb1: 0xbc86a9fd29bbde06b9d1a859,
            limb2: 0x1b0fd36d6bc5cb48,
        },
        r1a0: u288 {
            limb0: 0xaf3ce6e8f2578ad7e6219536,
            limb1: 0x88886a5cafcc653ecffffb51,
            limb2: 0x9cf6cd19ce0a746,
        },
        r1a1: u288 {
            limb0: 0x26826ef885afc275cbaa34fb,
            limb1: 0x9d3cb66ef8049e881efeac63,
            limb2: 0x2edd00a86f64ba8a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe6f566e59023e83208d9dc31,
            limb1: 0x65fb05880035372368886ce6,
            limb2: 0x2d5f36cf82e24cbd,
        },
        r0a1: u288 {
            limb0: 0x812ef4ea2c70b3813cc1ff00,
            limb1: 0x11e9b0891fe0bc16d344c5c9,
            limb2: 0x2519387ecd3ab839,
        },
        r1a0: u288 {
            limb0: 0xf6e345f9593a1f56cfc55c57,
            limb1: 0xd9ca519ca7b378f5b39ffa23,
            limb2: 0x1907e6dbad779dc7,
        },
        r1a1: u288 {
            limb0: 0x634907a4fe787e8b1dcc0847,
            limb1: 0xc5fc52d36fa5ca9c8a610237,
            limb2: 0x24b7b49ec0dafefc,
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
            limb0: 0x8f456c750536e9404d88b95d,
            limb1: 0x1a3185342dbae6d937733877,
            limb2: 0x24171f2801f24330,
        },
        r0a1: u288 {
            limb0: 0x530bf06e2d3a476370c6996f,
            limb1: 0x9e14de81aabe6f83eb8153d4,
            limb2: 0x2f0cd0bc2fd043c2,
        },
        r1a0: u288 {
            limb0: 0xc434f48cd0703572fdfa519,
            limb1: 0x3deac3eeada27cd022536ad3,
            limb2: 0x209e80a57c63acd1,
        },
        r1a1: u288 {
            limb0: 0xa6629822d9c74d9df81f2911,
            limb1: 0x189f5e0bf1c04f56ebc5fb1c,
            limb2: 0x198cad0081095cb4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3190728c864b188fdecc7a3d,
            limb1: 0x515a49a23dc367a734ded0dd,
            limb2: 0x29571b22c15a9183,
        },
        r0a1: u288 {
            limb0: 0x7f22a6e3d4415ce6e4f197aa,
            limb1: 0x4f5a9cc041e7586fd7dabbc,
            limb2: 0xa1f94de5e6cdb4a,
        },
        r1a0: u288 {
            limb0: 0x7f1e7d9e3e22355efc3df93d,
            limb1: 0x7469dc8398894243bad0d24f,
            limb2: 0xeca8ecf58efb2a8,
        },
        r1a1: u288 {
            limb0: 0x5aa5be22938fa5f3872e6b2b,
            limb1: 0x84ffadeafa8158290817602b,
            limb2: 0x528867dbcc12c25,
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
            limb0: 0x75847d277dc2e302701296af,
            limb1: 0xc177145ebdde450b39f9e30a,
            limb2: 0x27b39833ef91a7a9,
        },
        r0a1: u288 {
            limb0: 0x2c82d072e1d7a5a27001cf26,
            limb1: 0x4645d6427298c025d7c4674d,
            limb2: 0x2bee021f8054dc96,
        },
        r1a0: u288 {
            limb0: 0x18caba84abb1e33b993de71c,
            limb1: 0x4da41992f776b47d49dc5abc,
            limb2: 0x277790153cc88f3a,
        },
        r1a1: u288 {
            limb0: 0x2ae2c61df13926ec8fe5bb28,
            limb1: 0x8e8d0d750d818c55ff1e08fa,
            limb2: 0x25292ed542df995b,
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
            limb0: 0xe8d46715776702183827ec65,
            limb1: 0xd2d8f3524761d31c18edbd28,
            limb2: 0x258d7b4635684d56,
        },
        r0a1: u288 {
            limb0: 0x3ef0e548685b084ed211bd60,
            limb1: 0x2861e8b9fa6e68bdd730afc9,
            limb2: 0x14528c59f26cb993,
        },
        r1a0: u288 {
            limb0: 0x26a2adea9880d8a296832c54,
            limb1: 0x1530d07f14e11050f8c7d622,
            limb2: 0x2ca9195fa642a6b6,
        },
        r1a1: u288 {
            limb0: 0x31ce8e75af19baedb8700765,
            limb1: 0x1918c0b867d58444c0383ed,
            limb2: 0x2562955aa1c26d5f,
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
            limb0: 0xbb3e23b43bc8bf9497f10433,
            limb1: 0x3d3c40b3a2fdd6f583263dec,
            limb2: 0x2f5f44cb366f032a,
        },
        r0a1: u288 {
            limb0: 0x77627b658c6bf1608d9a139a,
            limb1: 0x2eb7aaa808eac52b09f74c94,
            limb2: 0x1682e2618c617904,
        },
        r1a0: u288 {
            limb0: 0x48b991a8e8d684d100666d56,
            limb1: 0xaa0b9524d2e7af76ec4fd0a8,
            limb2: 0x84dd31b696a0f13,
        },
        r1a1: u288 {
            limb0: 0x6019e7e07677a853fc18099c,
            limb1: 0xafae95da5a16a47e592f9a9f,
            limb2: 0x1648c59be4208908,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8ed074061b26dde495fd2f6a,
            limb1: 0xef9cdc36c2c8627502db96aa,
            limb2: 0x2524330261ac68ef,
        },
        r0a1: u288 {
            limb0: 0x917369f011fc1d7f4a5e2390,
            limb1: 0xd39710a7534c12ac30c7c61,
            limb2: 0x15b6635540968aee,
        },
        r1a0: u288 {
            limb0: 0x8a36471701b721c677efad3c,
            limb1: 0xba475700ce6f416151d04eb,
            limb2: 0x6ee9b3016e4cb59,
        },
        r1a1: u288 {
            limb0: 0x1a56ab7850f0a3de87c5ea8,
            limb1: 0x4af40de13bf263da1dfba06c,
            limb2: 0x11c30e6716814a29,
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
            limb0: 0x74189a17a5df260683812e0,
            limb1: 0x1f626707a3af7c4da598c248,
            limb2: 0x14eebd371ef70d8d,
        },
        r0a1: u288 {
            limb0: 0xed18e11b5d6b0b8e4c716664,
            limb1: 0xc8814a7024948c7192c7b994,
            limb2: 0x3039bc5175d774c3,
        },
        r1a0: u288 {
            limb0: 0xf759fd3ff2289c3ae19db6ac,
            limb1: 0x18c7aa639f21b49a5f61d863,
            limb2: 0x12e38f0930cd90d,
        },
        r1a1: u288 {
            limb0: 0xee2882473b27d150e34cb611,
            limb1: 0xaa2229916a067dbd7be4d8c7,
            limb2: 0x1beed68c7ddb683f,
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
            limb0: 0x69c9dc5f5dff5c4623fd48e0,
            limb1: 0xc8d5fc41313294c608548fdf,
            limb2: 0x2ea349b32e4347be,
        },
        r0a1: u288 {
            limb0: 0x6d3b163a0cbe5e1bc9e12c60,
            limb1: 0xdf111b650ac48d46f6ae7d5b,
            limb2: 0xb8f2ea1f1c51dc6,
        },
        r1a0: u288 {
            limb0: 0x301550857fd8ba7df94da6b8,
            limb1: 0xa98b06e1e194da46d243daec,
            limb2: 0x184b6ad9060cb80b,
        },
        r1a1: u288 {
            limb0: 0x3e656613681a305c377bce22,
            limb1: 0x32407b67a170993beeb113dc,
            limb2: 0x1f2d18559d75767f,
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
            limb0: 0xbdd21b1c7ab956de45c8428,
            limb1: 0xa7b9898740c503f58ed42d3d,
            limb2: 0xc9415dbd64e89ca,
        },
        r0a1: u288 {
            limb0: 0x17e79c93ca84601942471c9b,
            limb1: 0xd97f1690c0bed1835f81e5d4,
            limb2: 0x10ed93ac94a28672,
        },
        r1a0: u288 {
            limb0: 0x87a612ece6045481137b7364,
            limb1: 0x6811742bf151d853ce6fb3c9,
            limb2: 0x3e178bb4bc03146,
        },
        r1a1: u288 {
            limb0: 0xd4a4759953fbca232d1aa0f8,
            limb1: 0xfaa95d625801e5e606ca3d51,
            limb2: 0x8e45e0a6da6e8fc,
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
            limb0: 0x289b5abefcf71b656d8fa366,
            limb1: 0x688a15ca445b74b89ff1bec4,
            limb2: 0x1f9f46666182af84,
        },
        r0a1: u288 {
            limb0: 0xe398385899fdb1e4870b670d,
            limb1: 0x27565b95b3c8fb9c06743e4e,
            limb2: 0x298d33c305cd9a09,
        },
        r1a0: u288 {
            limb0: 0xf944d1b91634c3a49ba34e4b,
            limb1: 0x3a464d46bb8ff31e0d537392,
            limb2: 0x130d469661456e13,
        },
        r1a1: u288 {
            limb0: 0xd9195a098bcc4c50b2c61a22,
            limb1: 0xc5af3f79f15a0a90e1d1cd1f,
            limb2: 0x2be0fe336e8d81cb,
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
            limb0: 0xc79d32274770fda393d4e6ac,
            limb1: 0x61825b96a2e850011b4172f1,
            limb2: 0x24a45f8ba31aedba,
        },
        r0a1: u288 {
            limb0: 0xb681224077bb3a5f1e5ef3e3,
            limb1: 0x8dbea0689ee3dc1357d7b98d,
            limb2: 0x23754fd3436ea522,
        },
        r1a0: u288 {
            limb0: 0xab0bbe8c380661f746133adf,
            limb1: 0x5aee928e952a6b9a5d6e3573,
            limb2: 0x2e2f7afff5306f64,
        },
        r1a1: u288 {
            limb0: 0xff40a0ebe647ab157a2a108f,
            limb1: 0x4c9050577a761802dc74d876,
            limb2: 0xea8c55893703811,
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
            limb0: 0x3e60e000c3255d56094f3757,
            limb1: 0xe0eee1041a9d8c9726878af3,
            limb2: 0xf480403746f04c8,
        },
        r0a1: u288 {
            limb0: 0x20b045707536842537007745,
            limb1: 0x1ef335fe790073909678546b,
            limb2: 0x15c1093930048949,
        },
        r1a0: u288 {
            limb0: 0xe7b280b7c04c4f016f22292e,
            limb1: 0xbdad82114c640d91a42df169,
            limb2: 0x11a43f90871aaea7,
        },
        r1a1: u288 {
            limb0: 0x7af9dc786d9e6cc328db7a91,
            limb1: 0xc4dacd6e425683f98da16d5e,
            limb2: 0x22162911d272b2bf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9a86bb15fe9a131eba308441,
            limb1: 0xb9c9bf8543f55a75f730f045,
            limb2: 0xef7dac5896b2b82,
        },
        r0a1: u288 {
            limb0: 0xa7dbf6fec41dc3a0e1e65bb3,
            limb1: 0xeb33dc2e54e1c1a2a15a1095,
            limb2: 0x9532bb9e9f278e7,
        },
        r1a0: u288 {
            limb0: 0xffbcffc817bb44c0a8e0e004,
            limb1: 0xa58d0024c440c736bfc8414c,
            limb2: 0x1e6122b30b4dff9b,
        },
        r1a1: u288 {
            limb0: 0x4b58b8e54fe9a85ffd0a5d6d,
            limb1: 0xf87cc1b2cd5252b7daf39a01,
            limb2: 0x1e31bf33a17c7227,
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
            limb0: 0xb04bae959d79ecaa26683cb,
            limb1: 0xfaab6fc18058cbc31df725af,
            limb2: 0x16bb69768b033689,
        },
        r0a1: u288 {
            limb0: 0x2a788e742ba02ef278669308,
            limb1: 0xf84b702cb73ea06875503199,
            limb2: 0x260423dd22bf9add,
        },
        r1a0: u288 {
            limb0: 0x527a590de786855a62f18c41,
            limb1: 0xb72e3300b80d2ba167a02d87,
            limb2: 0x251859cc0e2d901b,
        },
        r1a1: u288 {
            limb0: 0xa41e560f1b238b0fdb00c8ce,
            limb1: 0xd2a943306eb85914a0a89782,
            limb2: 0x15fb623d70d4c3e1,
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
            limb0: 0x8e4f6ddd0664be776db30563,
            limb1: 0xf96a7d2e90778f931fc3c1e4,
            limb2: 0x19b90d4bb714a4b9,
        },
        r0a1: u288 {
            limb0: 0x59d856dca424278800cab514,
            limb1: 0x6baaa84b92d50ef595b0081d,
            limb2: 0x24ea875901ba0bdf,
        },
        r1a0: u288 {
            limb0: 0x381ad8103659e7b158c540e,
            limb1: 0x741f850b3c58efe24889e0ee,
            limb2: 0x20b9a47ffea94de4,
        },
        r1a1: u288 {
            limb0: 0xef90e0510f91743aed007f25,
            limb1: 0xe7239fb13bed58e4b6b7ed71,
            limb2: 0x1dc2e9869bd17620,
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
            limb0: 0xfdecdde8f338c5536faba90c,
            limb1: 0x51e0deb592634b57330ed250,
            limb2: 0xa7e6e084136b5a3,
        },
        r0a1: u288 {
            limb0: 0x1247713bd8e2cab8cd8ce1d5,
            limb1: 0xfca747d37014958005f065a8,
            limb2: 0x1722cfa1ede358c2,
        },
        r1a0: u288 {
            limb0: 0xdefe3ab3e505a774238c63cc,
            limb1: 0x45301b6e69410ea41486fde7,
            limb2: 0x2abaae1d46afba9,
        },
        r1a1: u288 {
            limb0: 0xb31fa76d4ffd6d506be02ec0,
            limb1: 0xf7f7a9c4ae6b2bc98a1fc888,
            limb2: 0x27b8e91e381e51c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb3df0898c3c210036bb3ee8d,
            limb1: 0x2445bc2cb5d5f1fca2acad76,
            limb2: 0x2807704bb98fc9a2,
        },
        r0a1: u288 {
            limb0: 0x2bd1c002f6097190a51e6e01,
            limb1: 0xb0fe2e6d854c87a456e9ffc7,
            limb2: 0x1f096ad3f2f0054a,
        },
        r1a0: u288 {
            limb0: 0x21a085730412e07fa9da13fc,
            limb1: 0x4ab19a5c3114ebea71e122b7,
            limb2: 0x40c1ef37affa30d,
        },
        r1a1: u288 {
            limb0: 0x60734955c50ab802a71c75b4,
            limb1: 0xfdaf24e7cb6cc8a91700d1d0,
            limb2: 0x1ca4521ebdad365e,
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
            limb0: 0x869eda0cc17dc51da6f3189d,
            limb1: 0x25a8949d0f4fc2a868764ce5,
            limb2: 0x23513a72ac72a64f,
        },
        r0a1: u288 {
            limb0: 0x7272b4daa589118ab56ecea2,
            limb1: 0xb5999030fb0604bcd0899c1,
            limb2: 0x1ce0e83dc69dd959,
        },
        r1a0: u288 {
            limb0: 0x3fd8d05f775b3a7b583c62a5,
            limb1: 0x4e661dc9540f2ce774b049e5,
            limb2: 0x21ff7b92d4323072,
        },
        r1a1: u288 {
            limb0: 0x23b702be6dc44970bc259dc5,
            limb1: 0x708cee2bd183302837bdaae6,
            limb2: 0x1b6b18fb8061a904,
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
            limb0: 0xf272e2db50f366700f8652ab,
            limb1: 0x86c4972279364c2a76e98320,
            limb2: 0x1126756c218b4c60,
        },
        r0a1: u288 {
            limb0: 0xca5de14e9ea6955f9cb7033c,
            limb1: 0xd6ee39d7a133b85945c42db4,
            limb2: 0x68245cc8874a10a,
        },
        r1a0: u288 {
            limb0: 0xbcd16bb94865998874e0e561,
            limb1: 0x761b752c968fc6c163c42922,
            limb2: 0x2e90db85a4152b81,
        },
        r1a1: u288 {
            limb0: 0x29ffbafbdc891eaee7f81361,
            limb1: 0x5dbbb82dcc8a08b5c7b1ba5f,
            limb2: 0x908d5c4d109b245,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2666e328bea6631833d1e65d,
            limb1: 0x5c35be8debaa3ac80fce80bf,
            limb2: 0x115d501b6af941d8,
        },
        r0a1: u288 {
            limb0: 0xdec4b55812e1871b2981a93f,
            limb1: 0x702e95ec33fb4cb083a135ae,
            limb2: 0x209429ad4053e4ff,
        },
        r1a0: u288 {
            limb0: 0xe186448824a036d4ebf68273,
            limb1: 0x66888d9c9ead7710958ec34b,
            limb2: 0xef7ff10a50f93c2,
        },
        r1a1: u288 {
            limb0: 0xb9b322eecde64e0d9462b501,
            limb1: 0x907c882de4b6eb2bbcf02ecb,
            limb2: 0x921603d6d5e1c2d,
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
            limb0: 0xfe132de278525a1c28375413,
            limb1: 0x4187994e95fc442b36c7e87d,
            limb2: 0xf45caf2900fd230,
        },
        r0a1: u288 {
            limb0: 0xa389f563c5fc3f0a9045ba77,
            limb1: 0xaac95f4c56e2f9ced02e9696,
            limb2: 0x5db12dc2a80d262,
        },
        r1a0: u288 {
            limb0: 0x30ab11274131b0e14e812f48,
            limb1: 0x538bdd9ca59c9f12eb0734bd,
            limb2: 0x2f190a78e67d7f5,
        },
        r1a1: u288 {
            limb0: 0xe95cfb66d85b19e09c281c87,
            limb1: 0x5acfc4aa7baefe13914e1264,
            limb2: 0x1f5c56e874604f5c,
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
            limb0: 0xdfdcc8d970ffb44bcdcd84f8,
            limb1: 0x460c461ff8f2744cc6f8e54d,
            limb2: 0x2c5f205475c4113b,
        },
        r0a1: u288 {
            limb0: 0x79b109810937fcc18fcdaa99,
            limb1: 0x5b87468072f0e4f476f545ff,
            limb2: 0x889cfeaf5656bc9,
        },
        r1a0: u288 {
            limb0: 0x3406f3331e3a882eb585325b,
            limb1: 0x88ebe6dfd88b0b6c6c2e0659,
            limb2: 0x29fb8bb4da9d3524,
        },
        r1a1: u288 {
            limb0: 0x412d8ee4ae0fd7e9611ce728,
            limb1: 0xfe5468d586af8aef16a26af4,
            limb2: 0x211bddc4e27bad14,
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
            limb0: 0x24a21d5ee345a6d8f541242,
            limb1: 0x8446bdaaccae86f839b3019,
            limb2: 0x2f8a57eeea0b9e4f,
        },
        r0a1: u288 {
            limb0: 0x49b5e0c2dfeab41aa8a11e11,
            limb1: 0xa2362479ecf18a63070e0632,
            limb2: 0x13e1f1736b40fa1a,
        },
        r1a0: u288 {
            limb0: 0x67199866c4f13205bd097516,
            limb1: 0x29d8a0bda7cd975095d93aa3,
            limb2: 0xc1c98a2093218e8,
        },
        r1a1: u288 {
            limb0: 0x25021d5ef8b2332066ee2a7e,
            limb1: 0x3699536cd0588813f5c607ef,
            limb2: 0x2be0a9472eb19c67,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x658e3f7c3ddefafb4d11c8e1,
            limb1: 0xcf73988652046e460f69b7b2,
            limb2: 0x14a018c8d6bf2bbc,
        },
        r0a1: u288 {
            limb0: 0x62d7ceb2c6b7eb6f1d95dbc3,
            limb1: 0xfbbb6b763b9ce6aa8b02f6af,
            limb2: 0x2d5a3915ff059f83,
        },
        r1a0: u288 {
            limb0: 0xb453f5eb31fc0cfea21b01bc,
            limb1: 0x580c793484ceeb5ddc2195cd,
            limb2: 0x5d722b8374917c1,
        },
        r1a1: u288 {
            limb0: 0x7fdf981d77424fece24b6fa7,
            limb1: 0x1ce3092dc69e1207af54f0ed,
            limb2: 0x7390d6ea782d2e7,
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
            limb0: 0x999b190cdf7d2b2d516ee75,
            limb1: 0xf6fdf1571d019967208322fc,
            limb2: 0x105e3310c8f14b5,
        },
        r0a1: u288 {
            limb0: 0xab52d63f1de50e3b59a0ef68,
            limb1: 0xdf12a3a2174730c58cdba57c,
            limb2: 0x1f586b9e07172b6b,
        },
        r1a0: u288 {
            limb0: 0x11645bf3306bdc908b88773d,
            limb1: 0x540c97ded2196db0d5e03dca,
            limb2: 0x1f40f6ae1e8506e1,
        },
        r1a1: u288 {
            limb0: 0x3291d22e397bdf4532adbe49,
            limb1: 0xa2e79360e493f868448e7775,
            limb2: 0x30642f8fd1192ce6,
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
            limb0: 0x83910b6b37cfa24deed8ce7,
            limb1: 0xa1771e431409c6bb77b2226,
            limb2: 0x688e2c43c813b2a,
        },
        r0a1: u288 {
            limb0: 0xff0913b49bf5d83d78719e26,
            limb1: 0x921a3e5e269a6738603d615f,
            limb2: 0x27cc2f1f61875408,
        },
        r1a0: u288 {
            limb0: 0xc11c84b7e80c1573eae4d9ed,
            limb1: 0xb57c2d4383bbee6f5a7017bf,
            limb2: 0x118cb5f36137ade7,
        },
        r1a1: u288 {
            limb0: 0x3469e047ce9ff4cafb32d48f,
            limb1: 0xcbe0731a9d9dd4afce0c736c,
            limb2: 0x6601b951bf51bc3,
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
            limb0: 0x382a3cce3322d480666a24f3,
            limb1: 0x472bf9709928d585ce65aeac,
            limb2: 0x2960b97009a37ed1,
        },
        r0a1: u288 {
            limb0: 0x4148f65d03e4d224a5849cbc,
            limb1: 0x765eb97be1ede361ce124b60,
            limb2: 0x2f71309c19be057a,
        },
        r1a0: u288 {
            limb0: 0xd661fd67edebc8889f61068e,
            limb1: 0x4205e793e625dc765ee07b34,
            limb2: 0x40a32fff0e0e2ef,
        },
        r1a1: u288 {
            limb0: 0x1cd081639b8ba6d5db38e767,
            limb1: 0xb9fc887d49563688cfc36dc2,
            limb2: 0x285aeeda288d8987,
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
            limb0: 0x8be3debdfd684c4d47f69461,
            limb1: 0x5c0978eb3a237cf1eebd25db,
            limb2: 0x851b745ec7fb167,
        },
        r0a1: u288 {
            limb0: 0x3c2f0c9cfe9366980d303ab3,
            limb1: 0x7a57a21dc8214361813513e6,
            limb2: 0x146dfe5a43597ed,
        },
        r1a0: u288 {
            limb0: 0xae59bf73a18fb1228a700807,
            limb1: 0x37722966efb5c7f64b85d28e,
            limb2: 0x139ee7be17b52bfd,
        },
        r1a1: u288 {
            limb0: 0x5bf247bbf6a7dba0d0b237f,
            limb1: 0x2343155cae5d14493b2c7949,
            limb2: 0xe1562bfdfc234bd,
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
            limb0: 0x7f0d23854084bac397715fd4,
            limb1: 0x66cff4ef4fa115dd365d17e2,
            limb2: 0x15016ff60bc6daba,
        },
        r0a1: u288 {
            limb0: 0x9737f6d9b840e95176582021,
            limb1: 0x190fdd857fbb923a0e510eac,
            limb2: 0x1a02009fe74c204d,
        },
        r1a0: u288 {
            limb0: 0x93d2680bff0d35a96d4b0c76,
            limb1: 0x37a0d94caacda514ce7a742e,
            limb2: 0x1d5dad1f7303b175,
        },
        r1a1: u288 {
            limb0: 0x687edac55f9e2d6a23c41a06,
            limb1: 0xf671b7ee41d8993e394df6c7,
            limb2: 0xfee54a02073c4d7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaab4ac8f430690ea5b1a56c,
            limb1: 0x7d2f8250e8e2ae86a00ebff9,
            limb2: 0x1472faa4f989733b,
        },
        r0a1: u288 {
            limb0: 0x242033b3f68baccf6f75c8ea,
            limb1: 0x73dcc7b9f0c6fec8b748acae,
            limb2: 0x2cdb52f0b04c27e4,
        },
        r1a0: u288 {
            limb0: 0x5fc111ad90092802ecb9998f,
            limb1: 0x8d56242cad79ba4afbed26e3,
            limb2: 0x1ec041a502f1b4b8,
        },
        r1a1: u288 {
            limb0: 0x11c3c1f6370ff0a1e77e503e,
            limb1: 0x3793725f4cb748ead361facb,
            limb2: 0x3a96354e8637ea3,
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
            limb0: 0xfe9969d399ca7b95e50248f7,
            limb1: 0xc7faed9ebf03379cf0d31425,
            limb2: 0x378626cf9254e0,
        },
        r0a1: u288 {
            limb0: 0x9edc4da4b24afe747682c4f7,
            limb1: 0x4b5742ecb438a73b8b08c8,
            limb2: 0x7597989ae1fe770,
        },
        r1a0: u288 {
            limb0: 0x84f91c43e24745748139a5d6,
            limb1: 0xf27d02da85d9815217419a7b,
            limb2: 0x27c42c0c7151b7b0,
        },
        r1a1: u288 {
            limb0: 0x9c6c3f52887327883f2007e2,
            limb1: 0xe9eeb86c3e3fcd33f5536652,
            limb2: 0xb8dfa1d0163278f,
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
            limb0: 0xc7142bcaed05084bc12315f8,
            limb1: 0x71450075f9e45bc05c1c342e,
            limb2: 0x2a2d081399d5e912,
        },
        r0a1: u288 {
            limb0: 0x7ff69f4d3c01fa6fa2b5be48,
            limb1: 0x1fcdd467325e47a653e10800,
            limb2: 0x1e60b532b52474b1,
        },
        r1a0: u288 {
            limb0: 0xe6aeee9f0378b49a58c7e497,
            limb1: 0xb3af53a38e7d88bbc0346757,
            limb2: 0xadbc4589326f0a6,
        },
        r1a1: u288 {
            limb0: 0xa72877868b35a93432ce40a4,
            limb1: 0xf7e020e9a411a98c21fb6127,
            limb2: 0xb073962dcaf5374,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7f5ad2d4700e964031b241aa,
            limb1: 0xe26308d6e7e52a381ce77b39,
            limb2: 0x21448b76d2d4ae3,
        },
        r0a1: u288 {
            limb0: 0xe5d83a7e9c298082701524ef,
            limb1: 0x49320b5f18bc45181d36d250,
            limb2: 0xaf9139a0fa129b2,
        },
        r1a0: u288 {
            limb0: 0xaf993fec32106acfdda56654,
            limb1: 0x3779518baf4170de51bba572,
            limb2: 0x2844e5e2af049522,
        },
        r1a1: u288 {
            limb0: 0xe5bd667b8141f812b5cad745,
            limb1: 0xd7907c8abbfce3423ee8159f,
            limb2: 0xec774149a006a92,
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
            limb0: 0x303c58cf625a0612c132747d,
            limb1: 0xefae296fb8c84ae52242b796,
            limb2: 0x19b04bfd8c403f2c,
        },
        r0a1: u288 {
            limb0: 0xff414fef47380eeb67ada388,
            limb1: 0x529ee68e163363b8e542a2eb,
            limb2: 0x24525b98a15f76e0,
        },
        r1a0: u288 {
            limb0: 0x7b5ed5fced92f6c852834bdc,
            limb1: 0xe52c82bcdb5a5252bf266631,
            limb2: 0x20eb3408224adcd4,
        },
        r1a1: u288 {
            limb0: 0xa2763ec8c9f55f1c5cb54307,
            limb1: 0x60d3210521b25d955385ee53,
            limb2: 0x2233983fb8b8fce6,
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
            limb0: 0x83cc8b74aba12ca5d0099eda,
            limb1: 0xae8baae42b841e6a691c599,
            limb2: 0x1ecbb457fbf94f56,
        },
        r0a1: u288 {
            limb0: 0x3adb0a18ac407c8d390f4ba1,
            limb1: 0x5a5f303d2f8f73a44ad15f8c,
            limb2: 0x7fde48c4cc73433,
        },
        r1a0: u288 {
            limb0: 0xedd6778645f072e300a5688b,
            limb1: 0x74c38efb23371a1ab2eb64ab,
            limb2: 0x1c88415bf27336dc,
        },
        r1a1: u288 {
            limb0: 0xe658f5513d4764068f0efa24,
            limb1: 0xc1b5ce1a49f4d4962f8728ce,
            limb2: 0x12b4ec37a9e7dcab,
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
            limb0: 0xe80751984a1a5851c598c340,
            limb1: 0x813aa1fe72e021058a43be79,
            limb2: 0x19fa36878216b8a4,
        },
        r0a1: u288 {
            limb0: 0x8e472a1c08734ca8d4ba6c0f,
            limb1: 0x718331137d4fbc953ff3f22f,
            limb2: 0x33fa6d4e23a23d4,
        },
        r1a0: u288 {
            limb0: 0x4048e304fa0baecbd4d3f1d5,
            limb1: 0x1bc20251c4652112d88aea1e,
            limb2: 0x13a727b9511ca518,
        },
        r1a1: u288 {
            limb0: 0x11a8b9f3553f406023a4a1e8,
            limb1: 0xec7a8f83c58c9b57f4b5f722,
            limb2: 0x22f42ee9764cade8,
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
            limb0: 0x4a1a31a32acc5f99b2674759,
            limb1: 0x56b854cec88a4b015afb810d,
            limb2: 0x129aa1eb4e2aeaa1,
        },
        r0a1: u288 {
            limb0: 0xcb00758f87a774ba54a2c0cb,
            limb1: 0xd35d1ff9cd546b10ee06c13,
            limb2: 0x75f8208d59d22c9,
        },
        r1a0: u288 {
            limb0: 0x6234d4bcbb38e57640b7c820,
            limb1: 0x1d2e63fdd97cdd092f0496a4,
            limb2: 0x1ebcaa4c0d105615,
        },
        r1a1: u288 {
            limb0: 0xd5a1957c3d6472d4d1709be,
            limb1: 0x89198533ae351b17b5740220,
            limb2: 0x17d00394e3748814,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x67bf3d27d3eb6f49555eee78,
            limb1: 0x478069ddc80b0a7db377f5b2,
            limb2: 0x29fad72d362957fe,
        },
        r0a1: u288 {
            limb0: 0xd091d376ba3562f80efc39,
            limb1: 0xd53a3dfb600cea9d997d996a,
            limb2: 0x13b602ad105734c,
        },
        r1a0: u288 {
            limb0: 0x8aa282c3bbc7ffc57bcaba9a,
            limb1: 0xac6986d7a7c8b835c3cd1394,
            limb2: 0x198fa1e5be444a63,
        },
        r1a1: u288 {
            limb0: 0x429a9f98a0e60d7e02b5f43e,
            limb1: 0x2e83d8153f40a64f5a0aacc4,
            limb2: 0xc7e758672e72046,
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
            limb0: 0x3ce6385f6e49b6d4bc45069e,
            limb1: 0x54fa622aea1c51d7623bc51b,
            limb2: 0x1da66b6662172e30,
        },
        r0a1: u288 {
            limb0: 0x896bb8374157e0dcd1fbb426,
            limb1: 0x43994ef4ebe7d5e15830d940,
            limb2: 0x19f76ebe0434cc24,
        },
        r1a0: u288 {
            limb0: 0x739fbbd9e1f7310fe7dd5efd,
            limb1: 0x95df519be55e743f205fac41,
            limb2: 0x1d31d919cb133686,
        },
        r1a1: u288 {
            limb0: 0xd92ba81e25b371516171a99f,
            limb1: 0x2735c654534d5ef4bd763c4e,
            limb2: 0xc475ca7c1969251,
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
            limb0: 0x4f8c2de97e74e0ff19498657,
            limb1: 0xb36f16c8a9b0e69e99cab507,
            limb2: 0x8c379805e58f1d9,
        },
        r0a1: u288 {
            limb0: 0xa46de61301ce26204de7b9e7,
            limb1: 0x66e41e62410471b5ebf03ff,
            limb2: 0x23b3f9ce0d9bcd3a,
        },
        r1a0: u288 {
            limb0: 0x60ac8c8303c63fa4de0d4776,
            limb1: 0x9b8c1ecee905f9c4bcd23976,
            limb2: 0x1e1276b73332a8ef,
        },
        r1a1: u288 {
            limb0: 0xc3b89b38af5d91a446ed358e,
            limb1: 0xa450cb4d61810e8ba6139215,
            limb2: 0x2a256ba5c1609def,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x641cc4c0b232829380dad5ef,
            limb1: 0x12caf446b3d29e24b3c93e58,
            limb2: 0x1e3c75cd3a274d58,
        },
        r0a1: u288 {
            limb0: 0x84ac684e8ee236d6d595ba48,
            limb1: 0x509d6b5027a715f61168a5cb,
            limb2: 0x68d6da363fe5882,
        },
        r1a0: u288 {
            limb0: 0xc98d5711cde106427cec084a,
            limb1: 0x212c45f220fb643a3322878b,
            limb2: 0x29548c6d2093d073,
        },
        r1a1: u288 {
            limb0: 0x2ecb1548113616f6b1cbf968,
            limb1: 0xfc14c606f3db64102cc083b2,
            limb2: 0x19d55664f9a0bc8b,
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
            limb0: 0xa6761b1e7a22d22f5bd7c9be,
            limb1: 0x443b35611aa6081ed2ff42ef,
            limb2: 0x184d30162b7f89ca,
        },
        r0a1: u288 {
            limb0: 0x507022251ed8be9b36415a1f,
            limb1: 0x83e37b619092efd735e0c0e3,
            limb2: 0x1cc9f0a49bb92494,
        },
        r1a0: u288 {
            limb0: 0x97179902c800d4ebca42b2bf,
            limb1: 0x3b37c9c4dbb97ee72364e7dd,
            limb2: 0x1b905a82e4a50c12,
        },
        r1a1: u288 {
            limb0: 0xeaea6e53dd0f52c4a5069b34,
            limb1: 0xb5be7b42964fb243695eb9d0,
            limb2: 0x8e14af083261304,
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
            limb0: 0x7d0ce4ef9468ab46c5477ce4,
            limb1: 0x93c75917d9a39bb01bb4b83d,
            limb2: 0x1a6766f79f4afde3,
        },
        r0a1: u288 {
            limb0: 0x92482df469a61a3060acec64,
            limb1: 0x6bddaaa74a2781fdb55eb5ba,
            limb2: 0x1a504101d105bcbe,
        },
        r1a0: u288 {
            limb0: 0x9cba50fd5813c0be294c9ca1,
            limb1: 0x7a14d5249c7cf04cfa887a5,
            limb2: 0x29fcdfc640156576,
        },
        r1a1: u288 {
            limb0: 0xb0cffa06b4be14f38ec9cac3,
            limb1: 0xd61e1d4a684c31e1003fe396,
            limb2: 0x1d89b06bfefba4,
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
            limb0: 0xc0fa8069b3c2ab6432014360,
            limb1: 0xe25bbeb29b6da01341933352,
            limb2: 0x16513f5066a9489c,
        },
        r0a1: u288 {
            limb0: 0x6b09e9bfdda48ab947588475,
            limb1: 0xd3d6b79329a797e22af0de81,
            limb2: 0x1b5b8205f7e1daf2,
        },
        r1a0: u288 {
            limb0: 0x8411e3f5dc74cd956607ff04,
            limb1: 0x8223cc2183656a623c58d848,
            limb2: 0x11818811c727cca2,
        },
        r1a1: u288 {
            limb0: 0xaeb28e3fb2b33f054d55e019,
            limb1: 0x1603d887faf46bfa9dc5084,
            limb2: 0x5a3bfd749cfe3c2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd518f77125250cf4180d1c0d,
            limb1: 0x798806a4fb711c1bbefbab4a,
            limb2: 0x6f58fc91a5eacf8,
        },
        r0a1: u288 {
            limb0: 0xc7444538c0aa729da579bc36,
            limb1: 0x42b0fb90395eb31871c5a824,
            limb2: 0x233b2bd3928fb235,
        },
        r1a0: u288 {
            limb0: 0x2e8aa9a9e8acd2fb6cbcab30,
            limb1: 0x2496bbbb8a8ecde7280abf89,
            limb2: 0x1b574879d58346ee,
        },
        r1a1: u288 {
            limb0: 0x9851f7c044af55a2d666b189,
            limb1: 0x7a27b2cf9a90c276d5f05c54,
            limb2: 0x2b60ee9e03d88e53,
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
            limb0: 0x389900fccd88d543c8877025,
            limb1: 0xfeff022d9eb22c020021d287,
            limb2: 0x60cc9482212731d,
        },
        r0a1: u288 {
            limb0: 0xf4756d0614726ea50f94e4ac,
            limb1: 0x2e030b64746d72c93869be60,
            limb2: 0x2faae09d5fb01ccf,
        },
        r1a0: u288 {
            limb0: 0x3c29defae50c248ca577a8,
            limb1: 0x2d56d7983ba126bfc390640a,
            limb2: 0x149f9f77160bc27a,
        },
        r1a1: u288 {
            limb0: 0x96d34b64605b12276190dbe3,
            limb1: 0xa8a05df9abda500a84d12902,
            limb2: 0xeea93fb07b8272d,
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
            limb0: 0x7fada42b52c31230faa28065,
            limb1: 0x2b89102effd36e1aed690b35,
            limb2: 0x16b20332c7f10b1d,
        },
        r0a1: u288 {
            limb0: 0xfd818d621079e9e87a6c98b7,
            limb1: 0x6520da49b23049fbe13c9ea3,
            limb2: 0x218fe78f8e2e6708,
        },
        r1a0: u288 {
            limb0: 0xaaf6a9a5f71582fdc763d7aa,
            limb1: 0xe7e79fd84dd28505bddf7d6e,
            limb2: 0x270e2015a6592c20,
        },
        r1a1: u288 {
            limb0: 0x60a441239fc63fa77f7303ac,
            limb1: 0x5f73be874cc30b8d35d6d9be,
            limb2: 0x1eeb03a28553d8f5,
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
            limb0: 0x687154b6872d221065a0d28e,
            limb1: 0x448cd4b6f10d8c46b109c145,
            limb2: 0xfbe23af581d77b4,
        },
        r0a1: u288 {
            limb0: 0x94fa5f5ae2aa282ff161a24c,
            limb1: 0xb794fccefe634fc013ce9038,
            limb2: 0x1beb2c1f9ca689d0,
        },
        r1a0: u288 {
            limb0: 0x286e0a96bd075f77200a064e,
            limb1: 0x94c61dba44634b52d44daac3,
            limb2: 0x1d7f99974d35216a,
        },
        r1a1: u288 {
            limb0: 0x783aea351dfa7140b687b0e4,
            limb1: 0x1d0f36c510ddecb93e7bd454,
            limb2: 0x28004f42d0b88117,
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
            limb0: 0x9b3d485cdbc58af89a9bfff5,
            limb1: 0xbda4299a7b2c37bbedc11643,
            limb2: 0x2a6d50d9f6e7c7a1,
        },
        r0a1: u288 {
            limb0: 0x1447f6d208cf35a285667da7,
            limb1: 0xa4f6169195bcff8f92b334d1,
            limb2: 0x92eb19bd101ac5d,
        },
        r1a0: u288 {
            limb0: 0xcb5d88e34d5b9efd6074b5dc,
            limb1: 0xbb9988c01095724e2da9f980,
            limb2: 0x1e27e309ab15d34e,
        },
        r1a1: u288 {
            limb0: 0xdb0a6cb12dee3c902858aa56,
            limb1: 0x807a868cfbadd8c50c4b6555,
            limb2: 0x491d7f6ccd55eaf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90091492413faf158472c38f,
            limb1: 0x8b66c13a901d123afedbb8ec,
            limb2: 0x1b9e458d194b0ecf,
        },
        r0a1: u288 {
            limb0: 0xd0682a56490f4c55f2355a5f,
            limb1: 0x9f41f54506a7833667f6de5c,
            limb2: 0x1947db23eeba1f41,
        },
        r1a0: u288 {
            limb0: 0xdc435c03163e7f5c39514075,
            limb1: 0x62f0b749244a1614926cb6e7,
            limb2: 0x2438a2b0760cd01e,
        },
        r1a1: u288 {
            limb0: 0xebc98aa97da929d3a85ed130,
            limb1: 0x3c7384411d3f962d3609339e,
            limb2: 0x2b56bbf6e3bb3b65,
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
            limb0: 0xb59db85983632d0c87cbf025,
            limb1: 0x70ef22663ff3d10367e1e5e3,
            limb2: 0x3e28dcff6a617db,
        },
        r0a1: u288 {
            limb0: 0x81b3f2d2a54343ec6424bad8,
            limb1: 0xbb5ff6e0aa4ad23fd4b1b073,
            limb2: 0x2cefadb1176d5c75,
        },
        r1a0: u288 {
            limb0: 0xa16ae081b778f44bf22126a8,
            limb1: 0xce23b6a49839882b0800b710,
            limb2: 0x152b1278d62d619e,
        },
        r1a1: u288 {
            limb0: 0x4dd24af21bc6bcd0c823ca15,
            limb1: 0x2d55dd4f7d4f2fed01549915,
            limb2: 0x2172f16f4c357a4e,
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
            limb0: 0x2ded60ccf88c1d43be4482b9,
            limb1: 0x1857dfe4bfe748d133218997,
            limb2: 0x132f67a54cff4d12,
        },
        r0a1: u288 {
            limb0: 0x67a1b37f21c3b4bd37edc7b1,
            limb1: 0xaddcc12e87f7ebb2f62b2bcd,
            limb2: 0x2e62b1a5704df58,
        },
        r1a0: u288 {
            limb0: 0x861ef415a31041f702548c6d,
            limb1: 0x465e02870f9feb46ba20409c,
            limb2: 0xf4110a411143678,
        },
        r1a1: u288 {
            limb0: 0x221778100bed05b025119a26,
            limb1: 0xcf7b1db81c105af6e8532ebc,
            limb2: 0x1a43eeac87a81563,
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
            limb0: 0x8996229215ff29473c641120,
            limb1: 0x7c94cc4bf621ab268201d22a,
            limb2: 0x277d90591914d73e,
        },
        r0a1: u288 {
            limb0: 0x57468ddf65c877e076eb900d,
            limb1: 0x8f8c1aa29a953c4422c47185,
            limb2: 0xfd9adc561e71be0,
        },
        r1a0: u288 {
            limb0: 0x979d84c4236869285ad6c7a1,
            limb1: 0x2ab43b9dffef2aa1c1c6a1a6,
            limb2: 0x2c4fb92a8027b00c,
        },
        r1a1: u288 {
            limb0: 0x613f2e5f4b2edad79010a68,
            limb1: 0xe0808571309c81df0442dddf,
            limb2: 0x2f048ab3f3e15d70,
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
            limb0: 0x550be71a9d877ca4ce83232d,
            limb1: 0x563135c9f196cd26a4660d85,
            limb2: 0x276b3580dd68a0b5,
        },
        r0a1: u288 {
            limb0: 0x8ab1a145fef7ae4f32e3da2,
            limb1: 0x1132e380a7474904b7f3620b,
            limb2: 0x2854f0d256ee6d80,
        },
        r1a0: u288 {
            limb0: 0xb2b6f25bebfc25c4a0c04f63,
            limb1: 0x417cea7fbf46238a154e7562,
            limb2: 0x2bf2cd0866fb5569,
        },
        r1a1: u288 {
            limb0: 0xcff9c03826349e8bde4f8cb,
            limb1: 0x527b01b64190ac2eded129f3,
            limb2: 0x1ba89c4db8270fd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6c7d55cbeb0533cdefcef6e0,
            limb1: 0xc386937a358d062f69ae18ac,
            limb2: 0x23ef8f8bac3dbc01,
        },
        r0a1: u288 {
            limb0: 0xb3475f45f6b5e980272502f2,
            limb1: 0x6a041a28991be4d538df17f7,
            limb2: 0x2ef01c4418dc9071,
        },
        r1a0: u288 {
            limb0: 0xbddfc8774b74e7905dc78af5,
            limb1: 0xbca0bd50ff577edd691dc0e3,
            limb2: 0x25e9366dc33aec2e,
        },
        r1a1: u288 {
            limb0: 0xca4e69fe901cf5d5c28f4443,
            limb1: 0xea07a574988bfae85b03fab5,
            limb2: 0x1bccae92db7bd8d3,
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
            limb0: 0x9098e9afd4c5ed9a0ecf8792,
            limb1: 0x62d0de789db05dea2eb087f2,
            limb2: 0x294d147b240ab98c,
        },
        r0a1: u288 {
            limb0: 0xc269d294c9ef8743c7ccceb8,
            limb1: 0x5cabb9735135008e12dd7966,
            limb2: 0x8c354440d75bdae,
        },
        r1a0: u288 {
            limb0: 0x79748f98e00842a08711021b,
            limb1: 0xa455703121192095bf0941d2,
            limb2: 0x2fcef4daf974e89d,
        },
        r1a1: u288 {
            limb0: 0xa47bf4241da597484bb833d9,
            limb1: 0xd25a17d9aa68b621ccbcd18f,
            limb2: 0x2fccb7573dd22fc6,
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
            limb0: 0x14c784ccdda25bf3c9bc0d11,
            limb1: 0x7f6f49fae7b011c657a7fe9e,
            limb2: 0x14a6af12d0562b1d,
        },
        r0a1: u288 {
            limb0: 0xb4eff47836c42c644b19c61,
            limb1: 0x69c8a96d7ef938ba50729464,
            limb2: 0x12ea68f16fdf782,
        },
        r1a0: u288 {
            limb0: 0x5b247988289260a44c67f59d,
            limb1: 0x580cd594b91408d5d5c33fd0,
            limb2: 0x12796a49b943808c,
        },
        r1a1: u288 {
            limb0: 0x458257efe92a3aabba5db5cc,
            limb1: 0x495e9efe3f220836d9613e16,
            limb2: 0x2e0881d101889d91,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd2d7043ceb9aa2c2edcdba8b,
            limb1: 0xd4e4e2527206e0fd796353c5,
            limb2: 0x7aa4bac3ec4eac0,
        },
        r0a1: u288 {
            limb0: 0x9a80afbd80612b10e0e72d42,
            limb1: 0x8259c52956b0461604a3b60d,
            limb2: 0xf1e59b93b1cfa7,
        },
        r1a0: u288 {
            limb0: 0x52e3360c4c9ce25c8619773d,
            limb1: 0x446d1c78b1888f7d97a31fe2,
            limb2: 0x2f057265bbb78aa6,
        },
        r1a1: u288 {
            limb0: 0xccf2ea74c419e235aace317d,
            limb1: 0x5d93e45e0e231981bfb6365f,
            limb2: 0x2f766b1ef71978e5,
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
            limb0: 0x6b9334433498bee509c746ae,
            limb1: 0x68c5cc98a86c4b29f91973c3,
            limb2: 0x17121a15d40a577c,
        },
        r0a1: u288 {
            limb0: 0x763c0b6ca64047e26dcb4801,
            limb1: 0xf2f8fe2de67c9db55a9bfc31,
            limb2: 0x27005fa6cce706ea,
        },
        r1a0: u288 {
            limb0: 0xec8a77b5b1c3b4e82a8f10d1,
            limb1: 0x83c309f3f053a46e82d74027,
            limb2: 0x2841dab940b2d345,
        },
        r1a1: u288 {
            limb0: 0x45f077bf9b6db0367ab323c0,
            limb1: 0x57e5a0ef930deedfe9e832c6,
            limb2: 0x1695e0322e7aaf73,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4a59875ea23bfb610abfcbd7,
            limb1: 0x782250ae0cbd3d208d425cb8,
            limb2: 0x82179bb2cb47209,
        },
        r0a1: u288 {
            limb0: 0x3bbc7e2761fe029f3a67300d,
            limb1: 0x7398be63575e6e420f339d9d,
            limb2: 0x239d59755d92641d,
        },
        r1a0: u288 {
            limb0: 0x92ed15db63235920e3444dad,
            limb1: 0x62d9db1aa99d415246df5db4,
            limb2: 0xc1aef7d61ea8f7c,
        },
        r1a1: u288 {
            limb0: 0xf156715fed44058ac9815e46,
            limb1: 0x5ba76fd1fdb522ded3760fbf,
            limb2: 0x2b2033cb74cc5b1b,
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
            limb0: 0xfe22532cde3531f04255822d,
            limb1: 0x597232be805d309748fbc407,
            limb2: 0x24ca14c8f200223c,
        },
        r0a1: u288 {
            limb0: 0x22bec4a31f2566635f9310d4,
            limb1: 0xce1980ec188b5d8f9a0375b7,
            limb2: 0xe8c02ed4457a914,
        },
        r1a0: u288 {
            limb0: 0x11421aea7e3989a405fe76fd,
            limb1: 0xc3380e3404a3ff89c75fc763,
            limb2: 0x1689b4f5a31036da,
        },
        r1a1: u288 {
            limb0: 0x5d131c0aca29223b6abe2545,
            limb1: 0x8018a4c5cbfada4678615536,
            limb2: 0x270da5ea0b94fd48,
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
            limb0: 0xebe1770b26933d89c49176d7,
            limb1: 0xfc9933e767a532a9828b7957,
            limb2: 0x661264e679d5a3e,
        },
        r0a1: u288 {
            limb0: 0xf15983d4cb24052b1924d0e4,
            limb1: 0x429ac0dd94a45b49c04571ed,
            limb2: 0x1c7b158aa0fdc671,
        },
        r1a0: u288 {
            limb0: 0xf6ecc9c619160a450ba8057,
            limb1: 0xe7b7af52d60c90f1282a9026,
            limb2: 0x2fa67508377d498,
        },
        r1a1: u288 {
            limb0: 0x56416ab8a197423d5940439e,
            limb1: 0xce0d84550b0e3ec2fe921cc3,
            limb2: 0x28a26a802490211f,
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
            limb0: 0x8e3ccdaa17e1f6f6e9e443c8,
            limb1: 0xe9578c2dc54ab95df99c745c,
            limb2: 0xd6d3ceaf62709d7,
        },
        r0a1: u288 {
            limb0: 0xf2a0365195b616282001f85d,
            limb1: 0x3d6322322ee74aabb8b5fc15,
            limb2: 0x295b3c039782140e,
        },
        r1a0: u288 {
            limb0: 0x62b7dd94f34fde87eaa408fc,
            limb1: 0xf634ac02377509015c289443,
            limb2: 0x105a26a7006f525a,
        },
        r1a1: u288 {
            limb0: 0x5afeff00639017ea0b4cc5b3,
            limb1: 0x306c9dde522639837db833a2,
            limb2: 0x281e08b91a598ef8,
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
            limb0: 0xce4e25da0f3d886a1e728009,
            limb1: 0x27fb32ef9f773ed854b5dce5,
            limb2: 0x170d1f8205a02684,
        },
        r0a1: u288 {
            limb0: 0x6624eb27f2346459842b568b,
            limb1: 0x52b0f3bb87bfa2670cd2c6f7,
            limb2: 0x19dc150d619aa06f,
        },
        r1a0: u288 {
            limb0: 0xc52a08b07dbabccee265d2fb,
            limb1: 0x24c9d52aa57bfdb5d98e75fd,
            limb2: 0x11fbe2db9a36889a,
        },
        r1a1: u288 {
            limb0: 0xda7385316b7e8c38176aaaa3,
            limb1: 0x3bf5324d9279478e1d1446d9,
            limb2: 0x23c72ada220a9d7e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcd6a961b4cc224898a1f373,
            limb1: 0xc22c4db41bd4c7aa05655e71,
            limb2: 0x22b5334d55e391ff,
        },
        r0a1: u288 {
            limb0: 0xe3a1ec4622c07726d9c817c5,
            limb1: 0xcfb623f8b669433852c13cb9,
            limb2: 0x1cc41d6ca0294f9f,
        },
        r1a0: u288 {
            limb0: 0xa4fe220ce378610afcbf89e5,
            limb1: 0x44e9a67f3ea9de3679b016ea,
            limb2: 0x11b75bdea6e53b2f,
        },
        r1a1: u288 {
            limb0: 0x94d0db0f2501808867f22fad,
            limb1: 0x8f68e8be7f4ba69081b2a77e,
            limb2: 0x3498a2f66ed4d1f,
        },
    },
];

