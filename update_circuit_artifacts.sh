#!/bin/bash

# Script to move required circuit artifacts to front-end src/circuit directory
# This ensures the front-end has access to the latest circuit files for ZK operations

set -e  # Exit on any error

# Define source and destination paths
CIRCUIT_ARTIFACTS_DIR="./circuits/circuit_artifacts"
FRONTEND_PUBLIC_DIR="./front-end/public/circuit"

# Create directory if it doesn't exist
echo "Creating directory..."
mkdir -p "$FRONTEND_PUBLIC_DIR"

# Copy all circuit artifacts to public/circuit (served by Create React App)
echo "Copying circuit files to public/circuit/..."
cp "$CIRCUIT_ARTIFACTS_DIR/withdraw_js/withdraw.wasm" "$FRONTEND_PUBLIC_DIR/"
cp "$CIRCUIT_ARTIFACTS_DIR/ptau/Withdraw_final.zkey" "$FRONTEND_PUBLIC_DIR/"
cp "$CIRCUIT_ARTIFACTS_DIR/verification_key.json" "$FRONTEND_PUBLIC_DIR/"

# Copy deployed.json to back-end and front-end config directories
echo "Copying deployed.json to back-end and front-end config/..."
mkdir -p "./back-end/config"
mkdir -p "./front-end/src/config"
cp "./contracts/scripts/deployed.json" "./back-end/config/deployed.json"
cp "./contracts/scripts/deployed.json" "./front-end/src/config/config.json"

# Copy specific contract artifacts to back-end and front-end config directories
echo "Copying specific contract artifacts (UsdcMock, zstarkwarp, verifier) to back-end and front-end config/..."
mkdir -p back-end/dev
mkdir -p front-end/src/config/dev

# Copy only the specific contract artifacts (files only, not directories, excluding test files)
# Copy UsdcMock contract files
find contracts/target/dev -name "*UsdcMock*.contract_class.json" -type f ! -name "*.test.*" -exec cp {} back-end/dev/ \;
find contracts/target/dev -name "*UsdcMock*.compiled_contract_class.json" -type f ! -name "*.test.*" -exec cp {} back-end/dev/ \;

# Copy ZstarkWarp contract files
find contracts/target/dev -name "*ZstarkWarp*.contract_class.json" -type f ! -name "*.test.*" -exec cp {} back-end/dev/ \;
find contracts/target/dev -name "*ZstarkWarp*.compiled_contract_class.json" -type f ! -name "*.test.*" -exec cp {} back-end/dev/ \;

# Copy Groth16Verifier contract files (exclude MockGroth16Verifier)
find contracts/target/dev -name "*Groth16Verifier*.contract_class.json" -type f ! -name "*.test.*" ! -name "*MockGroth16Verifier*" -exec cp {} back-end/dev/ \;
find contracts/target/dev -name "*Groth16Verifier*.compiled_contract_class.json" -type f ! -name "*.test.*" ! -name "*MockGroth16Verifier*" -exec cp {} back-end/dev/ \;

# Copy UsdcMock contract files to front-end
find contracts/target/dev -name "*UsdcMock*.contract_class.json" -type f ! -name "*.test.*" -exec cp {} front-end/src/config/dev/ \;
find contracts/target/dev -name "*UsdcMock*.compiled_contract_class.json" -type f ! -name "*.test.*" -exec cp {} front-end/src/config/dev/ \;

# Copy ZstarkWarp contract files to front-end
find contracts/target/dev -name "*ZstarkWarp*.contract_class.json" -type f ! -name "*.test.*" -exec cp {} front-end/src/config/dev/ \;
find contracts/target/dev -name "*ZstarkWarp*.compiled_contract_class.json" -type f ! -name "*.test.*" -exec cp {} front-end/src/config/dev/ \;

# Copy Groth16Verifier contract files to front-end (exclude MockGroth16Verifier)
find contracts/target/dev -name "*Groth16Verifier*.contract_class.json" -type f ! -name "*.test.*" ! -name "*MockGroth16Verifier*" -exec cp {} front-end/src/config/dev/ \;
find contracts/target/dev -name "*Groth16Verifier*.compiled_contract_class.json" -type f ! -name "*.test.*" ! -name "*MockGroth16Verifier*" -exec cp {} front-end/src/config/dev/ \;

# Set appropriate permissions
echo "Setting file permissions..."
chmod 644 "$FRONTEND_PUBLIC_DIR"/*

echo "✅ Circuit artifacts successfully copied to front-end!"
echo "✅ Deployed.json successfully copied to back-end and front-end!"
echo "✅ Contract artifacts (UsdcMock, zstarkwarp, verifier) successfully copied to back-end and front-end!"
echo ""
echo "Files copied:"
echo "  → $FRONTEND_PUBLIC_DIR/withdraw.wasm"
echo "  → $FRONTEND_PUBLIC_DIR/Withdraw_final.zkey"
echo "  → $FRONTEND_PUBLIC_DIR/verification_key.json"
echo "  → ./back-end/config/deployed.json"
echo "  → ./front-end/src/config/config.json"
echo "  → ./back-end/target/"
echo "  → ./front-end/src/config/target/"
echo ""
echo "All artifacts are now available for front-end ZK operations and back-end configuration."