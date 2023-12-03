// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract contractA is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    uint public amount;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address addr) public initializer {
        __Ownable_init(addr);
        __UUPSUpgradeable_init();
    }

    function initialAmount(uint _amount) public returns (uint) {
        amount = _amount;
        return amount;
    }

    function inc(uint _amount) public returns (uint) {
        amount = _amount + 10;
        return amount;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}
}
