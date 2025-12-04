const { Level } = require("level");
const { poseidon2 } = require('poseidon-lite');
const dbConfig = require('../config/database');
const DEFAULT_ZERO = 19014214495641488759237505126948346942972912379615652741039992445865937985820n;

class MerkleTreeDB {
    constructor(levels, hashFn = poseidon2, zeroHash = DEFAULT_ZERO) {
        this.levels = levels;
        this.hashFn = hashFn;
        this.zeroHash = zeroHash;
        this.capacity = 2 ** levels;
        console.log("capacity: ", this.capacity);
        this.dbPath = dbConfig.getDatabasePath('merkleTree');
        this.db = null; // Will be initialized in init()
        this.zeroSubtrees = []; // in-memory zero nodes
    }

    async init() {
        // Initialize the database connection
        this.db = new Level(this.dbPath, { valueEncoding: "utf8" });
        console.log("MerkleTree DB initialized at:", this.dbPath);

        // Initialize zero subtrees
        this.zeroSubtrees[0] = this.zeroHash;
        for (let i = 1; i <= this.levels; i++) {
            this.zeroSubtrees[i] = this.hashFn([
                this.zeroSubtrees[i - 1],
                this.zeroSubtrees[i - 1]
            ]);
        }

        try {
            const count = await this.db.get('leafCount');
            if (count === undefined) {
                console.log("Initializing new MerkleTree database");
                await this.db.put('leafCount', '0');
            } else {
                console.log(`Resuming MerkleTree with ${count} leaves`);
            }
        } catch (error) {
            if (error.code === 'LEVEL_NOT_FOUND' || error.notFound) {
                console.log("Initializing new MerkleTree database");
                await this.db.put('leafCount', '0');
            } else {
                throw error;
            }
        }
    }

    async getNextIndex() {
        const index = await this.db.get('leafCount');
        return index;
    }

    async insert(element) {
        const leafCountStr = await this.db.get('leafCount');
        const index = parseInt(leafCountStr);
        
        if (index >= this.capacity) {
            throw new Error('Tree is full');
        }

        await this._insert(element, index);
        await this.db.put('leafCount', (index + 1).toString());
    }

    async getIndex(element) {
        const leafCountStr = await this.db.get('leafCount');
        const leafCount = parseInt(leafCountStr);
        
        for (let i = 0; i < leafCount; i++) {
            const key = this._getKey(0, i);
            const stored = await this.db.get(key);
            if (stored === this._serialize(element)) {
                return i;
            }
        }
        return -1;
    }

    async _insert(element, index) {
        // Store leaf
        await this.db.put(this._getKey(0, index), this._serialize(element));
        
        let currentIndex = index;
        
        // Update all levels
        for (let level = 1; level <= this.levels; level++) {
            const parentIndex = currentIndex >> 1;
            const leftIndex = parentIndex * 2;
            const rightIndex = leftIndex + 1;
            
            // Get left child
            const leftKey = this._getKey(level - 1, leftIndex);
            let leftValue;
            try {
                const val = await this.db.get(leftKey);
                leftValue = this._deserialize(val);
            } catch (err) {
                leftValue = this.zeroSubtrees[level - 1];
            }
            
            // Get right child
            const rightKey = this._getKey(level - 1, rightIndex);
            let rightValue;
            try {
                const val = await this.db.get(rightKey);
                rightValue = this._deserialize(val);
            } catch (err) {
                rightValue = this.zeroSubtrees[level - 1];
            }
            
            // Hash and store parent
            const parentHash = this.hashFn([leftValue, rightValue]);
            await this.db.put(this._getKey(level, parentIndex), this._serialize(parentHash));
            
            currentIndex = parentIndex;
        }
    }
    
    async _getOrDefault(key, defaultValue) {
        try {
            const value = await this.db.get(key);
            // Only deserialize if we successfully got a value
            if (value === null || value === undefined) {
                return defaultValue;
            }
            return this._deserialize(value);
        } catch (err) {
            // If key not found or any error, return the default (already a BigInt)
            return defaultValue;
        }
    }

    // And update _deserialize to be safer:
    _deserialize(value) {
        if (value === null || value === undefined || value === '') {
            throw new Error('Cannot deserialize null or undefined value');
        }
        return BigInt(value);
    }

    async getPath(index) {
        if (index < 0 || index >= this.capacity) {
            throw new Error("invalid index");
        }

        const isLeft = [];
        const siblings = [];
        
        for (let level = 0; level < this.levels; level++) {
            if (index % 2 === 1) {
                // Current node is right child, sibling is left
                isLeft.push(false);
                const siblingKey = this._getKey(level, index - 1);
                const sibling = await this._getOrDefault(siblingKey, this.zeroSubtrees[level]);
                siblings.push(sibling);
            } else {
                // Current node is left child, sibling is right
                isLeft.push(true);
                const siblingKey = this._getKey(level, index + 1);
                const sibling = await this._getOrDefault(siblingKey, this.zeroSubtrees[level]);
                siblings.push(sibling);
            }
            index >>= 1;
        }

        return { isLeft, siblings };
    }

    async getLeaves() {
        const leafCountStr = await this.db.get('leafCount');
        const leafCount = parseInt(leafCountStr);
        const leaves = [];
        
        for (let i = 0; i < leafCount; i++) {
            const key = this._getKey(0, i);
            const value = await this.db.get(key);
            leaves.push(this._deserialize(value));
        }
        
        return leaves;
    }

    async getRoot() {
        const leafCountStr = await this.db.get('leafCount');
        const leafCount = parseInt(leafCountStr);
        
        if (leafCount === 0) {
            return this.zeroSubtrees[this.levels];
        }
        
        const rootKey = this._getKey(this.levels, 0);
        const root = await this.db.get(rootKey);
        return this._deserialize(root);
    }

    async getHash(left, right) {
        return this.hashFn([left, right]);
    }

    async serialize() {
        const leafCountStr = await this.db.get('leafCount');
        const leafCount = parseInt(leafCountStr);
        
        const zerosStr = this.zeroSubtrees.map(val => "0x" + val.toString(16));
        const layersStr = [];
        
        // Serialize all layers
        for (let level = 0; level <= this.levels; level++) {
            const layer = [];
            const maxIndex = level === 0 ? leafCount : Math.ceil(leafCount / (2 ** level));
            
            for (let i = 0; i < maxIndex; i++) {
                const key = this._getKey(level, i);
                try {
                    const value = await this.db.get(key);
                    layer.push("0x" + this._deserialize(value).toString(16));
                } catch (err) {
                    if (!err.notFound) throw err;
                }
            }
            layersStr.push(layer);
        }

        return {
            levels: this.levels,
            _zeros: zerosStr,
            _layers: layersStr,
        };
    }

    async close() {
        await this.db.close();
    }

    // Helper methods
    _getKey(level, index) {
        return `node:${level}:${index}`;
    }

    _serialize(value) {
        return typeof value === 'bigint' ? value.toString() : value.toString();
    }
}

module.exports = { MerkleTreeDB };