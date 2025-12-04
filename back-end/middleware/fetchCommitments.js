const {RunConfig, Artifacts} = require("../config/contract");
const databaseManager = require("../services/databaseManager");
const fs = require('fs');
const { Contract, json, uint256, CairoCustomEnum } = require('starknet');
const { Level } = require("level");
const path = require('path');

// Initialize the database manager
const initializeDB = async () => {
    if (!databaseManager.isInitialized()) {
        await databaseManager.initialize();
    }
    return databaseManager.getMerkleTreeDB();
};

// Initialize leveldb for tracking lastProcessed
let lastProcessedDB = null;
const initializeLastProcessedDB = async () => {
    if (!lastProcessedDB) {
        const dbPath = path.join(__dirname, '..', '..', 'data', 'last-processed');
        lastProcessedDB = new Level(dbPath, { valueEncoding: 'utf8' });
        console.log("LastProcessed DB initialized at:", dbPath);
    }
    return lastProcessedDB;
};

// Get last processed index from leveldb
const getLastProcessed = async () => {
    try {
        const db = await initializeLastProcessedDB();
        const lastProcessed = await db.get('lastProcessed');
        return parseInt(lastProcessed, 10);
    } catch (error) {
        if (error.code === 'LEVEL_NOT_FOUND' || error.notFound) {
            // First time running, start from 0
            await setLastProcessed(0);
            return 0;
        }
        throw error;
    }
};

