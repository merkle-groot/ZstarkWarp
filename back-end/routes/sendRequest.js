const express = require('express');
const router = express.Router();
const {sendWithdrawRequest} = require("../middleware/fetchCommitments");

/**
 * @api {post} /sendRequest Send Request with Calldata and Public Inputs
 * @apiDescription Accepts two arrays of integers: calldata and public inputs. Returns publicInputs as a structured JSON object.
 * @apiName SendRequest
 * @apiGroup General
 * @apiVersion 1.0.0
 * @apiParam {Number[]} calldata Array of integers representing calldata
 * @apiParam {Number[]} publicInputs Array of integers representing public inputs: [root, nullifierHash, receiver]
 * @apiExample {json} Request body example:
 * {
 *   "calldata": [1, 2, 3, 4, 5],
 *   "publicInputs": [10, 20, 30]
 * }
 * @apiExample {json} Response example:
 * {
 *   "message": "Request received successfully",
 *   "data": {
 *     "calldata": [1, 2, 3, 4, 5],
 *     "publicInputs": {
 *       "root": 10,
 *       "nullifierHash": 20,
 *       "receiver": 30
 *     },
 *     "timestamp": "2023-12-04T10:30:00.000Z"
 *   }
 * }
 */
router.post('/sendRequest', async(req, res) => {
  console.log("=== /sendRequest endpoint hit ===");
  console.log("Request body:", req.body);

  try {
    const { calldata, publicInputs } = req.body;
    const actualCalldata = calldata.calldata || calldata; // Handle nested structure
    console.log("Extracted calldata:", actualCalldata);
    console.log("Extracted publicInputs:", publicInputs);

    console.log("publicInputs",publicInputs);

    // Validate that both fields are provided
    if (!actualCalldata || !publicInputs) {
      return res.status(400).json({
        error: 'Missing required fields',
        message: 'Both calldata and publicInputs are required'
      });
    }

    // Validate that calldata is an array
    if (!Array.isArray(actualCalldata)) {
      return res.status(400).json({
        error: 'Invalid calldata',
        message: 'calldata must be an array'
      });
    }

    // Validate that publicInputs is an object
    if (typeof publicInputs !== 'object' || Array.isArray(publicInputs) || publicInputs === null) {
      return res.status(400).json({
        error: 'Invalid publicInputs',
        message: 'publicInputs must be an object'
      });
    }

    const publicInputsJson = publicInputs;

    console.log("About to call sendWithdrawRequest...");
    await sendWithdrawRequest(publicInputsJson, actualCalldata);
    console.log("sendWithdrawRequest completed successfully");

    // Process the request (placeholder for actual logic)
    res.json({
      message: 'Request received successfully',
      data: {
        calldata,
        publicInputs: publicInputsJson,
        timestamp: new Date().toISOString()
      }
    });

  } catch (error) {
    res.status(500).json({
      error: 'Internal server error',
      message: error.message
    });
  }
});

module.exports = router;