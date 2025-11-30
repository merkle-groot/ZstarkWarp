const { getGroth16CallData, CurveId, init } = require('garaga');
const { readFileSync, writeFileSync } = require('fs');

function loadJson(path) {
    return JSON.parse(readFileSync(path));
}

function toBigInt(x) {
    return typeof x === 'string' ? BigInt(x) : x;
}

function formatPoint(x, y, curveId) {
    return { x: toBigInt(x), y: toBigInt(y), curveId };
}

function formatG2Point(x, y, curveId) {
    return {
        x: [toBigInt(x[0]), toBigInt(x[1])],
        y: [toBigInt(y[0]), toBigInt(y[1])],
        curveId
    };
}

const getCalldata  = async(i) => {
    const curveId = CurveId.BN254;
    const proof = loadJson(`./circuit_artifacts/proofs/proof${i}.json`);
    const publicInputs = loadJson(`./circuit_artifacts/proofs/public${i}.json`);
    const vk = loadJson(`./circuit_artifacts/verification_key.json`);

    const groth16Proof = {
        a: formatPoint(proof.pi_a[0], proof.pi_a[1], curveId),
        b: formatG2Point(proof.pi_b[0], proof.pi_b[1], curveId),
        c: formatPoint(proof.pi_c[0], proof.pi_c[1], curveId),
        publicInputs: publicInputs.map(toBigInt),
        curveId
    };

    const verificationKey = {
        alpha: formatPoint(vk.vk_alpha_1[0], vk.vk_alpha_1[1], curveId),
        beta: formatG2Point(vk.vk_beta_2[0], vk.vk_beta_2[1], curveId),
        gamma: formatG2Point(vk.vk_gamma_2[0], vk.vk_gamma_2[1], curveId),
        delta: formatG2Point(vk.vk_delta_2[0], vk.vk_delta_2[1], curveId),
        ic: vk.IC.map(point => formatPoint(point[0], point[1], curveId))
    };

    let calldata = getGroth16CallData(groth16Proof, verificationKey, curveId)
    writeFileSync(`../contracts/tests/calldata${i}.json`, JSON.stringify({
            calldata: (
                calldata.map(
                    (val) => val.toString()
                )   
            )
        }), 
        null, 2)
    ;
}

const getCalldatas = async() => {
    await init();

    const proofIndices = [1, 2, 3];
    for (const proofIndex of proofIndices) {
        await getCalldata(proofIndex);
    }
}

module.exports = {getCalldatas};