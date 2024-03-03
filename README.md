# AVAX4

### Smart Contract 

#### Project Name: DegenStore

#### License: MIT License

---

#### Description:
The `DegenStore` smart contract is an ERC20 token contract designed to facilitate a decentralized store where users can mint tokens, set game items with prices, redeem items using tokens, and burn tokens. This README provides an overview of the contract's functionalities, deployment instructions, and usage guidelines.

---

#### Contract Structure:

- **Solidity Version:** ^0.8.20
- **SPDX-License-Identifier:** MIT

#### Dependencies:
- This contract relies on the OpenZeppelin Contracts library for ERC20 token implementation and access control functionalities.

---

#### Features:

1. **Token Name and Symbol:**
   - The token is named "Degen" with the symbol "DGN".

2. **Minting Tokens:**
   - Users can mint tokens using the `mint` function by specifying the recipient address and the amount of tokens to mint.

3. **Setting Game Items:**
   - Game items with their respective prices can be set using the `setItem` function.
   - Each item consists of a name and a price.

4. **Redeeming Items:**
   - Users can redeem items by providing the item ID and transferring the required token amount to the contract.
   - The contract verifies the user's balance and transfers the tokens to the contract's address.

5. **Viewing All Items:**
   - Users can retrieve all available game items and their prices using the `getAllItems` function.

6. **Burning Tokens:**
   - Users can burn their tokens using the `burn` function.

---

#### Deployment Instructions:

1. **Compile the Contract:**
   - Compile the `DegenStore` contract using a Solidity compiler version compatible with ^0.8.20.

2. **Deploy the Contract:**
   - Deploy the compiled contract on an Ethereum-compatible blockchain network.

---

#### Usage:

1. **Minting Tokens:**
   - Call the `mint` function to mint tokens for a specified address.

2. **Setting Game Items:**
   - Use the `setItem` function to set game items along with their prices.

3. **Redeeming Items:**
   - Call the `redeemItem` function with the item ID to redeem an item by transferring the required token amount.

4. **Viewing All Items:**
   - Retrieve all available game items and their prices using the `getAllItems` function.

5. **Burning Tokens:**
   - Burn tokens by calling the `burn` function with the desired amount.

---
