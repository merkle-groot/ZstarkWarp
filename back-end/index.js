const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');
require('dotenv').config();

// Import database manager
const databaseManager = require('./services/databaseManager');

// Import routes
const indexRouter = require('./routes/index');
const apiRouter = require('./routes/api');
const healthRouter = require('./routes/health');
const getRouter = require('./routes/getPath');

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
  try {
    console.log('🔧 Initializing databases...');
    await databaseManager.initialize();
    console.log('✅ Databases initialized successfully');

    // Start server
    app.listen(PORT, () => {
      console.log(`🚀 Zstarkwarp API Server running on port ${PORT}`);
      console.log(`📍 Health check: http://localhost:${PORT}/health`);
      console.log(`📍 API docs: http://localhost:${PORT}/api/v1`);
    });
  } catch (error) {
    console.error('❌ Failed to initialize databases:', error);
    process.exit(1);
  }
}

// Start the server
startServer();

module.exports = app;