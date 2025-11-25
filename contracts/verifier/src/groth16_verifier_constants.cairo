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
            limb0: 0x9651930555fe5bed11b2e03e,
            limb1: 0x732ce755a3f7a7633a5a3590,
            limb2: 0x280d2f11cdd583c0,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x70edd730f10171cfb2573e8a,
            limb1: 0xa43e97cf937e6ed037991554,
            limb2: 0x14108d80a88cc4e8,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xa9d44393cea3a14e21ddfc19,
            limb1: 0xe19b5c17d1462aff8e76c01e,
            limb2: 0x782c92d870d3d01,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x32ae1a07160284a372ed6804,
            limb1: 0x64f5d17ef34d1344a8fc2bfc,
            limb2: 0x2de65ac1d67a840f,
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
            limb0: 0xa3f2dea9d00c888d95142e05,
            limb1: 0xb9ae5c1e913899f2570fc1d8,
            limb2: 0x6e1c76acf2cf294,
        },
        r0a1: u288 {
            limb0: 0x4b25bcd6b4e68649642e5c3f,
            limb1: 0xd88891530f634d843d974ed3,
            limb2: 0xc6757c9d1a84d89,
        },
        r1a0: u288 {
            limb0: 0x71bbc53557d9d9d5cb799bcc,
            limb1: 0xdec9a7430940cde01b658403,
            limb2: 0x453add6f2614682,
        },
        r1a1: u288 {
            limb0: 0x190814f2e5cb2b62654fdcd1,
            limb1: 0x2d46af7fdcbcaf9f62f7b185,
            limb2: 0x227ee3154c7c2736,
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
            limb0: 0xc47eebe36c1403894368cf42,
            limb1: 0xfea1e997f048be6b4071a8b8,
            limb2: 0x298287081204ad94,
        },
        r0a1: u288 {
            limb0: 0x1d4c0db6873a05cd744ea108,
            limb1: 0xdfc7b463721e0ad959ea1bbe,
            limb2: 0x23fcf6a90f89529f,
        },
        r1a0: u288 {
            limb0: 0xf6b60557e446b2410d03617b,
            limb1: 0xd9869e7378408a7d7c1be68d,
            limb2: 0x2c10a09beed059a6,
        },
        r1a1: u288 {
            limb0: 0x4f69b59a565560b4732d2076,
            limb1: 0x8b099636a4c4a8be3489b90c,
            limb2: 0xde56b5d94b578f3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xad39c77c36031636d7158a4,
            limb1: 0x441fa2ba96ef9ea56f6df987,
            limb2: 0x13e1d66ba3df3dcd,
        },
        r0a1: u288 {
            limb0: 0xd8533baade1abcdfd8f49e10,
            limb1: 0x9d829426d573e432c016141b,
            limb2: 0x2c79639e103089c2,
        },
        r1a0: u288 {
            limb0: 0xdc3ce94d86a06f6cc5c1058c,
            limb1: 0x46a3d112464e3bd7192816f7,
            limb2: 0x17326e9ddfbf2ed3,
        },
        r1a1: u288 {
            limb0: 0x5b6dc5664f4654d3c90a3d74,
            limb1: 0x5326fd483fa6f1d41488c725,
            limb2: 0x1449e1506b19fe6c,
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
            limb0: 0x36c1a16e70d080087bf59740,
            limb1: 0x202a19eabf3592b96224d083,
            limb2: 0x2757e574b8cf54c5,
        },
        r0a1: u288 {
            limb0: 0xc66e0736698e612b5c6d48cc,
            limb1: 0x7294fd0259a54f0e9ea17d18,
            limb2: 0x11c1a038f6fd9fbc,
        },
        r1a0: u288 {
            limb0: 0x159755d624da87ea8fdb6cab,
            limb1: 0x29950ea8663c49dbccdcf8aa,
            limb2: 0x630cc1659d2cab9,
        },
        r1a1: u288 {
            limb0: 0xb1ccb6c8e424f3d37c04140b,
            limb1: 0x6f83a5ef97e3bdaebf8ae8cd,
            limb2: 0x2f1d9efb648d122b,
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
            limb0: 0x39bcca3c18ae98e8c2403fdd,
            limb1: 0x310369ba340849b6a2733b4b,
            limb2: 0xde8d11cee7f9046,
        },
        r0a1: u288 {
            limb0: 0x9972dae6fdc5ebde363faf3,
            limb1: 0xa321f9e5f7b01c1710158b55,
            limb2: 0x2eff59a1e2a9734a,
        },
        r1a0: u288 {
            limb0: 0xc2c66f02818392bddb8d305a,
            limb1: 0x31400461e6508d21149d5e11,
            limb2: 0x1d4d9921125dfd69,
        },
        r1a1: u288 {
            limb0: 0x322761ed63c2061504b2aae8,
            limb1: 0x9cfb84aadbc4f9515358ded2,
            limb2: 0x1bb4ad963fa2a9fa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d25a33eb30e5e267b9e760d,
            limb1: 0x99e123e44f37197133cef204,
            limb2: 0xbbb20ec11f1ca52,
        },
        r0a1: u288 {
            limb0: 0x311a3e25ef0832fd23445b23,
            limb1: 0x8c9954088791b8d900fbb3ca,
            limb2: 0x118eafe823bc8423,
        },
        r1a0: u288 {
            limb0: 0x3f974386a672644fd4d0abbe,
            limb1: 0xa56a2d8d83050bbbe8e1f8cc,
            limb2: 0xb35c50ff9f15fa1,
        },
        r1a1: u288 {
            limb0: 0x518395361e13302d81f52620,
            limb1: 0xddfcb339aa7688ba2ef2e82c,
            limb2: 0x2ae69e64653cb26,
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
            limb0: 0xc3af150531e62f2647bf0948,
            limb1: 0x4bed63dcd856480c01777111,
            limb2: 0x95c8ec81d8fae16,
        },
        r0a1: u288 {
            limb0: 0x490f7c110dd12af8f04aa4dc,
            limb1: 0xba1c861b8239b809872be22f,
            limb2: 0x1c3343fc226f9213,
        },
        r1a0: u288 {
            limb0: 0x8546eeb30af00b0cace799f3,
            limb1: 0x2aae054095b10ab4c4ab9693,
            limb2: 0x100c0d028f0bc4e4,
        },
        r1a1: u288 {
            limb0: 0x99107cee0c664bd3542ad43f,
            limb1: 0x4e59fa644464cb4e7aa2f633,
            limb2: 0x633e2922d653ae8,
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
            limb0: 0xa3d48b7a926b93fd855326d,
            limb1: 0xf0efe53784fd64aa452affc1,
            limb2: 0x9c2e7421062a810,
        },
        r0a1: u288 {
            limb0: 0xb0fbe7a987a945ae20ff67ed,
            limb1: 0xd7521c1b48cdd704f2b1b5ee,
            limb2: 0x19673d71d7461c4c,
        },
        r1a0: u288 {
            limb0: 0xc7259c50a34ebed4f8d843,
            limb1: 0xe7ecc396311854a0a1cd4fba,
            limb2: 0x271866699d67fe50,
        },
        r1a1: u288 {
            limb0: 0x2a4d589e1135df3e3ef4b0a,
            limb1: 0x2dfb9be853aa3d592c45f4dd,
            limb2: 0x2c7a161149ddc4b7,
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
            limb0: 0xaf2e88f838a1fb6545df5e4c,
            limb1: 0x11a05b52812317bd60f3bbb3,
            limb2: 0x136a247d969da19d,
        },
        r0a1: u288 {
            limb0: 0x22846748053b4f28d10c5ebf,
            limb1: 0xeaa105349fdf841e17d517fa,
            limb2: 0x21e27cb04c8fe664,
        },
        r1a0: u288 {
            limb0: 0x8382924e8f9c736fece467b0,
            limb1: 0x88bd3361df83a6335c898b6c,
            limb2: 0x27a285eaa8b5df0,
        },
        r1a1: u288 {
            limb0: 0xd1326e05161715fba8c9f399,
            limb1: 0xf119ae3ef8792bbc2ee3b908,
            limb2: 0x1f2a3818f166933d,
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
            limb0: 0xd57dbf721f8fc2e22a1e07dc,
            limb1: 0x7697e0aeb6e108e5e42696f3,
            limb2: 0xa44b24bddfa9628,
        },
        r0a1: u288 {
            limb0: 0x8c1607396ed38ceb41745db0,
            limb1: 0xb5c969b8c37a2b10db0e0422,
            limb2: 0xd3a28d029462ece,
        },
        r1a0: u288 {
            limb0: 0x22dadef2a4cb0d61b2132d3c,
            limb1: 0x89dfa26867b0f3d143aef42e,
            limb2: 0x12e2d5b597287630,
        },
        r1a1: u288 {
            limb0: 0x43e35564935ce60636011b62,
            limb1: 0xdd13915a305888cf3720917c,
            limb2: 0x99d97d6b7752392,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdcea49c169b9c3e0ceb2fabe,
            limb1: 0xed327c156965b6b9ecbf1671,
            limb2: 0xd9577bb8816c41c,
        },
        r0a1: u288 {
            limb0: 0xa65d87b9f894e75af2d2040f,
            limb1: 0x53f84233c0a4e7f48570e9bc,
            limb2: 0xb36b5d022224c4c,
        },
        r1a0: u288 {
            limb0: 0x1bf74e2c27f3a02ff40614cd,
            limb1: 0xb0cdec14c0ee7060075fe4b2,
            limb2: 0x27f9bb587f38762c,
        },
        r1a1: u288 {
            limb0: 0x9b9dec11dd107f0f5f4840de,
            limb1: 0x7919c3a4ae069cea899c3b77,
            limb2: 0x2a3c971725e57a83,
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
            limb0: 0xf7aec33c15e5cc0a98e86030,
            limb1: 0x6709493dc12b5f21e81f878,
            limb2: 0x3c62bd3eb28fa0f,
        },
        r0a1: u288 {
            limb0: 0xb245d65ac3ca4b7235a49a75,
            limb1: 0x4646530edaca1be5269a781b,
            limb2: 0x19e96a5c9395b438,
        },
        r1a0: u288 {
            limb0: 0x6610946dde5eb528be19b7c,
            limb1: 0x909a81dbd074d5f9374e88d,
            limb2: 0x1fd95e1c896a6d4e,
        },
        r1a1: u288 {
            limb0: 0x6de0f8fc3b836f68624dd9c9,
            limb1: 0xe8d36f8beefd7899943e1a02,
            limb2: 0x254388986dbcf7a,
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
            limb0: 0xf51702428f1553b4b2e15642,
            limb1: 0x9bd213b7b5ea3889eca4411e,
            limb2: 0x1fdeca4741410f2e,
        },
        r0a1: u288 {
            limb0: 0x9422dd26fe5443bf25e884bb,
            limb1: 0xd785595c933bbfa71d9ca5e7,
            limb2: 0x24951b4a566890c4,
        },
        r1a0: u288 {
            limb0: 0x25f77ac6b20ffe50fa652f1e,
            limb1: 0xabfc79a6a67a4a86b4d53a06,
            limb2: 0xd7982bc7e1512ef,
        },
        r1a1: u288 {
            limb0: 0x9e1d53be2644eb4624138e81,
            limb1: 0x631aec46f235a07891a3c40e,
            limb2: 0x1466b26a1dc62460,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6f6b9474151dddf5b263948b,
            limb1: 0x8895ae464d95565165010116,
            limb2: 0x113a0197884b335e,
        },
        r0a1: u288 {
            limb0: 0xafbcd1a62c1b81cc525471f7,
            limb1: 0xb94d5045274f2c8d192eecae,
            limb2: 0x197742a5fee1b54d,
        },
        r1a0: u288 {
            limb0: 0x9f507632be9c011680498477,
            limb1: 0x2b3e4c62732ff5a76b185594,
            limb2: 0x2d3b5afe06ccf8ea,
        },
        r1a1: u288 {
            limb0: 0xec7a76d9de4f4caf06c1243b,
            limb1: 0xd8681894ac09fa447a028cbb,
            limb2: 0x2bf3da747a559c9,
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
            limb0: 0x97a8ddedaf16d64ed018fb8c,
            limb1: 0xf3df4ee63cfc0cba6502dee1,
            limb2: 0x30644a95a96b6834,
        },
        r0a1: u288 {
            limb0: 0x4c744a1aac9921eff2e25be4,
            limb1: 0x616c90fd970043fad4ea7ccc,
            limb2: 0x177c96c13dcb5af1,
        },
        r1a0: u288 {
            limb0: 0xdce74df998d7e91959a662ff,
            limb1: 0x49d7ba5d4ae86be3fa26585c,
            limb2: 0x2595f40a36b02890,
        },
        r1a1: u288 {
            limb0: 0x7fe72dd0d46c73811dabcf24,
            limb1: 0x48707aa2b3ba6b89ead5b5ce,
            limb2: 0x2b9e7a069ebc282e,
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
            limb0: 0x1e2a954a383292d48e32c3a8,
            limb1: 0xa36d05bd8a9fcc919ad3d071,
            limb2: 0x6ca1189558ca4d4,
        },
        r0a1: u288 {
            limb0: 0xb81a164ee63e484ed78474d0,
            limb1: 0x8dc9d45a5f5e0863b80d9650,
            limb2: 0x258b3c258a76e0ea,
        },
        r1a0: u288 {
            limb0: 0x15ce303e2930edcd8a17a28,
            limb1: 0x41c16c4109a4628b2df0f068,
            limb2: 0x199b0a1727775993,
        },
        r1a1: u288 {
            limb0: 0xb63074cbf2cacd7681e3d8a8,
            limb1: 0x1cca0977432bbae3fa3a65e2,
            limb2: 0x1ce04f049203287e,
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
            limb0: 0xd008640043657ae13257f82c,
            limb1: 0xd1fad7daf4a57014dbe5fce5,
            limb2: 0x2958aa58d19abe2b,
        },
        r0a1: u288 {
            limb0: 0xb5d1377fe85ed3ddd939c38d,
            limb1: 0x1344c863613a7414f0c8de1,
            limb2: 0x1846ce66ba87ac90,
        },
        r1a0: u288 {
            limb0: 0x80d37e1196d07c8303d65bdd,
            limb1: 0x4e42ccbd1f6948bac98fcd3b,
            limb2: 0x10c98f4a4232053,
        },
        r1a1: u288 {
            limb0: 0xba3f66ad3a38939e3ec10957,
            limb1: 0x6e4bc4dae91f93a8a12e280,
            limb2: 0x2b8cc38b9da13e47,
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
            limb0: 0xa7d3135e4dbd01dcfe9baf87,
            limb1: 0xae8573807c8be0bf32244091,
            limb2: 0x6477237263fc1fa,
        },
        r0a1: u288 {
            limb0: 0x25b228361593d619aa8ca913,
            limb1: 0xa4832c98dab01fe0e74dbcad,
            limb2: 0x5ddb5103ce01117,
        },
        r1a0: u288 {
            limb0: 0x7bbece9ae310f7bdff9bc2c3,
            limb1: 0x38a03548f4b333f7328a3ff8,
            limb2: 0x2c1c34a96ff29859,
        },
        r1a1: u288 {
            limb0: 0xa56b28722096026f9a3773e9,
            limb1: 0x80453401edbc8ce38d75aca0,
            limb2: 0x2838df489c487c11,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4711236389c40e7256013947,
            limb1: 0x6cd1f412c5761922af37367d,
            limb2: 0x1c819851b6ce557b,
        },
        r0a1: u288 {
            limb0: 0xa01d8e01d96b0d523a095217,
            limb1: 0xd8f21d4a5374e65d49806b04,
            limb2: 0x407d676f526a21e,
        },
        r1a0: u288 {
            limb0: 0xe09a04c59c55c4685b9a14c3,
            limb1: 0xf642c8c4756413cb35b11aa,
            limb2: 0x581a551a7999fc,
        },
        r1a1: u288 {
            limb0: 0x26c7bf579d5bd03cbed011fc,
            limb1: 0x63df19570f0b39ccea7c4f73,
            limb2: 0xeaf3ba9f5ca546e,
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
            limb0: 0x216b26f7c7ef95fb232a98ca,
            limb1: 0x25d68740bdbaeefff37b7e36,
            limb2: 0xba433ed06feeaec,
        },
        r0a1: u288 {
            limb0: 0x94435db78799c058d6453a14,
            limb1: 0x15ce34fa3c9263f77bb438e7,
            limb2: 0x5d203a3b0da9420,
        },
        r1a0: u288 {
            limb0: 0x46dde4ea399fb22844389274,
            limb1: 0x54cc326edf3f9b98572a3867,
            limb2: 0x1f1f625dd4634392,
        },
        r1a1: u288 {
            limb0: 0x61f9e62dc6d412e6b9e73407,
            limb1: 0xcc7bdb4dcc110834b2e4b189,
            limb2: 0xde4f738b02fddaf,
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
            limb0: 0xfd1ea498c8b5299d0b559c12,
            limb1: 0x936a755a7cfca2def9bab433,
            limb2: 0x28a00225626ef95f,
        },
        r0a1: u288 {
            limb0: 0xbd311994ad073b32857015c8,
            limb1: 0xed736b9f3b53171b581e2c7d,
            limb2: 0x1d9803acf48ed750,
        },
        r1a0: u288 {
            limb0: 0x8a6596f9901d20d4a3666a80,
            limb1: 0xb56450c4ee16e1ca24943afc,
            limb2: 0x171bb09fc9e30002,
        },
        r1a1: u288 {
            limb0: 0x2f80869b4fc23d53ede9fec1,
            limb1: 0xd10343910f713f70753a8982,
            limb2: 0x2fa7c800a805ed51,
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
            limb0: 0x34cbc6e133210abc4bebec53,
            limb1: 0x2ef780b93ef1a8930a0adaf2,
            limb2: 0x979ee2efc9eac3b,
        },
        r0a1: u288 {
            limb0: 0x8082a1abe74e92317e71f858,
            limb1: 0xdc8882d9acde4a1fa14dd356,
            limb2: 0x2d6c9eb74ca4b20f,
        },
        r1a0: u288 {
            limb0: 0x1cc961f98eefaf85ecb31803,
            limb1: 0xfd4a1635bbbbde9ead20866,
            limb2: 0x2fa465f55f88e7f4,
        },
        r1a1: u288 {
            limb0: 0xe825eac740bb7175a65c14dc,
            limb1: 0x1671bc4e6fe8daf8aef59fc5,
            limb2: 0x29821b9b28243e19,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xacc15452386fc85910b9c5a1,
            limb1: 0xa08adea35ea8c1d2fc7bbf23,
            limb2: 0x1cfe2e901f8fb63,
        },
        r0a1: u288 {
            limb0: 0xe2eae0ad934fa123eacf0eed,
            limb1: 0x50a3f5bef71afcc14beaa942,
            limb2: 0x2442383f17c98a3a,
        },
        r1a0: u288 {
            limb0: 0xe55dec634a217d503d0bad86,
            limb1: 0xc388047d0cf4704cbe2419,
            limb2: 0xb8bbf3bb24ba0f6,
        },
        r1a1: u288 {
            limb0: 0x1dc2109a2c39ced339b2a9d6,
            limb1: 0x51cd528f4afeb869d52923e9,
            limb2: 0x27b03219f77246c9,
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
            limb0: 0xaf2bc605debadadbbcf8b8ec,
            limb1: 0x3ce7469344290450d206c8ed,
            limb2: 0x178fbf916214874b,
        },
        r0a1: u288 {
            limb0: 0x38fc700be7845497ede580b0,
            limb1: 0x914857f1cf464c0031e35bf,
            limb2: 0xf84fa2ea135a0b3,
        },
        r1a0: u288 {
            limb0: 0x47ad03411b5082c30d3b342c,
            limb1: 0x2f53995154ba5b24d8c0cac4,
            limb2: 0x2481b102645fcebf,
        },
        r1a1: u288 {
            limb0: 0xb0ebefb1b92fee42beb79673,
            limb1: 0x94ddc3442d550cfff2f2eaef,
            limb2: 0x17ccd5320e83bd45,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb3e36e1622390c6da205ed13,
            limb1: 0xf449e9e4b5aeeabec868a8bc,
            limb2: 0x10c07c4a0068d817,
        },
        r0a1: u288 {
            limb0: 0x8ace3bf5091825eb8384231d,
            limb1: 0xcaf9dff559ea3fa8a9e91d69,
            limb2: 0xd1beb8291e78d8e,
        },
        r1a0: u288 {
            limb0: 0x8d3a2f81246be26f30797fee,
            limb1: 0xccef1062c6aa03c109475cb2,
            limb2: 0xa7a05bdae4cc697,
        },
        r1a1: u288 {
            limb0: 0x7c93855f914a0d40accd611e,
            limb1: 0xdbbc922e215857ce2e93da35,
            limb2: 0x68af987563ea368,
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
            limb0: 0x90e73c6f68d6f44f9ac29ddf,
            limb1: 0xce651902c5617babde82be5c,
            limb2: 0x197185bd5b5b64c3,
        },
        r0a1: u288 {
            limb0: 0x9757487e38d3cee06ec6a097,
            limb1: 0x3bb9ba826617a1a0dcea69cb,
            limb2: 0x2df94e09220d5da2,
        },
        r1a0: u288 {
            limb0: 0x3d2560392ebaf6ffa2a3e51,
            limb1: 0xfac126bb2c34951bf3f0af94,
            limb2: 0x951ac91a4da6e60,
        },
        r1a1: u288 {
            limb0: 0xde07d25d982aaf56226a92bb,
            limb1: 0x565a327566f874f5b86a2977,
            limb2: 0x18afb58a349279d7,
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
            limb0: 0xbcca7a358e4a93492e3330c5,
            limb1: 0xe337bfb73a91464717ef919e,
            limb2: 0x24b6aaf58caff70a,
        },
        r0a1: u288 {
            limb0: 0xb5c90deb4d962daed5ba383b,
            limb1: 0xc0724633d2b1430f7f3fc7d,
            limb2: 0x7ee27ff5dd53f27,
        },
        r1a0: u288 {
            limb0: 0x3db50e416d0504d86ded6706,
            limb1: 0x19944ac84b73ee9af6c4ebdc,
            limb2: 0x2e3616f91a1eda10,
        },
        r1a1: u288 {
            limb0: 0xae014a4e93676758d33ec0c3,
            limb1: 0x96171504600b419acca6a050,
            limb2: 0x6c5b1bbb7c90454,
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
            limb0: 0x18589a2c647db52cf02ad6b6,
            limb1: 0xacf1fae294584bc22bd9e1dd,
            limb2: 0x1be1ebd73dab93da,
        },
        r0a1: u288 {
            limb0: 0x1dc94c9720cc811b8eeeaf08,
            limb1: 0x4bad7bc9cc7f88ce63de3c5f,
            limb2: 0x12f8e3e6a09d39d4,
        },
        r1a0: u288 {
            limb0: 0x239ad89772a1349daddc1caf,
            limb1: 0x66153faa33e9ae600900fbd4,
            limb2: 0x39b1fc0d57bfa4e,
        },
        r1a1: u288 {
            limb0: 0x6fc6969e9aa7b6b31813708c,
            limb1: 0xbb627df7ad2367475383bba9,
            limb2: 0x1bbd30d7d398dff8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xebb5066d619e95660a68eab4,
            limb1: 0xf5b1e8ef51247607f19e4944,
            limb2: 0x185103f67e89d12b,
        },
        r0a1: u288 {
            limb0: 0xf69e4d5503c4112c2bbcd327,
            limb1: 0x694f75b7f6737e3e11c4f8d5,
            limb2: 0xa618c736a6945da,
        },
        r1a0: u288 {
            limb0: 0x3da861478f9cccc0d2e534bf,
            limb1: 0x4b1f5f2d857b16a80dcc711c,
            limb2: 0xc518c57a35a5db4,
        },
        r1a1: u288 {
            limb0: 0x6b3f61ded5998be3de70125a,
            limb1: 0xc20b252b527ab4dc33f6d90f,
            limb2: 0x1b688080de085d83,
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
            limb0: 0x356fe9c419e9bfa48e8a08c2,
            limb1: 0xb0ffb17fb4839792830157b5,
            limb2: 0x96baf5f350e00da,
        },
        r0a1: u288 {
            limb0: 0x7ebbca0673f31999db59e1ac,
            limb1: 0x68f9bcc8e436b1647e9a535c,
            limb2: 0x1d52c6c240e073f0,
        },
        r1a0: u288 {
            limb0: 0x17ac0f631ce8e10c33b48efc,
            limb1: 0x2357da9f170747dcae24569d,
            limb2: 0x13eb3411c427aa10,
        },
        r1a1: u288 {
            limb0: 0xc44960a8bae04041f158f061,
            limb1: 0xad31c5b42f99d9f4e5cb1e0,
            limb2: 0x1b4560a5162f1cc5,
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
            limb0: 0xd76158a6790d14dc425568d4,
            limb1: 0xa5ac37772660732f8401113e,
            limb2: 0x282a4d0a874259fa,
        },
        r0a1: u288 {
            limb0: 0xd74a035896c92de291507a1c,
            limb1: 0xc28492011d273f322409215,
            limb2: 0x243ed1391fe4f324,
        },
        r1a0: u288 {
            limb0: 0xa60d74cd1806c9aae33e688d,
            limb1: 0x221673277df5e64820831303,
            limb2: 0x31884d0c30f647e,
        },
        r1a1: u288 {
            limb0: 0x89613a4b9326aa7b6b4dc76f,
            limb1: 0x1edd0fb17f77760ca7d71b80,
            limb2: 0x7bd5889fa6c89f0,
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
            limb0: 0xed6e79855fc40489acd76f89,
            limb1: 0xd05493849fc57ee7efeb72ec,
            limb2: 0x2b1f38b0dad061b5,
        },
        r0a1: u288 {
            limb0: 0xc9c408127a09a98a8e1fd10c,
            limb1: 0x444d8a21855c818b666c9991,
            limb2: 0x1c5b868f2eeef7dc,
        },
        r1a0: u288 {
            limb0: 0x3bbd19c6857872d1bdc45985,
            limb1: 0xa3dd9182ad6f55d45d831d0f,
            limb2: 0xa109d6e65e1db62,
        },
        r1a1: u288 {
            limb0: 0x3b6781a479113369ffe96e65,
            limb1: 0xf433b1bee55dc98f4e269669,
            limb2: 0x168e65dddcdf1876,
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
            limb0: 0x5fa095ae760d74902f77377f,
            limb1: 0xe0890c1e780fee98d1b67c4,
            limb2: 0x2f963c329a2a859e,
        },
        r0a1: u288 {
            limb0: 0xd1d1b6e4f18de142a5b642b3,
            limb1: 0x39fe152350475988299e210f,
            limb2: 0x1d06e6c181b787fd,
        },
        r1a0: u288 {
            limb0: 0xa0f30050e048527a54f19629,
            limb1: 0x55f05b5d9d6c680d46aa546c,
            limb2: 0x303f3d3231146f20,
        },
        r1a1: u288 {
            limb0: 0xcef031e9083e1991434ab914,
            limb1: 0x3758e69e0e99be56d9802a,
            limb2: 0x2d1fb97e52396c69,
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
            limb0: 0x92138d0ed5e65cf9b8475bb4,
            limb1: 0xdfc1a96306bd76a1e22050f1,
            limb2: 0x23e97b8311ab0828,
        },
        r0a1: u288 {
            limb0: 0xc9e7c3f87ba4929d7255e822,
            limb1: 0x9dfb1e700017923523d6c7f2,
            limb2: 0x1f5140349fc960e7,
        },
        r1a0: u288 {
            limb0: 0x7c9eb1c428f7416e85f1be7,
            limb1: 0x9483cf6bf55d68b98cc444b2,
            limb2: 0x16b553b1cd610def,
        },
        r1a1: u288 {
            limb0: 0x537423a70592ab2d87d85a41,
            limb1: 0xab102dc69e3374e7ad15c1b8,
            limb2: 0x118054969f1e4906,
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
            limb0: 0x29bff0a8a119bc79afe1c969,
            limb1: 0xf0cce43e3a960db3e4d47814,
            limb2: 0x2f34362d01896744,
        },
        r0a1: u288 {
            limb0: 0x47ba06aa68c3193980cdb9f8,
            limb1: 0x20d72e9e068a4c4d6234dd35,
            limb2: 0xbb4e1c8a794e537,
        },
        r1a0: u288 {
            limb0: 0x5a9036b63c2133829ed7a313,
            limb1: 0x6ff0a4aaa1ea7d20c3225de5,
            limb2: 0x15e4de5ff0962221,
        },
        r1a1: u288 {
            limb0: 0x707d719fcae5948ad1a7b577,
            limb1: 0x6894b5e03e6a4a5cd0d4f871,
            limb2: 0x1354a6dfeb106fab,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x69a576fbd541674988758ef7,
            limb1: 0x5c22cd277b2f1398709c34ac,
            limb2: 0x1cfc5d3a509ec12b,
        },
        r0a1: u288 {
            limb0: 0x3c074482393c9325ec4c0ec0,
            limb1: 0x6efa0c3f76c09a856437e427,
            limb2: 0xe91c232508b9ded,
        },
        r1a0: u288 {
            limb0: 0x2f9f1d7b7d5a1d2a333c9db4,
            limb1: 0xee5f224db6eb42bb97ad424d,
            limb2: 0x1ca5f1eeaceecf00,
        },
        r1a1: u288 {
            limb0: 0x8174faa3afca0bbf737b6252,
            limb1: 0x69f2e3f73ad4b63c0a2176d5,
            limb2: 0x2eadc1788c845d94,
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
            limb0: 0x630fe88efccdc6539c1bf003,
            limb1: 0x8ec74325cccdfdb427d427b8,
            limb2: 0x92bac1c09652fec,
        },
        r0a1: u288 {
            limb0: 0x2299d0ba0283b762e970d875,
            limb1: 0x7484ace124e58096fe063d45,
            limb2: 0xe0ee6157f994465,
        },
        r1a0: u288 {
            limb0: 0x3a1f7f83954b0034c3bcea5b,
            limb1: 0x15188463ddbc738bfbe054db,
            limb2: 0x22ecd3fda6c2e045,
        },
        r1a1: u288 {
            limb0: 0x9b4ef337c0cfac4b81f43f5f,
            limb1: 0xf1e457fc269ce99e9e2a131,
            limb2: 0x28fed4132b59e7d9,
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
            limb0: 0xdb703ad4510ebd2e55c2dba0,
            limb1: 0xdd0bd7e31fc962027eef980f,
            limb2: 0x3041dc5e5e4c15ca,
        },
        r0a1: u288 {
            limb0: 0xaad43682b0d4dc4fe03149c,
            limb1: 0x16702734bc7c0b1ee8f8592e,
            limb2: 0x23548352a7e7732d,
        },
        r1a0: u288 {
            limb0: 0x741e305540b36f2646c641cf,
            limb1: 0x900255fa05efed984aff2e20,
            limb2: 0x222f48251d3c4e40,
        },
        r1a1: u288 {
            limb0: 0x391fd6445f39b36cdff8fee5,
            limb1: 0xc1cb0cf48fb3f59b4c55bd3,
            limb2: 0xdfada29c1cc5581,
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
            limb0: 0x97eeab3fe6198d71e4504f79,
            limb1: 0xfba4f3c1ca83d1cecc61e448,
            limb2: 0xe0226190832ca7d,
        },
        r0a1: u288 {
            limb0: 0xa268f2e66af474b5ecbaf1db,
            limb1: 0xd82c8f42758994648c3ad3c2,
            limb2: 0x19670998d5429820,
        },
        r1a0: u288 {
            limb0: 0x9ac9e2d7678cd8b85d4a14fe,
            limb1: 0xf36a242c65933e9fb90d9edb,
            limb2: 0x1dfeb6f61dc706eb,
        },
        r1a1: u288 {
            limb0: 0x3e64698106b4ea076630bd10,
            limb1: 0xedf8ebbcc8c64349728aa1b1,
            limb2: 0x11b4b0245304c2f8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbb85dc0df0792c189c94ec1f,
            limb1: 0xa642af4fdde0acc1b9262db,
            limb2: 0x2d5e5464293bae06,
        },
        r0a1: u288 {
            limb0: 0x29a8c6afecf60ac93147d20e,
            limb1: 0x65a0d9c446989c5b03cead18,
            limb2: 0x2bc020a66c303a50,
        },
        r1a0: u288 {
            limb0: 0x6fb5b3548a80dcd9a43e4bd3,
            limb1: 0x3e9066916f26880c36c66ce4,
            limb2: 0x27abf374fd3765b2,
        },
        r1a1: u288 {
            limb0: 0x3ac0a7b1f0c904ea86870bd7,
            limb1: 0x584e9a2de3b0749dc7e7a78,
            limb2: 0x1080a134880bf569,
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
            limb0: 0x5849fa531e74e5bafe26d059,
            limb1: 0xfaae4f16a8852277d296ac48,
            limb2: 0x240417fc196c3855,
        },
        r0a1: u288 {
            limb0: 0xe53c8e654212b0ed7690e2eb,
            limb1: 0xa00556b7923cb1800eec4484,
            limb2: 0x2390f0d7c347833f,
        },
        r1a0: u288 {
            limb0: 0xf694237aa81222e58fcdbe74,
            limb1: 0xf172f52e252c3e02d88ebff7,
            limb2: 0x1d10ab8dd281904d,
        },
        r1a1: u288 {
            limb0: 0xad5960284cf29c8dcf8168a4,
            limb1: 0xa1bd249352d2f74d1d2a5f60,
            limb2: 0x2d30d1f043e226f9,
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
            limb0: 0xad77969e3b269dea37013bb8,
            limb1: 0x7ecb656609562adc5d765e8,
            limb2: 0x2303feae91c498eb,
        },
        r0a1: u288 {
            limb0: 0xdc57cc1b69edca3241682590,
            limb1: 0x61a971dfef1650bf179d9c21,
            limb2: 0x2923a9b513045ae0,
        },
        r1a0: u288 {
            limb0: 0xb0e8e3c2d5681e97c898db,
            limb1: 0xe35acf5c6902a3bf024281f3,
            limb2: 0x50cf45d2a3cd1f3,
        },
        r1a1: u288 {
            limb0: 0x54dced3908a58a0b2060c5a6,
            limb1: 0x5ab70d8b65be033d7a9c31e6,
            limb2: 0x1419dc061bf9596d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1315308482682143a9a0f40a,
            limb1: 0x926fe421cf17ff48caed28ed,
            limb2: 0x3664b0838835d45,
        },
        r0a1: u288 {
            limb0: 0x55c6db39e3892c892bbe3162,
            limb1: 0xb79b40824d40e669c25e8ae3,
            limb2: 0x19b4ed7188f730bf,
        },
        r1a0: u288 {
            limb0: 0x38e886c3357136bafc1f7ce2,
            limb1: 0xdfc3774d217e7c94c7966eae,
            limb2: 0x22a97c99ad6c61f9,
        },
        r1a1: u288 {
            limb0: 0xdb30448a8301117572f2d6e6,
            limb1: 0x20501a5d563a1633af78f7f1,
            limb2: 0x656b87522cd49f4,
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
            limb0: 0xcae23c329846e29d01d5aedd,
            limb1: 0x674014536298602cde71d858,
            limb2: 0xab7aee363db70ee,
        },
        r0a1: u288 {
            limb0: 0x3a922f5b7a0dad94f883ee50,
            limb1: 0xd5613c6f2578af814a56bf1d,
            limb2: 0x2445ec6118809320,
        },
        r1a0: u288 {
            limb0: 0x93fb9f5f9a1364929d8815fa,
            limb1: 0xa00fb0601226ec542a2c12f5,
            limb2: 0x176b57d79083492d,
        },
        r1a1: u288 {
            limb0: 0xa83f26c51d76cf341c628eff,
            limb1: 0x4acab8672478d5e30fa54b61,
            limb2: 0x1fdd1172d44e8d02,
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
            limb0: 0x756d349539ce0816682b2540,
            limb1: 0x2eff6a7dc0b0c1791e2cbff4,
            limb2: 0xde41296b179c542,
        },
        r0a1: u288 {
            limb0: 0x5b4484b5bd80511e7486e0cb,
            limb1: 0x821e15bb93e4fec2d3b0a439,
            limb2: 0x1c5bbc4921e71470,
        },
        r1a0: u288 {
            limb0: 0xab30ebf4a76e9966e67b57a4,
            limb1: 0xd8e1e09fccfc7dbd690535a5,
            limb2: 0xdea4551e2021de3,
        },
        r1a1: u288 {
            limb0: 0xecc1ec2dbf56864433de97ad,
            limb1: 0x37975dd9b8a2f11c73fef027,
            limb2: 0x485ff4c134013b9,
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
            limb0: 0x9ad6ece3b1371d2e81422cb6,
            limb1: 0xd629582a0ed508fdba96b539,
            limb2: 0x2ffa6b39beb631c2,
        },
        r0a1: u288 {
            limb0: 0x6076c3f18c90adb803ee350d,
            limb1: 0xd3ea47a42f18004448704fc5,
            limb2: 0x2b14957e92ac0479,
        },
        r1a0: u288 {
            limb0: 0x7d093773326761a3d78e703f,
            limb1: 0x72d1e39f9aecb273500d7422,
            limb2: 0x133384780194f4b1,
        },
        r1a1: u288 {
            limb0: 0x3dd1326bc5dc6cfe07cc1b46,
            limb1: 0x40d4ed8f6d8a7a01480b91e9,
            limb2: 0x51874855aea707d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa91862ac0685ccfb8b3b2d70,
            limb1: 0x509bb4568dfa5581c64bfb1e,
            limb2: 0x2fa015767b8aac76,
        },
        r0a1: u288 {
            limb0: 0x6b55af9270fcaaa3b8ba2e5,
            limb1: 0xffb0812cd95a916557c4eeaa,
            limb2: 0x278dbda2d2aa4f43,
        },
        r1a0: u288 {
            limb0: 0xf727ebd4ef5ab0f4a9638f46,
            limb1: 0xe75e3457b846fc77e6ea86a5,
            limb2: 0x6da8a5d32398827,
        },
        r1a1: u288 {
            limb0: 0xa54d88e30dde305821e80ca9,
            limb1: 0x3905561207f86cc460669ea,
            limb2: 0x1d73d7757a6e283,
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
            limb0: 0x82ccf55bc70047159d7acfd1,
            limb1: 0xb8b4079341a79a84181325e3,
            limb2: 0xc8490ac3994696f,
        },
        r0a1: u288 {
            limb0: 0xeec43d3bf3ea7ea5ed70ec75,
            limb1: 0xdc2218ebcc751c3a39ec0a5b,
            limb2: 0x11904d4010c5623f,
        },
        r1a0: u288 {
            limb0: 0xca1e61960a46ba4976a0bf71,
            limb1: 0xd166f39c7181fe4a7d69fb36,
            limb2: 0x2c140f5cafb5ee27,
        },
        r1a1: u288 {
            limb0: 0xda0b0c63314b73d7db17069a,
            limb1: 0x198bedcb0668b9f328926ae4,
            limb2: 0xcfa1d101c4501a7,
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
            limb0: 0xcb711b92c331fc90312ef763,
            limb1: 0x7c51dc69ca4673a4a5582e5d,
            limb2: 0x23872979ddc8262b,
        },
        r0a1: u288 {
            limb0: 0x83f3b3200fb301add309519b,
            limb1: 0x6b80711cb51a7c8a4bc4a53d,
            limb2: 0x2adb8f7809319d02,
        },
        r1a0: u288 {
            limb0: 0x577271f0f4059847e683e6b8,
            limb1: 0x48cab2465eca325832d88ded,
            limb2: 0x497ece1112299a9,
        },
        r1a1: u288 {
            limb0: 0x84f64e768cdcd8edcb5b6c63,
            limb1: 0xdd20f4ef3674500051a9c294,
            limb2: 0x17b8731b10a71daf,
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
            limb0: 0x3e1925c372f31deb3aadd11e,
            limb1: 0xed647f28db9816193d3d0b61,
            limb2: 0x230de49fb6f9ecb7,
        },
        r0a1: u288 {
            limb0: 0x58385e7fa6563ffa4a9fe27d,
            limb1: 0x6a90dfe12e2d761192b17fe0,
            limb2: 0xc5dd91f4a4e387a,
        },
        r1a0: u288 {
            limb0: 0xbabeaa708a146624871f5a7c,
            limb1: 0xcd7027b700e4eedf55c54a61,
            limb2: 0x2a8c22554779bb6d,
        },
        r1a1: u288 {
            limb0: 0x4b1124ae458123cc34e8ff2e,
            limb1: 0x6d3242b34722f18f3f4715c3,
            limb2: 0x17338d57068833be,
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
            limb0: 0xdd01b31a3a10a6bed7048010,
            limb1: 0x9dfc368de54b31457d805e95,
            limb2: 0x14dfdd610a77ec7a,
        },
        r0a1: u288 {
            limb0: 0xb1f7673a57184600aced1949,
            limb1: 0xdbfd21e6cce7d8ae55b563e2,
            limb2: 0x2335a1dd3a979ef,
        },
        r1a0: u288 {
            limb0: 0xd446209ad87a6a4fac41d842,
            limb1: 0xb23063ce0c9835af395ff9f5,
            limb2: 0x1282681b98d1580,
        },
        r1a1: u288 {
            limb0: 0xc57eb7e4acc46908be238588,
            limb1: 0x5d6f6135ed1832b1b1d2b105,
            limb2: 0xed9c7cbd4c80d0a,
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
            limb0: 0x9e5adbe3426bee5eeaa2f6e5,
            limb1: 0xf4e840908e12e125f1e7f89c,
            limb2: 0x12dcc28ad72e46ea,
        },
        r0a1: u288 {
            limb0: 0xa1457b0813abe997e1ad464,
            limb1: 0xae4ae16c5da49796bc15835a,
            limb2: 0xd3f67e242bab4ae,
        },
        r1a0: u288 {
            limb0: 0x3def6070ef8b285a242ae61e,
            limb1: 0x295d0c22ec3cebf3146973f1,
            limb2: 0x2ce181eafb289929,
        },
        r1a1: u288 {
            limb0: 0xafc2a427489b0d53cfdb9cb7,
            limb1: 0x54daea257bd987d94f6f078b,
            limb2: 0x2af7e3c25e1ae350,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3b7c037865a082a28a7c3e02,
            limb1: 0x25ee3e84ddbf92d6146e0d4c,
            limb2: 0x1cd7e46f11e1d278,
        },
        r0a1: u288 {
            limb0: 0x9556b1fd15c735a85c60d139,
            limb1: 0x6b4c415cebb64e52b9635a8d,
            limb2: 0x14367311e9cf8ee,
        },
        r1a0: u288 {
            limb0: 0xb7bdbb68d5c2e0dffc6ac3ce,
            limb1: 0x734ac8d9690d6725a074c837,
            limb2: 0x1105d433ffb6e1ca,
        },
        r1a1: u288 {
            limb0: 0x5b2c9801ef0c985d43a3cead,
            limb1: 0xc84b7f4fced0a82e4d73fdbe,
            limb2: 0x14f1c17a44de16b8,
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
            limb0: 0xc86d35de0e4e18391975880b,
            limb1: 0xcfe5c376f9ddc6830caea25d,
            limb2: 0x4a93983baf5bc0f,
        },
        r0a1: u288 {
            limb0: 0x4c560649ace17f4edcae4e24,
            limb1: 0xf2ebe7eec75f0a3cdb7f751c,
            limb2: 0x19d7bcce60340f5,
        },
        r1a0: u288 {
            limb0: 0x4ea2fc8239aadd7e5f418008,
            limb1: 0x4825caf42cade04ccb58cdf4,
            limb2: 0xdc7c035175471b9,
        },
        r1a1: u288 {
            limb0: 0x1b81e171cfa9104f9ac8ddc1,
            limb1: 0xa15c8276fb7e4d95cb3eab4,
            limb2: 0x2730001dc7174cf6,
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
            limb0: 0x61067cfda67f5e05b5ed01a2,
            limb1: 0xf5b44193ce945d4aee502a5,
            limb2: 0xb1c9b41178c3a89,
        },
        r0a1: u288 {
            limb0: 0x5d0e748949a54d9ad21c3da4,
            limb1: 0x6a0dd83df54c0ea3e1a93567,
            limb2: 0x6fc86811b16869b,
        },
        r1a0: u288 {
            limb0: 0x4153ae9daa5238e16f0dc01d,
            limb1: 0xbc1d2d7a62c5023c54dacfc5,
            limb2: 0x1cb2a78934e455d,
        },
        r1a1: u288 {
            limb0: 0x3c78b2d10c46a87adb0cb5ae,
            limb1: 0x5235cf1c320df59637bdd24c,
            limb2: 0x80142eb770fb27,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8a37dc983f8debb0552a8030,
            limb1: 0x956304db29f5cdca6cf1e307,
            limb2: 0x23287bf8c801f26,
        },
        r0a1: u288 {
            limb0: 0x714710eb6cdc861f7cdbfae,
            limb1: 0x497aa690c375e949e2f23e86,
            limb2: 0x299eb7e241996d6c,
        },
        r1a0: u288 {
            limb0: 0xe6eeb3bce8c8446266a96a6c,
            limb1: 0x3cace2a36649034e3da59987,
            limb2: 0x14bc83dbc8913108,
        },
        r1a1: u288 {
            limb0: 0x3e309abb149ae10cae937624,
            limb1: 0xb961afd45c25f456d07ddc51,
            limb2: 0x1ab9717ccb658f84,
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
            limb0: 0x8634c209f12d689f560c4ec4,
            limb1: 0x7a4594461030aee1232f00bd,
            limb2: 0xa07673710024771,
        },
        r0a1: u288 {
            limb0: 0x4ff2d59304f52aedeea6f7c6,
            limb1: 0x539d3376aa1cf00354f6e140,
            limb2: 0x18625747a9b1f3df,
        },
        r1a0: u288 {
            limb0: 0x7f6f2add5ae76f7dd66bf842,
            limb1: 0x51fbbf1763fdd0f7ed8eee11,
            limb2: 0xe659711b7d4ed51,
        },
        r1a1: u288 {
            limb0: 0x54e09247bd26cd7e62b4d98a,
            limb1: 0x78cb526259ea7e457d4726bf,
            limb2: 0x12c7ca6e31cc9b36,
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
            limb0: 0xd30745069ebc6729bc2d453c,
            limb1: 0xb87669eaa0b6e1152219c38d,
            limb2: 0x242b4fc647370008,
        },
        r0a1: u288 {
            limb0: 0x3b6eb29d2004cb3640a6743b,
            limb1: 0x3d232756801f3f80919f6a9d,
            limb2: 0x2fe429445a045bb2,
        },
        r1a0: u288 {
            limb0: 0x8ea3c1f7890ababd2a13974b,
            limb1: 0xb9e086a5672669d53f2c9a81,
            limb2: 0x159119c6d5681746,
        },
        r1a1: u288 {
            limb0: 0x48d2b4a536c8f039b765c196,
            limb1: 0x83f6d02709c7b5448f0c70e8,
            limb2: 0x18217ba76c0d8d74,
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
            limb0: 0x1f1883a0cae724b792f36dc0,
            limb1: 0x1d457e1a51bf8c88f0f95662,
            limb2: 0x37283556f37316a,
        },
        r0a1: u288 {
            limb0: 0x90bf1024a25e1c4572e2aad,
            limb1: 0x333678d14a86a8166264bd1f,
            limb2: 0x1a7d328c1e8b16c6,
        },
        r1a0: u288 {
            limb0: 0x84b3432466e2946fb95de4aa,
            limb1: 0xa6ad1074a662d02ef21a7819,
            limb2: 0x1825cf674a2e50de,
        },
        r1a1: u288 {
            limb0: 0xa074e6199361891980cfbe51,
            limb1: 0x9aa69d332134aff66c32c10c,
            limb2: 0xded9353ecbeebe4,
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
            limb0: 0x8fde16cfb460d5caab57d783,
            limb1: 0x494f7fc8de181e50f13ab002,
            limb2: 0x1a08ba780528240a,
        },
        r0a1: u288 {
            limb0: 0xf66eee3e81929607d0fdda8,
            limb1: 0xdfe8a7674818d91513e4acdc,
            limb2: 0x13e46cba30e923ff,
        },
        r1a0: u288 {
            limb0: 0xdb4b32aa34472130a11ad23e,
            limb1: 0xf54e7039d57cc9182f1f6fd7,
            limb2: 0xccf8eee443108fb,
        },
        r1a1: u288 {
            limb0: 0x7f247548f267a3c7fe075d57,
            limb1: 0x170a7b76a8242566179dd043,
            limb2: 0x1e8a8cd0f8d7655a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e827f849a6ab27a06e116,
            limb1: 0xe98fdbabe6f84aae5c61b49f,
            limb2: 0x2b9f89704d05781f,
        },
        r0a1: u288 {
            limb0: 0x73f1b13906fdc7b8399c83d2,
            limb1: 0x6db598dd906b314ee31fda69,
            limb2: 0x10af9d8791435734,
        },
        r1a0: u288 {
            limb0: 0x2bd87009b63b308018255d7d,
            limb1: 0x2acb9ee3e653a3c87995376d,
            limb2: 0x1a3b00dedb6f50e3,
        },
        r1a1: u288 {
            limb0: 0x835f1284f32a07d195a6113,
            limb1: 0x549e80a9a8c0a14ac84ee271,
            limb2: 0x3435f9c83811aa2,
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
            limb0: 0xe82377f2bb25d8e020db11b9,
            limb1: 0xd69c7f0ac6648034dc6e803a,
            limb2: 0x223bd98a7c5d90,
        },
        r0a1: u288 {
            limb0: 0x4075dfd4afb62e59f67e6f12,
            limb1: 0x4d96a8fc4b2bb631dbc45c55,
            limb2: 0x1eaa4adcb9eece0f,
        },
        r1a0: u288 {
            limb0: 0x703ef5efd37e2372ba799962,
            limb1: 0x91f798d2ac6bafbb8ef45e1b,
            limb2: 0x1268e5818123e4b7,
        },
        r1a1: u288 {
            limb0: 0x2291f201a69688378e69ff9b,
            limb1: 0x528117aa81661fbed265e9f5,
            limb2: 0x21bdd0d943e0f6d0,
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
            limb0: 0xe52e670e26c5140e1df8d92c,
            limb1: 0xa590f6c58b70dfc8a990b608,
            limb2: 0x1dd782c3cd18ffc,
        },
        r0a1: u288 {
            limb0: 0x22af041a1617b734b1c704f6,
            limb1: 0x13c75947ea32292f3c7697ec,
            limb2: 0x29656d5f42597bff,
        },
        r1a0: u288 {
            limb0: 0xefe0bdfcce77fadca86e5888,
            limb1: 0x642f74ee3a59edf366ab2c83,
            limb2: 0x206022a937076859,
        },
        r1a1: u288 {
            limb0: 0x1fe31c169420ba3adb9779c8,
            limb1: 0x24641ace99e69b8ada530305,
            limb2: 0x1d990e6d55794c65,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x59070001c9728983f549805d,
            limb1: 0xe494eca799efc8c04df387cb,
            limb2: 0x153505759e9cf063,
        },
        r0a1: u288 {
            limb0: 0x92a08089794f6e3f0b87c0e8,
            limb1: 0x2493a9636afa7491ff1a551b,
            limb2: 0x42ba0f973ae7231,
        },
        r1a0: u288 {
            limb0: 0x39c0672b1ac2cbf18df67c0c,
            limb1: 0xce2d3a56ca32e3c47053316f,
            limb2: 0x1e079e9bb37d8c9a,
        },
        r1a1: u288 {
            limb0: 0x2447ebe8cf716149e066f148,
            limb1: 0x1344ca8def23a3d71f4b47c8,
            limb2: 0x1d602de061361e47,
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
            limb0: 0x7a15273e9ea15a00bd8d940e,
            limb1: 0xb534817d22779bfa875fc3fe,
            limb2: 0x168f5ffb8d24087d,
        },
        r0a1: u288 {
            limb0: 0x3573edd1619951606accb5d1,
            limb1: 0xb1cc385d21eebee9f2cddec0,
            limb2: 0x2d93bdda5ab1d8df,
        },
        r1a0: u288 {
            limb0: 0xefc8ea63849d99d9ef18fe45,
            limb1: 0xf14d96ac3dda7e04a0219ea8,
            limb2: 0x2abd2bb775b7bc9,
        },
        r1a1: u288 {
            limb0: 0x82f351fbd2e6964f0857fbad,
            limb1: 0x60b2b32617815cbf5d5f2eda,
            limb2: 0x17a9aba42fb628a8,
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
            limb0: 0x5f860c975950a0a7d60f9bfe,
            limb1: 0x40c80e777daadb3aeea0b692,
            limb2: 0x7ef9245d94e02f7,
        },
        r0a1: u288 {
            limb0: 0xbb4917caeb4967524135af3b,
            limb1: 0x49abd972e8a721bbc3112e45,
            limb2: 0x1a8962c48983c60e,
        },
        r1a0: u288 {
            limb0: 0xd7fdf80fcb7f406511db6e72,
            limb1: 0xf4d0116654012735f0fae683,
            limb2: 0x10f2d80c955cb95c,
        },
        r1a1: u288 {
            limb0: 0xab8f486f82251923425438fd,
            limb1: 0x9b13688cae26fdf2dab8305e,
            limb2: 0x32accd0630bf2f3,
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
            limb0: 0x56212056df6239a3045f2c42,
            limb1: 0x41bb8716ccb8781994b7c660,
            limb2: 0x27b22397c05bbe96,
        },
        r0a1: u288 {
            limb0: 0x731c53851f86ee2d191bdce,
            limb1: 0x4b84913639e21370b94e9738,
            limb2: 0x28fa9d79f1fb1bc3,
        },
        r1a0: u288 {
            limb0: 0x29224c8d20bc49869dc88d81,
            limb1: 0x67710ea097d30014784db051,
            limb2: 0x1876974b1de98c9,
        },
        r1a1: u288 {
            limb0: 0x4cc1438e5a4724d600706c4a,
            limb1: 0x679116f42f7073e851ebc3f0,
            limb2: 0x245c4dfd08228023,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72f68c2790064c8b8cd22c78,
            limb1: 0x1eb9ad5a1045d408fae4df60,
            limb2: 0x1dfd0306af9571d6,
        },
        r0a1: u288 {
            limb0: 0xa77422bb5b3364c0c0b8a9dd,
            limb1: 0xcc61bcb922f896a92088e477,
            limb2: 0x188ff2d78bf78335,
        },
        r1a0: u288 {
            limb0: 0xed619d228e4fc8b36268b25d,
            limb1: 0xee32f7e0c4527e3e7e405f1f,
            limb2: 0x10e8fa8b58158cd,
        },
        r1a1: u288 {
            limb0: 0x5faa094cd6b634424e29cee2,
            limb1: 0xb2991daea1487e0f6a3b3b43,
            limb2: 0x161653fa68796d63,
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
            limb0: 0x48b9a9fb48a26477f26ac255,
            limb1: 0xfa2dd64aac5e2c8cf50d8d70,
            limb2: 0x5c1cd109d1b830b,
        },
        r0a1: u288 {
            limb0: 0xa2741c51fcef5f0de9cb7712,
            limb1: 0x666f28cb2e6f45a4c360d244,
            limb2: 0x1b9bb8f927d58258,
        },
        r1a0: u288 {
            limb0: 0xfb452832d1ed4ced1dcd3c88,
            limb1: 0xd8eb17101cf35f2d0adb7ad6,
            limb2: 0xc76c2e61e5d54,
        },
        r1a1: u288 {
            limb0: 0x9f6a913972148531f18677f3,
            limb1: 0xfac602fe90224fdd50b2615b,
            limb2: 0x14f2e338bd78b982,
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
            limb0: 0x8fb7e42d7b33b89069abd3,
            limb1: 0x6f4fc09962cae4d5aa8963a3,
            limb2: 0xeaa253761288906,
        },
        r0a1: u288 {
            limb0: 0x393029e85153830b23919da4,
            limb1: 0x3965a0e681d3829be0b34052,
            limb2: 0x16608fe6d0789f54,
        },
        r1a0: u288 {
            limb0: 0xcda41158fdf2795a134cca6f,
            limb1: 0xb70b7b3d0fff8ea9ae8658f8,
            limb2: 0x2ee267c62bc65c6,
        },
        r1a1: u288 {
            limb0: 0x3ad089127745fbdc0151339,
            limb1: 0xf9732bdc8879334c17e71438,
            limb2: 0x245df153e3568367,
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
            limb0: 0xad33f7915031fd31a6fdbed6,
            limb1: 0x2fbfca60c2003185c96e1ed5,
            limb2: 0x1b87d6b47d3f6b0b,
        },
        r0a1: u288 {
            limb0: 0x6636a731e3270474e26d811e,
            limb1: 0x4faa2eb5902ec20767d6f068,
            limb2: 0x904ce4586bef1b,
        },
        r1a0: u288 {
            limb0: 0xb75e8387700602530cdade73,
            limb1: 0x56701bee1af6b6748738cf1a,
            limb2: 0xdaec4aa9befd3e3,
        },
        r1a1: u288 {
            limb0: 0x792887368d37e6098e47307d,
            limb1: 0x17355f68ac7407006235e4f5,
            limb2: 0x185dd3c5e50b9441,
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
            limb0: 0xe088294db2718239f88c314b,
            limb1: 0x19dc703d14af35ec37c64c33,
            limb2: 0x270d2198ce2b4526,
        },
        r0a1: u288 {
            limb0: 0x851dce8001fa6872854e56d2,
            limb1: 0x82a0c7e45d5b49c0e7989779,
            limb2: 0x16467e1556cf5315,
        },
        r1a0: u288 {
            limb0: 0x35e5cac5761cb9efff1b365e,
            limb1: 0x7f8be607bbc60f4a87c1982b,
            limb2: 0xeb9fffe89f50ae4,
        },
        r1a1: u288 {
            limb0: 0x650a0ca3ea6a263d64656e03,
            limb1: 0x27dbaf3dc7aa2bc338ad0647,
            limb2: 0x289b2ce41b5edef9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34865bf789855cdf8a81e91d,
            limb1: 0x80f1d89338815f630c162dfe,
            limb2: 0x25bfd3e2d27977,
        },
        r0a1: u288 {
            limb0: 0xc841224bb171084d32ea9bc9,
            limb1: 0x8d6849b212c12f447e4605fb,
            limb2: 0x19301b99b9e84795,
        },
        r1a0: u288 {
            limb0: 0x665d999740f9f53fbd0feb78,
            limb1: 0xc149e9afb00ad8fc067220b8,
            limb2: 0x7a0e6ef618e808e,
        },
        r1a1: u288 {
            limb0: 0xf2fbff00a1f80947b2f5114,
            limb1: 0x5948f2b5f56907d536097f20,
            limb2: 0x255ee28bf89ebabb,
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
            limb0: 0x94bf7489d647950751b398a6,
            limb1: 0x3704d7482972d71c3699caee,
            limb2: 0x13214755bf43ba4d,
        },
        r0a1: u288 {
            limb0: 0x5d2b3d56225e31db1ad13b66,
            limb1: 0xb362fb5d9bfdb53ec70c592e,
            limb2: 0x6ff830279b443e1,
        },
        r1a0: u288 {
            limb0: 0xc406679a3813a99ddfef3e07,
            limb1: 0x2b17bff2c0d5858f900ab6c0,
            limb2: 0x1b59a49f7f29bcdf,
        },
        r1a1: u288 {
            limb0: 0x66fc6223a4a9ae2820fe807,
            limb1: 0x785e3952e3e75a6e77f85107,
            limb2: 0x16aeaabe3b3f78f3,
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
            limb0: 0xa5f8344c6c293b87409dffa1,
            limb1: 0x5f9d894db1246ae6b7e4b75,
            limb2: 0xd8201c9acaacd86,
        },
        r0a1: u288 {
            limb0: 0xccd4b0c815c29095f794864b,
            limb1: 0x78ab8a99a1d659629bd826b,
            limb2: 0x2cd01c9a98591f57,
        },
        r1a0: u288 {
            limb0: 0xc03bb7f66e445edf573f4e6e,
            limb1: 0xcfe966cf9ead65bd6aa6282e,
            limb2: 0x23ea00501da6ace7,
        },
        r1a1: u288 {
            limb0: 0x64015a4a8299c9ffba2af01d,
            limb1: 0xc356a5924cecd63ebf11b2df,
            limb2: 0x2d1321fea774abe6,
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
            limb0: 0xbeabc25e73f5317ca9905d9,
            limb1: 0x121f0478ec30ed525c102a69,
            limb2: 0x2e9825d23935b9ec,
        },
        r0a1: u288 {
            limb0: 0xa968042118a134d260217092,
            limb1: 0xf9d0fcacfa0ed481543ce413,
            limb2: 0x205a5ce71e9c4df3,
        },
        r1a0: u288 {
            limb0: 0x9ec4a38d3359a5f37375a9c0,
            limb1: 0x2fb137c0ed145ec72fd6cf49,
            limb2: 0x302924bd28f34053,
        },
        r1a1: u288 {
            limb0: 0xab1de16607f06b075eb3ab8a,
            limb1: 0xc26492a5035754d8378ac78b,
            limb2: 0x1da4d84d81461c6e,
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
            limb0: 0x4cb03092297090a48113e8ad,
            limb1: 0x5d68cd2700c2a83f38cbbf1d,
            limb2: 0x1500473ade664742,
        },
        r0a1: u288 {
            limb0: 0xcd663d4aee1e25129c159574,
            limb1: 0xeca8a866111cb91a1bd107b3,
            limb2: 0x25e293b10620d606,
        },
        r1a0: u288 {
            limb0: 0xff141b7114308b6226253cc3,
            limb1: 0x7f634beaf3878ee5164fa9b6,
            limb2: 0x27d6dc390e551d02,
        },
        r1a1: u288 {
            limb0: 0x9dfa96bdad10402446778cf0,
            limb1: 0xa88515af3d1f315ffe66f96d,
            limb2: 0x1101b8321b0a630b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8fd37cdca93c5ec484ca19d9,
            limb1: 0xa0e7a43c2b4b42253f98729d,
            limb2: 0x561e0255a8bd68c,
        },
        r0a1: u288 {
            limb0: 0x9c6885768f30fa24d8832dd4,
            limb1: 0xa1af9f71f11f904d649e9d70,
            limb2: 0x2b9e147dab5fcc01,
        },
        r1a0: u288 {
            limb0: 0x30733655ed33552487d8ca85,
            limb1: 0x651fe6252c3dbfcd9904ff8e,
            limb2: 0x25c204bdb6bc95c9,
        },
        r1a1: u288 {
            limb0: 0xe6299884794d9d9c6f88525b,
            limb1: 0x2600f589d7a20384a0038656,
            limb2: 0x1db66635f3c02706,
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
            limb0: 0xf82edd38535c2e9e3dc79670,
            limb1: 0x50fd0768ad53cd8e70adbe97,
            limb2: 0x11978d7926c52e4c,
        },
        r0a1: u288 {
            limb0: 0xa810cb1d25aa491581b53465,
            limb1: 0x848523263818de44e1292ee,
            limb2: 0x11685829ceb66610,
        },
        r1a0: u288 {
            limb0: 0x4fd038f2d2238edabecd98f4,
            limb1: 0x42f5deeda41723b435461153,
            limb2: 0x265f8d6bcaf1f53f,
        },
        r1a1: u288 {
            limb0: 0x35502419534a15022b30d232,
            limb1: 0xbc0709511911e85b15582d54,
            limb2: 0xf2e0ea7854d0387,
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
            limb0: 0x7530b0a2981d73b24477b7f9,
            limb1: 0x670949c79bae07975e31e9bf,
            limb2: 0x1e0b86f175af8060,
        },
        r0a1: u288 {
            limb0: 0x23e2f297fca37eff8c15434,
            limb1: 0xfde2f3fd0aa7bbfd06d01cc9,
            limb2: 0x1b9053b2ea8518a6,
        },
        r1a0: u288 {
            limb0: 0x7321c61cb2fdc1996fe74042,
            limb1: 0x944b5fc60f7740be4f1b8ff7,
            limb2: 0x1fe0eaaac1634976,
        },
        r1a1: u288 {
            limb0: 0x62f376f7378bd5834627defb,
            limb1: 0xd47afe10ebcaa05775d12a3a,
            limb2: 0x2c764d6ebabccc73,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf49735f800e1aff376b5e7a,
            limb1: 0x223d246f4a2d46ffc8853c55,
            limb2: 0x2551f63fe7fbd0e0,
        },
        r0a1: u288 {
            limb0: 0x1dca247558e0f3aa748fe6f8,
            limb1: 0x739a1759068b49a7116c13c,
            limb2: 0x24af06763e6eb5b5,
        },
        r1a0: u288 {
            limb0: 0x2913bf371b9b617f78833a28,
            limb1: 0x542cb5de280c5d15c459ae8f,
            limb2: 0x2d01f7b024fd25de,
        },
        r1a1: u288 {
            limb0: 0x9ba10f4ce100afd4a0d586a7,
            limb1: 0xb07c6635366ebd44be95db18,
            limb2: 0x176314bab8699f2,
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
            limb0: 0x310145e348aaa99d8396bb46,
            limb1: 0xd0e3b2f51d0042ee45b4d3ea,
            limb2: 0xa119a9b6ffb8a87,
        },
        r0a1: u288 {
            limb0: 0x567e380d312da59921c7264e,
            limb1: 0xf4a7e045a5d28ea52107a42f,
            limb2: 0xb9f43451c9247b6,
        },
        r1a0: u288 {
            limb0: 0xda3f0058ee406e144b7fdf48,
            limb1: 0xb4ed57309cef69aabe75def2,
            limb2: 0xa336676202c5c9f,
        },
        r1a1: u288 {
            limb0: 0x30c36f45ca61a08909aeec97,
            limb1: 0x1a09d060430da500a7e674c4,
            limb2: 0x1a6a702a3e71fe4d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdc40d70ab1796ebd1938dd64,
            limb1: 0x45e10aa8c4478f03019b68c2,
            limb2: 0x1900556548ca04a6,
        },
        r0a1: u288 {
            limb0: 0x676d9205fb66e42bbd6b7840,
            limb1: 0x22221c6e7e2d1fcae31d21f4,
            limb2: 0x3cbcf172d3f48d0,
        },
        r1a0: u288 {
            limb0: 0xc87f8f9de589903b2be5a969,
            limb1: 0xadb5ace09fa6d7c24d427f2d,
            limb2: 0x146758481baf3d45,
        },
        r1a1: u288 {
            limb0: 0xa650fd7f73cdbf08f67b8148,
            limb1: 0x2bea6259e5c7b21eeecd6e1d,
            limb2: 0x25a053a0ff3e633d,
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
            limb0: 0xc9a6918579aae3b6e59b1c06,
            limb1: 0xc80a538ee387f0eb33b354fd,
            limb2: 0xdeda7a08850ba39,
        },
        r0a1: u288 {
            limb0: 0x9755dfc9725a2a793f8b8cc4,
            limb1: 0x22736bc14ff2baef0b2e21f8,
            limb2: 0x10bbe9106dd60c56,
        },
        r1a0: u288 {
            limb0: 0xba908135ee80ccef060abd2c,
            limb1: 0xfd32d1c9b9174f6b4c2a6780,
            limb2: 0x2a791435d24c90da,
        },
        r1a1: u288 {
            limb0: 0x5f1c387cd8b8186e16034274,
            limb1: 0xcff552bd049da107748e2a9c,
            limb2: 0x2b6c1be6e3a2935b,
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
            limb0: 0x105c93336bcff762ccd417fd,
            limb1: 0xeacf9128dea4e5bc131c26f6,
            limb2: 0x24f98479bc4e427e,
        },
        r0a1: u288 {
            limb0: 0xfc93958e506ae351458cc0a7,
            limb1: 0xd3782f40a080ea5a7e3305de,
            limb2: 0x2da6dd3e0270806,
        },
        r1a0: u288 {
            limb0: 0xb8aa67834d8c886e64878f7,
            limb1: 0x3292f79ea8596397164009f1,
            limb2: 0x1c747a89fd9ca55,
        },
        r1a1: u288 {
            limb0: 0x9a0c410c3bceba7fe2faebdd,
            limb1: 0xc887e7b09594b706a76794b5,
            limb2: 0x27580e2b208f61b2,
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
            limb0: 0xf17d611c4e461222fa8d7ab7,
            limb1: 0x2aad168b1eb8233429f28931,
            limb2: 0x2af8bd0b30560e1a,
        },
        r0a1: u288 {
            limb0: 0x6b377631d02faeb2bcbab12f,
            limb1: 0x4f123c413e407653c722fb1f,
            limb2: 0x6cb3e56700cec8,
        },
        r1a0: u288 {
            limb0: 0x7819e139dac5695be9c07177,
            limb1: 0x689a498598a4a3cdfb0f3fb4,
            limb2: 0x4583813e2caf2ee,
        },
        r1a1: u288 {
            limb0: 0xe8b580f1c51fc84b3a333054,
            limb1: 0xe433fa606f557fe7b7bd78b4,
            limb2: 0x24eb0ddf1a03dabd,
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
            limb0: 0xe1d783bea714dc06a9b01a4,
            limb1: 0x35b51afd33417138b67c9894,
            limb2: 0x15133f7fbc00b9b8,
        },
        r0a1: u288 {
            limb0: 0x35ee0f6a90912b80991389f6,
            limb1: 0x465f01f3124ee8a709dc0638,
            limb2: 0x2233399204216121,
        },
        r1a0: u288 {
            limb0: 0x4ff838c33f10261ff927fb18,
            limb1: 0xd06c5733ed236907b10b1ebf,
            limb2: 0x1d447d781be5cc,
        },
        r1a1: u288 {
            limb0: 0x506970e755231cb6ece203,
            limb1: 0xd805c54431db777871281af2,
            limb2: 0xe3ab5994880d829,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x221faabed05320a22e9716be,
            limb1: 0x80a90aff65957457add5cb5d,
            limb2: 0x70ccf90aa3dbb6f,
        },
        r0a1: u288 {
            limb0: 0x8b645eeb683b6ef983938a8,
            limb1: 0x4fac718225046002e6814591,
            limb2: 0x19df2eff833f1b6d,
        },
        r1a0: u288 {
            limb0: 0x5ad0115937cf5ee2c9d9dbb6,
            limb1: 0xc76134b7dedf3b20630ad961,
            limb2: 0x21402986c9a9fd6,
        },
        r1a1: u288 {
            limb0: 0x3fc4a52b9e3bf3abd4ec4d5c,
            limb1: 0xa6d5b9bfc50fe135a4283c0,
            limb2: 0x13148d0417c778fd,
        },
    },
];

