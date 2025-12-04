import { useEffect, useState } from 'react';
import { Contract, config, constants, json, uint256 } from 'starknet';
import './CryptoTransactionWidget.css';
import { connect } from '@starknet-io/get-starknet';
import { WalletAccount, wallet } from 'starknet';
import deployContracts from '../config/config.json';
import usdcContractClass from '../config/dev/zstarkwarp_UsdcMock.contract_class.json';
import zstarkwarpContractClass from "../config/dev/zstarkwarp_ZstarkWarp.contract_class.json";
import {createCommitment, genProof, getCalldata} from "./zklibs.js";
import toast from "react-hot-toast";
const serverURL = 'http://localhost:3001/api/v1/getPath';
const rpcURL = 'https://api.zan.top/public/starknet-sepolia';

function toJSONSafe(obj) {
  return JSON.parse(
    JSON.stringify(obj, (_, v) => (typeof v === "bigint" ? v.toString() : v))
  );
}

// const Z_SEPOLIA = {
//   id: "SN_ZSEPOLIA",
//   chainId: "ZORG",
//   chainName: "SN_ZSEPOLIA",
//   rpcUrls: ['https://ztarknet-madara.d.karnot.xyz'],
//   nativeCurrency: {
//     type: "ERC20",
//     options: {
//       address:
//         "0x01ad102b4c4b3e40a51b6fb8a446275d600555bd63a95cdceed3e5cef8a6bc1d",
//       name: "STRK",
//       symbol: "STRK",
//       decimals: 18,
//     },
//   },
// }

