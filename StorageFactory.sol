// SPDX-License-Identifier: MIT
// Inheritance with virtual ovverride example
// Smart contract deploying + interacting other smart contract
pragma solidity ^0.8.7;

import "./simpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArray;

    function createStorageFactory() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storageFactoryStore(
        uint256 _storageFactoryIndex,
        uint256 _favouriteNumber
    ) public {
        // Address
        // ABI
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        SimpleStorage simpleStorage = simpleStorageArray[_storageFactoryIndex];
        simpleStorage.store(_favouriteNumber);
    }

    function getSf(uint256 _storageFactoryIndex) public view returns (uint256) {
        return simpleStorageArray[_storageFactoryIndex].retrieve();
    }
}
