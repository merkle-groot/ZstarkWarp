import { Account, Contract, RpcProvider, CallData, constants, json } from 'starknet';
import * as dotenv from 'dotenv'
import fs from 'fs';
dotenv.config();

const accountAddress = process.env.ZTARKNET_ACCOUNT_ADDRESS;
const privateKey = process.env.ZTARKNET_PRIVATE_KEY;

const provider = new RpcProvider({
    nodeUrl: "https://ztarknet-madara.d.karnot.xyz"
});
const account = new Account({
    provider: provider,
    address: accountAddress,
    signer: privateKey,
});

const compiledCasm = json.parse(
  fs.readFileSync('./target/dev/zstarkwarp_Groth16VerifierBN254.compiled_contract_class.json').toString('ascii')
);

const compiledSierra = json.parse(
  fs.readFileSync('./target/dev/zstarkwarp_Groth16VerifierBN254.contract_class.json').toString('ascii')
);

const calldata = json.parse(
    fs.readFileSync('./tests/calldata1.json')
);


(async () => {
    const verifierAbi = compiledSierra.abi;
    const verifier = new Contract({
        abi: verifierAbi,
        address: "0x06f3a6862f37cfb87f61eb9911f4fb4b23830b5d4bbc00d01750cfa79c9df0e1",
        providerOrAccount: account, // Account for writing
    });

    try {
        // should return false
        const result1 = await verifier.verify_groth16_proof_bn254(calldata.calldata.slice(0, 100));
        console.log("Result:", result1);

        // should return true
        const result2 = await verifier.verify_groth16_proof_bn254(calldata.calldata);
        console.log("Result:", result2);
    } catch (error) {
        console.error("Error details:", error);
        console.error("Error message:", error.message);
        console.error("Error code:", error.code);

        // // Write error to file for debugging
        fs.writeFileSync('./error.json', JSON.stringify({
            error: error.message,
            code: error.code,
            stack: error.stack,
            calldataLength: calldata.calldata.length,
            firstFewElements: calldata.calldata
        }, null, 2));
    }
})();

// // (async () => {
// //     const promises = contracts.map((name) => {
// //         new Promise(async(resolve, reject) => {
// //             try {
// //                 const result = await account.declare({
// //                     contract: json.parse(
// //                         fs.readFileSync(`./target/dev/zstarkwarp_${name}.contract_class.json`).toString('ascii')
// //                         ),
// //                         casm: json.parse(
// //                             fs.readFileSync(`./target/dev/zstarkwarp_${name}.compiled_contract_class.json`).toString('ascii')
// //                         )
// //                     });
// //                     contractClassHashes[name] = result.compiled_class_hash;
// //                     console.log(`Contract ${name }:`, result.compiled_class_hash);
// //             } catch(e) {
// //                 console.log(`Error declaring contract ${name}:`, e.message || e);

// //                 // Write the full error to file for debugging
// //                 fs.writeFileSync('./error.json', JSON.stringify(e, null, 2));

// //                 // Try to extract class hash from different error structures
// //                 let message = '';
// //                 if (e.baseError && e.baseError.data && e.baseError.data.execution_error) {
// //                     message = e.baseError.data.execution_error;
// //                 } else if (e.message) {
// //                     message = e.message;
// //                 } else if (typeof e === 'string') {
// //                     message = e;
// //                 }

// //                 const match = message.match(/hash\s+(0x[0-9a-fA-F]+)/);

// //                 if (match) {
// //                     console.log(`Contract ${name } already declared with class hash:`, match[1]);
// //                     contractClassHashes[name] = match[1];
// //                 } else {
// //                     console.log(`Could not extract class hash for ${name}. Error: ${message}`);
// //                 }
// //             }
// //         });
// //     });

// //     await Promise.all(promises);
// //     console.log("contract hashes: ", contractClassHashes);
// // })();

// // const compiledSierra = json.parse(
// //   fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.contract_class.json').toString('ascii')
// // );
// // const compiledCasm = json.parse(
// //   fs.readFileSync('./target/dev/zstarkwarp_UsdcMock.compiled_contract_class.json').toString('ascii')
// // );



// // const reponse = await account.declare({
// //     contract: compiledSierra,
// //     casm: compiledCasm
// // })


// // console.log("USDC Mock contract deployed at:", reponse);