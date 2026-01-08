# ZstarkSwap

A private bridge between Starknet and Ztarknet, built on a mix of game-theory and zero-knowledge security.

## Overview

ZstarkSwap is a privacy-preserving cross-chain bridge that allows private token transfers between Starknet and Ztarknet without exposing users to typical bridge-hack risks. The protocol combines zero-knowledge proofs with an economic security model using solver validation.

The underlying framework enables private transfers between any chains through a Tornado-Cash-style pool where users lock funds on one chain and prove they deposited using ZK proofs, without linking their withdrawal to their deposit. Because withdrawals aren't instant, a user could try to cheat by submitting an invalid Merkle root and a proof computed over that fake root.

This is where the solvers step in. They lock funds in the withdrawal contract and are responsible for checking that the Merkle roots being proven are correct. The protocol optimistically sends funds that come from the solvers who approve the withdrawal. Solvers earn a small fee for every withdrawal they validate.

They also take on real risk: if a solver approves an invalid withdrawal, their stake can be slashed. The protocol stays safe as long as enough observers watch approvals and flag bad ones. There's a cooldown period, during which a multisig or later a DAO can slash the solver if they misbehave.

The protocol uses:
- **Groth16 proofs** for zk-SNARK verification
- **Merkle trees** for efficient commitment storage
- **Poseidon hash** for optimized hashing in ZK circuits
- **Solver validation** for economic security
- **Stake slashing** for malicious behavior
- **Starknet** smart contracts for on-chain verification

## Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         DEPOSIT FLOW (Source Chain)                     │
└─────────────────────────────────────────────────────────────────────────┘

┌─────────────┐      Deposit + Commitment      ┌──────────────┐
│   User      │ ──────────────────────────────> │  ZstarkSwap  │
│             │                                 │   (Source)   │
└─────────────┘                                 └──────────────┘
                                                        │
                                                        │ Lock tokens
                                                        │ Add to Merkle Tree
                                                        v
                                                 ┌──────────────┐
                                                 │  Merkle Tree │
                                                 └──────────────┘


┌─────────────────────────────────────────────────────────────────────────┐
│                     WITHDRAW FLOW (Starknet)                            │
└─────────────────────────────────────────────────────────────────────────┘

┌─────────────┐                                    ┌──────────────┐
│   User      │                                    │   ZstarkSwap │
│             │ Generate ZK Proof (offline)        │  (Starknet)  │
└─────────────┘                                    └──────────────┘
     │                                                    │
     │ 1. Generate proof over commitment                  │
     │ 2. Submit withdraw request + proof                 │
     │--------------------------------------------------->│
     │                                                    │
     │                                                    │
     │                                              ┌─────┴─────┐
     │                                              │  Verifier │
     │                                              └─────┬─────┘
     │                                                    │
     │                                                    │ Verify ZK proof
     │                                                    │ Check nullifier
     │                                                    │
     │                                                    v
     │                                              ┌──────────┐
     │                                              │ Pending  │
     │                                              │ Withdrawals
     │                                              └────┬─────┘
     │                                                   │
     │                                                   │
     └───────────────────────────────────────────────────┘
                                                           │
                                    ┌──────────────────────┼──────────────────────┐
                                    │                      │                      │
                                    v                      v                      v
                             ┌───────────┐          ┌───────────┐          ┌───────────┐
                             │  Solver 1 │          │  Solver 2 │          │  Solver N │
                             │           │          │           │          │           │
                             │ Validate  │          │ Validate  │          │ Validate  │
                             │ Merkle    │          │ Merkle    │          │ Merkle    │
                             │ Root      │          │ Root      │          │ Root      │
                             └─────┬─────┘          └─────┬─────┘          └─────┬─────┘
                                   │                      │                      │
                                   │                      │                      │
                                   v                      v                      v
                             ┌───────────┐          ┌───────────┐          ┌───────────┐
                             │  Approve  │          │  Reject  │          │  Approve  │
                             │   + Stake│          │          │          │   + Stake│
                             └─────┬─────┘          └───────────┘          └─────┬─────┘
                                   │                                              │
                                   │   Optimistic Execution (1st approval)       │
                                   └──────────────────────┬─────────────────────┘
                                                          │
                                                          v
                                                   ┌──────────────┐
                                                   │   Cooldown   │
                                                   │   Period     │
                                                   └──────┬───────┘
                                                          │
                                                          │ Challenge period
                                                          │ for observers
                                                          │
                                    ┌─────────────────────┴─────────────────────┐
                                    │                                           │
                                    v                                           v
                             ┌─────────────┐                             ┌─────────────┐
                             │  Success    │                             │  Challenge  │
                             │             │                             │             │
                             │ Solver gets │                             │ Submit     │
                             │ fee         │                             │ fraud proof │
                             └──────┬──────┘                             └──────┬──────┘
                                    │                                           │
                                    v                                           v
                             ┌─────────────┐                             ┌─────────────┐
                             │  Receive    │                             │  Slashing   │
                             │  Tokens     │                             │             │
                             └─────────────┘                             │ Solver stake│
                                                                         │ slashed    │
                                                                         └─────────────┘
