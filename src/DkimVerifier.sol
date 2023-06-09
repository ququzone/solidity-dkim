// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DkimKeys} from "./DkimKeys.sol";
import {BytesUtils} from "./lib/BytesUtils.sol";
import {RSAVerifier} from "./lib/RSAVerifier.sol";

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

    function hash(bytes memory data) public pure returns (bytes32) {
        return sha256(data.slice(16, data.length - 16));
    }

    function verify(bytes32 server, bytes calldata data, bytes calldata signature) external view returns (bool) {
        bytes memory modulus = keys.getKey(server);
        bool ok;
        bytes memory result;
        (ok, result) = RSAVerifier.rsaRecover(modulus, hex"010001", signature);
        return ok && hash(data) == result.toBytes32(result.length - 32);
    }
}
