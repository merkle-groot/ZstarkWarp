const { MerkleTreeDB } = require('./services/merkleTree');
const { MerkleTree } = require('../circuits/tests/helpers/merkleTree');
const fs = require('fs');
const path = require('path');
const { poseidon2 } = require('poseidon-lite');

async function simpleTest() {
    console.log('Simple MerkleTreeDB test...');

    const testDbPath = path.join(__dirname, 'simple-test-db');

    // Clean up
    if (fs.existsSync(testDbPath)) {
        fs.rmSync(testDbPath, { recursive: true, force: true });
    }

    try {
        const tree = new MerkleTreeDB(testDbPath, 32);
        const circomTree = new MerkleTree(32);
        await tree.init();
        await circomTree.init();

        const index = await tree.getNextIndex();
        console.log('index: ', index);

        // Test 1: Insert one leaf and verify
        const leaf0 = 1;
        await tree.insert(leaf0);
        await circomTree.insert(leaf0);
        const leaves = [...Array(308).keys()].map((val) => val.toString());
        for(const leaf of leaves) {
            await circomTree.insert(leaf);
            await tree.insert(leaf);
        }

        
        // await circomTree.bulkInsert(leaves);

        const root = await tree.getRoot();
        const circomRoot = circomTree.getRoot();
        console.log(root, circomRoot);
    } catch (error) {
        console.error('❌ Test failed:', error.message);
        throw error;

    } finally {
        if (fs.existsSync(testDbPath)) {
            fs.rmSync(testDbPath, { recursive: true, force: true });
            console.log('✓ Test database cleaned up');
        }
    }
}

simpleTest().catch(console.error);