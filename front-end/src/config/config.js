import contractAddresses from './config.json';

const config = {
  urls: {
    backend: process.env.REACT_APP_BACKEND_URL || 'http://localhost:3001',
    rpc: process.env.REACT_APP_RPC_URL || 'https://api.zan.top/public/starknet-sepolia',
    ztarknetRpc: process.env.REACT_APP_ZTARKNET_RPC_URL || 'https://ztarknet-madara.d.karnot.xyz',
    github: process.env.REACT_APP_GITHUB_URL || 'https://github.com/merkle-groot/zstarkwarp'
  },
  apiEndpoints: {
    getPath: '/api/v1/getPath',
    sendRequest: '/api/v1/sendRequest',
    health: '/health',
    docs: '/api/v1'
  },
  starknet: contractAddresses.starknet,
  ztarknet: contractAddresses.ztarknet
};

export default config;