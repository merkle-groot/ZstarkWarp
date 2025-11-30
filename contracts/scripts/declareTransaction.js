const https = require('https');
const fs = require('fs');
const path = require('path');

// Configuration
const INFURA_API_KEY = '374241c42f7b4ec3af42205044220c0a';
const INFURA_URL = 'starknet-mainnet.infura.io';

// Load verifier contract class
const VERIFIER_CONTRACT_PATH = path.join(__dirname, '..', 'target', 'dev', 'zstarkwarp_Groth16VerifierBN254.contract_class.json');
const VERIFIER_COMPILED_PATH = path.join(__dirname, '..', 'target', 'dev', 'zstarkwarp_Groth16VerifierBN254.compiled_contract_class.json');

let verifierContractClass;
let verifierCompiledClass;

try {
  verifierContractClass = JSON.parse(fs.readFileSync(VERIFIER_CONTRACT_PATH, 'utf8'));
  verifierCompiledClass = JSON.parse(fs.readFileSync(VERIFIER_COMPILED_PATH, 'utf8'));
  console.log('Loaded verifier contract successfully');
  console.log('Contract class length:', JSON.stringify(verifierContractClass).length);
  console.log('Compiled class length:', JSON.stringify(verifierCompiledClass).length);
} catch (error) {
  console.error('Failed to load verifier contract:', error.message);
  console.error('Looking for files at:');
  console.error('- Sierra:', VERIFIER_CONTRACT_PATH);
  console.error('- Compiled:', VERIFIER_COMPILED_PATH);
  process.exit(1);
}

// Transaction payload with actual verifier contract class
const payload = {
  "jsonrpc": "2.0",
  "method": "starknet_addDeclareTransaction",
  "params": {
    "declare_transaction": {
      "type": "DECLARE",
      "sender_address": "0x13e3ca9a377084c37dc7eacbd1d9f8c3e3733935bcbad887c32a0e213cd6fe0",
      "max_fee": "0x28ed6103d0000",
      "version": "0x3",
      "signature": [
        "0x42527ffe9912b338983cbed67e139cfcc26a4d8cf1d1c2a85e4125fdf5f59ed",
        "0x636147d06fefd02ed37984b752556d4b9aefdac1a50b3df0528ec7c201ad84b"
      ],
      "nonce": "0x17",
      "contract_class": verifierContractClass,
      "compiled_class_hash": verifierCompiledClass.compiled_class_hash
    }
  },
  "id": 0
};

function makeRequest(url, data) {
  return new Promise((resolve, reject) => {
    const postData = JSON.stringify(data);

    const options = {
      hostname: url,
      port: 443,
      path: '/v3/' + INFURA_API_KEY,
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Content-Length': Buffer.byteLength(postData)
      }
    };

    const req = https.request(options, (res) => {
      let responseData = '';

      res.on('data', (chunk) => {
        responseData += chunk;
      });

      res.on('end', () => {
        try {
          const parsedData = JSON.parse(responseData);
          resolve(parsedData);
        } catch (error) {
          reject(new Error(`Failed to parse response: ${error.message}`));
        }
      });
    });

    req.on('error', (error) => {
      reject(error);
    });

    req.write(postData);
    req.end();
  });
}

// Execute the transaction
async function executeDeclareTransaction() {
  try {
    console.log('Sending declare transaction...');
    const result = await makeRequest(INFURA_URL, payload);
    console.log('Transaction result:', JSON.stringify(result, null, 2));

    if (result.error) {
      console.error('Transaction failed:', result.error);
    } else {
      console.log('Transaction hash:', result.result);
    }
  } catch (error) {
    console.error('Error executing transaction:', error.message);
  }
}

// Alternative using node-fetch (more modern approach)
// const fetch = require('node-fetch');
//
// async function executeWithFetch() {
//   try {
//     const response = await fetch(`https://${INFURA_URL}/v3/${INFURA_API_KEY}`, {
//       method: 'POST',
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: JSON.stringify(payload)
//     });
//
//     const result = await response.json();
//     console.log('Transaction result:', JSON.stringify(result, null, 2));
//   } catch (error) {
//     console.error('Error:', error.message);
//   }
// }

// Run the function
executeDeclareTransaction();