```

## Project Structure

```
zstarkwarp/
├── circuits/                     # Circom ZK circuits
│   ├── src/                      # Circuit source code
│   │   ├── withdraw.circom       # Main withdrawal circuit
│   │   └── merkle_proof_checker.circom
│   ├── scripts/                  # Build and setup scripts
│   ├── tests/                    # Circuit tests
│   └── circuit_artifacts/        # Generated circuit files
│
├── contracts/                    # Starknet smart contracts
│   ├── src/                      # Contract source code
│   │   ├── zstarkwarp.cairo      # Main protocol contract
│   │   ├── verifier/             # Groth16 verifier implementation
│   │   ├── merkle_tree/          # Merkle tree implementation
│   │   └── mocks/                # Mock contracts for testing
│   ├── tests/                    # Contract tests
│   └── scripts/                  # Deployment scripts
│
├── front-end/                    # React web application
│   ├── src/
│   │   ├── components/           # React components
│   │   ├── pages/                # Page components
│   │   ├── circuit/              # Circuit utilities
│   │   └── config/               # App configuration
│   └── package.json
│
├── back-end/                     # Node.js API server
│   ├── routes/                   # API routes
│   ├── services/                 # Business logic
│   ├── middleware/               # Express middleware
│   └── index.js                  # Server entry point
│
└── data/                         # Shared data and utilities
```

## Components

### 1. Circuits ([`circuits/`](circuits/))

Zero-knowledge circuits built with Circom that verify withdrawal proofs.

- **withdraw.circom**: Main circuit for privacy-preserving withdrawals
- **merkle_proof_checker.circom**: Verifies Merkle tree inclusion proofs
- Uses Groth16 proof system with BN254 curve
- ~50,000 R1CS constraints
- Supports up to 2^32 deposits in the Merkle tree

**Key Features:**
- Privacy: Withdrawals don't reveal which deposit they came from
- Security: Nullifiers prevent double-spending
- Efficiency: Optimized for fast proof generation

### 2. Smart Contracts ([`contracts/`](contracts/))

Starknet contracts written in Cairo that manage the protocol.

**Core Contracts:**
- **ZstarkSwap**: Main protocol contract handling deposits and withdrawals
- **Groth16VerifierBN254**: Verifies Groth16 ZK proofs on-chain
- **MerkleTreeMock**: Stores and manages deposit commitments
- **SolverRegistry**: Manages solver registration and stakes
- **ChallengeManager**: Handles fraud proofs and slashing

**Mock Contracts (for testing):**
- **USDCMock**: Mock USDC token
- **MockVerifier**: Mock verifier for testing

### 3. Front-End ([`front-end/`](front-end/))

React application for user interaction with the protocol.

**Features:**
- Connect Starknet wallet
- Deposit tokens
- Generate zero-knowledge proofs in browser
- Withdraw privately
- View transaction history

**Technologies:**
- React 19
- Chakra UI for styling
- Starknet.js for blockchain interaction
- snarkjs for proof generation

### 4. Back-End ([`back-end/`](back-end/))

Node.js/Express API server for additional functionality.

**Features:**
- RESTful API endpoints
- Merkle tree management
- Deposit tracking
- Solver monitoring and validation
- Cross-chain root verification
- Proof verification services

## Getting Started

### Prerequisites

- **Node.js** v16+
- **Scarab** - Cairo package manager
- **circom** v2.0.4+ - Circuit compiler
- **snarkjs** - ZK proof generation
- **pnpm** or **npm** - Package manager

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd zstarkwarp
   ```

