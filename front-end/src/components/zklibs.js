import { poseidon2 } from "poseidon-lite";

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
  const secret = randomCircomFelt();
  const nullifier = randomCircomFelt();
  const commitment = hash(secret, nullifier);

  return { secret, nullifier, commitment };
}
