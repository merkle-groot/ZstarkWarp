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
            limb0: 0x26bac10006ccb95cef41aeb6,
            limb1: 0xa1935644d909b9ddb5fd748e,
            limb2: 0x35b2538b6a254ac,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x4ddf45260848e4891efade43,
            limb1: 0xb6d836293f90c1d765f06f9e,
            limb2: 0x199c2cc3a7c024e5,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x98c25d607de0696bd6d6ee25,
            limb1: 0x986bc1a412e976c83809a9cf,
            limb2: 0x31832ef62d1bb5c,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x735ca54d7b9e9e9752fff077,
            limb1: 0x84824a8803020ab941dbe415,
            limb2: 0x15384c3e5e4396a8,
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
            limb0: 0x6418ec5188ea75ca700ff8ac,
            limb1: 0xed7b110158138707c334351e,
            limb2: 0x1af136f6332a5ee1,
        },
        r0a1: u288 {
            limb0: 0x8db066a3e6a120a1ebcd04f8,
            limb1: 0x83490fd973cf1b50a4295bb9,
            limb2: 0x573309b53fd1b8c,
        },
        r1a0: u288 {
            limb0: 0x4c1a3894b8fdf4155fbe2650,
            limb1: 0xc10d8309309bbfde7b7393cd,
            limb2: 0x1a8498e5b4569184,
        },
        r1a1: u288 {
            limb0: 0xaf3b542860987f15b8893842,
            limb1: 0xc0ea450c84b99968d654fab0,
            limb2: 0x187bd83df06b2bd,
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
            limb0: 0x458de3bb336164c686d049b,
            limb1: 0xcad534b5296dd155d44d3573,
            limb2: 0x1573177cae074147,
        },
        r0a1: u288 {
            limb0: 0xdac163e9557f6b74ecaff84f,
            limb1: 0x350735dd0db23d0cf3580ed7,
            limb2: 0x2af11dd78d34849d,
        },
        r1a0: u288 {
            limb0: 0x1c5791f88322980178bed6f7,
            limb1: 0xf742c2ad50e5987f1c0dd6c4,
            limb2: 0x15dfb58d2cdb0ea4,
        },
        r1a1: u288 {
            limb0: 0xb9367664db880d011ff3c505,
            limb1: 0xf76600a9fcc7bef4c12c6fe0,
            limb2: 0x2edc90ef022aed6b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3b99d099a2bc9719e32ce88a,
            limb1: 0xc1d6a27faa0b5e9d6701f9c1,
            limb2: 0x28d7c5a81c53362d,
        },
        r0a1: u288 {
            limb0: 0xa1f4741ad0a66096fd46ad1d,
            limb1: 0xe2f0921565f3ed0cd4ad973d,
            limb2: 0x280b141202f4c3c7,
        },
        r1a0: u288 {
            limb0: 0xb671514212a0fd781eabdcd3,
            limb1: 0x97fca1dad83e59fddfc7e4b5,
            limb2: 0xafe86f9673f175e,
        },
        r1a1: u288 {
            limb0: 0x8dfd58ac563b520a6949f36,
            limb1: 0x532e0c6ba1812f79e56ca72e,
            limb2: 0x2c16b477ebaf141f,
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
            limb0: 0x80b885ff3de3d54b94ddbe74,
            limb1: 0x982051a0d2eab10742fd99fb,
            limb2: 0x29b16e9c5866403f,
        },
        r0a1: u288 {
            limb0: 0x550297165797a92e2ac954fa,
            limb1: 0x900361d9afbf42de63711aee,
            limb2: 0x2632d6904f208e2d,
        },
        r1a0: u288 {
            limb0: 0x71662fd686cd90cdb37e5565,
            limb1: 0x93557b91b52f1f19fc820073,
            limb2: 0x29df82927e54d192,
        },
        r1a1: u288 {
            limb0: 0x33dd9801d4943668e2bb2508,
            limb1: 0x36f6aec1fd99304c1c08bb1d,
            limb2: 0x15afc61423fe3e27,
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
            limb0: 0x85525c1e866fc70add5a6c17,
            limb1: 0x1971033f1ca3c7b55f3e2700,
            limb2: 0x8bfebecc7c0ae62,
        },
        r0a1: u288 {
            limb0: 0x3cb5773355cdb865937bd4e5,
            limb1: 0x534786858e0647fe8054904f,
            limb2: 0x2270c2fb840bd174,
        },
        r1a0: u288 {
            limb0: 0x8da50f7b350740a96ac4da1d,
            limb1: 0x4d1f8010b0047b4755ef50db,
            limb2: 0x2ce6eeefab3ef203,
        },
        r1a1: u288 {
            limb0: 0xe76613ed9e6551bc0cba3684,
            limb1: 0x8c4d1774699707f8540a795,
            limb2: 0x1a54812ec520f716,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x253842378713999d41b74562,
            limb1: 0x7e2f0083cd5c142d206c4ac0,
            limb2: 0x1691978b291c8bc9,
        },
        r0a1: u288 {
            limb0: 0x2f8719b586edf256fb13c53c,
            limb1: 0x2511753f000fe398527a19c5,
            limb2: 0x4382cb8e856b00f,
        },
        r1a0: u288 {
            limb0: 0x4294a5e08d881abc1591fa05,
            limb1: 0xd0dadb0d1d86fad98b86088e,
            limb2: 0x254bdae51be52661,
        },
        r1a1: u288 {
            limb0: 0xbf56b1774af899c4c8cf30a8,
            limb1: 0x47f92edbfc64bb38838f7762,
            limb2: 0x2def4e93ebe93ff8,
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
            limb0: 0xbaba2783439388e6c16f918a,
            limb1: 0x401865db259293f9758f8085,
            limb2: 0x267c7b3aa02d9611,
        },
        r0a1: u288 {
            limb0: 0xef30a0d4682831216783da23,
            limb1: 0xc7d8d16796a8373f7a05249f,
            limb2: 0x109d850170df9f3,
        },
        r1a0: u288 {
            limb0: 0xedd5b5079d541973ce8ea8fe,
            limb1: 0x92927c8977e13f28e546db23,
            limb2: 0x13013cdac1c34b19,
        },
        r1a1: u288 {
            limb0: 0x65e39e5a88a712ecd9f07dd6,
            limb1: 0xb9fbb8fa3bd9275b0a2452f8,
            limb2: 0x24d598123c4c620c,
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
            limb0: 0xceb4b48a2ec879eabad2b44f,
            limb1: 0xbe5062d72035707739ef58fd,
            limb2: 0x24306dc550f330ca,
        },
        r0a1: u288 {
            limb0: 0xc15ff5d6c5adae4377b06295,
            limb1: 0x28c21bfade3dcf08fb1659b0,
            limb2: 0x18f642ab6232dedb,
        },
        r1a0: u288 {
            limb0: 0xd1d2f39db788f749f958c4c,
            limb1: 0xf8386ed12e1736231d46c488,
            limb2: 0xbbb71cc33f96f57,
        },
        r1a1: u288 {
            limb0: 0x456b3d00132de0dc8f0d032e,
            limb1: 0x2e27d1099dd81cfb69d8ee6e,
            limb2: 0x14919d6578d1070a,
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
            limb0: 0x4e6176b01f1115257e7d6414,
            limb1: 0x8cb74882768097381f0588d5,
            limb2: 0x1d87277fc7e64aa4,
        },
        r0a1: u288 {
            limb0: 0x3bd754e10949af50ccf7cbf4,
            limb1: 0x7e51891c1ac687f45d6b3bd9,
            limb2: 0x230fbca54c58a908,
        },
        r1a0: u288 {
            limb0: 0x16c0074c6d6daf75d90c8544,
            limb1: 0xc8a25f20c3a8e6fcfc190a60,
            limb2: 0x284e70a6024e4e60,
        },
        r1a1: u288 {
            limb0: 0x4b5d9ed703584c54c5086da4,
            limb1: 0x172e41ff68fbbcba47a2bd65,
            limb2: 0x11c814bad7f1ecd9,
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
            limb0: 0x90b23cbee081344971de6527,
            limb1: 0x5a8cf5f03c04a390c47d2068,
            limb2: 0x21b80e4cbae7935f,
        },
        r0a1: u288 {
            limb0: 0x573ea0079cf09de74195c18e,
            limb1: 0xef43d7534ffe02a7c577fe42,
            limb2: 0x16ef4e277524d909,
        },
        r1a0: u288 {
            limb0: 0x5d8677f0a0a23905a96a2485,
            limb1: 0x6b0e6117f1294c6914a142a6,
            limb2: 0x1dbee7561d5426f1,
        },
        r1a1: u288 {
            limb0: 0xf15fab1dd6ca87324b505c4c,
            limb1: 0x81ab8f2127f7150b49052620,
            limb2: 0xac0496c92304343,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8076c7df178cb9a24a3697ad,
            limb1: 0x3c0e9f02229be98291142217,
            limb2: 0xa95cd6746617d5f,
        },
        r0a1: u288 {
            limb0: 0xf5d78098fa45020ada5b0da1,
            limb1: 0xea34799db24ef97676cfead5,
            limb2: 0x54f86a1214ec950,
        },
        r1a0: u288 {
            limb0: 0x7089a82baaedd3965f1998f0,
            limb1: 0xc06d33f5c9a8bdd04f49db2d,
            limb2: 0x6f966f39e2231ef,
        },
        r1a1: u288 {
            limb0: 0xac95b3d52d40972089d842fe,
            limb1: 0x5445b23de5617da2a62f2885,
            limb2: 0x1626d5de792d9a6d,
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
            limb0: 0xb01365fe4174d339294a02b5,
            limb1: 0xa34c4ada6f59e2cfa7c3a9b,
            limb2: 0xbe3f590c0b7a976,
        },
        r0a1: u288 {
            limb0: 0x3ab2dfffe94b3aa45b92e7c,
            limb1: 0x7f1acc8bd58c1602ac1e8449,
            limb2: 0x88d1c5de64b3d2c,
        },
        r1a0: u288 {
            limb0: 0xec89e9d3ce8eb36f9ad897cc,
            limb1: 0x9e4eb291637efb5a2e168460,
            limb2: 0x11bb8b0d31d1832a,
        },
        r1a1: u288 {
            limb0: 0xbb0f4a257e8529de27db7dcc,
            limb1: 0xf3a749cfdda2b329be967335,
            limb2: 0x154becec498a450f,
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
            limb0: 0xcc1c06524355818b2ba16770,
            limb1: 0xa754dada6fdc3a23696c94e,
            limb2: 0x29ff8dd81add8ab1,
        },
        r0a1: u288 {
            limb0: 0xd4204d7c18251109f2aab919,
            limb1: 0x7bb784e18b45d2db5375982f,
            limb2: 0x258e2cfb89ad873f,
        },
        r1a0: u288 {
            limb0: 0xc8d612e68a3c64ce77f1de53,
            limb1: 0x60600947ab245fc027ba3ac0,
            limb2: 0x25dc43148c3873ad,
        },
        r1a1: u288 {
            limb0: 0x6774281f1570598f56ac0bac,
            limb1: 0xcf95c830dbf1b6f5997157fe,
            limb2: 0x1b8e572ad2f006e8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x55da993c914df622b2fb05b2,
            limb1: 0x72154dd1631bfd9827a9ce47,
            limb2: 0xaed745f89fb58c4,
        },
        r0a1: u288 {
            limb0: 0x76a24ec538c6e30f02488318,
            limb1: 0x98c705c1e159ede7c029913e,
            limb2: 0x4320bd3a4675944,
        },
        r1a0: u288 {
            limb0: 0x113231e3a015435391ff58f2,
            limb1: 0xf8abef2105e0250f064bf77e,
            limb2: 0x1d17f63f9e5559f3,
        },
        r1a1: u288 {
            limb0: 0x410081da1e1ecfe2faa06431,
            limb1: 0x82e1e7f524565f39cab04567,
            limb2: 0xd15bdb325c6ac00,
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
            limb0: 0x46ae221849bddc687edd501b,
            limb1: 0x65a60cf420dbcc06b681e8b0,
            limb2: 0x1c083bb164210c3a,
        },
        r0a1: u288 {
            limb0: 0xc30468c51e43e30dc6112281,
            limb1: 0xf1c1392c288d79c9710951e0,
            limb2: 0x16ab22f0abf84dbf,
        },
        r1a0: u288 {
            limb0: 0xc71a52e9c9cc5388087c3227,
            limb1: 0xc35d1881980bac006fc3ea3d,
            limb2: 0x2653f8a34e50950a,
        },
        r1a1: u288 {
            limb0: 0x254d62ef61c9f4cc0a608ef8,
            limb1: 0xb417b03658941ad7c9a52ef,
            limb2: 0x1abc648113cf4bd,
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
            limb0: 0x4d83a7131bd34680f63e779,
            limb1: 0xf7c6909c7235738303ee561e,
            limb2: 0x12dce2dc9e15457,
        },
        r0a1: u288 {
            limb0: 0x645afec8bd16b4c0bca6efbb,
            limb1: 0xfbca35353b841d50ff47a925,
            limb2: 0x578c00b31e92693,
        },
        r1a0: u288 {
            limb0: 0x2959d450cb924cd31130dd1f,
            limb1: 0x2dfbc00499615f0ed7b9684e,
            limb2: 0x263b820f37a12d59,
        },
        r1a1: u288 {
            limb0: 0x24a08be104836ca4fda4a558,
            limb1: 0xa591bac53ca561eaef641cce,
            limb2: 0x23de908a016f1d35,
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
            limb0: 0x50980e8fc8ef0913a48ff479,
            limb1: 0xebe28f60e87b51372f0f6abb,
            limb2: 0x1cab9d223ff288d9,
        },
        r0a1: u288 {
            limb0: 0xd93071481a9b2c8fc1bba692,
            limb1: 0x7f7e53cb1f9effcbe84311c7,
            limb2: 0x1d36ed75c6b7800c,
        },
        r1a0: u288 {
            limb0: 0x8e8d29d1a51cb5cdbe6f234c,
            limb1: 0xeac715fa2a3d8b665b000504,
            limb2: 0xe0f2f98f8f93210,
        },
        r1a1: u288 {
            limb0: 0x98f5346fd7d587032a0c1d37,
            limb1: 0xc45d854497aabd7ae36d5728,
            limb2: 0x126fdf8de4dd8ba2,
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
            limb0: 0xcad728eb1944e8401cb2109d,
            limb1: 0x195881612489097371ecd6d9,
            limb2: 0x26eea929b6dd6b86,
        },
        r0a1: u288 {
            limb0: 0x3394c26f07b316517a125e15,
            limb1: 0x4267ef5b702833eb31c817e0,
            limb2: 0x43e4f5d399171d3,
        },
        r1a0: u288 {
            limb0: 0x3e2d4ea5eee8e145790751ae,
            limb1: 0xf3af29dc04ac7de12cb94b2b,
            limb2: 0xac4d5b3f1c405aa,
        },
        r1a1: u288 {
            limb0: 0x2637d7468db53b6c69a08968,
            limb1: 0x27d24565890ff537584f0149,
            limb2: 0x12237a8ac663a317,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c40b9bbe831fe165ae9bca5,
            limb1: 0xeabfc1a1050e2342512d7d6a,
            limb2: 0x2d15d24d44777871,
        },
        r0a1: u288 {
            limb0: 0xdc9af3066721dfc378efb9c5,
            limb1: 0x6f5b6f2294af0d399ee7f12c,
            limb2: 0x4b4bf47c5ce3217,
        },
        r1a0: u288 {
            limb0: 0x93b9be4f9d2072a5153c8845,
            limb1: 0x6289e4ab98da9745b5107f88,
            limb2: 0x1e800ca2f4c94a4e,
        },
        r1a1: u288 {
            limb0: 0xb1e17022aabb6a72bb0263fd,
            limb1: 0x7987022e1610091b2698c5e9,
            limb2: 0x8ede2b491028ca8,
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
            limb0: 0x2f43b217389964bc4eaa7300,
            limb1: 0xb58729fd7caed35dc1eaa057,
            limb2: 0xf3714dd00fcb63,
        },
        r0a1: u288 {
            limb0: 0xceb37944150bf4bfacfe8b16,
            limb1: 0xd32672e1a52fd34543ee1e98,
            limb2: 0x2e19b0a748bf9876,
        },
        r1a0: u288 {
            limb0: 0x645520030d7021d6e6627a3d,
            limb1: 0xe4ee9525200863d564e92e62,
            limb2: 0x1db58e4ad3402d0c,
        },
        r1a1: u288 {
            limb0: 0x7df526529fb6240595d38a71,
            limb1: 0xde9c4f773fbe6ae69fecda94,
            limb2: 0x2db3029453f21bab,
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
            limb0: 0x2e2479dc865323ad1269ee47,
            limb1: 0xe08396b61b673e187c994f36,
            limb2: 0xc50dbf508f67dcd,
        },
        r0a1: u288 {
            limb0: 0xd18cfa53a8f904bd10635e6,
            limb1: 0x37b949f80b11ea18570bbe4c,
            limb2: 0xfd930b088ca9287,
        },
        r1a0: u288 {
            limb0: 0x39506114adeedc19067564f0,
            limb1: 0xda468e8c7193a43951c69816,
            limb2: 0xe74b24bd94a589,
        },
        r1a1: u288 {
            limb0: 0xb1dc5cf0b6027e95e1aa19e9,
            limb1: 0xd082c95e7805bc7f8ead7bf6,
            limb2: 0x20442b57c19651be,
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
            limb0: 0x94fd8c4503570cd41266b407,
            limb1: 0x2ec2748900ce6c8093fc2a5b,
            limb2: 0x1a163b9c17357a9b,
        },
        r0a1: u288 {
            limb0: 0x8780d647ed5edc4bbbaa2bc3,
            limb1: 0x5256ff5f1732bd38cec37754,
            limb2: 0x833da7473802a0f,
        },
        r1a0: u288 {
            limb0: 0x9bce379b6c6008f2a28a6099,
            limb1: 0x473504732e811575e03f8abf,
            limb2: 0x20be5af790d27498,
        },
        r1a1: u288 {
            limb0: 0xec750dfd468239b10f9c0845,
            limb1: 0x67d039e4740135df5ee051f2,
            limb2: 0x252adbad723106c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x62db855d934458aed42df314,
            limb1: 0x451bee7f082e14fd04ec25ff,
            limb2: 0x140ad96aaebe65df,
        },
        r0a1: u288 {
            limb0: 0x38b61d478d07d9d4ce69881c,
            limb1: 0x69d0a7e38d6cc36821023ca1,
            limb2: 0x2eeec648b046ae9d,
        },
        r1a0: u288 {
            limb0: 0x44029d23cb011d20023f7deb,
            limb1: 0x5a92751f6d20bb02801ca212,
            limb2: 0x1d521691243077a,
        },
        r1a1: u288 {
            limb0: 0x6d3dc5887f194be4e66c7d0c,
            limb1: 0xad89d66a8fa7993219fd215e,
            limb2: 0x15c643d91d390b94,
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
            limb0: 0x7dc32974d84787eb5c1e239a,
            limb1: 0x9ff3c51761e2d9ba6f38a8b6,
            limb2: 0x149f214a00c6a2ea,
        },
        r0a1: u288 {
            limb0: 0x5bdb2edfe2046fb4866c0d82,
            limb1: 0xa87ec0d2beec63aaf0f8692,
            limb2: 0x1d81fa8760963673,
        },
        r1a0: u288 {
            limb0: 0x6bd0683bb97b39ed4473ac1e,
            limb1: 0x2721095c66996d8ce67e7e90,
            limb2: 0x2a8eff73562ddaaa,
        },
        r1a1: u288 {
            limb0: 0xea2e1652efc5ed1bc9aa8f67,
            limb1: 0xf94b438fb02615cdeff7ec5c,
            limb2: 0x2b3a67ddf9f56204,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc385afadbf074e90fe14ee69,
            limb1: 0x5f4fad31ac6b1b1aa24448ba,
            limb2: 0x2de371f652af97f1,
        },
        r0a1: u288 {
            limb0: 0xc2a57b3363c1a8d1cdbf1259,
            limb1: 0xc893e2b735b26c7c3ca4ff03,
            limb2: 0x280ac70fa8ec779c,
        },
        r1a0: u288 {
            limb0: 0x2e674eead611915ee416f402,
            limb1: 0x9aa01d536934a86f81ad8410,
            limb2: 0x494dacfa33fcacb,
        },
        r1a1: u288 {
            limb0: 0x5d252258c2ee6db25a8ebc66,
            limb1: 0x8f5b413112c26b6888407bd3,
            limb2: 0x2e4b6233f97e9b9b,
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
            limb0: 0xc9ae8762c911d025b1dd636a,
            limb1: 0xe332ab1abafdafaeb432e99d,
            limb2: 0x1ef4c5afd75ecaea,
        },
        r0a1: u288 {
            limb0: 0xd5913209ec7d44e9f7c50544,
            limb1: 0x959172b76cb53042d0e99617,
            limb2: 0x259b852e028e880b,
        },
        r1a0: u288 {
            limb0: 0xb4717ada350f4384474c7a9f,
            limb1: 0xaa6d88ec406ced636529c022,
            limb2: 0x24ee04be54a3fbf0,
        },
        r1a1: u288 {
            limb0: 0x569313051325e7c3f89a0b83,
            limb1: 0xe262973863007234d3d2b9dd,
            limb2: 0x1073bdd019579931,
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
            limb0: 0x2a59e4dfb469594515c64aeb,
            limb1: 0xe8e6b19844e04c75e75f3f1,
            limb2: 0x67d7a3dacb76198,
        },
        r0a1: u288 {
            limb0: 0x2cf9becec8c1902721d310e0,
            limb1: 0x40e08bc0c4eef23977d266a2,
            limb2: 0x13c5945520df3ffe,
        },
        r1a0: u288 {
            limb0: 0x8f0ba476f5c1b69f99472f2a,
            limb1: 0x538ac05a7eec28ee70afec07,
            limb2: 0x2fe62a51b2384b1f,
        },
        r1a1: u288 {
            limb0: 0xf0bf29afe60dd7e6400e5269,
            limb1: 0x4c41ac7607c1bd68144e4677,
            limb2: 0x2ddc78eaa1c31910,
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
            limb0: 0x7e1a826f6f2b869acc353b88,
            limb1: 0xc2b032e38a8f1e943135daef,
            limb2: 0xb5d03138d418727,
        },
        r0a1: u288 {
            limb0: 0x204134bef4817e06a3c2d7a2,
            limb1: 0xd609de6400485914a9db6893,
            limb2: 0x1baf2f290897f685,
        },
        r1a0: u288 {
            limb0: 0x6a9fde301ad7138c561680b1,
            limb1: 0x5511159626c0581396fb7312,
            limb2: 0x2568f811bdca1fc7,
        },
        r1a1: u288 {
            limb0: 0x73bfae83f4468f32af2dcc00,
            limb1: 0x639aba302fb03cfe4ad28e09,
            limb2: 0x2dd3572112d6b009,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa6b3c8f7e218003687a47544,
            limb1: 0x216e6b8be7dfc7f42fc116cc,
            limb2: 0x1a9ce0cc5fbafc01,
        },
        r0a1: u288 {
            limb0: 0x59c339963212c36f6703a8ab,
            limb1: 0xa8fa7640c31191c11f9e96d5,
            limb2: 0x1c973974fe2ccdbe,
        },
        r1a0: u288 {
            limb0: 0x80a500b95fbbca1dd1ec963,
            limb1: 0x69d38a9d0eab9a1ea91214,
            limb2: 0x15f4c952bfc3df85,
        },
        r1a1: u288 {
            limb0: 0x46503c73005e2753b4202d4a,
            limb1: 0x5949e30b653ebe260dfcb1ca,
            limb2: 0x1cb260f88807a8f1,
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
            limb0: 0xe8c0272b400e40a9f914184f,
            limb1: 0x8d673e61eb12c122a187ca3a,
            limb2: 0xae9bfb709e0a256,
        },
        r0a1: u288 {
            limb0: 0x573613206d3652980da6e235,
            limb1: 0xe1a6bb7a8c844dbc54959a9,
            limb2: 0x9c3c68767517789,
        },
        r1a0: u288 {
            limb0: 0xfff27d8631914d10b720cbe4,
            limb1: 0x6f9725e185abd4e72178f78d,
            limb2: 0x1482a2e6206d31c,
        },
        r1a1: u288 {
            limb0: 0xa7b154b5b04747a2a239e650,
            limb1: 0x45ef331a0247e2d5856a54cf,
            limb2: 0x2353f81798d0dd0,
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
            limb0: 0x27566757210f05f7eea93b13,
            limb1: 0x1497e724fea83f18516a8e15,
            limb2: 0x2237489502681e60,
        },
        r0a1: u288 {
            limb0: 0x5518fcbdb57e7ca944a6e7c9,
            limb1: 0x522902f6a344bb17f7ba4057,
            limb2: 0x20895b538c7d3da8,
        },
        r1a0: u288 {
            limb0: 0x4ea609de4e54274125bdfb13,
            limb1: 0x21fff24055cb5467c913c626,
            limb2: 0xe632a515f247342,
        },
        r1a1: u288 {
            limb0: 0x55f2aa6f2487f41bb0eabc3b,
            limb1: 0x16018c58e1c2e3955a386bb6,
            limb2: 0xb8c5a1d537d11af,
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
            limb0: 0x6624b688b470be882c2c5bc7,
            limb1: 0xcfb40e1821fac9fbdc953786,
            limb2: 0x31f6cdad13bac09,
        },
        r0a1: u288 {
            limb0: 0xf952fafffa2cb23aa8a89461,
            limb1: 0xd333b5e6711c86b215162fb0,
            limb2: 0x19a6cfefc95d3c29,
        },
        r1a0: u288 {
            limb0: 0x14f599bf706f27e5fc851308,
            limb1: 0xb6ffc4c37d6dd54fa32594fa,
            limb2: 0xa99133c78340e43,
        },
        r1a1: u288 {
            limb0: 0x91c9519fd6839617800dc2ab,
            limb1: 0xb8c841671c559fb89cf4a201,
            limb2: 0x20aad93b7705c754,
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
            limb0: 0x7a4e509382dae484a11849bd,
            limb1: 0x4c3d7583b2840280c85030c5,
            limb2: 0x92d0314c375178a,
        },
        r0a1: u288 {
            limb0: 0x6834f40659f04ee44f0512a9,
            limb1: 0x66e3f3b4775dbf10462c597c,
            limb2: 0x55ae4ef48c9e692,
        },
        r1a0: u288 {
            limb0: 0xe0de1c25e4574097459fa4f4,
            limb1: 0x2e949008999cdabe6b923ec,
            limb2: 0x2df6590126a9602d,
        },
        r1a1: u288 {
            limb0: 0xf1346cb1d35211a6c2da1d22,
            limb1: 0x728180815b8b0a0c8d113f02,
            limb2: 0x1f6cd994324ab7d9,
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
            limb0: 0xf215f0aa5842b0820c03d449,
            limb1: 0xb459dd59375b5777b0999a6c,
            limb2: 0x26756029f269d16c,
        },
        r0a1: u288 {
            limb0: 0xeeb09d7d3fb9110785240672,
            limb1: 0x65b47c1a4681493d90210ede,
            limb2: 0x130008fd60a33a16,
        },
        r1a0: u288 {
            limb0: 0x39cc94f96b992cad05558d8e,
            limb1: 0x2a257dc9853f0d32f04d60ba,
            limb2: 0x1336af38bb3d70de,
        },
        r1a1: u288 {
            limb0: 0xd72dbac9a61520256db42fe9,
            limb1: 0x9ba3b2e29f0805cc2d5cfb44,
            limb2: 0x2a5e8774f863c343,
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
            limb0: 0xb1e0d04886de2bdbc68c3a44,
            limb1: 0xdc7f2eedbb8462f2929bf2e3,
            limb2: 0x2a4c51ad545e275d,
        },
        r0a1: u288 {
            limb0: 0xb297db2dd60279e77cea184d,
            limb1: 0xf317acdd62c4f33e0be84784,
            limb2: 0x1ee92e6fb5c2441e,
        },
        r1a0: u288 {
            limb0: 0x952680e3c91327536679a33a,
            limb1: 0x53871aea3e6ba58d17a6a7e3,
            limb2: 0x516d6f423bf126a,
        },
        r1a1: u288 {
            limb0: 0x6aebd185a4df3ebdf489d455,
            limb1: 0x8a0d55eafd6912bc18c85fa2,
            limb2: 0x2acd2d63794cb530,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xde975e8abb992bc93699bd10,
            limb1: 0x4385fae0a218db50c86a34ea,
            limb2: 0x2bba6662960a40ea,
        },
        r0a1: u288 {
            limb0: 0x4d3f885f055fab7dc98f8e6f,
            limb1: 0xda0312bb0c4c978407fa6321,
            limb2: 0x2a0c119c726d4502,
        },
        r1a0: u288 {
            limb0: 0xf2d78f0ec2ac2e437b982e45,
            limb1: 0xd6dff305ccab649002d0263f,
            limb2: 0xbc5c9e287546bae,
        },
        r1a1: u288 {
            limb0: 0xf629abf23f02911c2fae985f,
            limb1: 0x519cfed3c3f0c9890bc38524,
            limb2: 0x2419b483d7392eac,
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
            limb0: 0x50f76e770553c708b1dfbbd4,
            limb1: 0xa9048633b3e8f8277ca2358e,
            limb2: 0x1a59936b1141418a,
        },
        r0a1: u288 {
            limb0: 0x92a136c3c2405bdb583d57a8,
            limb1: 0x7e1932b9bfec77f2dc0f05db,
            limb2: 0x128570eaed80e2fd,
        },
        r1a0: u288 {
            limb0: 0xf6114c831ab37a2965c04390,
            limb1: 0x8820fde3a2d6ed5da07ec3ab,
            limb2: 0x2c9f8aab7a1ca92b,
        },
        r1a1: u288 {
            limb0: 0x7ea2167c60bc0410a214e68c,
            limb1: 0x19cd6478da1f370ecb3a4927,
            limb2: 0x27dc42798a107121,
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
            limb0: 0xf658fa6686e5285f07daa050,
            limb1: 0x31d617c8e7f5897a73e2f968,
            limb2: 0xc0d8644d59e1589,
        },
        r0a1: u288 {
            limb0: 0xefeacc112384ab7552524f29,
            limb1: 0x55042c874525e31a7b2b346e,
            limb2: 0x2f7051df5937d3d6,
        },
        r1a0: u288 {
            limb0: 0x87186b2ee2073609e2e91f32,
            limb1: 0x22ce351ecb63afb4dc95fa74,
            limb2: 0x2566b671a46c5b0b,
        },
        r1a1: u288 {
            limb0: 0x34b49d4e9bccca4046bbb5dd,
            limb1: 0x305afe9da9e9b7a1e5d1c14,
            limb2: 0x114b9ccdb882063,
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
            limb0: 0x62c81c38ff8e3547060871d2,
            limb1: 0x3eae98291d64b088390b21a3,
            limb2: 0x2a343b55b977e874,
        },
        r0a1: u288 {
            limb0: 0x2c15fb85d014dda031a73f7,
            limb1: 0xa1ad813b6c0943be76f1ca1f,
            limb2: 0x2fd54c79e58b0d2b,
        },
        r1a0: u288 {
            limb0: 0x11cd9954b13419b2144ae986,
            limb1: 0x721083a511f2ab108b5f97e7,
            limb2: 0x28e0783a10f254bc,
        },
        r1a1: u288 {
            limb0: 0x7dee55f729d33feaaff8f93,
            limb1: 0xfa31c0e349d40ff02760e68c,
            limb2: 0x2a0349b1576caba5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5def14f450e97a21111ec6bf,
            limb1: 0x9b15ee6378eb0fd92a4ecaa,
            limb2: 0x2b87cdccab38cf2c,
        },
        r0a1: u288 {
            limb0: 0xf4f072e0937d6bd326ff2a23,
            limb1: 0xeb356b93f717eccd4ab69aef,
            limb2: 0xfcfa4b094efe5cf,
        },
        r1a0: u288 {
            limb0: 0xe67927dab433ba4aee5e5a08,
            limb1: 0x180b7f8fdc8b2812c8972f4b,
            limb2: 0xe1c141998542e78,
        },
        r1a1: u288 {
            limb0: 0x8cf72ec738d7600bafb8d14c,
            limb1: 0xd3d066f14f1c1667ba58e471,
            limb2: 0xa6accd9dedcbb61,
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
            limb0: 0x14f571c72ade7a0229924760,
            limb1: 0xe651db3f06a8eb85055db360,
            limb2: 0x1961e88348977ded,
        },
        r0a1: u288 {
            limb0: 0x8de4c67c98fc1cdbd81180d5,
            limb1: 0x76194204de6746179a0b5d70,
            limb2: 0x155a50f7955260c5,
        },
        r1a0: u288 {
            limb0: 0x1630359d9dfcba9b8d2c99db,
            limb1: 0x5d8e6a4d7300fc2fce46433,
            limb2: 0xbd95c85e960718c,
        },
        r1a1: u288 {
            limb0: 0xf14b97a3444e02f0e28c15c0,
            limb1: 0x31d33642f0b4fbc51623c0e7,
            limb2: 0x1787cfa4cfb775c6,
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
            limb0: 0x967b8b3dd032d610e791bc73,
            limb1: 0x37f8dbf360ae44f84a251564,
            limb2: 0x1259ab020e558549,
        },
        r0a1: u288 {
            limb0: 0x35e96f149e9bf8c639298c12,
            limb1: 0x62710c24b05014c2d2acd015,
            limb2: 0x12e9fdc0dc59cf1a,
        },
        r1a0: u288 {
            limb0: 0xfe422b433580cd5cef97a802,
            limb1: 0xb967b1489d2c5a792ce68224,
            limb2: 0x2e1caadb96984b0b,
        },
        r1a1: u288 {
            limb0: 0xc03b092b885c9499dd45d7b2,
            limb1: 0xb45fba64b5d3930dd3e4a54a,
            limb2: 0x171b43160357911a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8b6b9571ec0bd30541c20b8b,
            limb1: 0x6e467822d8ffdfe932754ce7,
            limb2: 0xfded1d2e7be5c5a,
        },
        r0a1: u288 {
            limb0: 0xd2d346ca5dcf8ef17521571f,
            limb1: 0xe7847cf6412804b5d7b49479,
            limb2: 0x55ea464568909e1,
        },
        r1a0: u288 {
            limb0: 0x83333795078d303dd64efd08,
            limb1: 0x986bfb3210b4eaf6e19d3011,
            limb2: 0x1697f8836264e190,
        },
        r1a1: u288 {
            limb0: 0xc2b40e99fcd0e7a71778318e,
            limb1: 0x68f12af702736fffef5f37a8,
            limb2: 0x2299e12f94916ce2,
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
            limb0: 0x88a17cc11ea868cd53563d23,
            limb1: 0xd800e3e485c792b332ea66e8,
            limb2: 0x13cacc3ac1aaf77c,
        },
        r0a1: u288 {
            limb0: 0x8c19be20a7312525e5b8bebf,
            limb1: 0xaa92567b638a6415b81e36ed,
            limb2: 0x197f935133e58c91,
        },
        r1a0: u288 {
            limb0: 0xa9658a612d8a987510a0ef1d,
            limb1: 0x3c76edee980456c0a22bdf82,
            limb2: 0x247ddf01787d6d52,
        },
        r1a1: u288 {
            limb0: 0x25cf21f1a028cb8377066fde,
            limb1: 0xa7c894a65d6c97cb1588623,
            limb2: 0x29346e0526c1dd10,
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
            limb0: 0xd78ad6bdebbdcd3ef9374fc2,
            limb1: 0xf8e1c314036a0f245167d9a4,
            limb2: 0x1498a3aa15301e69,
        },
        r0a1: u288 {
            limb0: 0xa8264de0ce39156b1a19a5e8,
            limb1: 0x19e61309ec080d64e6686cf9,
            limb2: 0x17d150f46e284d9,
        },
        r1a0: u288 {
            limb0: 0xcd4eee77e3aa8c48f7c54368,
            limb1: 0x93478e366d91eea400240c92,
            limb2: 0xa68cc6217273044,
        },
        r1a1: u288 {
            limb0: 0xfaa62b715b8a1490591867fa,
            limb1: 0xe76cc004ecc543047420d486,
            limb2: 0x1e0c4904af48ea6a,
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
            limb0: 0x57577a01652d9365014fdc47,
            limb1: 0xde52348b7c306250155b6571,
            limb2: 0x153b1db25979b87d,
        },
        r0a1: u288 {
            limb0: 0x9ecba7712d283fe0e788207c,
            limb1: 0x2928881ef7c45c98a137cac7,
            limb2: 0x638a46465d3bf53,
        },
        r1a0: u288 {
            limb0: 0xd63d43c78c6dae09329edc53,
            limb1: 0x5a7d899f4477f5b1c53d2fb7,
            limb2: 0x10b6fcca43ecb6a2,
        },
        r1a1: u288 {
            limb0: 0x1c794e9dc96cf8e19c91c673,
            limb1: 0x57531807edd2a5bbfa873a8d,
            limb2: 0x2cbe9d10e46e85d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb8197a163df800bbe01d12bd,
            limb1: 0x1688fe42a544ddb7c4f196e,
            limb2: 0x2af87a18dc47927d,
        },
        r0a1: u288 {
            limb0: 0x17fa335af8bc61b547dc6a3,
            limb1: 0x10d41d3fb599b647661f2441,
            limb2: 0x2fe4421469ca4334,
        },
        r1a0: u288 {
            limb0: 0x54ff18cf5bba4a76b3582d82,
            limb1: 0x2678498a496b8cc9e513c631,
            limb2: 0x13f3df3ed9f9322d,
        },
        r1a1: u288 {
            limb0: 0xe34799279c8b345d1d6058d1,
            limb1: 0x52fe425018088871b1d7297f,
            limb2: 0xbb353ab51eeccb1,
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
            limb0: 0x6688dd77338f5c6953ac4a3d,
            limb1: 0xb322f1ec1b8b1140d4b31a7a,
            limb2: 0x32c44cc7eac0e5f,
        },
        r0a1: u288 {
            limb0: 0x658f7b3be39ae031161ff355,
            limb1: 0x1937bd8b5856d4e95f3b5935,
            limb2: 0xa44d473df43b70d,
        },
        r1a0: u288 {
            limb0: 0x719ba31dfeb68ce8b4f7f086,
            limb1: 0x57cbeaeaf0baa4a8bd05e9c7,
            limb2: 0x25ff90edaa319bfd,
        },
        r1a1: u288 {
            limb0: 0x3be5d5ea4c933b02277e0549,
            limb1: 0x79563f34abea863a248a41dc,
            limb2: 0x26359cc8692d6158,
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
            limb0: 0x73f827517665cb2652512c71,
            limb1: 0xd6ee0e8ffdfc5f20855d5a68,
            limb2: 0x2d1984740023de44,
        },
        r0a1: u288 {
            limb0: 0x97a681d210b8d324d0215d47,
            limb1: 0x945f584688b553ca86869554,
            limb2: 0x3b945bfd81ce2d2,
        },
        r1a0: u288 {
            limb0: 0x9c002024dfc3325af715c970,
            limb1: 0xe7c9d9769953734c3e17647f,
            limb2: 0x16f6aa301acb2c1d,
        },
        r1a1: u288 {
            limb0: 0xebc2376b186c578735cff867,
            limb1: 0xb3172d58b78102073b88502d,
            limb2: 0xc08bc5b3894aa23,
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
            limb0: 0x4b93d1d7db1692f7e82b286d,
            limb1: 0x9f3e232db3c4ccdb244bd6b0,
            limb2: 0xb778f2102b01658,
        },
        r0a1: u288 {
            limb0: 0xa64a084ed6ad9f6dc21224c4,
            limb1: 0x109f7d8b1e982837e14c2835,
            limb2: 0x27f0c821cf585bf4,
        },
        r1a0: u288 {
            limb0: 0x13782db11418376eca7227a5,
            limb1: 0x128e031c1960dfe2fbbee394,
            limb2: 0x280349fa39b1817d,
        },
        r1a1: u288 {
            limb0: 0x72c2b44c74e351ca3e616ff9,
            limb1: 0xd1537873750dfa5839dd1131,
            limb2: 0x1fd36cb758714787,
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
            limb0: 0x82a10d23e32a7b0a7b560c93,
            limb1: 0x310dba14074e318ab9e21b86,
            limb2: 0x2327aba076bf39aa,
        },
        r0a1: u288 {
            limb0: 0x4e7e7daaa17b08a62d179c6b,
            limb1: 0xd7fe7b9902a8521dcd088d8a,
            limb2: 0xe2867f3989191af,
        },
        r1a0: u288 {
            limb0: 0xb4fa5c4c111b987a681412da,
            limb1: 0x56e1932a0c0db5d69f5a2a8d,
            limb2: 0x2c0f4a0b4a627e13,
        },
        r1a1: u288 {
            limb0: 0x95377fd3d7e4662e6055bbea,
            limb1: 0xcd912b42fed9da39596774fa,
            limb2: 0x1226d2f5668f4bff,
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
            limb0: 0x1c469c27e57c532011c8014,
            limb1: 0xc26d5771bc1c1ed031bc20f1,
            limb2: 0x217f14ca62bbe63c,
        },
        r0a1: u288 {
            limb0: 0x97d393f560e778f3589a58c5,
            limb1: 0xe609cb61e9c6bc7db4dcf0a6,
            limb2: 0x99b38234588d067,
        },
        r1a0: u288 {
            limb0: 0xd03fee571c887773dc3e89e3,
            limb1: 0x8238467616b768ff3336fbcf,
            limb2: 0x21795d79b55cac7d,
        },
        r1a1: u288 {
            limb0: 0xa7c3c793b1fdfb919aaf9a52,
            limb1: 0xec63878d4f9c0d1bebecb097,
            limb2: 0x2a5d162e9e3e4746,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4daedc700e97f52615382a1,
            limb1: 0xd27aebf851886f98009554d3,
            limb2: 0x142c336b0c514184,
        },
        r0a1: u288 {
            limb0: 0xcc17fa225124ee6f9cb148ac,
            limb1: 0x4ee1867ab29d4a75ceea1f5f,
            limb2: 0x288373fe37531251,
        },
        r1a0: u288 {
            limb0: 0x5e86399de0d77b46c7660cc1,
            limb1: 0x42620cb03789aec328a803b2,
            limb2: 0x12afbe7bfe42adcb,
        },
        r1a1: u288 {
            limb0: 0x203597c9410fd58431731971,
            limb1: 0x7de1abad363f5ec1724a7a95,
            limb2: 0x9d31c129deffe24,
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
            limb0: 0xdd2283b6277c9584da7efaed,
            limb1: 0xc5cd57a1870e2a35d00ceece,
            limb2: 0x3ad5eb31677cbeb,
        },
        r0a1: u288 {
            limb0: 0xf9108a9acb681b9b925cece3,
            limb1: 0x9147f1e61d9f3190bfa4a89f,
            limb2: 0x2f272d44fbb7d3c2,
        },
        r1a0: u288 {
            limb0: 0x118c7d212cb5b1bb1d0b68f8,
            limb1: 0xce2566f73ef7321fdd59a89e,
            limb2: 0x1c3f8ac52a357aa3,
        },
        r1a1: u288 {
            limb0: 0x39576ec74faca8fced64b365,
            limb1: 0x3fad4c861e60495389941f48,
            limb2: 0x2a4a56755104c9f,
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
            limb0: 0x31ecc215ef7052120dc54286,
            limb1: 0x85d27dd26695997b4dc6a0a4,
            limb2: 0x1a8e956313eff016,
        },
        r0a1: u288 {
            limb0: 0xc8594db9962b214357f1ae8a,
            limb1: 0x594cfb9c74ef90916b589d73,
            limb2: 0x1b55f7bbbcf0ccbd,
        },
        r1a0: u288 {
            limb0: 0xc14dec5eb96e5a294b605ffc,
            limb1: 0x5483834715e1acb252687365,
            limb2: 0x18c1157386f34955,
        },
        r1a1: u288 {
            limb0: 0x3c5df32597e25dab3feae412,
            limb1: 0x8e0013b2060b1a0c695902b4,
            limb2: 0x90209f68f51b012,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfbad316942f11fe3fffada48,
            limb1: 0x3026d954f0d57ab78d8481b5,
            limb2: 0x141ae925bb43748b,
        },
        r0a1: u288 {
            limb0: 0x52a8ed783e7ee113e3629977,
            limb1: 0x70742dca554701877c77d194,
            limb2: 0x22dc73704c3f52b,
        },
        r1a0: u288 {
            limb0: 0x4f4623627a7b6eb0e2312765,
            limb1: 0x65a2999c09b88cb7b520ae10,
            limb2: 0x12fce64fb0706323,
        },
        r1a1: u288 {
            limb0: 0x865267abca1c6e60f61aef87,
            limb1: 0xa2ca0220581676e33daae304,
            limb2: 0x29168e0ed099d963,
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
            limb0: 0x67e01ceb34f236da013f4510,
            limb1: 0xac5a9c72409afac1c3feeb6f,
            limb2: 0x27c7fb5b637c073,
        },
        r0a1: u288 {
            limb0: 0x3ddd86266a7a8a5e5cb91261,
            limb1: 0x276cb683421bdb597f33c03a,
            limb2: 0x98060047b31069e,
        },
        r1a0: u288 {
            limb0: 0x7ddf7c734b685c2fdb63f370,
            limb1: 0x98c1a84207976d649032c109,
            limb2: 0x2dbb2b5cb304c039,
        },
        r1a1: u288 {
            limb0: 0x6fa94e6eb90315fda6caf2e2,
            limb1: 0xe9303d0e067d8b5af67a6e89,
            limb2: 0x27675ce8a4304750,
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
            limb0: 0x634a0135c69e5de58597177,
            limb1: 0xa56da70e77dfdc9451c9b794,
            limb2: 0x293979dfb976f6de,
        },
        r0a1: u288 {
            limb0: 0x313756f8af5e332ef37ebf23,
            limb1: 0x52843b51c617a65ca552173e,
            limb2: 0x406211bc8f6b926,
        },
        r1a0: u288 {
            limb0: 0x7cb7b7772b00d17c9341c81,
            limb1: 0xb8f1d1e8dff2d3d971df0b37,
            limb2: 0x2de80c4a28b418e4,
        },
        r1a1: u288 {
            limb0: 0xb93fb38981360199f16b5009,
            limb1: 0x2cacf89749a7143dfbfdb25c,
            limb2: 0x2e3c41b5745a602a,
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
            limb0: 0xd9cbebff2b4bccb7e8a3dc40,
            limb1: 0xe75b03341d5d7114ab5dff77,
            limb2: 0x32451f54f9244da,
        },
        r0a1: u288 {
            limb0: 0xc3e652e844bf6f5b0b378133,
            limb1: 0x7badc4880edb23087ee68064,
            limb2: 0x2d1effaa01c938d0,
        },
        r1a0: u288 {
            limb0: 0x3aafa1f3ccfb8a75e1555748,
            limb1: 0x2547912b4db94e5bb4d21a34,
            limb2: 0xe961daf66c8cd86,
        },
        r1a1: u288 {
            limb0: 0xbd9e3171f7286c47332f244f,
            limb1: 0xa5820455e6e81029626fbf7d,
            limb2: 0x219093473acf6e80,
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
            limb0: 0xe4297b91e4eb78ffcaa9b8ef,
            limb1: 0x7d7820c8c1777b58a2f67f35,
            limb2: 0x17f86edc866beae8,
        },
        r0a1: u288 {
            limb0: 0xb4c83bfb184b57f52e356279,
            limb1: 0xb5f7863e86d9d080f7ea4f73,
            limb2: 0xdde4c0bbf7a7ffb,
        },
        r1a0: u288 {
            limb0: 0x76f1842a4f84a1e252e1f396,
            limb1: 0x4215524d8dfeebd4e88e13e2,
            limb2: 0x177fbf443f23246b,
        },
        r1a1: u288 {
            limb0: 0x77e6469629e78d3b82603364,
            limb1: 0x9156a3ca0fedbcc13ebb29c1,
            limb2: 0x2004bd9714ae8d76,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x821c658a6f62f13e59b7c5a9,
            limb1: 0xc7419a5274f88cd855ab538f,
            limb2: 0x249af06646f75c2b,
        },
        r0a1: u288 {
            limb0: 0x6bb6805661510677c28e183f,
            limb1: 0x8819029eac32355915511b94,
            limb2: 0x189f110743dce70a,
        },
        r1a0: u288 {
            limb0: 0xc211af10fa1f040d80a8f2b7,
            limb1: 0x9a2402f3eea9ed744f554b21,
            limb2: 0x5d2d5cf0f4b046e,
        },
        r1a1: u288 {
            limb0: 0x1a257971c83fffdab63f3269,
            limb1: 0xc04543d11ca69ef020ff09ee,
            limb2: 0x1bf21672a5307f77,
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
            limb0: 0x985de704cf858fb58c9cb223,
            limb1: 0x11ee1dec18efdb66d50bd0fe,
            limb2: 0x6ae23aabba49ad2,
        },
        r0a1: u288 {
            limb0: 0x6f6c66b81e6da159ee1ee37c,
            limb1: 0x72d521a95a97607ca7adeb0d,
            limb2: 0x181f378c389ef87,
        },
        r1a0: u288 {
            limb0: 0x22708f94b8f8f78bbc6c121c,
            limb1: 0xa8a83f841317c7578f9c42de,
            limb2: 0x2b1632677937333d,
        },
        r1a1: u288 {
            limb0: 0x59cd2c0400a5ae890c92aec7,
            limb1: 0x86190fa9b1c7eb20e5d7fe45,
            limb2: 0x2fb50a45f95ffcc0,
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
            limb0: 0xbfb0d03f399a4fbcd5679a44,
            limb1: 0x9c9de677f5f2bb131d813510,
            limb2: 0x3b7434db741f996,
        },
        r0a1: u288 {
            limb0: 0x42bb661b5601bea40eedf428,
            limb1: 0x730b189591bb1623dc497479,
            limb2: 0x22af0e567c0baeae,
        },
        r1a0: u288 {
            limb0: 0xac1fb607de888c78f3101d68,
            limb1: 0xc303acce51c25d51bc230a18,
            limb2: 0x4ff1879d638927f,
        },
        r1a1: u288 {
            limb0: 0xb17ef9ca748c0d93ee2b7367,
            limb1: 0xe65b1db566ebdba1821e793b,
            limb2: 0x87acd8f018d5cc4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd9cf1f16cf4fc59fb6d242da,
            limb1: 0x768e5fa24a32fad4b3146382,
            limb2: 0xaa9e64e75e42d69,
        },
        r0a1: u288 {
            limb0: 0x442d53b74f7cf7c274a9a2af,
            limb1: 0xc314932b3a67d4820bd00ce9,
            limb2: 0x25633cc516a329f7,
        },
        r1a0: u288 {
            limb0: 0xbe1145bad0a76158e927a18d,
            limb1: 0x842217e0dbd0dc1477713dcb,
            limb2: 0x99d0dee1e32cacf,
        },
        r1a1: u288 {
            limb0: 0xbcab81fc8a41d8b430e806e5,
            limb1: 0xeefd22c1154bf8c42638e2f9,
            limb2: 0x2f37f35abd3a8738,
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
            limb0: 0x2061bb93d746d481764dae69,
            limb1: 0x3335d25d2bebd2e8f181c87b,
            limb2: 0x15c5d7a1c529021f,
        },
        r0a1: u288 {
            limb0: 0x66d6369a64ba40de85be39dd,
            limb1: 0xfbcf5226c6d3874934d63b4,
            limb2: 0x7e0f63cf07cc84c,
        },
        r1a0: u288 {
            limb0: 0xa92894efec9c3a8631f95c99,
            limb1: 0x550189b5e2e6f12a6763ff0e,
            limb2: 0x1f60bbc9e39e318a,
        },
        r1a1: u288 {
            limb0: 0x5de25b12ccc9f4f3be97bd30,
            limb1: 0x4b9e37ea52b0f09324fb0b49,
            limb2: 0x2aa7c978ed35648d,
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
            limb0: 0xd0c8fa04720d94ee0b0bd71f,
            limb1: 0x4b2fd14977c3b1008719745b,
            limb2: 0x2e38148d9ca0f0b2,
        },
        r0a1: u288 {
            limb0: 0xd83091690898fe99163b0835,
            limb1: 0x1d1303d5a0775c418462299f,
            limb2: 0x2653b2f9ffe5738,
        },
        r1a0: u288 {
            limb0: 0xa771854e63dc4130220a43f2,
            limb1: 0xdd5386208a8d70b96505f421,
            limb2: 0x13daf1bf94adbd2f,
        },
        r1a1: u288 {
            limb0: 0xe948a6ed3566b780c9c9885,
            limb1: 0x21d0651b76e432d7aa71810f,
            limb2: 0xae41454bd85f4b9,
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
            limb0: 0x9abccad126e7935da69e7665,
            limb1: 0x1d3d5ca4ab6845a5384c314,
            limb2: 0x216d5be6c7bc4bc0,
        },
        r0a1: u288 {
            limb0: 0x817ff463aa365ca0d8f4ebad,
            limb1: 0x1fc6f17ed4763c48b32e83cc,
            limb2: 0x40f23268180f90a,
        },
        r1a0: u288 {
            limb0: 0xad1c5fcf1df5fb2a565061fb,
            limb1: 0x26d0ec8fe323631b81d3c6a7,
            limb2: 0xec8e4f707ca73b0,
        },
        r1a1: u288 {
            limb0: 0xee3486b24b0e8fa8dd25161a,
            limb1: 0xf71f5238fc996121bd4aaf50,
            limb2: 0x1c38644d792e6e4d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4bb744e05ac952b85fbab82,
            limb1: 0x7c8aa971b8b6c0c8141e6854,
            limb2: 0x14fdda4201ec5c81,
        },
        r0a1: u288 {
            limb0: 0x180093b0d9cdca641e2a2b55,
            limb1: 0xf2eb0bb0db5d8cb495b1d343,
            limb2: 0x28a9c0528b9b758c,
        },
        r1a0: u288 {
            limb0: 0x49fb44bfd528a78917846cce,
            limb1: 0xf38b7cf00959a7d5442c4596,
            limb2: 0x1f90e519e482a7b4,
        },
        r1a1: u288 {
            limb0: 0x1e95454b0972bdaf685ddee,
            limb1: 0xd0e617bc852883b4eac16e56,
            limb2: 0x16b264c61d6d9a93,
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
            limb0: 0x8d0f60b06b26721852858fea,
            limb1: 0xcce62f0714369ef1f26c26e0,
            limb2: 0x2bfc3336abd016c2,
        },
        r0a1: u288 {
            limb0: 0x454c4d78a52b859266cc633,
            limb1: 0x6a616ddee9c377bc46a51575,
            limb2: 0x2383173c3b9adb74,
        },
        r1a0: u288 {
            limb0: 0x3143b112f598030be1886ee9,
            limb1: 0x5114a01ace7dcd69313c1948,
            limb2: 0xcb06009ebca6a0e,
        },
        r1a1: u288 {
            limb0: 0xa2b925673ab01671c2af3a3d,
            limb1: 0x6c1b919c6b886b8d05ae94f6,
            limb2: 0x2437826d9586286d,
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
            limb0: 0x8af36b1cebd0b74aa6828e4c,
            limb1: 0xf54e5767551b46cf1f978b1d,
            limb2: 0x15567e28266a96d6,
        },
        r0a1: u288 {
            limb0: 0xa30bbe4fd207e87ed47b65e4,
            limb1: 0x40f94dbda1388757c85f1204,
            limb2: 0x100e4e72eed93e53,
        },
        r1a0: u288 {
            limb0: 0x3a68fed146c1f58912d768d8,
            limb1: 0x546604cf9eaa62da8d52d030,
            limb2: 0xe365b1426d5309a,
        },
        r1a1: u288 {
            limb0: 0x4f63935eccbeea87801fb76d,
            limb1: 0x54fa4c4ee99f5da467f8d94a,
            limb2: 0x23114c6cc4324108,
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
            limb0: 0xb6737c940a1995aefb4abf6c,
            limb1: 0x55fb2a6376740ea64cd1874a,
            limb2: 0xfc59d856be3c290,
        },
        r0a1: u288 {
            limb0: 0xc7a1ee7c5ed62432b1c146be,
            limb1: 0xa60577acca80353f87c604f5,
            limb2: 0x2113b3e52ccf3bee,
        },
        r1a0: u288 {
            limb0: 0xcc5272202f321eb88f19adab,
            limb1: 0x504b3fb6db0a8bfae17f73b5,
            limb2: 0x27f45e656fd1ce8f,
        },
        r1a1: u288 {
            limb0: 0x2cb3f6abd822e05ef3e5f7bb,
            limb1: 0x605a678fe57ab6ba52065ca5,
            limb2: 0xdcfe102c17cde05,
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
            limb0: 0x9ff00ce3e2b1a7ecfe650a63,
            limb1: 0x9f47588699e4e2e856b25101,
            limb2: 0x2cbae7eff3d1624f,
        },
        r0a1: u288 {
            limb0: 0x9c931e48a393559b6838d41f,
            limb1: 0x9c6e82b63221ef825bbcd564,
            limb2: 0xb485ceb0cbacf6b,
        },
        r1a0: u288 {
            limb0: 0x74901cd7bf28a859001bbb61,
            limb1: 0xde7ced0748c0111794909751,
            limb2: 0x1bde12aa9a3117fe,
        },
        r1a1: u288 {
            limb0: 0xade086a662cc9ebcb854c63e,
            limb1: 0x1671ae8c9cf0f2b0c4375589,
            limb2: 0x146cc6763f547468,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4942a101b774bd79c7de2d7f,
            limb1: 0x635faf64bd836cae0ec0d35e,
            limb2: 0xe16de3f39c9a759,
        },
        r0a1: u288 {
            limb0: 0xcbd5beee986336d8e32f8bed,
            limb1: 0xec5a1e80448937c5470dc912,
            limb2: 0x10478bc5fc74dcf7,
        },
        r1a0: u288 {
            limb0: 0x7f675416594a986749da00d1,
            limb1: 0x9ad7ce900247a10e745819f3,
            limb2: 0x27e1953d156bf10f,
        },
        r1a1: u288 {
            limb0: 0xb605fad0601eadb9e03c3ea6,
            limb1: 0x553936e5d6138f1155925007,
            limb2: 0x1f7475cbadb4658a,
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
            limb0: 0xc2c0311022067d5ebd67aaf5,
            limb1: 0xb8fb703101a23f4aa988fe8d,
            limb2: 0x2936a01c5abc5c8,
        },
        r0a1: u288 {
            limb0: 0x223a2caf3a81d011b94bd957,
            limb1: 0x3adfaef03e6a1f68f52ed1cd,
            limb2: 0x2a387b3d7bb350fb,
        },
        r1a0: u288 {
            limb0: 0x29fc1a9a01f7e80770b52e16,
            limb1: 0xc67ba231e7c5fe0dd105168a,
            limb2: 0x1ac9a37eb34ca608,
        },
        r1a1: u288 {
            limb0: 0x2cbdd737768bdbe1b6279815,
            limb1: 0xfd27027245bf8a741b1cc4bb,
            limb2: 0x725465c1f12eee2,
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
            limb0: 0xafeaadcbfc328ba0ab103847,
            limb1: 0xf481584e1f58dd7d810cb585,
            limb2: 0x6baa1c836003519,
        },
        r0a1: u288 {
            limb0: 0x6b2e45098c0bc525afd5c9d8,
            limb1: 0xa664cddb7b5c0a6c16719c90,
            limb2: 0x10e90e68a4143bb6,
        },
        r1a0: u288 {
            limb0: 0x4e613603f349f1eaa9e6d4ca,
            limb1: 0xba93d4806385fa4ba0832628,
            limb2: 0x31db8aa9ef80f0,
        },
        r1a1: u288 {
            limb0: 0x69a984b016105f3b451b9922,
            limb1: 0x34c4816fa651d6638fa32e86,
            limb2: 0x6eb2a4549b87a06,
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
            limb0: 0x2bd0c115f34ae4959410631,
            limb1: 0xb2a20025d27f8e68e46a217b,
            limb2: 0x1d764482a79190c4,
        },
        r0a1: u288 {
            limb0: 0x601a1855399881f319647d18,
            limb1: 0x96689c8bee0fa4dcab2a9f2,
            limb2: 0x15883b414e057d75,
        },
        r1a0: u288 {
            limb0: 0x472c710091e5ee7bfb2608b6,
            limb1: 0x1b39777be1620fffb4e1069c,
            limb2: 0x1b9cadc782e1b4bd,
        },
        r1a1: u288 {
            limb0: 0x46421ed42522636a41eccac9,
            limb1: 0x573dda7d72f27e194666a93e,
            limb2: 0x23e8a019b8573818,
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
            limb0: 0xe47ad5f5604d24a5cfb0f062,
            limb1: 0x909f67870510e54aed6fcbce,
            limb2: 0x143dd13608fe5c72,
        },
        r0a1: u288 {
            limb0: 0x775529aa055b7ca04b0ce8e6,
            limb1: 0xd24271582990c54a8f577c13,
            limb2: 0x1030d585dbf64f97,
        },
        r1a0: u288 {
            limb0: 0x4d140d14c2d346674d2e3493,
            limb1: 0xf039c14f5b41e992d1d8e8a3,
            limb2: 0x25759cd44f16670b,
        },
        r1a1: u288 {
            limb0: 0x6d1561f15dfb1cbbeb146f7,
            limb1: 0x4805af0922de3db08e808be3,
            limb2: 0x1582558d3c4db476,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaba36aa1cdc99b11393943f7,
            limb1: 0xf9b95b5c616768adce3a4bcb,
            limb2: 0x2910618a727f6699,
        },
        r0a1: u288 {
            limb0: 0xa77a3c0465f70f9c18b0fd0d,
            limb1: 0x1ab0bf202cce3325daa2f55c,
            limb2: 0x79963373bd4935b,
        },
        r1a0: u288 {
            limb0: 0x725b1a7852f529fd437b7ef7,
            limb1: 0x57c4581a5a7da221d4d2ab36,
            limb2: 0x39b4fe804b8335a,
        },
        r1a1: u288 {
            limb0: 0x795f4cf2921093a45061f032,
            limb1: 0x3af41a4dd93c880f8970130e,
            limb2: 0x26aeded706161908,
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
            limb0: 0x3348d81b166b7c1c743055e,
            limb1: 0x67f0fa60070924ea385d0295,
            limb2: 0x26092016b4bb5327,
        },
        r0a1: u288 {
            limb0: 0x9cac218871228caf245899d7,
            limb1: 0x362dab1657ea7275c42b608a,
            limb2: 0x22cce04be38f99df,
        },
        r1a0: u288 {
            limb0: 0x2cc530a258237259a3e67222,
            limb1: 0x43c885976a2a4b7a61c8f624,
            limb2: 0x2fdadc3758ea5b20,
        },
        r1a1: u288 {
            limb0: 0x9757d085e147ada6dc7dac8c,
            limb1: 0xc122e612178b6b8ff638113d,
            limb2: 0x301808d89263d431,
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
            limb0: 0xc1b1fffa2831627d6d455854,
            limb1: 0xaffcede90ad1a0c427ef8080,
            limb2: 0x44cdd7992e49afb,
        },
        r0a1: u288 {
            limb0: 0x9a3f993973b54f57574a9ccc,
            limb1: 0x6753d2cadf6f1a0d7e489120,
            limb2: 0xe49ce0d60a4821b,
        },
        r1a0: u288 {
            limb0: 0x732d305c988d50327e0cc127,
            limb1: 0x2c8a0027b03cfd3c2268e9b6,
            limb2: 0x2bd2369c61713a9b,
        },
        r1a1: u288 {
            limb0: 0xb4741fd6bdc038bad9415a46,
            limb1: 0x327f794c4d52ac22834f81ff,
            limb2: 0xbe7619a4bd49936,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc5626c9078e9cf87f19d7edf,
            limb1: 0x6584875934a4cb4514bd2c46,
            limb2: 0x258dce8bdae2879a,
        },
        r0a1: u288 {
            limb0: 0xa79baf46dc65f6efc721a9fe,
            limb1: 0x1c0217166241cb50355d64e,
            limb2: 0x1e62d153b3d74baa,
        },
        r1a0: u288 {
            limb0: 0x3cdd196d44f9d78616e72ad1,
            limb1: 0xaa20159d0370c581a0036b60,
            limb2: 0x13613e6065c0bdd1,
        },
        r1a1: u288 {
            limb0: 0x1aa56d2e6cf8ee425d68d6,
            limb1: 0xd412b72a3fbae62a3fdd198b,
            limb2: 0x1b4b48765b63303,
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
            limb0: 0xf43c37a12c2fbfcfd7ee6776,
            limb1: 0xfd7bf5e5aabcb4635cf07936,
            limb2: 0x2ca06a96eaef225a,
        },
        r0a1: u288 {
            limb0: 0xd35a66a34511712c1982f9ed,
            limb1: 0x22499c1a7149ddf87c2471de,
            limb2: 0x2a83be579c5c11f,
        },
        r1a0: u288 {
            limb0: 0x55839128900f7ec9da919975,
            limb1: 0xccf72169d1950e886690d083,
            limb2: 0x2543b076bdf9ecdc,
        },
        r1a1: u288 {
            limb0: 0xce95b1e33331e8625c67ed00,
            limb1: 0xc76952ac683b17eb7bc10670,
            limb2: 0x38a7f806fd5a5d9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcb7393b6f9cc0665f7239912,
            limb1: 0x3ebac915377aeb3d5c04a988,
            limb2: 0x1a9c7718fae6fd79,
        },
        r0a1: u288 {
            limb0: 0x29080857c07277e1205e31af,
            limb1: 0xbd62973b85d7145ed4f07ba6,
            limb2: 0x21645e41fafbc73c,
        },
        r1a0: u288 {
            limb0: 0x12b368e0d5d79db39e1a8156,
            limb1: 0x5d970291fa5ef968d1cfe92d,
            limb2: 0x42357797e007f3f,
        },
        r1a1: u288 {
            limb0: 0xeff4f7cbe9ea9e6268f7dcc,
            limb1: 0x815f3bdb8dd5440bb377b0a3,
            limb2: 0xab24c1f6dab502d,
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
            limb0: 0xcafbc9866f3ad75ef04c0b7a,
            limb1: 0x8510d52725731b1a816ed5c9,
            limb2: 0x16c87741e9552282,
        },
        r0a1: u288 {
            limb0: 0x72fa17dfb55b0cb421a4a1f6,
            limb1: 0x318b6c7e291f74f9af5b94f,
            limb2: 0x2064861db27b68e,
        },
        r1a0: u288 {
            limb0: 0xa941f7ee0610e108b97817a9,
            limb1: 0x2c050d6bee30339cc0be6c88,
            limb2: 0x17c55c0a17d97bc7,
        },
        r1a1: u288 {
            limb0: 0xc4c767d01578577d7fbc77d1,
            limb1: 0xc7bcd82baf5da66caff4585e,
            limb2: 0x97155279d02d8e1,
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
            limb0: 0x60932f3b6cdc37be30697d6b,
            limb1: 0x9da0baafe153ba7cdbbe482a,
            limb2: 0x144b9a04eb47fe45,
        },
        r0a1: u288 {
            limb0: 0xc9249da1275389189973c0a0,
            limb1: 0x41f7a88f625cea9273feaee,
            limb2: 0x12a38d1e2e7aa484,
        },
        r1a0: u288 {
            limb0: 0xb7ac4fa2259874cc84b7a2d7,
            limb1: 0x6ef3e033a9633e14d3c6ee2f,
            limb2: 0x6255c87fa39830c,
        },
        r1a1: u288 {
            limb0: 0xa3ecee9d2c31d2ee414267c9,
            limb1: 0x66f43637112a27afcfcb9f5,
            limb2: 0x744a1b75dfa4e7a,
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
            limb0: 0xe98a63c0ca1613f5d6983cfc,
            limb1: 0xa1fd190f3f37d4c6bca601e5,
            limb2: 0x2da8a23e8b958d16,
        },
        r0a1: u288 {
            limb0: 0xba9a20c8ac9ffa1c64aef4b5,
            limb1: 0x693b581a0a7156d76b2d35f8,
            limb2: 0x11985a32daa592ff,
        },
        r1a0: u288 {
            limb0: 0x135d5af15cca917e274d62d7,
            limb1: 0xec6ed6a044ab53d70e3f1b5,
            limb2: 0x28124c059414831,
        },
        r1a1: u288 {
            limb0: 0x521bc64aa9e6973c64d939aa,
            limb1: 0xbe5e4007451929598bff542f,
            limb2: 0x1acfe43872335bac,
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
            limb0: 0xdd5703958ecb83ef9dad07d2,
            limb1: 0xb4865847133894684202de04,
            limb2: 0x1c743797f26e2a3a,
        },
        r0a1: u288 {
            limb0: 0x479f813f0fc3c7db90043630,
            limb1: 0xe607ed884e3dbdbf56fd7665,
            limb2: 0x65ef59fbe50c2f6,
        },
        r1a0: u288 {
            limb0: 0xf26af5019b49f9ca70a44254,
            limb1: 0x4c126f0cafbf38b09558fb42,
            limb2: 0xa1baecd120856c4,
        },
        r1a1: u288 {
            limb0: 0x60b36891a24b342f288e2022,
            limb1: 0x3e13d513bca959cf5ecd1a0f,
            limb2: 0x9ab01bd59cd1241,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd77eea13b79c9dfe783e931e,
            limb1: 0xc00d24de199a79739a8c5df6,
            limb2: 0x1cd97af959e62d10,
        },
        r0a1: u288 {
            limb0: 0x27a30257f97bee0597bc665d,
            limb1: 0xb4ed90d092354d69b1637be1,
            limb2: 0x1ff33d0c70ce0e5e,
        },
        r1a0: u288 {
            limb0: 0xdf324491c0388b7c9749579c,
            limb1: 0x4478c10057852440ac292a3f,
            limb2: 0x302c6e9d30d0249a,
        },
        r1a1: u288 {
            limb0: 0x1bf9e871e6cab91440b666bf,
            limb1: 0x3f3fe771f87cafab2addae4b,
            limb2: 0x269a9993251d7068,
        },
    },
];

