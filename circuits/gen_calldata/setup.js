const { SCRIPTS } = require("./config.js");
const { runScript } = require("./utils.js");

const runSetup = async () => {
    console.log("Running setup script...");
    await runScript(SCRIPTS.setup);
};

module.exports = { runSetup };