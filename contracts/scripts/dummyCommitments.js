import { Contract, RpcProvider, Account, json, uint256 } from 'starknet';
import {RunConfig, Artifacts} from './config.js';
import fs from 'fs';

// BN128 scalar field prime
const CIRCOM_PRIME = BigInt(
  "21888242871839275222246405745257275088548364400416034343698204186575808495617"
);

// Random circom felt < p
function randomCircomFelt() {
  while (true) {
    const bytes = new Uint8Array(32);
    crypto.getRandomValues(bytes);

    let x = 0n;
    for (const b of bytes) {
      x = (x << 8n) | BigInt(b);
    }

    x &= (1n << 254n) - 1n;
    if (x < CIRCOM_PRIME) return x;
  }
}

const getAllCommitments = async() => {
    const provider = RunConfig.STARKNET.provider;
    const contractAddresses = json.parse(fs.readFileSync("./scripts/deployed.json"));
    const zstarkwarpAddress = contractAddresses.starknet.zstarkwarp;

    // For read-only access
    const contract = new Contract({
        abi: Artifacts.zstarkwarp.sierra.abi,
        address: zstarkwarpAddress,
        providerOrAccount: provider, // Provider for reading
    });

    const length = await contract.get_len();
    console.log("get_len: ", length);

    const commitments = await contract.get_commitments(0, 4);
    console.log("commitments: ", commitments);
}


const sendDummyCommitments = async() => {
    const starknetAccount = RunConfig.STARKNET.account;
    const contractAddresses = json.parse(fs.readFileSync("./scripts/deployed.json"));
    const zstarkwarpAddress = contractAddresses.starknet.zstarkwarp;

    let i=0;
    const dummyCommitmentCalls = [];
    while(i<2) {
        const commitment = randomCircomFelt();
        const commitment_u256 = uint256.bnToUint256(commitment);
        dummyCommitmentCalls.push({
            contractAddress: zstarkwarpAddress,
            entrypoint: "dummy_commitments",
            calldata: [
                commitment_u256.low.toString(),
                commitment_u256.high.toString(),
            ]
        });
        i+=1;
    }

    console.log("sending multicall...");
    const tx = await starknetAccount.execute(dummyCommitmentCalls);
    console.log("multicall tx sent:", tx.transaction_hash);

    // Wait for confirmation
    await starknetAccount.waitForTransaction(tx.transaction_hash);
}

(async() => {
    sendDummyCommitments();
    // getAllCommitments();
})();
