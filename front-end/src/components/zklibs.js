import { poseidon1,poseidon2 } from "poseidon-lite";
import { getGroth16CallData, CurveId, init } from 'garaga';
// Instead of dynamic import, try static import
import * as snarkjs from 'snarkjs';

// Helper functions to parse Groth16 data from object format
function parseGroth16ProofFromObject(proof, publicInputs, curveId = CurveId.BN254) {
  return {
    a: {
      x: BigInt(proof.pi_a[0]),
      y: BigInt(proof.pi_a[1]),
      curveId: curveId
    },
    b: {
      x: [BigInt(proof.pi_b[0][0]), BigInt(proof.pi_b[0][1])],
      y: [BigInt(proof.pi_b[1][0]), BigInt(proof.pi_b[1][1])],
      curveId: curveId
    },
    c: {
      x: BigInt(proof.pi_c[0]),
      y: BigInt(proof.pi_c[1]),
      curveId: curveId
    },
    publicInputs: publicInputs.map(input => BigInt(input)),
    curveId: curveId
  };
}

function parseGroth16VerifyingKeyFromObject(verificationKey, curveId = CurveId.BN254) {
  return {
    alpha: {
      x: BigInt(verificationKey.vk_alpha_1[0]),
      y: BigInt(verificationKey.vk_alpha_1[1]),
      curveId: curveId
    },
    beta: {
      x: [BigInt(verificationKey.vk_beta_2[0][0]), BigInt(verificationKey.vk_beta_2[0][1])],
      y: [BigInt(verificationKey.vk_beta_2[1][0]), BigInt(verificationKey.vk_beta_2[1][1])],
      curveId: curveId
    },
    gamma: {
      x: [BigInt(verificationKey.vk_gamma_2[0][0]), BigInt(verificationKey.vk_gamma_2[0][1])],
      y: [BigInt(verificationKey.vk_gamma_2[1][0]), BigInt(verificationKey.vk_gamma_2[1][1])],
      curveId: curveId
    },
    delta: {
      x: [BigInt(verificationKey.vk_delta_2[0][0]), BigInt(verificationKey.vk_delta_2[0][1])],
      y: [BigInt(verificationKey.vk_delta_2[1][0]), BigInt(verificationKey.vk_delta_2[1][1])],
      curveId: curveId
    },
    ic: verificationKey.IC.map(point => ({
      x: BigInt(point[0]),
      y: BigInt(point[1]),
      curveId: curveId
    }))
  };
}

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
  console.log("proof input: ", input);
  const wasmResponse = await fetch('/circuit/withdraw.wasm');
  const zkeyResponse = await fetch('/circuit/Withdraw_final.zkey');
  const vkeyResponse = await fetch('/circuit/verification_key.json');

  const wasmBuffer = await wasmResponse.arrayBuffer();
  const zkeyBuffer = await zkeyResponse.arrayBuffer();
  const vkeyData = await vkeyResponse.json();

  const proof = await snarkjs.groth16.fullProve(
      input,
      new Uint8Array(wasmBuffer),
      new Uint8Array(zkeyBuffer)
  );
  console.log(proof.proof, proof.publicSignals);

  // Verify the proof immediately
  console.log('Verifying proof...');
  const verificationResult = await snarkjs.groth16.verify(
      vkeyData,
      proof.publicSignals,
      proof.proof
  );

  console.log('Proof verification result:', verificationResult);

  if (!verificationResult) {
      throw new Error('Generated proof verification failed');
  }

  console.log('Proof verified successfully!');

  return proof;
}

// Browser-compatible calldata generation function
export async function getCalldata(proof, publicInputs) {
  try {
    // Initialize garaga library
    await init();

    const curveId = CurveId.BN254;

    // Load verification key from server
    const verificationKeyResponse = await fetch('/circuit/verification_key.json');
    if (!verificationKeyResponse.ok) {
      throw new Error('Failed to load verification key');
    }
    const verificationKey = await verificationKeyResponse.json();

    // Use helper functions to parse proof and verification key
    const groth16Proof = parseGroth16ProofFromObject(proof, publicInputs, curveId);
    const vk = parseGroth16VerifyingKeyFromObject(verificationKey, curveId);

    // Generate calldata using garaga
    const calldata = getGroth16CallData(groth16Proof, vk, curveId);

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

