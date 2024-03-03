// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenStore is ERC20 {
    struct GameItem {
        string name;
        uint256 price;
    }

    mapping(uint256 => GameItem) public gameItems;
    uint256 public totalItems;

    constructor() ERC20("Degen", "DGN") {
        totalItems = 0;
    }

    function mint(address to, uint256 amount) external  {
        _mint(to, amount);
    }

    function setItem(string memory _name, uint256 _price) external  {
        require(_price > 0, "Invalid price");

        totalItems++;
        gameItems[totalItems] = GameItem(_name, _price);
    }

    function redeemItem(uint256 itemId) external {
        require(itemId > 0 && itemId <= totalItems, "Invalid item ID");
        require(balanceOf(msg.sender) >= gameItems[itemId].price, "Insufficient balance");

        _transfer(msg.sender, address(this), gameItems[itemId].price);
    }

    function getAllItems() external view returns (GameItem[] memory) {
        GameItem[] memory items = new GameItem[](totalItems);
        for (uint256 i = 1; i <= totalItems; i++) {
            items[i - 1] = gameItems[i];
        }
        return items;
    }

   

    function burn(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
}
