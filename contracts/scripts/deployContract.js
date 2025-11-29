import { Account, Contract, RpcProvider, constants } from 'starknet';
import * as dotenv from 'dotenv'
dotenv.config();

// Import compiled contract artifacts
import usdcMockSierra from '../target/dev/zstarkwarp_UsdcMock.contract_class.json' with { type: 'json' };
import usdcMockCasm from '../target/dev/zstarkwarp_UsdcMock.compiled_contract_class.json' with { type: 'json' };

const accountAddress = process.env.ACCOUNT_ADDRESS;
const privateKey = process.env.PRIVATE_KEY;

const provider = new RpcProvider({ nodeUrl: constants.NetworkName.SN_SEPOLIA });
const account = new Account({
    provider: provider,
    address: accountAddress,
    signer: privateKey,
});


// Declare and deploy USDC Mock contract in one step
const usdcMockContract = await Contract.factory({
  contract: usdcMockSierra, // Compiled Sierra contract
  casm: usdcMockCasm, // Compiled CASM file
  account: account, // Deploying account
  constructorCalldata: [
    accountAddress, // owner: ContractAddress
    "1000000000000000000000" // test_amount: u256 (1e21)
  ],
});

console.log("USDC Mock contract deployed at:", usdcMockContract.address);