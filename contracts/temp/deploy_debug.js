import { Account, Contract, RpcProvider, constants, json } from 'starknet';
import * as dotenv from 'dotenv'
import fs from 'fs';
dotenv.config();

const contracts = [
    // 'UsdcMock',
    // 'ZstarkWarp',
    'Groth16VerifierBN254'
];

const contractPayloads = [
];

const contractClassHashes = {

};


const accountAddress = process.env.STARKNET_ACCOUNT_ADDRESS;
const privateKey = process.env.STARKNET_PRIVATE_KEY;

const provider = new RpcProvider({
    nodeUrl: "https://rpc.starknet-testnet.lava.build:443",
    headers: {
        "Content-Type": "application/json",
        "User-Agent": "starknet.js/5.29.0"
    }
});
const account = new Account({
    provider: provider,
    address: accountAddress,
    signer: privateKey,
});

(async () => {
    const promises = contracts.map((name) => {
        new Promise(async(resolve, reject) => {
            try {
                const result = await account.declare({
                    contract: json.parse(
                        fs.readFileSync(`./target/dev/zstarkwarp_${name}.contract_class.json`).toString('ascii')
                        ),
                        casm: json.parse(
                            fs.readFileSync(`./target/dev/zstarkwarp_${name}.compiled_contract_class.json`).toString('ascii')
                        )
                    });
                    contractClassHashes[name] = result.compiled_class_hash;
                    console.log(`Contract ${name }:`, result.compiled_class_hash);
            } catch(e) {
                console.log(`Error declaring contract ${name}:`, e.message || e);

                // Write the full error to file for debugging
                fs.writeFileSync('./error.json', JSON.stringify(e, null, 2));

                // Try to extract class hash from different error structures
                let message = '';
                if (e.baseError && e.baseError.data && e.baseError.data.execution_error) {
                    message = e.baseError.data.execution_error;
                } else if (e.message) {
                    message = e.message;
                } else if (typeof e === 'string') {
                    message = e;
                }

                const match = message.match(/hash\s+(0x[0-9a-fA-F]+)/);

                if (match) {
                    console.log(`Contract ${name } already declared with class hash:`, match[1]);
                    contractClassHashes[name] = match[1];
                } else {
                    console.log(`Could not extract class hash for ${name}. Error: ${message}`);
                }
            }
        });
    });

    await Promise.all(promises);
    console.log("contract hashes: ", contractClassHashes);
})();

// const compiledSierra = json.parse(
//   fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.contract_class.json').toString('ascii')
// );
// const compiledCasm = json.parse(
//   fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.compiled_contract_class.json').toString('ascii')
// );



// const reponse = await account.declare({
//     contract: compiledSierra,
//     casm: compiledCasm
// })


// console.log("USDC Mock contract deployed at:", reponse);