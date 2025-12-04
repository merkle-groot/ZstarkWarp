const express = require('express');
const router = express.Router();

/**
 * @api {get} / API Root
 * @apiDescription Returns API server information
 * @apiName ApiRoot
 * @apiGroup General
 * @apiVersion 1.0.0
 */
router.get('/', (req, res) => {
  res.json({
    message: 'Zstarkwarp API Server',
    version: '1.0.0',
    status: 'running',
    endpoints: {
      health: '/health',
      api: '/api/v1',
      docs: '/api/docs',
      sendRequest: '/sendRequest'
    }
  });
});

module.exports = router;