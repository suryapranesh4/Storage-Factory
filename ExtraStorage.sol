// SPDX-License-Identifier: MIT
// Inheritance with virtual ovverride example

pragma solidity ^0.8.7;

import "./simpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
