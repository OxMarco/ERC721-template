// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract TrophyToken is TradeableERC721Token {
    address payable private artist;
    enum Trophy { BLANK, BRONZE, SILVER, GOLD, POO }
    Trophy current;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("TrophyToken", "TRO", _proxyRegistryAddress) public { 
        current = Trophy.BLANK;
        artist = 0x9dd4f6fFc20367aF0Fb251fb3396365BeD45F3F1; // artist ETH address
    }

    function () external payable {
        require(current == Trophy.BLANK, "Trophy claimed already");
        uint256 donation = msg.value;
        if(donation >= 1000000000000000000) // >= 1 ETH
        {
            current = Trophy.GOLD;
        } 
        else if(donation >= 100000000000000000) // >= 0.1 ETH
        {
            current = Trophy.SILVER;
        }
        else if(donation >= 10000000000000000) // >= 0.01 ETH
        {
            current = Trophy.BRONZE;
        }
        else // lower than 0.01 ETH
        {
            current = Trophy.POO;
        }
        artist.call.value(donation)();
    }

    function baseTokenURI() public view returns (string memory) {
        if(current == Trophy.BLANK) {
            return "";
        } else if(current == Trophy.GOLD) {
            return "";
        } else if(current == Trophy.SILVER) {
            return "";
        } else if(current == Trophy.BRONZE) {
            return "";
        } else {
            return "";
        }
    }
}
