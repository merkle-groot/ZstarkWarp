import { Account, Contract, RpcProvider, constants, num, hash } from 'starknet';
import * as dotenv from 'dotenv';
import * as fs from 'fs';
import * as path from 'path';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

dotenv.config();

// Configuration
const ZTARKNET_RPC_URL = 'https://ztarknet-madara.d.karnot.xyz';
const CONTRACT_DATA_FILE = path.join(__dirname, 'contracts.json');

// Contract configurations
const CONTRACTS = {
  usdc: {
    name: 'UsdcMock',
    constructorParams: ['owner_address', 'initial_supply'],
    SierraPath: '../target/dev/zstarkwarp_UsdcMock.contract_class.json',
    CasmPath: '../target/dev/zstarkwarp_UsdcMock.compiled_contract_class.json'
  },
  verifier: {
    name: 'Groth16VerifierBN254',
    constructorParams: [],
    SierraPath: '../target/dev/zstarkwarp_Groth16VerifierBN254.contract_class.json',
    CasmPath: '../target/dev/zstarkwarp_Groth16VerifierBN254.compiled_contract_class.json'
  },
  zstarkwarp: {
    name: 'ZstarkWarp',
    constructorParams: ['verifier_address', 'merkle_tree_address', 'usdc_address'],
    SierraPath: '../target/dev/zstarkwarp_ZstarkWarp.contract_class.json',
    CasmPath: '../target/dev/zstarkwarp_ZstarkWarp.compiled_contract_class.json'
  }
};

// Load contract data from JSON
function loadContractData() {
  try {
    if (fs.existsSync(CONTRACT_DATA_FILE)) {
      const data = fs.readFileSync(CONTRACT_DATA_FILE, 'utf8');
      return JSON.parse(data);
    }
  } catch (error) {
    console.log('No existing contract data found, starting fresh');
  }

  return {
    ztarknet: {}
  };
}

// Save contract data to JSON
function saveContractData(data) {
  fs.writeFileSync(CONTRACT_DATA_FILE, JSON.stringify(data, null, 2));
  console.log(`Contract data saved to ${CONTRACT_DATA_FILE}`);
}

// Initialize account
function getAccount() {
  const accountAddress = process.env.ZTARKNET_ACCOUNT_ADDRESS;
  const privateKey = process.env.ZTARKNET_PRIVATE_KEY;

  if (!accountAddress || !privateKey) {
    throw new Error('ZTARKNET_ACCOUNT_ADDRESS and ZTARKNET_PRIVATE_KEY must be set in .env');
  }

  const provider = new RpcProvider({ nodeUrl: ZTARKNET_RPC_URL });

  return new Account({
    provider: provider,
    address: accountAddress,
    signer: privateKey,
  });
}

// Load contract artifact
function loadContractArtifact(sierraPath, casmPath) {
  const sierraPathFull = path.join(__dirname, sierraPath);
  const casmPathFull = path.join(__dirname, casmPath);

  if (!fs.existsSync(sierraPathFull)) {
    throw new Error(`Sierra contract file not found: ${sierraPathFull}`);
  }

  if (!fs.existsSync(casmPathFull)) {
    throw new Error(`CASM contract file not found: ${casmPathFull}`);
  }

  const sierra = JSON.parse(fs.readFileSync(sierraPathFull, 'utf8'));
  const casm = JSON.parse(fs.readFileSync(casmPathFull, 'utf8'));

  return { sierra, casm };
}

// Deploy a single contract
async function deployContract(account, contractKey, constructorCalldata = []) {
  const contractConfig = CONTRACTS[contractKey];
  if (!contractConfig) {
    throw new Error(`Unknown contract: ${contractKey}`);
  }

  console.log(`\nDeploying ${contractConfig.name}...`);

  try {
    const { sierra, casm } = loadContractArtifact(contractConfig.SierraPath, contractConfig.CasmPath);

    const contract = await Contract.factory({
      contract: sierra,
      casm: casm,
      account: account,
      constructorCalldata: constructorCalldata,
    });

    console.log(`${contractConfig.name} deployed at:`, contract.address);

    // Get class hash
    const classHash = await account.contractClassHash(sierra);

    return {
      address: contract.address,
      class_hash: num.toHex(classHash)
    };
  } catch (error) {
    console.error(`Failed to deploy ${contractConfig.name}:`, error.message);
    throw error;
  }
}

// Check if contract is already deployed
async function isContractDeployed(provider, contractAddress) {
  if (!contractAddress) return false;

  try {
    await provider.getClassAt(contractAddress);
    return true;
  } catch (error) {
    if (error.message.includes('Contract not found')) {
      return false;
    }
    throw error;
  }
}

