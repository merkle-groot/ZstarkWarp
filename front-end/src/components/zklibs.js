import { poseidon1,poseidon2 } from "poseidon-lite";
import { getGroth16CallData, CurveId, init } from 'garaga';

// BN128 scalar field prime
const CIRCOM_PRIME = BigInt(
  "21888242871839275222246405745257275088548364400416034343698204186575808495617"
);

// Random circom felt < p
function randomCircomFelt() {
  while (true) {
    const bytes = new Uint8Array(32);
    crypto.getRandomValues(bytes);

    let x = 0n;
    for (const b of bytes) {
      x = (x << 8n) | BigInt(b);
    }

    x &= (1n << 254n) - 1n;
    if (x < CIRCOM_PRIME) return x;
  }
}

// Hash any number of elements
function hashN(arr) {
  return poseidon2(arr); // returns BigInt
}

// Hash two felts
function hash(left, right) {
  return poseidon2([left, right]);
}

// Build commitment
export function createCommitment() {
  const secretKey = randomCircomFelt();
  const nullifier = randomCircomFelt();
  const commitment = hash(secretKey, nullifier);
  const nullifierHash = poseidon1([nullifier]);

  return { secretKey, nullifier, commitment, nullifierHash };
}


// Dynamic import for SnarkJS
export async function genProof(input) {
  const snarkjs = await import('snarkjs');
  const wasmResponse = await fetch('/circuit/withdraw.wasm');
  const zkeyResponse = await fetch('/circuit/Withdraw_final.zkey');

  const wasmBuffer = await wasmResponse.arrayBuffer();
  const zkeyBuffer = await zkeyResponse.arrayBuffer();

  const proof = await snarkjs.groth16.fullProve(
      input,
      new Uint8Array(wasmBuffer),
      new Uint8Array(zkeyBuffer)
  );
  console.log(proof.proof, proof.publicSignals);


  return proof;
}

// Browser-compatible calldata generation function
export async function getCalldata(proof, publicInputs) {
  try {
    // Initialize garaga library
    await init();

    const curveId = CurveId.BN254;

    // Load verification key from server
    const verificationKeyResponse = await fetch('/verification_key.json');
    if (!verificationKeyResponse.ok) {
      throw new Error('Failed to load verification key');
    }
    const verificationKey = await verificationKeyResponse.json();

    // Format proof points for garaga
    const groth16Proof = {
      a: formatPoint(proof.pi_a[0], proof.pi_a[1], curveId),
      b: formatG2Point(proof.pi_b[0], proof.pi_b[1], curveId),
      c: formatPoint(proof.pi_c[0], proof.pi_c[1], curveId),
      publicInputs: publicInputs.map(input => BigInt(input)),
      curveId
    };

    // Format verification key for garaga
    const formattedVk = {
      alpha: formatPoint(verificationKey.vk_alpha_1[0], verificationKey.vk_alpha_1[1], curveId),
      beta: formatG2Point(verificationKey.vk_beta_2[0], verificationKey.vk_beta_2[1], curveId),
      gamma: formatG2Point(verificationKey.vk_gamma_2[0], verificationKey.vk_gamma_2[1], curveId),
      delta: formatG2Point(verificationKey.vk_delta_2[0], verificationKey.vk_delta_2[1], curveId),
      ic: verificationKey.IC.map(point => formatPoint(point[0], point[1], curveId))
    };

    // Generate calldata using garaga
    const calldata = getGroth16CallData(groth16Proof, formattedVk, curveId);

    // Convert all BigInt values to strings for JSON compatibility
    return {
      calldata: calldata.map(val => val.toString()),
      success: true
    };

  } catch (error) {
    console.error('Error generating calldata:', error);
    return {
      error: 'Failed to generate calldata: ' + error.message,
      success: false
    };
  }
}

// Helper function to format G1 points (for browser compatibility)
function formatPoint(x, y, curveId) {
  return {
    x: BigInt(x),
    y: BigInt(y),
    curveId
  };
}

// Helper function to format G2 points (for browser compatibility)
function formatG2Point(x, y, curveId) {
  return {
    x: [BigInt(x[0]), BigInt(x[1])],
    y: [BigInt(y[0]), BigInt(y[1])],
    curveId
  };
}