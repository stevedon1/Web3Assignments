// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EtherTransfer {
    address payable recipient;

    constructor(address payable _recipient) {
        recipient = _recipient;
    }

    receive() external payable {}

    function sendEther(uint256 amount) public {
        require(amount <= address(this).balance, "Not enough balance in contract");
        recipient.transfer(amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