// Set last processed index in leveldb
const setLastProcessed = async (index) => {
    const db = await initializeLastProcessedDB();
    await db.put('lastProcessed', index.toString());
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

const setupSolver = async() => {
    const account = RunConfig.ZTARKNET.account;
    const contractAddresses = json.parse(fs.readFileSync("./config/deployed.json"));
    const mockUSDCAddress = contractAddresses.ztarknet.mockUSDC;
    const zstarkwarpAddress = contractAddresses.ztarknet.zstarkwarp;

    // For read-only access
    const usdcContract = new Contract({
        abi: Artifacts.mockUSDC.sierra.abi,
        address: mockUSDCAddress,
        providerOrAccount: account, // Provider for reading
    });

    const zstarkContract = new Contract({
        abi: Artifacts.zstarkwarp.sierra.abi,
        address: zstarkwarpAddress,
        providerOrAccount: account
    });

    const nonce = await account.getNonce();

    const amount = uint256.bnToUint256(BigInt(10**24));
    // const tx = await usdcContract.mint(account.address, amount);
    // await account.waitForTransaction(tx.transaction_hash);

    // const tx2 = await usdcContract.approve(zstarkwarpAddress, amount);
    // await account.waitForTransaction(tx2.transaction_hash);

    // const tx3 = await zstarkContract.solver_deposit(amount);
    // await account.waitForTransaction(tx3.transaction_hash);
}

const approveTx = async() => {
    try {
        console.log("Starting approveTx process...");

        // Initialize accounts and contracts
        const ztarknetAccount = RunConfig.ZTARKNET.account;
        const starknetAccount = RunConfig.STARKNET.account;

        let contractAddresses;
        try {
            contractAddresses = json.parse(fs.readFileSync("./config/deployed.json"));
        } catch (error) {
            throw new Error(`Failed to read deployed.json: ${error.message}`);
        }

        const zstarkwarpzAddress = contractAddresses.ztarknet.zstarkwarp;
        const zstarkwarpsAddress = contractAddresses.starknet.zstarkwarp;

        const ztarknetContract = new Contract({
            abi: Artifacts.zstarkwarp.sierra.abi,
            address: zstarkwarpzAddress,
            providerOrAccount: ztarknetAccount
        });

        const starknetContract = new Contract({
            abi: Artifacts.zstarkwarp.sierra.abi,
            address: zstarkwarpsAddress,
            providerOrAccount: starknetAccount
        });

        // Get last processed index from persistent storage
        const lastProcessed = await getLastProcessed();
        console.log(`Last processed index: ${lastProcessed}`);

        // Get current request length
        let requestsLen;
        try {
            requestsLen = await ztarknetContract.get_request_len();
            console.log(`Total requests: ${requestsLen}`);
        } catch (error) {
            throw new Error(`Failed to get request length: ${error.message}`);
        }

        // Convert BigInt to Number for comparison
        const requestLengthNum = Number(requestsLen);

        if(lastProcessed < requestLengthNum) {
            console.log(`Processing requests from ${lastProcessed} to ${requestLengthNum - 1}`);

            for (let i = lastProcessed; i < requestLengthNum; i++) {
                try {
                    console.log(`Processing request index: ${i}`);

                    // Get withdrawal request
                    let withdrawalRequest;
                    try {
                        withdrawalRequest = await ztarknetContract.get_request(i);
                    } catch (error) {
                        console.error(`Failed to get request ${i}: ${error.message}`);
                        continue; // Skip this request and continue with next
                    }

                    const status = withdrawalRequest.status;

                    // Skip if already processed
                    if(status.variant.Processed !== undefined){
                        console.log(`Request ${i} already processed, skipping`);
                        continue;
                    }

                    // Check if root is valid
                    let isValidRoot;
                    try {
                        isValidRoot = await starknetContract.is_valid_root(withdrawalRequest.root);
                    } catch (error) {
                        console.error(`Failed to validate root for request ${i}: ${error.message}`);
                        continue;
                    }

                    if(!isValidRoot){
                        console.log(`Invalid root for request ${i}, skipping`);
                        continue;
                    }

                    console.log(`Approving withdrawal for index: ${i}`);

                    // Send approval transaction
                    let tx;
                    try {
                        tx = await ztarknetContract.approve_withdraw(i);
                    } catch (error) {
                        console.error(`Failed to approve withdrawal ${i}: ${error.message}`);
                        continue; // Skip this request and continue with next
                    }

                    // Wait for transaction confirmation
                    try {
                        await ztarknetAccount.waitForTransaction(tx.transaction_hash);
                        console.log(`Successfully processed transaction for index: ${i}`);
                    } catch (error) {
                        console.error(`Transaction failed for index ${i}: ${error.message}`);
                        continue; // Skip updating lastProcessed for failed tx
                    }

                    // Update last processed index only after successful transaction
                    await setLastProcessed(i + 1);
                    console.log(`Updated last processed index to: ${i + 1}`);

                } catch (error) {
                    console.error(`Unexpected error processing request ${i}: ${error.message}`);
                    // Continue with next request
                }
            }
        } else {
            console.log("No new requests to process");
        }

        console.log("approveTx process completed successfully");

    } catch (error) {
        console.error("Critical error in approveTx:", error.message);
        throw error; // Re-throw critical errors so the calling code can handle them
    }
}



// Periodic execution function (for external scheduling)
const startPeriodicApproval = async (intervalSeconds = 30) => {
    console.log(`Starting periodic approval process with ${intervalSeconds}s interval...`);

    let intervalId;

    // Set up periodic execution
    const runApprovalProcess = async () => {
        try {
            await approveTx();
        } catch (error) {
            console.error("Error in periodic approval run:", error.message);
            // Continue running even if there's an error
        }
    };

    // Run once immediately
    await runApprovalProcess();

    // Set up periodic execution
    const intervalMs = intervalSeconds * 1000;
    intervalId = setInterval(runApprovalProcess, intervalMs);

    console.log(`Periodic approval scheduler started (runs every ${intervalSeconds} seconds)`);

    // Return cleanup function for graceful shutdown
    return {
        stop: async () => {
            if (intervalId) {
                console.log('\nStopping periodic approval process...');
                clearInterval(intervalId);
                intervalId = null;

                // Close databases
                if (lastProcessedDB) {
                    await lastProcessedDB.close().catch(err =>
                        console.error('Error closing lastProcessedDB:', err)
                    );
                    lastProcessedDB = null;
                }

                console.log('Approval scheduler stopped');
            }
        }
    };
};

module.exports = {
    populateCommitments,
    sendWithdrawRequest,
    approveTx,
    getLastProcessed,
    setLastProcessed,
    startPeriodicApproval
};