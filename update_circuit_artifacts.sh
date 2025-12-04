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

# Copy dev folder to back-end and front-end config directories
echo "Copying dev folder to back-end and front-end config/..."
cp -r contracts/target/dev back-end/
cp -r contracts/target/dev front-end/src/config/dev

# Set appropriate permissions
echo "Setting file permissions..."
chmod 644 "$FRONTEND_PUBLIC_DIR"/*

echo "✅ Circuit artifacts successfully copied to front-end!"
echo "✅ Deployed.json successfully copied to back-end and front-end!"
echo "✅ Dev folder successfully copied to back-end and front-end!"
echo ""
echo "Files copied:"
echo "  → $FRONTEND_PUBLIC_DIR/withdraw.wasm"
echo "  → $FRONTEND_PUBLIC_DIR/Withdraw_final.zkey"
echo "  → $FRONTEND_PUBLIC_DIR/verification_key.json"
echo "  → ./back-end/config/deployed.json"
echo "  → ./front-end/src/config/config.json"
echo "  → ./back-end/dev/"
echo "  → ./front-end/src/config/dev/"
echo ""
echo "All artifacts are now available for front-end ZK operations and back-end configuration."