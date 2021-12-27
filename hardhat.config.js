require("@nomiclabs/hardhat-waffle");
const projectId = '273620d865a746c0a90614dcb4762837'
const fs = require('fs')
const keyData = fs.readFileSync('./p-key.txt', {
  encodeing:'utf8',
  flag: 'r'
})

module.exports = {
  defaultNetwork: 'hardhat',
  networks:{
    hardhat:{
      chainId: 1337 // config standard
    },
    mumbai:{
      url:`https://polygon-mumbai.infura.io/v3/${projectId}`,
      accounts:[keyData]
    },
    mainnet:{
      url:`https://mainnet.infura.io/v3/${projectId}`,
      accounts:[keyData]
    }
  },
  solidity: {
    version: "0.8.4",
    settings:{
      optimizer:{
        enabled: true,
        runs: 200
      }
    }
  },
};
