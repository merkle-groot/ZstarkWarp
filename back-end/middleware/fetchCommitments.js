const {RunConfig, Artifacts} = require("../config/contract");
const databaseManager = require("../services/databaseManager");
const fs = require('fs');
const { Contract, json } = require('starknet');

// Initialize the database manager
const initializeDB = async () => {
    if (!databaseManager.isInitialized()) {
        await databaseManager.initialize();
    }
    return databaseManager.getMerkleTreeDB();
};

const sendWithdrawRequest = async(publicInputs, calldata) => {
    try{
        const account = RunConfig.ZTARKNET.account;
        const contractAddresses = json.parse(fs.readFileSync("./config/deployed.json"));
        const zstarkwarpAddress = contractAddresses.ztarknet.zstarkwarp;

        // // Save calldata to file for debugging
        // const debugData = {
        //     publicInputs: publicInputs,
        //     calldata: calldata.slice(1),
        //     timestamp: new Date().toISOString(),
        //     contractAddress: zstarkwarpAddress
        // };

        // const debugFileName = `./debug_withdraw_calldata_${Date.now()}.json`;
        // fs.writeFileSync(debugFileName, JSON.stringify(debugData, null, 2));
        // console.log(`Saved withdraw calldata debug data to ${debugFileName}`);

        // For read-only access
        const contract = new Contract({
            abi: Artifacts.zstarkwarp.sierra.abi,
            address: zstarkwarpAddress,
            providerOrAccount: account,
        });

        const tx = await contract.request_withdraw(
            publicInputs.root,
            publicInputs.nullifierHash,
            publicInputs.receiver,
            calldata.slice(1)
        );

        console.log("tx: ", tx);

        await account.waitForTransaction(tx.transaction_hash);
    } catch(e){
        console.log("error while sending withdraw tx:", e);
        throw e;
    }
}

const populateCommitments = async() => {
    const provider = RunConfig.STARKNET.provider;
    const contractAddresses = json.parse(fs.readFileSync("./config/deployed.json"));
    const zstarkwarpAddress = contractAddresses.starknet.zstarkwarp;

    // For read-only access
    const contract = new Contract({
        abi: Artifacts.zstarkwarp.sierra.abi,
        address: zstarkwarpAddress,
        providerOrAccount: provider, // Provider for reading
    });

    const merkleDb = await initializeDB();
    const nextIndexDb = await merkleDb.getNextIndex();

    const nextIndexContract = await contract.get_len();
    console.log(nextIndexContract, nextIndexDb);

    if(nextIndexDb != nextIndexContract){
        const commitments = await contract.get_commitments(nextIndexDb, nextIndexContract-1n);
        console.log("commitments", commitments);

        for(const commitment of commitments){
            await merkleDb.insert(commitment);

            console.log("added commitments to local tree");
        }
    }
}


// (async() => {
//     await getAllCommitments();
//     // const merkleDb = await initializeDB();
//     // const nextIndexDb = await merkleDb.getNextIndex();

//     // console.log("nextIndexDb", nextIndexDb);

//     // const root = await merkleDb.getRoot();
//     // console.log("root: ", root);


// })()

module.exports = { populateCommitments, sendWithdrawRequest };