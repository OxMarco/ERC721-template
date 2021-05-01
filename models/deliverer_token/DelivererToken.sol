// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract DelivererToken is TradeableERC721Token {
    uint16 private counter;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("DelivererToken", "DEL", _proxyRegistryAddress) public {
        counter = 0; 
    }
    
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override {
        counter++;
    }

    function baseTokenURI() public view returns (string memory) {
        if(counter == 0) {
            return "ipfs://Qmf7hXanpVWLLCyNmcmTV48dygLY7zbh9zK1DrL6rmoKn3";
        } else if(counter == 1) {
            return "ipfs://QmQoa3Qwabja7nWM5QR6Mso8ng8bGivSoPzC9HfhqA3c3Q";
        } else if(counter == 2) {
            return "";
        } else if(counter == 3) {
            return "";
        } else {
            return "";
        }
    }
}
