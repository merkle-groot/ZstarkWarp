const dbConfig = require('../config/database');
const { MerkleTreeDB } = require('./merkleTree');

class DatabaseManager {
    constructor() {
        this.merkleTreeDB = null;
        this.initialized = false;
    }

    async initialize() {
        if (this.initialized) {
            console.log('DatabaseManager already initialized');
            return;
        }

        console.log('Initializing DatabaseManager...');

        // Initialize database configuration
        await dbConfig.initialize();

        // Initialize MerkleTree database (10 levels = 1024 capacity)
        this.merkleTreeDB = new MerkleTreeDB(32);
        await this.merkleTreeDB.init();

        this.initialized = true;
        console.log('DatabaseManager initialized successfully');
    }

    async close() {
        console.log('Closing database connections...');

        if (this.merkleTreeDB) {
            await this.merkleTreeDB.close().catch(err =>
                console.error('Error closing MerkleTreeDB:', err)
            );
        }

        console.log('Database connections closed');
    }

    getMerkleTreeDB() {
        if (!this.initialized || !this.merkleTreeDB) {
            throw new Error('DatabaseManager not initialized. Call initialize() first.');
        }
        return this.merkleTreeDB;
    }

    isInitialized() {
        return this.initialized;
    }
}

// Create singleton instance
const databaseManager = new DatabaseManager();

// Graceful shutdown handler
process.on('SIGINT', async () => {
    console.log('\nReceived SIGINT. Closing database connections...');
    try {
        await databaseManager.close();
        process.exit(0);
    } catch (error) {
        console.error('Error during shutdown:', error);
        process.exit(1);
    }
});

process.on('SIGTERM', async () => {
    console.log('\nReceived SIGTERM. Closing database connections...');
    try {
        await databaseManager.close();
        process.exit(0);
    } catch (error) {
        console.error('Error during shutdown:', error);
        process.exit(1);
    }
});

module.exports = databaseManager;