const { runSetup } = require("./setup.js");
const { generateCommitments } = require("./commitments.js");
const { generateProofs } = require("./proofs.js");

const main = async () => {
    try {
        await runSetup();
        await generateCommitments();
        await generateProofs();
        console.log("All operations completed successfully!");
    } catch (error) {
        console.error("Operation failed:", error.message);
        process.exit(1);
    }
};

main();

// module.exports = { setupVerifier };