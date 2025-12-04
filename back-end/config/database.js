const path = require('path');
const fs = require('fs').promises;

class DatabaseConfig {
    constructor() {
        this.baseDir = path.join(__dirname, '..', '..', 'data');
        this.databases = {
            merkleTree: path.join(this.baseDir, 'merkle-tree')
        };
    }

    async ensureDataDirectory() {
        try {
            await fs.access(this.baseDir);
        } catch (error) {
            if (error.code === 'ENOENT') {
                await fs.mkdir(this.baseDir, { recursive: true });
                console.log(`Created data directory: ${this.baseDir}`);
            }
        }
    }

    getDatabasePath(dbName) {
        if (!this.databases[dbName]) {
            throw new Error(`Unknown database: ${dbName}`);
        }
        return this.databases[dbName];
    }

    async initialize() {
        await this.ensureDataDirectory();
        console.log('Database configuration initialized');
        console.log('Merkle Tree DB path:', this.databases.merkleTree);
    }
}

module.exports = new DatabaseConfig();