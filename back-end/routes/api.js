const express = require('express');
const router = express.Router();
const databaseManager = require('../services/databaseManager');
const config = require('../config/config');

/**
 * @api {get} /api/v1 API Information
 * @apiDescription Returns available API endpoints and documentation
 * @apiName ApiInfo
 * @apiGroup API
 * @apiVersion 1.0.0
 */
router.get('/', (req, res) => {
  res.json({
    name: 'Zstarkwarp API',
    version: '1.0.0',
    description: 'API for Zstarkwarp blockchain application',
    endpoints: [
      {
        path: '/health',
        method: 'GET',
        description: 'Health check endpoint'
      },
      {
        path: '/api/v1',
        method: 'GET',
        description: 'API information'
      },
      {
        path: '/api/v1/status',
        method: 'GET',
        description: 'Application status'
      }
    ],
    documentation: '/api/docs',
    github: config.urls.github
  });
});

/**
 * @api {get} /api/v1/status Application Status
 * @apiDescription Get detailed application status
 * @apiName AppStatus
 * @apiGroup API
 * @apiVersion 1.0.0
 */
router.get('/status', async (req, res) => {
  try {
    const isInitialized = databaseManager.isInitialized();
    let merkleTreeStatus = 'not_initialized';
    let leafCount = 0;

    if (isInitialized) {
      try {
        const merkleTreeDB = databaseManager.getMerkleTreeDB();
        leafCount = parseInt(await merkleTreeDB.getNextIndex());
        merkleTreeStatus = 'operational';
      } catch (error) {
        merkleTreeStatus = 'error';
      }
    }

    res.json({
      application: {
        name: 'Zstarkwarp',
        status: 'operational',
        version: '1.0.0'
      },
      services: {
        merkleTree: {
          status: merkleTreeStatus,
          leafCount: leafCount,
          capacity: merkleTreeStatus === 'operational' ? 1024 : null,
          message: merkleTreeStatus === 'operational' ? `${leafCount} leaves in tree` : 'Merkle tree not available'
        },
        blockchain: {
          status: 'not_connected',
          message: 'Blockchain node connection not yet implemented'
        }
      },
      environment: {
        node_env: process.env.NODE_ENV || 'development',
        port: process.env.PORT || 3001
      }
    });
  } catch (error) {
    res.status(500).json({
      error: 'Failed to get status',
      message: error.message
    });
  }
});

module.exports = router;