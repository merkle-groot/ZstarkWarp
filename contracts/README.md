# ZstarkWarp Contracts

Starknet smart contracts for the ZstarkWarp protocol - a privacy-preserving cross-chain bridge using zero-knowledge proofs and Merkle trees.

## Project Structure

```
contracts/
├── src/                          # Contract source code
│   ├── interfaces/               # Contract interfaces
│   │   ├── verifier_interface.cairo
│   │   ├── merkle_tree_interface.cairo
│   │   ├── merkle_tree_mock_interface.cairo
│   │   ├── usdc_token_interface.cairo
│   │   ├── zstarkwarp_deposit_interface.cairo
│   │   └── zstarkwarp_withdraw_interface.cairo
│   ├── merkle_tree/              # Merkle tree implementation
│   │   └── merkle_tree.cairo
│   ├── mocks/                    # Mock contracts for testing
│   │   ├── usdc_token.cairo      # Mock USDC token
│   │   ├── merkle_tree_mock.cairo # Mock Merkle tree
│   │   └── mock_verifier.cairo   # Mock Groth16 verifier
│   ├── verifier/                 # Groth16 verifier implementation
│   │   ├── groth16_verifier.cairo
│   │   ├── groth16_verifier_constants.cairo
│   │   └── ecip.cairo
│   ├── interfaces.cairo          # Interface exports
│   ├── lib.cairo                 # Core library functions
│   ├── merkle_tree.cairo         # Merkle tree module
│   ├── mocks.cairo               # Mocks module
│   ├── verifier.cairo            # Verifier module
│   ├── zstarkwarp.cairo          # Main ZstarkWarp contract
│   └── zstarkwarp_withdraw.cairo # Withdraw logic
├── tests/                        # Contract tests
│   ├── test_basic_withdraw.cairo
│   ├── test_merkle_tree.cairo
│   ├── test_withdraw.cairo
│   └── test_zstarkwarp_deposit.cairo
├── scripts/                      # Deployment and utility scripts
│   ├── config.js                 # Configuration
│   ├── deployContract.js         # Individual contract deployment
│   ├── dummyCommitments.js       # Generate test commitments
│   ├── declared.json             # Declared class hashes
│   ├── deployed.json             # Deployed contract addresses
│   └── README.md                 # Scripts documentation
├── Scarb.toml                    # Scarb configuration
├── package.json                  # Node.js dependencies
└── .env-example                  # Environment variables template
```

## Contract Overview

### Core Contracts

1. **ZstarkWarp** ([`zstarkwarp.cairo`](src/zstarkwarp.cairo))
   - Main protocol contract
   - Handles deposits and withdrawals
   - Integrates with verifier, Merkle tree, and USDC contracts

2. **Groth16VerifierBN254** ([`verifier/groth16_verifier.cairo`](src/verifier/groth16_verifier.cairo))
   - Groth16 proof verification over BN254 curve
   - Validates zero-knowledge proofs for withdrawals
   - Uses garaga for efficient verification

3. **MerkleTreeMock** ([`mocks/merkle_tree_mock.cairo`](src/mocks/merkle_tree_mock.cairo))
   - Merkle tree for commitment storage
   - Supports efficient membership proofs
   - Used for privacy-preserving deposits

### Mock Contracts

- **USDCMock** ([`mocks/usdc_token.cairo`](src/mocks/usdc_token.cairo)) - Mock USDC token for testing
- **MockVerifier** ([`mocks/mock_verifier.cairo`](src/mocks/mock_verifier.cairo)) - Mock verifier for testing

## Prerequisites

- **Scarab** - Cairo package manager and compiler
- **snforge** - Starknet testing framework
- **Node.js** v16+ - For deployment scripts

### Installation

```bash
# Install Scarb (if not already installed)
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh

# Install Node.js dependencies
npm install
```

## Building

Compile all contracts:

```bash
scarb build
```

This will:
- Compile all Cairo contracts to Sierra
- Generate CASM (Cairo Assembly) for each contract
- Output artifacts to `target/dev/`

### Build Output

After building, you'll find:
- `target/dev/` - Sierra artifacts (.sierra.json)
- `target/dev/` - CASM artifacts (.casm.json)

## Testing

Run all tests:

```bash
scarb test
# or
snforge test
```

Run specific test file:

```bash
snforge test test_zstarkwarp_deposit
```

### Test Coverage

