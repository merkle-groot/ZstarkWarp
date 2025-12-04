const express = require('express');
const router = express.Router();

/**
 * @api {get} /health Health Check
 * @apiDescription Check server health status and uptime
 * @apiName HealthCheck
 * @apiGroup General
 * @apiVersion 1.0.0
 */
router.get('/', (req, res) => {
  const uptime = process.uptime();
  const uptimeFormatted = formatUptime(uptime);

  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    uptime: {
      seconds: Math.floor(uptime),
      formatted: uptimeFormatted
    },
    memory: process.memoryUsage(),
    version: process.version,
    platform: process.platform
  });
});

/**
 * Format uptime into human readable format
 * @param {number} seconds - Uptime in seconds
 * @returns {string} Formatted uptime string
 */
function formatUptime(seconds) {
  const days = Math.floor(seconds / 86400);
  const hours = Math.floor((seconds % 86400) / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const secs = Math.floor(seconds % 60);

  return `${days}d ${hours}h ${minutes}m ${secs}s`;
}

module.exports = router;