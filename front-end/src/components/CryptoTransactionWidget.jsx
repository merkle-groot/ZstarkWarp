import { useEffect, useState } from 'react';
import { Contract, config, constants, json, uint256 } from 'starknet';
import './CryptoTransactionWidget.css';
import { connect } from '@starknet-io/get-starknet';
import { WalletAccount, wallet } from 'starknet';
import deployContracts from '../config/config.js';
import usdcContractClass from '../config/dev/zstarkwarp_UsdcMock.contract_class.json';
import zstarkwarpContractClass from "../config/dev/zstarkwarp_ZstarkWarp.contract_class.json";
import {createCommitment, genProof, getCalldata} from "./zklibs.js";
import toast from "react-hot-toast";

const serverURL = deployContracts.urls.backend + deployContracts.apiEndpoints.getPath;
const rpcURL = deployContracts.urls.rpc;

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
      const response = await fetch(serverURL, {
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
      const response = await fetch(deployContracts.urls.backend + deployContracts.apiEndpoints.sendRequest, {
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

    // Step 1: Validate inputs
    toast.loading('Validating inputs...', { id: 'validate-inputs', duration: 5000 });

    if (!uploadedNoteData) {
      toast.error('Please upload a withdrawal note file first', { id: 'validate-inputs', duration: 5000 });
      return;
    }

    if (!recipientAddress) {
      toast.error('Please enter a recipient address', { id: 'validate-inputs', duration: 5000 });
      return;
    }

    toast.success('Inputs validated successfully!', { id: 'validate-inputs', duration: 5000 });

    try {
      // Step 2: Get Merkle path from the server
      toast.loading('Retrieving Merkle path from server...', { id: 'merkle-path', duration: 10000 });

      const merklePath = await getMerklePath(
        uploadedNoteData.index,
        uploadedNoteData.commitment.commitment
      );

      if (!merklePath) {
        toast.error('Failed to get Merkle path', { id: 'merkle-path', duration: 5000 });
        return;
      }

      toast.success('Merkle path retrieved successfully!', { id: 'merkle-path', duration: 5000 });
      console.log('Merkle path retrieved:', merklePath);

      // Step 3: Prepare proof inputs
      toast.loading('Preparing proof inputs...', { id: 'prepare-inputs', duration: 5000 });

      const proofInput = {
        ...uploadedNoteData.commitment,
        ...merklePath,
        receiver: recipientAddress
      }

      toast.success('Proof inputs prepared!', { id: 'prepare-inputs', duration: 5000 });

      // Step 4: Generate zk-proof
      toast.loading('Generating zero-knowledge proof...', { id: 'generate-proof', duration: 15000 });

      const proof = await genProof(proofInput);

      toast.success('Proof generated successfully!', { id: 'generate-proof', duration: 5000 });
      console.log('generated proof:', proof);

      // Step 5: Generate calldata
      toast.loading('Generating calldata for transaction...', { id: 'generate-calldata', duration: 10000 });

      const calldata = await getCalldata(proof.proof, proof.publicSignals);

      toast.success('Calldata generated!', { id: 'generate-calldata', duration: 5000 });

      // Step 6: Prepare public inputs
      const publicInputs = {
        root: proofInput.root,
        nullifierHash: proofInput.nullifierHash,
        receiver: proofInput.receiver
      }

      // Step 7: Send transaction
      toast.loading('Sending transaction to blockchain...', { id: 'send-transaction', duration: 15000 });

      await sendRequest(publicInputs, calldata.calldata);

      toast.success('Transaction sent successfully!', { id: 'send-transaction', duration: 5000 });
      console.log('calldata:', calldata, publicInputs);

      // Step 8: Save debug data
      toast.loading('Saving debug data...', { id: 'save-debug', duration: 5000 });

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

      toast.success('Debug data saved!', { id: 'save-debug', duration: 5000 });
      toast.success('All operations completed successfully!', { id: 'final-success', duration: 5000 });

    } catch (error) {
      console.error('Error generating proof:', error);
      toast.error('Failed to generate proof: ' + error.message, { id: 'proof-generation', duration: 5000 });
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
      // Step 1: Create commitment
      toast.loading('Creating cryptographic commitment...', { id: 'create-commitment', duration: 10000 });

      console.log("creating commitment...");
      const commitment = await createCommitment();
      console.log("commitment created", commitment);

      toast.success('Commitment created!', { id: 'create-commitment', duration: 5000 });

      // Step 2: Prepare transaction
      toast.loading('Preparing transaction data...', { id: 'prepare-tx', duration: 5000 });

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

      toast.success('Transaction data prepared!', { id: 'prepare-tx', duration: 5000 });

      // Step 3: Execute multicall transaction
      toast.loading('Executing multicall transaction...', { id: 'execute-tx', duration: 10000 });

      console.log("sending multicall...");
      const tx = await userAccount.execute([approveCall, depositCall]);

      toast.success('Transaction sent to network!', { id: 'execute-tx', duration: 5000 });
      console.log("multicall tx sent:", tx.transaction_hash);

      // Step 4: Wait for transaction confirmation
      toast.loading('Waiting for transaction confirmation...', {
        id: 'confirm-tx',
        duration: Infinity
      });

      await userAccount.waitForTransaction(tx.transaction_hash);

      toast.success('Transaction confirmed!', { id: 'confirm-tx', duration: 5000 });
      console.log("deposit done");

      // Refresh balance after successful deposit
      const rawBalance = await usdcContract.balance_of(userAccount.address);
      setUsdcBalance(formatBalance(rawBalance));
      console.log("Updated balance after deposit:", formatBalance(rawBalance));

      // Step 5: Get commitment index
      toast.loading('Retrieving commitment index...', { id: 'get-index', duration: 10000 });

      const index = await zstarkwarpContract.get_commitment_index(
        commitment.commitment
      );

      toast.success('Commitment index retrieved!', { id: 'get-index', duration: 5000 });

      // Step 6: Prepare and save note
      toast.loading('Creating and saving note file...', { id: 'save-note', duration: 5000 });

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

      toast.success('Note file saved successfully!', { id: 'save-note', duration: 5000 });
      toast.success('Deposit completed successfully!', { id: 'deposit-complete', duration: 5000 });
    } catch (e){
      console.log("error while creating commitment", e);
      toast.error('Deposit failed: ' + e.message, { id: 'deposit-error', duration: 5000 });
    }
  }

  const mintUsdc = async() => {
    try {
      // Step 1: Prepare mint transaction
      toast.loading('Preparing mint transaction...', { id: 'prepare-mint', duration: 5000 });

      const mintCall = {
        contractAddress: usdcContract.address,
        entrypoint: "mint_user",
        calldata: [userAccount.address]
      };

      toast.success('Mint transaction prepared!', { id: 'prepare-mint', duration: 5000 });

      // Step 2: Execute mint transaction
      toast.loading('Executing mint transaction...', { id: 'execute-mint', duration: 10000 });

      const tx = await userAccount.execute(mintCall);

      toast.success('Mint transaction sent to network!', { id: 'execute-mint', duration: 5000 });
      console.log("Mint tx:", tx.transaction_hash);

      // Step 3: Wait for transaction confirmation
      toast.loading('Waiting for mint confirmation...', {
        id: 'confirm-mint',
        duration: Infinity
      });

      await userAccount.waitForTransaction(tx.transaction_hash);

      toast.success('Mint transaction confirmed!', { id: 'confirm-mint', duration: 5000 });
      console.log("Mint confirmed");

      // Step 4: Update balance
      toast.loading('Updating USDC balance...', { id: 'update-balance', duration: 5000 });

      const rawBalance = await usdcContract.balance_of(userAccount.address);
      setUsdcBalance(formatBalance(rawBalance));

      toast.success('Balance updated successfully!', { id: 'update-balance', duration: 5000 });
      console.log("Updated raw balance after mint: ", rawBalance.toString());
      console.log("Updated formatted balance: ", formatBalance(rawBalance));

      toast.success('USDC minted successfully!', { id: 'mint-complete', duration: 5000 });

    } catch (e) {
      console.log("error while minting usdc:", e);
      toast.error('Mint failed: ' + e.message, { id: 'mint-error', duration: 5000 });
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
    <div className="AppFrame">
      {/* The Widget Stack */}
      <div className="WidgetStack">
        {/* Row 1: The Tabs */}
        <div className="TabsRow">
          <button
            onClick={() => setActiveTab('deposit')}
            className={`Tab ${activeTab === 'deposit' ? 'Active' : 'Inactive'}`}
          >
            Deposit
          </button>
          <button
            onClick={() => setActiveTab('withdraw')}
            className={`Tab ${activeTab === 'withdraw' ? 'Active' : 'Inactive'}`}
          >
            Withdraw
          </button>
        </div>

        {/* Row 2: The Body - Border goes HERE, not around the parent */}
        <div className="ContentBody">
          {activeTab === 'deposit' ? (
            <div className="crypto-widget-section active">
              {/* Bridge Selector */}
              <div className="crypto-widget-form-group">
                <div className="crypto-widget-flex crypto-widget-flex-between crypto-widget-flex-center">
                  <label className="crypto-widget-label">
                    Bridge USDC
                  </label>
                  {userAccount && (
                    <div style={{
                      display: 'inline-flex',
                      alignItems: 'center',
                      gap: '4px',
                      backgroundColor: '#EEE',
                      borderRadius: '12px',
                      padding: '4px 8px',
                      fontSize: '0.8rem',
                      fontFamily: 'Fira Code, Courier, monospace'
                    }}>
                      <span style={{
                        color: '#222222'
                      }}>
                        {userAccount.address.slice(0, 6)}...{userAccount.address.slice(-4)}
                      </span>
                      <button
                        onClick={() => setUserAccount(null)}
                        style={{
                          background: '#ff4444',
                          color: 'white',
                          border: 'none',
                          borderRadius: '50%',
                          width: '16px',
                          height: '16px',
                          fontSize: '12px',
                          lineHeight: '1',
                          cursor: 'pointer',
                          display: 'flex',
                          alignItems: 'center',
                          justifyContent: 'center',
                          fontWeight: 'bold'
                        }}
                        title="Disconnect wallet"
                      >
                        ×
                      </button>
                    </div>
                  )}
                </div>
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
                {!userAccount && (
                  <button
                    className="crypto-widget-button crypto-widget-button-primary"
                    onClick={connectWallet}
                    aria-label="Connect to Ztarknet"
                  >
                    Connect Wallet
                  </button>
                )}
              </div>

              {/* Balance Section with Receipt Divider */}
              {
                userAccount != null && (
                  <>
                    <div style={{
                      width: '100%',
                      height: '1px',
                      borderBottom: '2px dashed #333333',
                      margin: '1rem 0'
                    }} />

                    <div className="crypto-widget-form-group" style={{
                      display: 'flex',
                      justifyContent: 'space-between',
                      alignItems: 'center',
                      marginBottom: '1rem'
                    }}>
                      <span style={{
                        fontSize: '0.875rem',
                        color: '#444444',
                        fontFamily: 'Fira Code, Courier, monospace',
                        textTransform: 'uppercase',
                        letterSpacing: '0.05em',
                        fontWeight: 500
                      }}>
                        AVAILABLE
                      </span>

                      <span style={{
                        color: '#000',
                        fontWeight: 600,
                        backgroundColor: 'rgba(158, 255, 158, 0.1)',
                        padding: '2px 6px',
                        borderRadius: '4px',
                        fontSize: '0.875rem',
                        fontFamily: 'Fira Code, Courier, monospace'
                      }}>
                        {usdcBalance} USDC
                      </span>
                    </div>
                  </>
                )
              }

              {/* Mint Button - Only show if balance is 0 */}
              {userAccount && usdcBalance == 0 && (
                <div className="crypto-widget-form-group">
                  <button
                    className="crypto-widget-button crypto-widget-button-primary"
                    onClick={mintUsdc}
                    aria-label="mint usdc"
                  >
                    Mint USDC
                  </button>
                </div>
              )}

              {/* Deposit Button */}
              {userAccount ? (
                <button
                  className="crypto-widget-button crypto-widget-button-primary"
                  onClick={getCommitment}
                  disabled={usdcBalance === 0}
                  style={usdcBalance === 0 ? { opacity: 0.5, cursor: 'not-allowed' } : {}}
                >
                  Deposit
                </button>
              ) : (
                <button
                  className="crypto-widget-button crypto-widget-button-primary"
                  disabled
                  style={{ opacity: 0.5, cursor: 'not-allowed' }}
                >
                  Deposit
                </button>
              )}
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
                    <circle cx="6" cy="6" r="5" stroke="#000000" strokeWidth="2"/>
                    <path d="M6 3V6M6 9H6.01" stroke="#000000" strokeWidth="2" strokeLinecap="round"/>
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

              {/* Receipt Divider between Note and Recipient */}
              <div style={{
                width: '100%',
                height: '1px',
                borderBottom: '2px dashed #333333',
                margin: '1rem 0'
              }} />

              {/* Recipient Address Input */}
              <div className="crypto-widget-form-group">
                <label className="crypto-widget-label">
                  Recipient Address
                </label>
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