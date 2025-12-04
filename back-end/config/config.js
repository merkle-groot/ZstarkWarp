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
  }
};

module.exports = config;