const CryptoTransactionWidget = () => {
  const BridgeDirections = {
    StarknetToZtarknet: 'Starknet To Ztarknet',
    ZtarknetToStarknet: 'Ztarknet To Starknet',
  };
  
  const [usdcBalance, setUsdcBalance] = useState(0);
  const [usdcContract, setUsdcContract] = useState(null);
  const [zstarkwarpContract, setZstarkWarpContract] = useState(null);
  const [activeTab, setActiveTab] = useState('deposit');
  const [selectedBridge, setSelectedBridge] = useState(BridgeDirections.StarknetToZtarknet);
  const [userAccount, setUserAccount] = useState(null);
  const [note, setNote] = useState('');
  const [uploadedNoteData, setUploadedNoteData] = useState(null);
  const [recipientAddress, setRecipientAddress] = useState('');

  const bridges = [BridgeDirections.StarknetToZtarknet, BridgeDirections.ZtarknetToStarknet];

  // Function to format balance from raw value (with 18 decimals) to human-readable format
  const formatBalance = (rawBalance) => {
    if (!rawBalance || rawBalance === 0n) return 0;
    const divisor = 10n ** 18n; // Using BigInt literals
    const formatted = Number(rawBalance) / Number(divisor);
    return Math.round(formatted * 100) / 100; // Round to 2 decimal places
  };

  // Function to validate the uploaded JSON file
  const validateNoteJSON = (json) => {
    try {
      // Check if the JSON has the required structure
      if (!json.commitment || !json.index) {
        return { valid: false, error: 'Missing required fields: commitment and index' };
      }

      // Check commitment structure
      const commitment = json.commitment;
      if (!commitment.secretKey || !commitment.nullifier || !commitment.commitment || !commitment.nullifierHash) {
        return { valid: false, error: 'Missing required commitment fields: secretKey, nullifier, nullifierHash, commitment' };
      }

      // Check if all values are strings
      if (typeof commitment.secretKey !== 'string' ||
          typeof commitment.nullifier !== 'string' ||
          typeof commitment.commitment !== 'string' ||
          typeof commitment.nullifierHash !== 'string' ||
          typeof json.index !== 'string') {
        return { valid: false, error: 'All values must be strings' };
      }

      // Check if values are numeric strings (basic validation)
      if (!/^\d+$/.test(commitment.secretKey) ||
          !/^\d+$/.test(commitment.nullifier) ||
          !/^\d+$/.test(commitment.commitment) ||
          !/^\d+$/.test(commitment.nullifierHash) ||
          !/^\d+$/.test(json.index)) {
        return { valid: false, error: 'All values must be numeric strings' };
      }

      return { valid: true };
    } catch (error) {
      return { valid: false, error: 'Invalid JSON structure' };
    }
  };

  const getMerklePath = async (index, commitment) => {
    try {
      const response = await fetch('http://localhost:3001/api/v1/getPath', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          index: parseInt(index),
          commitment: commitment
        })
      });

      const result = await response.json();

      if (!response.ok) {
        throw new Error(result.error || 'Failed to get Merkle path');
      }

      return {
        isLeft: result.data.isLeft,
        siblings: result.data.siblings,
        root: result.data.root
      };
    } catch (error) {
      console.error('Error getting Merkle path:', error);
      toast.error('Failed to get Merkle path: ' + error.message);
      return null;
    }
  }

  const sendRequest = async (publicInputs, calldata) => {
    try {
      const response = await fetch('http://localhost:3001/api/v1/sendRequest', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          publicInputs: publicInputs,
          calldata: calldata
        })
      });

      const result = await response.json();

      if (!response.ok) {
        throw new Error(result.error || 'Failed to send request');
      }

      return {
        message: result.message,
        calldata: result.data.calldata,
        publicInputs: result.data.publicInputs,
        timestamp: result.data.timestamp
      };
    } catch (error) {
      console.error('Error sending request:', error);
      toast.error('Failed to send request: ' + error.message);
      return null;
    }
  }

  const generateProof = async (event) => {
    event.preventDefault();

    if (!uploadedNoteData) {
      toast.error('Please upload a withdrawal note file first');
      return;
    }

    if (!recipientAddress) {
      toast.error('Please enter a recipient address');
      return;
    }

    try {
      toast.loading('Generating proof...', { id: 'proof-generation' });

      // Get Merkle path from the server
      const merklePath = await getMerklePath(
        uploadedNoteData.index,
        uploadedNoteData.commitment.commitment
      );

      if (!merklePath) {
        toast.error('Failed to get Merkle path', { id: 'proof-generation' });
        return;
      }

      console.log('Merkle path retrieved:', merklePath);

      // TODO: Use the merklePath data to generate the zk-proof
      // This would typically involve calling your circuit or proof generation system

      toast.success('Proof generated successfully!', { id: 'proof-generation' });

      const proofInput = {
        ...uploadedNoteData.commitment,
        ...merklePath,
        receiver: recipientAddress
      }

      const proof = await genProof(proofInput);


      console.log('generated proof:', proof);
      const calldata = await getCalldata(proof.proof, proof.publicSignals, );

      // For now, just log the data - you would typically proceed with withdrawal here
      const publicInputs = {
        root: proofInput.root,
        nullifierHash: proofInput.nullifierHash,
        receiver: proofInput.receiver

      }

      //

      await sendRequest(publicInputs, calldata.calldata);
      console.log('calldata:', calldata, publicInputs);

      // Save calldata to file for debugging
      const debugData = {
        calldata: calldata,
        publicInputs: publicInputs,
        timestamp: new Date().toISOString()
      };

      const blob = new Blob([JSON.stringify(debugData, null, 2)], { type: 'application/json' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `calldata_debug_${Date.now()}.json`;
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      URL.revokeObjectURL(url);

    } catch (error) {
      console.error('Error generating proof:', error);
      toast.error('Failed to generate proof: ' + error.message, { id: 'proof-generation' });
    }
  }

  // Function to handle file upload
  const handleFileUpload = (event) => {
    const file = event.target.files[0];
    if (!file) return;

    // Check if file is JSON
    if (file.type !== 'application/json' && !file.name.endsWith('.json')) {
      toast.error('Please upload a JSON file');
      return;
    }

    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const json = JSON.parse(e.target.result);
        const validation = validateNoteJSON(json);

        if (validation.valid) {
          setUploadedNoteData(json);
          setNote(JSON.stringify(json));
          toast.success('Note file uploaded successfully');
        } else {
          toast.error(`Invalid file format: ${validation.error}`);
          setUploadedNoteData(null);
          setNote('');
        }
      } catch (error) {
        toast.error('Failed to parse JSON file');
        setUploadedNoteData(null);
        setNote('');
      }
    };

    reader.readAsText(file);
  };

  const getCommitment = async() => {
    try {
      console.log("creating commitment...");
      const commitment = await createCommitment();
      console.log("commitment created", commitment);

       // Encode ERC20 approve amount
      const amount_u256 = uint256.bnToUint256(100000000000000000000n);
      const commitment_u256 = uint256.bnToUint256(commitment.commitment);

      const approveCall = {
        contractAddress: usdcContract.address,
        entrypoint: "approve",
        calldata: [
          zstarkwarpContract.address,
          amount_u256.low.toString(),
          amount_u256.high.toString(),
        ]
      };

      const depositCall = {
        contractAddress: zstarkwarpContract.address,
        entrypoint: "deposit",
        calldata: [
          userAccount.address,
          commitment_u256.low.toString(),
          commitment_u256.high.toString(),
        ]
      };

      console.log("sending multicall...");

      const tx = await userAccount.execute([approveCall, depositCall]);

      console.log("multicall tx sent:", tx.transaction_hash);

      // Wait for confirmation
      await userAccount.waitForTransaction(tx.transaction_hash);

      console.log("deposit done");

      const index = await zstarkwarpContract.get_commitment_index(
        commitment.commitment
      );

      const note = {
        commitment,
        index
      };

      const safeNote = JSON.parse(
        JSON.stringify(note, (_, v) => (typeof v === "bigint" ? v.toString() : v))
      );

      // Download JSON
      const json = JSON.stringify(safeNote, null, 2);
      const blob = new Blob([json], { type: "application/json" });
      const url = URL.createObjectURL(blob);

      const a = document.createElement("a");
      a.href = url;
      a.download = "note.json";

      // Simulate click
      a.click();

      // Cleanup
      URL.revokeObjectURL(url);
      toast.success("Note downloaded");
    } catch (e){
      console.log("error while creating commitment", e);
    }
  }

  const mintUsdc = async() => {
    try {
      // Multicall-style single call
      const tx = await userAccount.execute({
        contractAddress: usdcContract.address,
        entrypoint: "mint_user",
        calldata: [userAccount.address]
      });

      console.log("Mint tx:", tx.transaction_hash);

      // Wait for L2 confirmation
      await userAccount.waitForTransaction(tx.transaction_hash);

      console.log("Mint confirmed");


      // Reload balance after successful mint
      const rawBalance = await usdcContract.balance_of(userAccount.address);
      setUsdcBalance(formatBalance(rawBalance));
      console.log("Updated raw balance after mint: ", rawBalance.toString());
      console.log("Updated formatted balance: ", formatBalance(rawBalance));
    } catch (e) {
      console.log("error while minting usdc:", e);
    }
  }

  useEffect(()=> {
    const setupContracts = async () => {
      if (!userAccount) return;

      try {
        let usdcAddress = 0x0;
        let zstarkwarpAddress = 0x0;

        if(selectedBridge === BridgeDirections.StarknetToZtarknet) {
          usdcAddress = deployContracts.starknet.mockUSDC;
          zstarkwarpAddress = deployContracts.starknet.zstarkwarp;
        } else {
          usdcAddress = deployContracts.ztarknet.mockUSDC;
          zstarkwarpAddress = deployContracts.ztarknet.zstarkwarp;
        }

        
        const usdcContract = new Contract({
          abi: usdcContractClass.abi,
          address: usdcAddress,
          providerOrAccount: userAccount,
        });

        const zstarkwarpContract = new Contract({
          abi: zstarkwarpContractClass.abi,
          address: zstarkwarpAddress,
          providerOrAccount: userAccount,
        });

        setUsdcContract(usdcContract);
        setZstarkWarpContract(zstarkwarpContract);

        console.log("new usdc: ", usdcContract);

        // Get user balance
        const rawBalance = await usdcContract.balance_of(userAccount.address);
        setUsdcBalance(formatBalance(rawBalance));
        console.log("raw userBalance: ", rawBalance.toString());
        console.log("formatted userBalance: ", formatBalance(rawBalance));
        console.log("new zstarkwarp: ", zstarkwarpContract);
      } catch (error) {
        console.error("Error setting up contracts:", error);
      }
    };

    setupContracts();
  }, [userAccount, selectedBridge]);

  const connectWallet = async () => {
    try {
      const swo = await connect({
        modalMode: "alwaysAsk",
        modalTheme: "light",
      });

      if (!swo) {
        console.error("No wallet selected.");
        return;
      }

      const walletAccount = await WalletAccount.connect(
        { nodeUrl: rpcURL },
        swo
      );

      const writeChainId = await wallet.requestChainId(walletAccount.walletProvider);
      console.log("writeChainId: ", writeChainId);
      console.log("walletAccount: ", walletAccount);

      setUserAccount(walletAccount);
    } catch (error) {
      console.error("Error connecting wallet:", error);
    }
  };


  return (
    <div className="crypto-widget">
      <div className="crypto-widget-container">
        {/* Tabs */}
        <div className="crypto-widget-tabs">
          <button
            onClick={() => setActiveTab('deposit')}
            className={`crypto-widget-tab ${activeTab === 'deposit' ? 'active-deposit' : ''}`}
          >
            Deposit
          </button>
          <button
            onClick={() => setActiveTab('withdraw')}
            className={`crypto-widget-tab ${activeTab === 'withdraw' ? 'active-withdraw' : ''}`}
          >
            Withdraw
          </button>
        </div>

        {/* Content Area */}
        <div className="crypto-widget-content">
          {activeTab === 'deposit' ? (
            <div className="crypto-widget-section active">
              {/* Bridge Selector */}
              <div className="crypto-widget-form-group">
                <label className="crypto-widget-label">
                  Bridge USDC
                </label>
                <div className="crypto-widget-select-wrapper">
                  <select
                    value={selectedBridge}
                    onChange={(e) => setSelectedBridge(e.target.value)}
                    className="crypto-widget-select"
                  >
                    {bridges.map(token => (
                      <option key={token} value={token} style={{ backgroundColor: '#000', color: '#9EFF9E' }}>
                        {token}
                      </option>
                    ))}
                  </select>
                </div>
              </div>
              
              <div className="connect-wallet">
                <button
                  className="crypto-widget-button crypto-widget-button-primary"
                  onClick={connectWallet}
                  aria-label="Connect to Ztarknet"
                >
                  {userAccount? `Connected to ${userAccount.address.slice(0,5)}...${userAccount.address.slice(-2)}`: "Connect Wallet"}
                </button>
              </div>
              
              {/* Balance */}
              {
                userAccount != null? 
                  (
                    <div className="balance">
                      <label className="crypto-widget-label">
                        Balance: {usdcBalance} USDC
                      </label>

                      {
                        usdcBalance == 0?
                          (
                            <div className="mint-button">
                              <button
                                className="crypto-widget-button crypto-widget-button-primary"
                                onClick={mintUsdc}
                                aria-label="mint usdc"
                              >
                                Mint USDC
                              </button>
                            </div>  
                          ): (
                            <div> </div>
                          )
                      }
                    </div>
                  ):(
                    <div></div>
                  )
              }

              {/* Deposit Button */}
              <button 
                className="crypto-widget-button crypto-widget-button-primary"
                onClick={getCommitment}
              >
                Deposit
              </button>
            </div>
          ) : (
            <div className="crypto-widget-section active">
              {/* Note Input */}
              <div className="crypto-widget-form-group">
                <div className="crypto-widget-flex crypto-widget-flex-between crypto-widget-flex-center crypto-widget-space-x-2">
                  <label className="crypto-widget-label">
                    Note File
                  </label>
                  <svg className="crypto-widget-info-icon" viewBox="0 0 12 12" fill="none">
                    <circle cx="6" cy="6" r="5" stroke="#9EFF9E" strokeWidth="1"/>
                    <path d="M6 3V6M6 9H6.01" stroke="#9EFF9E" strokeWidth="1" strokeLinecap="round"/>
                  </svg>
                </div>
                <div className="crypto-widget-file-upload">
                  <input
                    type="file"
                    accept=".json,application/json"
                    onChange={handleFileUpload}
                    className="crypto-widget-file-input"
                    id="note-file-upload"
                  />
                  <label htmlFor="note-file-upload" className="crypto-widget-file-label">
                    <div className="crypto-widget-file-content">
                      {uploadedNoteData ? (
                        <div className="crypto-widget-file-success">
                          <span className="crypto-widget-file-icon">✓</span>
                          <span className="crypto-widget-file-text">
                            Note uploaded (Index: {uploadedNoteData.index})
                          </span>
                        </div>
                      ) : (
                        <div className="crypto-widget-file-placeholder">
                          <span className="crypto-widget-file-icon">📁</span>
                          <span className="crypto-widget-file-text">
                            Click to upload withdrawal note JSON
                          </span>
                        </div>
                      )}
                    </div>
                  </label>
                </div>
                {uploadedNoteData && (
                  <div className="crypto-widget-file-details">
                    <small className="crypto-widget-file-info">
                      Commitment: {uploadedNoteData.commitment.commitment.slice(0, 20)}...
                    </small>
                  </div>
                )}
              </div>

              {/* Recipient Address Input */}
              <div className="crypto-widget-form-group">
                <div className="crypto-widget-flex crypto-widget-flex-between crypto-widget-flex-center">
                  <label className="crypto-widget-label">
                    Recipient Address
                  </label>
                  <button className="crypto-widget-donate-button">
                    Donate
                  </button>
                </div>
                <input
                  type="text"
                  value={recipientAddress}
                  onChange={(e) => setRecipientAddress(e.target.value)}
                  placeholder="0x..."
                  className="crypto-widget-input"
                />
              </div>

              {/* Withdraw Button */}
              <button className="crypto-widget-button crypto-widget-button-secondary" onClick={generateProof}>
                Withdraw
              </button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default CryptoTransactionWidget;