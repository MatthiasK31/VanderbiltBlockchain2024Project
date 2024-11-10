// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DogeNFT is ERC721 {
    uint256 public tokenIds;

    constructor() ERC721("DogeNFT", "DOGE") {}

    function mint() public {
        tokenIds++;
        _safeMint(msg.sender, tokenIds);
    }
}
