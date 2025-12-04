import { Account, Contract, RpcProvider, CallData, constants, json } from 'starknet';
import {RunConfig, Artifacts} from './config.js';
import fs from 'fs';
// import config from '../config/config.js';

const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const declare = async(account) => {
    const deployedContracts = {};
    for (const contract of Object.keys(Artifacts)) {
        try {
            const result = await account.declare({
                contract: Artifacts[contract].sierra,
                casm: Artifacts[contract].casm
            });
            console.log(`Contract:`, result);
        } catch(e) {
            // console.log(`Error declaring contract ${name}:`, e.message || e);

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
                console.log(`Contract ${contract} already declared with class hash:`, match[1]);
                deployedContracts[contract] = match[1];
            } else {
                console.log(`Could not extract class hash for ${contract}. Error: ${message}`);
            }
        }
    };

    return deployedContracts;
}

const deployContract = async(classHashes, artifacts, account) => {
    // usdc
    const testAmount = 1000_000_000_000_000_000_000n; // 1000 USDC
    const owner = account.address;

    // zstarkwarp
    const height = 32n;
    const depositAmount = 100_000_000_000_000_000_000n; // 1000 USDC
    const withdrawalAmount = 100_000_000_000_000_000_000n; // 1000 USDC
    const fee = 5_000_000_000_000_000n;
    const cooloffTime = 3600n;
    // console.log(artifacts);
    const deployedContracts = {};
    try {
        const result = await Contract.factory({
            contract: artifacts["mockUSDC"].sierra, // Compiled Sierra contract
            casm: artifacts["mockUSDC"].casm, // Compiled CASM file
            account: account, // Deploying account
            constructorCalldata: {
                owner: owner,
                test_amount: testAmount
            },
        });

        deployedContracts["mockUSDC"] = result.address;
        console.log("Deployed mockUSDC: ", result.address);
    } catch (e) {
        console.error(e);
    }

    // Wait 30 seconds before next deployment
    console.log("Waiting 30 seconds before next deployment...");
    await sleep(10000);

    try {
        const result = await Contract.factory({
            contract: artifacts["verifier"].sierra, // Compiled Sierra contract
            casm: artifacts["verifier"].casm, // Compiled CASM file
            account: account, // Deploying account
            constructorCalldata: {},
        });

        deployedContracts["verifier"] = result.address;
        console.log("Deployed verifier: ", result.address);
    } catch (e) {
        console.error(e);
    }

    // Wait 30 seconds before next deployment
    console.log("Waiting 30 seconds before next deployment...");
    await sleep(10000);


    try {
        const result = await Contract.factory({
            contract: artifacts["zstarkwarp"].sierra, // Compiled Sierra contract
            casm: artifacts["zstarkwarp"].casm, // Compiled CASM file
            account: account, // Deploying account
            constructorCalldata: {
                height: height,
                token: deployedContracts["mockUSDC"],
                deposit_amount: depositAmount,
                withdrawal_amount: withdrawalAmount,
                fee: fee,
                verifier: deployedContracts["verifier"],
                cooloff_time: cooloffTime
            },
        });

        deployedContracts["zstarkwarp"] = result.address;
    } catch (e) {
        console.error(e);
    } 

    console.log(deployedContracts);
    return deployedContracts;
}

const deployAllContracts = async() => {
    const ztarknetAccount = RunConfig.ZTARKNET.account;
    const starknetAccount = RunConfig.STARKNET.account;
    const declaredContracts = json.parse(fs.readFileSync('./declared.json'));

    const ztarknetContracts = await deployContract(declaredContracts.ztarknet, Artifacts, ztarknetAccount);
    const starknetContracts = await deployContract(declaredContracts.starknet, Artifacts, starknetAccount);

    fs.writeFileSync("./scripts/deployed.json", JSON.stringify({
        "starknet": starknetContracts,
        "ztarknet": ztarknetContracts,
    }, null, 2))
}


