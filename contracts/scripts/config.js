
import { Account, RpcProvider, json } from 'starknet';
import fs from 'fs';
import * as dotenv from 'dotenv'
dotenv.config();

export const RunConfig = {
    "STARKNET": {
        "provider": new RpcProvider({
            nodeUrl: process.env.STARKNET_RPC,
        }),
        "account": new Account({
            provider: new RpcProvider({
                nodeUrl: process.env.STARKNET_RPC,
            }),
            address: process.env.STARKNET_ACCOUNT_ADDRESS,
            signer: process.env.STARKNET_PRIVATE_KEY,
        })
    },
    "ZTARKNET": {   
        "provider": new RpcProvider({
            nodeUrl: process.env.ZTARKNET_RPC,
        }),
        "account": new Account({
            provider: new RpcProvider({
                nodeUrl: process.env.ZTARKNET_RPC,
            }),
            address: process.env.ZTARKNET_ACCOUNT_ADDRESS,
            signer: process.env.ZTARKNET_PRIVATE_KEY,
        })
    }
}
export const Artifacts = {
    "verifier": {
        "casm": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_Groth16VerifierBN254.compiled_contract_class.json').toString('ascii')
                ),
        "sierra": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_Groth16VerifierBN254.contract_class.json').toString('ascii')
                )
    },
    "mockUSDC": {
        "casm": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.compiled_contract_class.json').toString('ascii')
                ),
        "sierra": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.contract_class.json').toString('ascii')
                )
    },
    "zstarkwarp": {
        "casm": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_ZstarkWarp.compiled_contract_class.json').toString('ascii')
                ),
        "sierra": json.parse(
                    fs.readFileSync('./target/dev/zstarkwarp_ZstarkWarp.contract_class.json').toString('ascii')
                )
    }
}