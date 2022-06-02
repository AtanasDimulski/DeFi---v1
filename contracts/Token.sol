// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.7;

  import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

  contract Token is ERC20 {
    address public owner;

    constructor() ERC20("TokenT", "TT") {
        _mint(msg.sender, (10000 * (10 ** 18)));
        owner = msg.sender;
    }

    function mint(address to, uint amount) external{
        require(owner == msg.sender, "only owner can call this contract");
        _mint(to, amount);
    }
  }