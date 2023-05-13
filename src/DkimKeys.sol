// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "solmate/auth/Owned.sol";

contract DkimKeys is Owned {
    mapping(bytes => bytes) private dkimKeys;

    constructor() Owned(msg.sender) {}
}