const declareAllContracts = async() => {
    const ztarknetAccount = RunConfig.STARKNET.account;
    const starknetAccount = RunConfig.ZTARKNET.account;

    const starknetContracts = await declare(starknetAccount);
    const ztarknetContracts = await declare(ztarknetAccount);
    
    fs.writeFileSync("./scripts/declared.json", JSON.stringify({
        "starknet": starknetContracts,
        "ztarknet": ztarknetContracts,
    }, null, 2));
}

const main = async() => {
    const args = process.argv.slice(2);
    const firstArg = args[0];

    if (firstArg === '1') {
        console.log("Declaring all the contracts...");
        await declareAllContracts();
    } else if (firstArg === '2') {
        console.log("Deploying all the contracts...");
        await deployAllContracts();
    }
}

(async () => {
    await main();
})()

// const accountAddress = process.env.ZTARKNET_ACCOUNT_ADDRESS;
// const privateKey = process.env.ZTARKNET_PRIVATE_KEY;

// const provider = new RpcProvider({
//     nodeUrl: config.urls.ztarknetRpc
// });
// const account = new Account({
//     provider: provider,
//     address: accountAddress,
//     signer: privateKey,
// });

// const calldata = json.parse(
//     fs.readFileSync('./tests/calldata1.json')
// );


// (async () => {
//     const verifierAbi = compiledSierra.abi;
//     const verifier = new Contract({
//         abi: verifierAbi,
//         address: "0x039d677c922c4fca4160f20836e75c93f0ef2399abc60e97f1ab517a20f85873",
//         providerOrAccount: account, // Account for writing
//     });

//     try {
//         // should return true
//         const result2 = await verifier.verify_groth16_proof_bn254(calldata.calldata);
//         console.log("Result:", result2);
//     } catch (error) {
//         console.error("Error details:", error);
//         console.error("Error message:", error.message);
//         console.error("Error code:", error.code);

//         // // Write error to file for debugging
//         fs.writeFileSync('./error.json', JSON.stringify({
//             error: error.message,
//             code: error.code,
//             stack: error.stack,
//             calldataLength: calldata.calldata.length,
//             firstFewElements: calldata.calldata
//         }, null, 2));
//     }
// })();

// (async () => {
//     const promises = contracts.map((name) => {
//         new Promise(async(resolve, reject) => {
//             try {
//                 const result = await account.declare({
//                     contract: json.parse(
//                         fs.readFileSync(`./target/dev/zstarkwarp_${name}.contract_class.json`).toString('ascii')
//                         ),
//                         casm: json.parse(
//                             fs.readFileSync(`./target/dev/zstarkwarp_${name}.compiled_contract_class.json`).toString('ascii')
//                         )
//                     });
//                     contractClassHashes[name] = result.compiled_class_hash;
//                     console.log(`Contract ${name }:`, result.compiled_class_hash);
//             } catch(e) {
//                 console.log(`Error declaring contract ${name}:`, e.message || e);

//                 // Write the full error to file for debugging
//                 fs.writeFileSync('./error.json', JSON.stringify(e, null, 2));

//                 // Try to extract class hash from different error structures
//                 let message = '';
//                 if (e.baseError && e.baseError.data && e.baseError.data.execution_error) {
//                     message = e.baseError.data.execution_error;
//                 } else if (e.message) {
//                     message = e.message;
//                 } else if (typeof e === 'string') {
//                     message = e;
//                 }

//                 const match = message.match(/hash\s+(0x[0-9a-fA-F]+)/);

//                 if (match) {
//                     console.log(`Contract ${name } already declared with class hash:`, match[1]);
//                     contractClassHashes[name] = match[1];
//                 } else {
//                     console.log(`Could not extract class hash for ${name}. Error: ${message}`);
//                 }
//             }
//         });
//     });

//     await Promise.all(promises);
//     console.log("contract hashes: ", contractClassHashes);
// })();

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