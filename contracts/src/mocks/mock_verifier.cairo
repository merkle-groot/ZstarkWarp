#[starknet::contract]
mod MockGroth16VerifierBN254 {
    
    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl IGroth16VerifierBN254Impl of zstarkwarp::interfaces::verifier_interface::IGroth16VerifierBN254<ContractState> {
        fn verify_groth16_proof_bn254(
            self: @ContractState, full_proof_with_hints: Span<felt252>,
        ) -> (bool, Span<u256>) {
            // Mock verifier that always returns success
            // Return a dummy span of u256 values to simulate valid public inputs
            let mut public_inputs = ArrayTrait::new();
            // Add some dummy public inputs that might be expected by the circuit
            public_inputs.append(123_u256);
            public_inputs.append(456_u256);

            (true, public_inputs.span())
        }
    }
}