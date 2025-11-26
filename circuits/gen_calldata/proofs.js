const { SCRIPTS, CONFIG } = require("./config.js");
const { runScript } = require("./utils.js");

const generateProofs = async () => {
    console.log(`Generating ${CONFIG.numProofs} proofs...`);

    await Promise.all(
        Array.from({ length: CONFIG.numProofs }, (_, i) =>
            runScript(SCRIPTS.proof, i + 1)
        )
    );
};

module.exports = { generateProofs };