const SCRIPTS = {
  setup: "./circuits/gen_calldata/setup.sh",
  proof: "./circuits/gen_calldata/proof_gen.sh"
};

const CONFIG = {
  merkleLevels: 32,
  numCommitments: 64,
  numProofs: 3,
  valueRanges: {
    secretKey: [1n, 1000000000000n],
    nullifier: [1n, 1000000000000n],
    receiver: [1000n, 10000n]
  }
};

module.exports = { SCRIPTS, CONFIG };