2. **Install dependencies:**
   ```bash
   # Circuits
   cd circuits
   npm install

   # Contracts
   cd ../contracts
   scarb install

   # Front-end
   cd ../front-end
   npm install

   # Back-end
   cd ../back-end
   npm install
   ```

3. **Install global tools:**
   ```bash
   npm install -g circom snarkjs
   curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh
   ```

## Building

### Build Circuits

```bash
cd circuits
bash scripts/bash_scripts/setup.sh
```

This:
- Compiles Circom circuits to R1CS and WASM
- Performs trusted setup
- Generates verification key
- Creates Solidity verifier contract

### Build Contracts

```bash
cd contracts
scarb build
```

### Build Front-End

```bash
cd front-end
npm run build
```

## Testing

### Test Circuits

```bash
cd circuits
npm test
# or
npx mocha ./tests
```

### Test Contracts

```bash
cd contracts
scarb test
# or
snforge test
```

### Test with Backtrace

```bash
cd contracts
SNFORGE_BACKTRACE=1 snforge test
```

## Deployment

### Deploy Contracts to Starknet

1. **Configure environment:**
   ```bash
   cd contracts
   cp .env-example .env
   # Edit .env with your credentials
   ```

2. **Deploy contracts:**
   ```bash
   # Update mode (only deploys new contracts)
   npm run deploy:update

   # Redeploy mode (deploys all contracts)
   npm run deploy:redeploy
   ```

3. **Update front-end configuration:**
   Edit `front-end/src/config/contracts.js` with deployed contract addresses

### Run Front-End

```bash
cd front-end
npm start
```

The app will be available at `http://localhost:3000`

### Run Back-End

```bash
cd back-end
npm run dev
```

The API will be available at `http://localhost:3001`

## Usage

### Deposit Flow (Source Chain)

1. User connects wallet to front-end on source chain
2. User approves token transfer
3. User calls `deposit()` with:
   - Amount
   - Generated commitment (secret + nullifier)
4. Contract:
   - Locks tokens
   - Adds commitment to Merkle tree
   - Updates Merkle root
5. User receives receipt with commitment
6. User waits for commitment to be included in a root update

### Withdraw Flow (Starknet)

#### Step 1: User Generates Proof

User generates proof offline:
   ```javascript
   const input = {
     root: sourceChainMerkleRoot,
     receiver: userAddress,
     nullifier: userNullifier,
     nullifierHash: poseidon(nullifier),
     secretKey: userSecret,
     commitment: userCommitment,
     siblings: merklePath,
     isLeft: pathDirections
   };

   const { proof, publicSignals } = await snarkjs.groth16.fullProve(
     input,
     circuitWasm,
     provingKey
   );
   ```

#### Step 2: Submit Withdrawal Request

User calls `requestWithdraw()` with:
   - ZK proof
   - Public inputs (root, receiver, nullifierHash)
   - Source chain identifier

#### Step 3: Contract Verification

Contract performs initial checks:
   - Proof is valid
   - Nullifier hasn't been used
   - Root format is correct
   - Withdrawal is added to pending state

#### Step 4: Solver Validation

**Solver Responsibilities:**
1. Monitor pending withdrawals
2. Verify Merkle root is valid on source chain
3. Cross-check root against source chain contract
4. Stake funds and approve if valid
5. Reject if root is invalid or suspicious

