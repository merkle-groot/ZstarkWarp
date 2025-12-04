#!/bin/bash

# Script to move required circuit artifacts to front-end src directory
# This ensures the front-end has access to the latest circuit files for ZK operations

set -e  # Exit on any error

# Define source and destination paths
CIRCUIT_ARTIFACTS_DIR="./circuits/circuit_artifacts"
FRONTEND_CIRCUIT_DIR="./front-end/src/circuit"
FRONTEND_PUBLIC_DIR="./front-end/public"

# Create directories if they don't exist
echo "Creating directories..."
mkdir -p "$FRONTEND_CIRCUIT_DIR"
mkdir -p "$FRONTEND_PUBLIC_DIR"

# Copy WASM and ZKey files to src/circuit (for runtime loading)
echo "Copying circuit files to src/circuit/..."
cp "$CIRCUIT_ARTIFACTS_DIR/withdraw_js/withdraw.wasm" "$FRONTEND_CIRCUIT_DIR/"
cp "$CIRCUIT_ARTIFACTS_DIR/ptau/Withdraw_final.zkey" "$FRONTEND_CIRCUIT_DIR/"

# Copy verification key to public directory (for static serving)
echo "Copying verification key to public/..."
cp "$CIRCUIT_ARTIFACTS_DIR/verification_key.json" "$FRONTEND_PUBLIC_DIR/"

# Copy circuit files to public/circuit as well (alternative location)
mkdir -p "$FRONTEND_PUBLIC_DIR/circuit"
cp "$CIRCUIT_ARTIFACTS_DIR/withdraw_js/withdraw.wasm" "$FRONTEND_PUBLIC_DIR/circuit/"
cp "$CIRCUIT_ARTIFACTS_DIR/ptau/Withdraw_final.zkey" "$FRONTEND_PUBLIC_DIR/circuit/"

# Set appropriate permissions
echo "Setting file permissions..."
chmod 644 "$FRONTEND_CIRCUIT_DIR"/*.wasm "$FRONTEND_CIRCUIT_DIR"/*.zkey
chmod 644 "$FRONTEND_PUBLIC_DIR"/verification_key.json
chmod 644 "$FRONTEND_PUBLIC_DIR/circuit"/*

echo "✅ Circuit artifacts successfully copied to front-end!"
echo ""
echo "Files copied:"
echo "  → $FRONTEND_CIRCUIT_DIR/withdraw.wasm"
echo "  → $FRONTEND_CIRCUIT_DIR/Withdraw_final.zkey"
echo "  → $FRONTEND_PUBLIC_DIR/verification_key.json"
echo "  → $FRONTEND_PUBLIC_DIR/circuit/withdraw.wasm"
echo "  → $FRONTEND_PUBLIC_DIR/circuit/Withdraw_final.zkey"
echo ""
echo "Front-end now has access to the latest circuit files for ZK proof generation."