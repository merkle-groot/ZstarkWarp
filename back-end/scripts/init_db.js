const path = require('path');
const fs = require('fs').promises;

class DatabaseInitializer {
    constructor() {
        this.projectRoot = path.join(__dirname, '..');
        this.dataDir = path.join(this.projectRoot, 'data');
    }

    async ensureDataDirectory() {
        try {
            await fs.access(this.dataDir);
            console.log('Data directory exists:', this.dataDir);
        } catch (error) {
            if (error.code === 'ENOENT') {
                await fs.mkdir(this.dataDir, { recursive: true });
                console.log('Created data directory:', this.dataDir);
            } else {
                throw error;
            }
        }
    }

    async initialize() {
        console.log('Initializing database directories...');
        await this.ensureDataDirectory();
        console.log('Database initialization complete.');
    }
}

// Run if called directly
if (require.main === module) {
    const initializer = new DatabaseInitializer();
    initializer.initialize().catch(console.error);
}

module.exports = DatabaseInitializer;