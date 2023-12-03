# upgradable-demo-uups
## Deploy V1 contract
1. Deploy the proxy contract and V1 by js script
```
npx hardhat run scripts/deploy-uups.js --network sepolia
```
You will get proxy contract address and logic contract address.

2. Verify logic contract
```
npx hardhat verify --network sepolia LOGIC_CONTRACT
```

3. Verify proxy contract as proxy on explorer

4. update proxyAddress in const.js

## Deploy V2 contract
1. Deploy V2 logic contract by js script 
```
npx hardhat run scripts/upgrade-uups.js --network sepolia       
```
2. verify new logic contract
```
npx hardhat verify --network sepolia NEW_LOGIC_CONTRACT
```