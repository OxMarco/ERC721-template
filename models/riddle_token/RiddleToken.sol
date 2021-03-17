// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract RiddleToken is TradeableERC721Token {
    bool solved;
    uint attempts;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("RiddleToken", "RID", _proxyRegistryAddress) public { 
        solved = false;
        attempts = 0;
    }

    function solve(string code) public {
        attempts++;
        require(attempts <= 10, "Too many attempts");
        require(code == "aspecialcode", "Wrong code"); // CHANGEME
        solved = true;
    }

    function baseTokenURI() public view returns (string memory) {
        if(solved) {
            return ""; // CHANGEME
        } else {
            return ""; // CHANGEME
        }
    }
}
