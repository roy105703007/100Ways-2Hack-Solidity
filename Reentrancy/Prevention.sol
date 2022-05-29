// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// The first way to prevent reentrancy attack
// Change the state first before you make any external calls

// The second way to prevent reentrancy attack
// lock the contract when a function is executing
contract ReEntrancyGuard {
    bool internal locked;

    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }
}
