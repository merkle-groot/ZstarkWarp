#!/bin/bash
set -e

if ! { command -v circom &> /dev/null || command -v snarkjs &> /dev/null; }
then
    echo "Error: Neither circom nor snarkjs is installed. Please install at least one of them first." >&2
    exit 1
fi

OUTPUT_DIR="./circuits/circuit_artifacts"
CIRCUIT_NAME="Withdraw"
COMPILED_DIR="$OUTPUT_DIR"
PTAU_DIR="$COMPILED_DIR/ptau"
WITNESS_GEN_DIR="$COMPILED_DIR/withdraw_js"

echo "Generating witness..."
node "$WITNESS_GEN_DIR/generate_witness.js" "$WITNESS_GEN_DIR/withdraw.wasm" "$COMPILED_DIR/input1.json" "$COMPILED_DIR/witness.wtns"
echo "Witness generated!"

echo "Generating proof..."
snarkjs groth16 prove "$PTAU_DIR/${CIRCUIT_NAME}_final.zkey" "$COMPILED_DIR/witness.wtns" "$COMPILED_DIR/proof.json" "$COMPILED_DIR/public.json"
echo "Proof generated successfully!"

echo "Verifying the proof..."
snarkjs groth16 verify "$COMPILED_DIR/verification_key.json" "$COMPILED_DIR/public.json" "$COMPILED_DIR/proof.json"
echo "Verified successfully!"
