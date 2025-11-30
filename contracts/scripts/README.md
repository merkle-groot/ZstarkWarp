# Contract Deployment Script

This script manages deployment of all Ztarknet contracts with support for both update and redeploy modes.

## Prerequisites

1. Ensure your contracts are compiled:
   ```bash
   scarb build
   ```

2. Make sure your `.env` file contains:
   ```env
   ZTARKNET_PRIVATE_KEY=0x643e1fcf572cdc1ee7773c0782af6f27349077335719535c7065e72a081a0b9
   ZTARKNET_ACCOUNT_ADDRESS=0x5975469b89aa4898f15312cfe83402bffa12e664bb2442e89e5453315048155
   ```

## Usage

### Update Mode
Deploys only contracts that aren't already deployed or declared:

```bash
npm run deploy:update
# or
node scripts/deployContracts.js update
```

### Redeploy Mode
Deploys all contracts from scratch, overwriting any existing deployments:

```bash
npm run deploy:redeploy
# or
node scripts/deployContracts.js redeploy
```

## Contract Data Storage

The script saves deployment information in `scripts/contracts.json` in the following format:

```json
{
  "ztarknet": {
    "verifier": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    },
    "merkle_tree": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    },
    "usdc": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    },
    "zstarkwarp": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    },
    "universal_ecip": {
      "class_hash": "0x...",
      "contract_address": "0x..."
    }
  }
}
```

## Deployment Order

Contracts are deployed in dependency order:

1. **Verifier** - Groth16 verifier contract
2. **MerkleTree** - Merkle tree mock (depends on Verifier)
3. **USDC** - USDC mock token
4. **ZtarkWarp** - Main contract (depends on all above)
5. **UniversalECIP** - Universal ECIP contract

## Network Configuration

- **RPC URL**: https://ztarknet-madara.d.karnot.xyz
- **Account**: Uses ZTARKNET_ACCOUNT_ADDRESS from .env
- **Private Key**: Uses ZTARKNET_PRIVATE_KEY from .env

## Error Handling

The script will:
- Check if required contract artifacts exist before deployment
- Verify contract deployment success
- Provide detailed error messages
- Save progress incrementally
- Handle dependency requirements between contracts

## Example Output

```
Running in UPDATE mode...
Current deployed contracts: {}

verifier needs deployment

Deploying Groth16VerifierBN254...
Groth16VerifierBN254 deployed at: 0x1234...
verifier deployed successfully

merkle_tree needs deployment

Deploying MerkleTreeMock...
MerkleTreeMock deployed at: 0x5678...
merkle_tree deployed successfully

...
Update completed successfully!
All contracts: {
  verifier: { class_hash: "0x...", contract_address: "0x1234..." },
  merkle_tree: { class_hash: "0x...", contract_address: "0x5678..." },
  ...
}
```