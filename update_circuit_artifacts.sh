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

# Set appropriate permissions
echo "Setting file permissions..."
chmod 644 "$FRONTEND_PUBLIC_DIR"/*

echo "✅ Circuit artifacts successfully copied to front-end!"
echo ""
echo "Files copied:"
echo "  → $FRONTEND_PUBLIC_DIR/withdraw.wasm"
echo "  → $FRONTEND_PUBLIC_DIR/Withdraw_final.zkey"
echo "  → $FRONTEND_PUBLIC_DIR/verification_key.json"
echo ""
echo "All artifacts are now in public/circuit/ directory for front-end ZK operations."