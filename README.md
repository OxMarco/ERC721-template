# NFT ERC721 Gallery
A template for easy ERC721 smart contract creation and minting.
Taken from OpenSea docs mixed with OpenZeppelin specs.

## Usage
First of all, load the env file
```
. .env
```
you will need to get an API key from Infura.io

Then, migrate the smart contract
```
truffle migrate --reset --compile-all --network rinkeby
```
and get the NFT smart contract address.
Replace the generated NFT contract address in the env file, 
load it as done before and run
```
node scripts/mint.js
```

In a few minutes your NFT will be minted.

## Env file
```
INFURA_KEY=""
MNEMONIC=""
PRIVATE_KEY=""
NETWORK="rinkeby"
OWNER_ADDRESS=""
NFT_CONTRACT_ADDRESS=""
```

