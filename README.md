# Nectar ERC20 Token

Metacrafters ETH + AVAX Module - 3


## Description

This Solidity smart contract demonstrates the implementation of an ERC20 token named "Nectar" using the OpenZeppelin ERC20 library. The contract allows for minting, burning, and transferring tokens between users.

## Basic Guidance

### Features

* Minting new Nectar tokens to specified addresses.
* Burning Nectar tokens.
* Transferring Nectar tokens between addresses.
### Contract Details
* Name: Nectar
* Symbol: NKTR
* Decimals: 2
* Total Supply: Initialized during contract deployment.

### Functions
```
constructor(uint _startingSupply)
```
* Initializes the contract with the specified initial supply of Nectar tokens.
```
mintNectar(address _toWallet, uint _numberOfTokens)
```
* Mint additional Nectar tokens and send them to the specified wallet address. This function can only be executed by the contract owner.
```
burnNectar(uint _howMany)
```
* Burns a specified number of Nectar tokens from the caller's balance.
```
sendNectarTo(address _toAccount, uint _howMany): 
```
* Transfers Nectar tokens from the caller's address to the specified recipient.

### Usage
#### To interact with the Nectar ERC20 token contract, follow the steps below:

* Clone Repository: Clone the repository containing the Solidity file onto your local machine.

* Compile Contract: Compile the Solidity smart contract using a Solidity compiler such as Hardhat or Remix.

* Deploy Contract: Deploy the compiled contract to a blockchain network. Ensure that you have a suitable Ethereum development environment set up.

* Interact with Contract: Use a tool like Remix or web3.js to interact with the deployed contract. You can mint, burn, and transfer Nectar tokens as desired.

## Help
For any assistance or queries, feel free to reach out to the contract author via [email](bimaltyagi333@gmail.com).


## Authors
Bimal Tyagi


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
