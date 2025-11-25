const { MerkleTree } = require("./helpers/merkleTree.js");
const { getCommitment } = require("./helpers/deposit.js");
const fs = require("fs");
const path = require("path");

// Generate random BigInt
function getRandomBigInt(min, max) {
    const range = max - min;
    const randomBytes = new Uint8Array(8);
    crypto.getRandomValues(randomBytes);

    let randomNum = 0n;
    for (let i = 0; i < randomBytes.length; i++) {
        randomNum = (randomNum << 8n) + BigInt(randomBytes[i]);
    }

    return min + (randomNum % BigInt(range));
}

async function setupVerifier() {
    console.log("Setting up verifier with random commitments...");

    // Create Merkle tree with 32 levels (can handle up to 2^32 leaves)
    const merkleTree = new MerkleTree(32);
    await merkleTree.init();

    const numLeaves = 64;
    const commitments = [];

    console.log(`Creating ${numLeaves} random commitments...`);

    // Create 64 commitments with random values
    for (let i = 0; i < numLeaves; i++) {
        // Generate random secret key and nullifier
        const secretKey = getRandomBigInt(1n, 1000000000000n);
        const nullifier = getRandomBigInt(1n, 1000000000000n);
        const receiver = getRandomBigInt(1000n, 10000n);

        try {
            const { commitment, nullifierHash } = await getCommitment(secretKey, nullifier);

            if (!commitment) {
                console.error(`Commitment ${i} is undefined after getCommitment`);
                throw new Error(`Commitment ${i} is undefined`);
            }

            commitments.push({
                index: i,
                receiver,
                secretKey,
                nullifier,
                commitment,
                nullifierHash
            });

            console.log(`Created commitment ${i + 1}/${numLeaves}`);
        } catch (error) {
            console.error(`Error creating commitment ${i}:`, error);
            throw error;
        }
    }

    console.log(`Inserting ${numLeaves} commitments into Merkle tree...`);

    // Insert all commitments into the tree
    for (let i = 0; i < commitments.length; i++) {
        await merkleTree.insert(commitments[i].commitment);
    }

    console.log("Generating Merkle proofs for all commitments...");

    // Generate proofs for all commitments
    const allProofs = [];
    for (let i = 0; i < commitments.length; i++) {
        const { isLeft, siblings } = merkleTree.getPath(i);
        const root = merkleTree.getRoot();

        allProofs.push({
            index: i,
            root,
            receiver: commitments[i].receiver,
            siblings,
            isLeft,
            nullifier: commitments[i].nullifier,
            nullifierHash: commitments[i].nullifierHash,
            secretKey: commitments[i].secretKey,
            commitment: commitments[i].commitment
        });
    }

    console.log("Selecting 3 random commitments for verifier setup...");

    // Select 3 random commitments
    const selectedIndices = new Set();
    while (selectedIndices.size < 3) {
        selectedIndices.add(Math.floor(Math.random() * numLeaves));
    }

    const selectedProofs = Array.from(selectedIndices).map(index => allProofs[index]);

    console.log(`Selected commitments at indices: ${Array.from(selectedIndices).join(', ')}`);

    // Create individual input files for each selected commitment
    console.log("\nCreating individual input files...");

    selectedProofs.forEach((proof, index) => {
        const inputData = {
            root: proof.root.toString(),
            receiver: proof.receiver.toString(),
            siblings: proof.siblings.map(s => s.toString()),
            isLeft: proof.isLeft.map(val => val ? 1 : 0), // Convert boolean to 1/0
            nullifier: proof.nullifier.toString(),
            nullifierHash: proof.nullifierHash.toString(),
            secretKey: proof.secretKey.toString(),
            commitment: proof.commitment.toString()
        };

        const inputFile = path.join(__dirname, '..', 'circuit_artifacts', `input${index + 1}.json`);
        fs.writeFileSync(inputFile, JSON.stringify(inputData, null, 2));
        console.log(`Created ${inputFile} (commitment index: ${proof.index})`);
    });
}

// Run the setup if this file is executed directly
if (require.main === module) {
    setupVerifier()
        .then(() => {
            console.log("Verifier setup completed successfully!");
            process.exit(0);
        })
        .catch((error) => {
            console.error("Error during verifier setup:", error);
            process.exit(1);
        });
}

module.exports = { setupVerifier };