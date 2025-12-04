require('dotenv').config();

const config = {
  urls: {
    backend: process.env.BACKEND_URL || 'http://localhost:3001',
    rpc: process.env.RPC_URL || 'https://api.zan.top/public/starknet-sepolia',
    ztarknetRpc: process.env.ZTARKNET_RPC_URL || 'https://ztarknet-madara.d.karnot.xyz',
    github: process.env.GITHUB_URL || 'https://github.com/merkle-groot/zstarkwarp'
  },
  apiEndpoints: {
    getPath: '/api/v1/getPath',
    sendRequest: '/api/v1/sendRequest',
    health: '/health',
    docs: '/api/v1'
  },
  starknet: {
    mockUSDC: "0x345e862042d37b940cb6a750289be32c42f0a69f61516dadaff32a93ca389d5",
    verifier: "0x65df7b53e220e1da40a4615ec59523bdc7dfddc34fefa7309210633bde1cb55",
    zstarkwarp: "0x248b7e623b6c270935b5c70e18356ac44b67fee12490a49b07e7f0dd45959e2"
  },
  ztarknet: {
    mockUSDC: "0x61594cbbef866b7b2f107dca5593ebe46c30d4e6fb9c063d4eba43c0a410dd5",
    verifier: "0x4a58f52a07ba9f44382dfd56dc08d2d0f439632bda67771c859f8fbd7a64fc",
    zstarkwarp: "0x5cf04a11f0917b628b1becdabc86edd115a51cda3b1735d2490af15ee019a8c"
  }
};

module.exports = config;