// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./BytesUtils.sol";
import "./RSAVerifier.sol";

library RSASHA256 {
    using BytesUtils for *;

    function verify(bytes32 hash, bytes calldata sig, bytes calldata exponent, bytes calldata modulus)
        external
        view
        returns (bool)
    {
        // Recover the message from the signature
        bool ok;
        bytes memory result;
        (ok, result) = RSAVerifier.rsaRecover(modulus, exponent, sig);

        // Verify it ends with the hash of our data
        return ok && hash == result.toBytes32(result.length - 32);
    }
}
