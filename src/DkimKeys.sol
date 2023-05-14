// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "solmate/auth/Owned.sol";

contract DkimKeys is Owned {
    event UpdateDKIMKey(bytes32 server, bytes key);
    event DeleteDKIMKey(bytes32 server, bytes key);

    mapping(bytes32 => bytes) private dkimKeys;

    constructor() Owned(msg.sender) {}

    function updateKey(bytes32 server, bytes memory key) external onlyOwner {
        dkimKeys[server] = key;
        emit UpdateDKIMKey(server, key);
    }

    function removeKey(bytes32 server) external onlyOwner {
        bytes memory key = dkimKeys[server];
        delete dkimKeys[server];
        emit DeleteDKIMKey(server, key);
    }

    function getKey(bytes32 server) external view returns (bytes memory) {
        bytes memory key = dkimKeys[server];
        require(key.length > 0, "no key");
        return key;
    }
}
