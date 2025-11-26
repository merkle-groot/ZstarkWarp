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
INPUT_FILE_NUM=$1
INPUT_FILE="$COMPILED_DIR/input$INPUT_FILE_NUM.json"
PROOF_DIR="$OUTPUT_DIR/proofs"
WITNESS_GEN_DIR="$COMPILED_DIR/withdraw_js"

mkdir -p $PROOF_DIR

echo "Generating witness..."
node "$WITNESS_GEN_DIR/generate_witness.js" "$WITNESS_GEN_DIR/withdraw.wasm" "$INPUT_FILE" "$PROOF_DIR/witness$INPUT_FILE_NUM.wtns"
echo "Witness generated!"

echo "Generating proof..."
snarkjs groth16 prove "$PTAU_DIR/${CIRCUIT_NAME}_final.zkey" "$PROOF_DIR/witness$INPUT_FILE_NUM.wtns" "$PROOF_DIR/proof$INPUT_FILE_NUM.json" "$PROOF_DIR/public$INPUT_FILE_NUM.json"
echo "Proof generated successfully!"

echo "Verifying the proof..."
snarkjs groth16 verify "$COMPILED_DIR/verification_key.json" "$PROOF_DIR/public$INPUT_FILE_NUM.json" "$PROOF_DIR/proof$INPUT_FILE_NUM.json"
echo "Verified successfully!"