// Update mode: deploy missing contracts
async function updateMode() {
  console.log('Running in UPDATE mode...');

  const account = getAccount();
  const contractData = loadContractData();
  const deployedContracts = contractData.ztarknet || {};

  console.log('Current deployed contracts:', deployedContracts);

  // Deployment order: verifier -> merkle_tree -> usdc -> zstarkwarp -> universal_ecip
  const deploymentOrder = ['verifier', 'merkle_tree', 'usdc', 'zstarkwarp', 'universal_ecip'];

  for (const contractKey of deploymentOrder) {
    const existingContract = deployedContracts[contractKey];

    if (!existingContract || !await isContractDeployed(account.provider, existingContract.contract_address)) {
      console.log(`\n${contractKey} needs deployment`);

      let constructorCalldata = [];

      // Handle constructor parameters based on contract dependencies
      switch (contractKey) {
        case 'verifier':
          constructorCalldata = [];
          break;

        case 'merkle_tree':
          if (!deployedContracts.verifier?.contract_address) {
            throw new Error('Verifier must be deployed first');
          }
          constructorCalldata = [deployedContracts.verifier.contract_address];
          break;

        case 'usdc':
          constructorCalldata = [
            process.env.ZTARKNET_ACCOUNT_ADDRESS,
            "1000000000000000000000" // 1e21 tokens
          ];
          break;

        case 'zstarkwarp':
          if (!deployedContracts.verifier?.contract_address ||
              !deployedContracts.merkle_tree?.contract_address ||
              !deployedContracts.usdc?.contract_address) {
            throw new Error('Verifier, MerkleTree, and USDC must be deployed first');
          }
          constructorCalldata = [
            deployedContracts.verifier.contract_address,
            deployedContracts.merkle_tree.contract_address,
            deployedContracts.usdc.contract_address
          ];
          break;

        case 'universal_ecip':
          constructorCalldata = [];
          break;
      }

      const deploymentResult = await deployContract(account, contractKey, constructorCalldata);

      // Update contract data
      deployedContracts[contractKey] = {
        class_hash: deploymentResult.class_hash,
        contract_address: deploymentResult.address
      };

      console.log(`${contractKey} deployed successfully`);
    } else {
      console.log(`${contractKey} already deployed at: ${existingContract.contract_address}`);
    }
  }

  // Save updated contract data
  contractData.ztarknet = deployedContracts;
  saveContractData(contractData);

  console.log('\nUpdate completed successfully!');
  console.log('All contracts:', deployedContracts);
}

// Redeploy mode: deploy all contracts from scratch
async function redeployMode() {
  console.log('Running in REDEPLOY mode...');

  const account = getAccount();

  // Clear existing contract data
  const contractData = {
    ztarknet: {}
  };

  console.log('Deploying all contracts from scratch...');

  // Deployment order
  const deploymentOrder = ['verifier', 'usdc', 'zstarkwarp'];

  for (const contractKey of deploymentOrder) {
    console.log(`\nDeploying ${contractKey}`);

    let constructorCalldata = [];

    // Handle constructor parameters
    switch (contractKey) {
      case 'verifier':
        constructorCalldata = [];
        break;

      case 'merkle_tree':
        if (!contractData.ztarknet.verifier?.contract_address) {
          throw new Error('Verifier must be deployed first');
        }
        constructorCalldata = [contractData.ztarknet.verifier.contract_address];
        break;

      case 'usdc':
        constructorCalldata = [
          process.env.ZTARKNET_ACCOUNT_ADDRESS,
          "1000000000000000000000" // 1e21 tokens
        ];
        break;

      case 'zstarkwarp':
        if (!contractData.ztarknet.verifier?.contract_address ||
            !contractData.ztarknet.merkle_tree?.contract_address ||
            !contractData.ztarknet.usdc?.contract_address) {
          throw new Error('Verifier, MerkleTree, and USDC must be deployed first');
        }
        constructorCalldata = [
          contractData.ztarknet.verifier.contract_address,
          contractData.ztarknet.merkle_tree.contract_address,
          contractData.ztarknet.usdc.contract_address
        ];
        break;

      case 'universal_ecip':
        constructorCalldata = [];
        break;
    }

    const deploymentResult = await deployContract(account, contractKey, constructorCalldata);

    // Store contract data
    contractData.ztarknet[contractKey] = {
      class_hash: deploymentResult.class_hash,
      contract_address: deploymentResult.address
    };
  }

  // Save contract data
  saveContractData(contractData);

  console.log('\nRedeployment completed successfully!');
  console.log('All contracts:', contractData.ztarknet);
}

// Main execution
async function main() {
  const mode = process.argv[2];

  if (!['update', 'redeploy'].includes(mode)) {
    console.log('Usage: node deployContracts.js [update|redeploy]');
    console.log('  update  - Deploy only missing contracts');
    console.log('  redeploy - Deploy all contracts from scratch');
    process.exit(1);
  }

  try {
    if (mode === 'update') {
      await updateMode();
    } else if (mode === 'redeploy') {
      await redeployMode();
    }
  } catch (error) {
    console.error('Deployment failed:', error.message);
    process.exit(1);
  }
}

// Handle unhandled promise rejections
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection at:', promise, 'reason:', reason);
  process.exit(1);
});

main().catch(console.error);