**Solver Decision Process:**
   ```
   Is Merkle root valid on source chain?
   │
   ├─ YES → Approve withdrawal + Lock stake
   │         → Earn fee for validation
   │
   └─ NO → Reject withdrawal
           → Protect stake
   ```

#### Step 5: Optimistic Execution

- First solver approval triggers execution
- Funds sent from solver's stake to user
- Withdrawal enters cooldown period

#### Step 6: Challenge Period

During cooldown (e.g., 24 hours):
- Observers can submit fraud proofs
- If invalid approval detected:
  - Solver's stake is slashed
  - Withdrawal is reverted
- If no challenges:
  - Solver receives fee
  - Withdrawal completes successfully

### Solver Operations

#### Becoming a Solver

1. Deploy solver node with:
   - Source chain RPC access
   - Starknet RPC access
   - Monitoring system
   - Validation logic

2. Register with protocol:
   ```javascript
   await zstarkSwap.registerSolver({
     stakeAmount: requiredStake,
     endpoint: solverEndpoint,
     fee: solverFee
   });
   ```

3. Lock stake in contract

#### Monitoring and Validating

Solvers continuously:
1. Fetch pending withdrawals
2. Query source chain for Merkle roots
3. Validate root authenticity
4. Submit approval/rejection

```javascript
// Example solver validation logic
async function validateWithdrawal(withdrawal) {
  // Get root from source chain
  const sourceRoot = await sourceChain.getMerkleRoot();

  // Verify root matches proof
  const isValid = withdrawal.root === sourceRoot;

  if (isValid) {
    await zstarkSwap.approveWithdrawal(withdrawal.id);
  } else {
    await zstarkSwap.rejectWithdrawal(withdrawal.id);
  }
}
```

#### Solver Economics

- **Reward**: Fee for each validated withdrawal
- **Risk**: Stake slashed for invalid approvals
- **Profit**: Successful validations - slashed stakes

## Protocol Security

### Privacy Guarantees

- **Anonymity set**: All deposits in the Merkle tree form the anonymity set
- **Unlinkability**: Cannot link withdrawal to specific deposit without knowing secret
- **Confidentiality**: Withdrawal amount and recipient are only revealed on withdrawal
- **Cross-chain privacy**: Deposits on one chain cannot be linked to withdrawals on another

### Solver Security Model

**Economic Security:**
- **Skin in the game**: Solvers must stake funds to participate
- **Slashable stakes**: Invalid approvals result in stake loss
- **Fee incentives**: Solvers earn fees for correct validations
- **Reputation system**: Track solver performance over time

**Threat Model:**
- **Malicious solvers**: Can lose stake by approving invalid withdrawals
- **Colluding solvers**: Multiple solvers cannot bypass fraud detection
- **Lazy solvers**: Missed validations = missed fees (opportunity cost)
- **Byzantine failures**: Protocol tolerates faulty solvers through redundancy

**Challenge Mechanism:**
- **Cooldown period**: Time window for fraud proofs (e.g., 24-48 hours)
- **Observer incentives**: Anyone can submit fraud proofs
- **Slashing conditions**:
  - Invalid Merkle root approval
  - Proof verification failure
  - Double-spend attempt
  - Root manipulation

**Decentralization:**
- **Multiple solvers**: No single point of failure
- **Competitive validation**: First to approve earns fee
- **Observers**: Anyone can monitor and challenge
- **DAO governance**: Future transition to decentralized governance

### Security Features

- **Double-spend protection**: Nullifiers prevent withdrawal of same deposit twice
- **ZK proof verification**: Groth16 proofs provide cryptographic guarantees
- **Merkle tree integrity**: Root stored on-chain prevents tampering
- **Solver validation**: Cross-chain root verification prevents fake withdrawals
- **Economic finality**: Stake slashing ensures solver honesty
- **Optimistic execution**: Fast withdrawals with fraud proofs as safety net
- **Bridge hack prevention**: No centralized liquidity pool to exploit

## Performance

### Circuit Performance

