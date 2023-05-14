// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DkimKeys} from "./DkimKeys.sol";
import {BytesUtils} from "./lib/BytesUtils.sol";

contract DkimVerifier {
    using BytesUtils for bytes;

    DkimKeys private keys;

    constructor(address _keys) {
        keys = DkimKeys(_keys);
    }

    function from(bytes memory data) public pure returns (bytes memory) {
        uint32 index = data.toUint32(0);
        uint32 length = data.toUint32(4);
        return data.slice(index, length);
    }

    function subject(bytes memory data) public pure returns (bytes memory) {
        uint32 index = data.toUint32(8);
        uint32 length = data.toUint32(12);
        return data.slice(index, length);
    }

    function verify(bytes32 server, bytes calldata data, bytes calldata signature) external view returns (bool) {
        return false;
    }
}
