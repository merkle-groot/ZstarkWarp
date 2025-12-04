const express = require('express');
const router = express.Router();
const databaseManager = require("../services/databaseManager");
const {populateCommitments} = require("../middleware/fetchCommitments");

// Initialize the database manager
const initializeDB = async () => {
    if (!databaseManager.isInitialized()) {
        await databaseManager.initialize();
    }
    return databaseManager.getMerkleTreeDB();
};

router.post('/getPath', async(req, res) => {
    try {
        const { commitment, index } = req.body;

        // Validate required fields
        if (commitment === undefined || commitment === null) {
            return res.status(400).json({
                error: 'Missing required field: commitment',
                message: 'Commitment value is required'
            });
        }

        if (index === undefined || index === null) {
            return res.status(400).json({
                error: 'Missing required field: index',
                message: 'Index value is required'
            });
        }

        // Validate index is a non-negative integer
        if (!Number.isInteger(index) || index < 0) {
            return res.status(400).json({
                error: 'Invalid index',
                message: 'Index must be a non-negative integer'
            });
        }

        // Validate commitment format (assuming it's a hex string or number)
        const commitmentValue = typeof commitment === 'string' ?
            (commitment.startsWith('0x') ? BigInt(commitment) : BigInt('0x' + commitment)) :
            BigInt(commitment);

        if (commitmentValue < 0) {
            return res.status(400).json({
                error: 'Invalid commitment',
                message: 'Commitment must be a non-negative value'
            });
        }

        const merkleDb = await initializeDB();
        await populateCommitments();
        const merklePath = await merkleDb.getPath(index);
        const root = await merkleDb.getRoot();
        console.log('Root type:', typeof root, 'Root value:', root);

        // Ensure all BigInt values are converted to strings
        const responseData = {
            success: true,
            data: {
                commitment: '0x' + commitmentValue.toString(16),
                root: root.toString(),
                index: index,
                isLeft: merklePath.isLeft,
                siblings: merklePath.siblings.map((val) => val.toString())
            }
        };

        console.log('Response data:', JSON.stringify(responseData, null, 2));
        res.json(responseData);

    } catch (error) {
        console.error('Error processing commitment:', error);
        res.status(500).json({
            error: 'Internal server error',
            message: 'Failed to process commitment'
        });
    }
});

module.exports = router;