- **Tree depth**: 32 levels
- **Max deposits**: 2^32 (~4.3 billion)
- **Constraints**: ~50,000 R1CS constraints
- **Witness generation**: ~100ms (in browser)
- **Proof generation**: ~5-10s (depending on hardware)
- **Proof verification**: ~10ms (on-chain)

### Withdrawal Timeline

1. **Proof generation**: 5-10s (user's machine)
2. **Submit withdrawal**: ~2-5s (block confirmation)
3. **Solver validation**: 1-5 minutes (depending on solver network)
4. **Optimistic execution**: Immediate after first approval
5. **Cooldown period**: 24-48 hours (challenge window)
6. **Final completion**: After cooldown (if no challenges)

**Total time**: ~24-48 hours (dominated by cooldown period)
**Fast path**: With immediate solver approval: ~5-10 minutes

### Gas Costs

Estimated gas costs for Starknet operations:
- **Deposit (source chain)**: ~300,000 gas
- **Request withdraw**: ~500,000 gas
- **Solver approval**: ~200,000 gas
- **Challenge submission**: ~150,000 gas
- **Final completion**: ~100,000 gas

### Solver Economics

**Typical Solver Configuration:**
- **Minimum stake**: 10x typical withdrawal amount
- **Validation fee**: 0.1-1% of withdrawal amount
- **Expected ROI**: 5-15% annually (depends on volume)
- **Slashing risk**: <0.1% with proper validation
- **Capital efficiency**: 1 stake can support multiple concurrent withdrawals

## Development

### Project Dependencies

**Circuits:**
- circomlib v2.0.5 - Poseidon hash and other primitives
- snarkjs v0.7.5 - Proof generation and verification
- circom_tester v0.0.24 - Circuit testing

**Contracts:**
- starknet v2.11.4 - Starknet core library
- openzeppelin_token v3.0.0-alpha.2 - Token contracts
- garaga v0.18.2 - Efficient cryptographic primitives

**Front-End:**
- React 19 - UI framework
- Chakra UI - Component library
- @starknet-io/get-starknet v4.0.8 - Wallet connection
- snarkjs v0.7.5 - Proof generation in browser

**Back-End:**
- Express 5.2.1 - Web framework
- Starknet.js 8.9.1 - Blockchain interaction
- Level 10.0.0 - Database for off-chain data

### Documentation

- [Circuits Documentation](circuits/README.md)
- [Contracts Documentation](contracts/README.md)
- [Back-End Documentation](back-end/README.md)

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

## Troubleshooting

### Common Issues

**Circuit compilation fails:**
```bash
# Ensure circom is installed
circom --version

# Clean and rebuild
cd circuits
rm -rf circuit_artifacts/
bash scripts/bash_scripts/setup.sh
```

**Contract tests fail:**
```bash
# Run with detailed output
cd contracts
SNFORGE_BACKTRACE=1 snforge test
```

**Front-end won't connect:**
```bash
# Ensure back-end is running
cd back-end
npm run dev

# Ensure contracts are deployed
cd contracts
npm run deploy:update
```

**Proof generation fails:**
- Ensure all inputs are valid field elements
- Check that circuit artifacts are up to date
- Verify input JSON format matches circuit expectations

## Additional Resources

- [Circom Documentation](https://docs.circom.io/)
- [Starknet Documentation](https://docs.starknet.io/)
- [Scarab Documentation](https://docs.swmansion.com/scarb/)
- [snarkjs Documentation](https://github.com/iden3/snarkjs)
- [Garaga Documentation](https://github.com/keep-starknet-strange/garaga)
- [Tornado Cash](https://github.com/tornadocash/tornado-core) - Similar privacy protocol design
- [ZK Whitepaper](https://electriccoin.co/blog/zkash-anonymous-payments-on-ethereum/)

## License

ISC

## Acknowledgments

- Inspired by Tornado Cash for privacy-preserving withdrawals
- Solver validation model influenced by optimistic rollup designs
- Built with Circom, snarkjs, and Starknet
- Uses garaga for efficient verification on Starknet
- Powered by zk-SNARKs for privacy
- Economic security through game-theoretic solver incentives
