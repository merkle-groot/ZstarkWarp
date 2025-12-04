const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');
require('dotenv').config();

// Import database manager and config
const databaseManager = require('./services/databaseManager');
const config = require('./config/config');

// Import approval scheduler
const { startPeriodicApproval } = require('./middleware/fetchCommitments');

// Import routes
const indexRouter = require('./routes/index');
const apiRouter = require('./routes/api');
const healthRouter = require('./routes/health');
const getRouter = require('./routes/getPath');
const sendRequestRouter = require('./routes/sendRequest');

const app = express();
const PORT = process.env.PORT || 3001;

// Middleware
app.use(helmet());
app.use(cors());
app.use(morgan('combined'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes
app.use('/', indexRouter);
app.use('/health', healthRouter);
app.use('/api/v1', apiRouter);
app.use('/api/v1', getRouter);
app.use('/api/v1', sendRequestRouter);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    error: 'Something went wrong!',
    message: process.env.NODE_ENV === 'development' ? err.message : 'Internal server error'
  });
});

// 404 handler
app.use((req, res) => {
  res.status(404).json({
    error: 'Not Found',
    message: 'The requested resource was not found'
  });
});

// Initialize databases and start server
async function startServer() {
  let approvalScheduler = null;

  try {
    console.log('🔧 Initializing databases...');
    await databaseManager.initialize();
    console.log('✅ Databases initialized successfully');

    // Start approval scheduler
    const approvalInterval = process.env.APPROVAL_INTERVAL_SECONDS ?
        parseInt(process.env.APPROVAL_INTERVAL_SECONDS, 10) : 30;

    console.log(`🔄 Starting approval scheduler (${approvalInterval}s interval)...`);
    approvalScheduler = await startPeriodicApproval(approvalInterval);
    console.log('✅ Approval scheduler started');

    // Start server
    const server = app.listen(PORT, () => {
      console.log(`🚀 Zstarkwarp API Server running on port ${PORT}`);
      console.log(`📍 Health check: ${config.urls.backend}:${PORT}${config.apiEndpoints.health}`);
      console.log(`📍 API docs: ${config.urls.backend}:${PORT}${config.apiEndpoints.docs}`);
    });

    // Handle graceful shutdown
    const gracefulShutdown = async (signal) => {
      console.log(`\n🛑 Received ${signal}. Shutting down gracefully...`);

      // Stop the server
      server.close(async () => {
        console.log('📡 HTTP server closed');

        // Stop approval scheduler
        if (approvalScheduler) {
          await approvalScheduler.stop();
        }

        // Close database connections
        await databaseManager.close();

        console.log('✅ Graceful shutdown completed');
        process.exit(0);
      });
    };

    process.on('SIGINT', () => gracefulShutdown('SIGINT'));
    process.on('SIGTERM', () => gracefulShutdown('SIGTERM'));

  } catch (error) {
    console.error('❌ Failed to start server:', error);

    // Cleanup on startup error
    if (approvalScheduler) {
      await approvalScheduler.stop();
    }
    await databaseManager.close();

    process.exit(1);
  }
}

// Start the server
startServer();

module.exports = app;