- [`test_basic_withdraw.cairo`](tests/test_basic_withdraw.cairo) - Basic withdrawal functionality
- [`test_merkle_tree.cairo`](tests/test_merkle_tree.cairo) - Merkle tree operations
- [`test_withdraw.cairo`](tests/test_withdraw.cairo) - Full withdrawal flow
- [`test_zstarkwarp_deposit.cairo`](tests/test_zstarkwarp_deposit.cairo) - Deposit operations

## Deployment

### Setup Environment

Create a `.env` file from the example:

```bash
cp .env-example .env
```

Edit `.env` with your credentials:

```env
ZTARKNET_PRIVATE_KEY=0x...
ZTARKNET_ACCOUNT_ADDRESS=0x...
```

### Deployment Modes

#### Update Mode
Deploys only contracts that aren't already deployed:

```bash
npm run deploy:update
# or
node scripts/deployContracts.js update
```

#### Redeploy Mode
Deploys all contracts from scratch:

```bash
npm run deploy:redeploy
# or
node scripts/deployContracts.js redeploy
```

### Deployment Order

Contracts are deployed in dependency order:

1. **Groth16VerifierBN254** - Verifier contract
2. **MerkleTreeMock** - Merkle tree (depends on Verifier)
3. **USDCMock** - USDC token
4. **ZstarkWarp** - Main contract (depends on all above)
5. **UniversalECIP** - Universal ECIP contract

See [`scripts/README.md`](scripts/README.md) for detailed deployment information.

## Development

### Dependencies

Key dependencies from [Scarb.toml](Scarb.toml):

- `starknet` v2.11.4 - Starknet core library
- `openzeppelin_token` v3.0.0-alpha.2 - OpenZeppelin token contracts
- `openzeppelin_access` v3.0.0-alpha.2 - Access control
- `garaga` v0.18.2 - Efficient cryptographic primitives
- `snforge_std` v0.52.0 - Testing utilities

### Cairo Configuration

- **Edition**: 2024_07
- **Sierra**: Enabled
- **CASM**: Enabled
- **sierra-replace-ids**: Disabled (required for compilation)

## Scripts

The [`scripts/`](scripts/) directory contains utility scripts:

- **deployContract.js** - Deploy individual contracts
- **config.js** - Network and account configuration
- **dummyCommitments.js** - Generate test commitments

See [`scripts/README.md`](scripts/README.md) for detailed documentation.

## Network Configuration

Default network (configured in [`scripts/config.js`](scripts/config.js)):

- **RPC URL**: https://ztarknet-madara.d.karnot.xyz
- **Account**: From `ZTARKNET_ACCOUNT_ADDRESS` env var
- **Private Key**: From `ZTARKNET_PRIVATE_KEY` env var

## Contract Artifacts

Deployment data is stored in `scripts/`:

- `declared.json` - Class hashes of declared contracts
- `deployed.json` - Addresses of deployed contracts

Format:
```json
{
  "ztarknet": {
    "verifier": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    },
    "merkle_tree": { ... },
    "usdc": { ... },
    "zstarkwarp": { ... }
  }
}
```

## Architecture

### Deposit Flow

1. User calls `deposit()` on ZstarkWarp contract
2. Contract locks USDC tokens
3. Commitment is added to Merkle tree
4. User receives commitment receipt

### Withdraw Flow

1. User generates ZK proof for their commitment
2. User calls `withdraw()` with:
   - Merkle proof
   - Nullifier
   - ZK proof
3. Contract verifies:
   - Merkle proof validity
   - Nullifier hasn't been used
   - ZK proof validity
4. Contract releases USDC to recipient

### Key Features

- **Privacy**: Withdrawals are private using ZK proofs
- **Efficiency**: Batched deposits in Merkle tree
- **Security**: Groth16 proofs for cryptographic guarantees
- **Flexibility**: Mock contracts for testing and development

## Troubleshooting

### Build Errors

If you encounter compilation errors:

```bash
# Clean build artifacts
scarb clean

# Rebuild
scarb build
```

### Test Failures

For detailed error messages:

```bash
# Run with backtrace
SNFORGE_BACKTRACE=1 snforge test
```

### Deployment Issues

- Verify `.env` file is configured correctly
- Ensure account has sufficient funds
- Check RPC URL is accessible
- Try running in `redeploy` mode to start fresh

## Additional Resources

- [Scarab Documentation](https://docs.swmansion.com/scarb/)
- [Starknet Foundry](https://foundry-rs.github.io/starknet-foundry/)
- [OpenZeppelin Cairo Contracts](https://github.com/OpenZeppelin/cairo-contracts)
- [Garaga](https://github.com/keep-starknet-strange/garaga)
