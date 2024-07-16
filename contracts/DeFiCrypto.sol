// contracts/DeFiCrypto.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeFiCrypto is ERC20 {
    constructor(uint256 initialSupply) ERC20("DeFiCrypto", "DEFI") {
        _mint(msg.sender, initialSupply);
    }

    // Getters
    function totalSupply() public view override returns (uint256) {
        return super.totalSupply();
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function allowance(address owner, address spender) public view override returns (uint256) {
        return super.allowance(owner, spender);
    }

    // Functions
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        return super.approve(spender, amount);
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        return super.transferFrom(sender, recipient, amount);
    }

    // Events
    event EventTransfer(address indexed from, address indexed to, uint256 value);
    event EventApproval(address indexed owner, address indexed spender, uint256 value);
}
