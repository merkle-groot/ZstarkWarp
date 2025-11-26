const { existsSync } = require("fs");
const { exec } = require("child_process");
const path = require("path");

const runScript = async (scriptPath, ...args) => {
  if (!existsSync(scriptPath)) {
    throw new Error(`Script not found: ${scriptPath}`);
  }

  const fullPath = path.resolve(scriptPath);
  const command = `bash ${fullPath} ${args.join(' ')}`;

  console.log(`Running: ${command}`);

  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        console.error(`Script failed: ${error.message}`);
        if (stderr) console.error(`stderr:\n${stderr}`);
        reject(error);
      } else {
        console.log(`Script completed successfully`);
        if (stdout.trim()) console.log(stdout);
        resolve();
      }
    });
  });
};

const getRandomBigInt = (min, max) => {
    const randomBytes = new Uint8Array(8);
    crypto.getRandomValues(randomBytes);

    return min + (randomBytes.reduce((acc, byte) => (acc << 8n) + BigInt(byte), 0n) % (max - min));
};

module.exports = { runScript, getRandomBigInt };