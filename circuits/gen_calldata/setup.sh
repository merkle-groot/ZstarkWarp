#!/bin/bash
set -e

if ! { command -v circom &> /dev/null || command -v snarkjs &> /dev/null; }
then
    echo "Error: Neither circom nor snarkjs is installed. Please install at least one of them first." >&2
    exit 1
fi

OUTPUT_DIR="./circuits/circuit_artifacts"
CIRCUIT="./circuits/src/withdraw.circom"
CIRCUIT_NAME="Withdraw"
COMPILED_DIR="$OUTPUT_DIR"
PTAU_DIR="$COMPILED_DIR/ptau"
CONTRACTS_DIR="./contracts"

# files
PTAU_PRE="./circuits/src/ptau/powersOfTau28_hez_final_14.ptau"

echo "Compiling signatureCommitment circuit..."
mkdir -p "$COMPILED_DIR"
circom "$CIRCUIT" --r1cs --wasm --output "$COMPILED_DIR"

echo "Performing trusted setup..."
mkdir -p "$PTAU_DIR"

snarkjs groth16 setup "$COMPILED_DIR/$CIRCUIT_NAME.r1cs" "$PTAU_PRE" "$PTAU_DIR/${CIRCUIT_NAME}_0000.zkey"
snarkjs zkey contribute "$PTAU_DIR/${CIRCUIT_NAME}_0000.zkey" "$PTAU_DIR/${CIRCUIT_NAME}_0001.zkey" --name="merkle-groot" -v  -e="random numbers 48931 938 1251 06105"
snarkjs zkey beacon "$PTAU_DIR/${CIRCUIT_NAME}_0001.zkey" "$PTAU_DIR/${CIRCUIT_NAME}_final.zkey" 0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f 10 -n="Final Beacon phase2"
snarkjs zkey export verificationkey "$PTAU_DIR/${CIRCUIT_NAME}_final.zkey" "$COMPILED_DIR/verification_key.json"

echo "Trusted setup completed successfully!"
(cd "$CONTRACTS_DIR" && echo "verifier" | garaga gen --system groth16 --vk "../$COMPILED_DIR/verification_key.json")
# mkdir -p "$CONTRACTS_DIR/src/verifier/"
# mv "${CONTRACTS_DIR}"/verifier/src/*.cairo "${CONTRACTS_DIR}/src/verifier/"
# rm -rf "$CONTRACTS_DIR/verifier/"


