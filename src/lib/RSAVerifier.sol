// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./ModexpPrecompile.sol";

library RSAVerifier {
    /**
     * @dev Recovers the input data from an RSA signature, returning the result in S.
     * @param N The RSA public modulus.
     * @param E The RSA public exponent.
     * @param S The signature to recover.
     * @return True if the recovery succeeded.
     */
    function rsaRecover(
        bytes memory N,
        bytes memory E,
        bytes memory S
    ) internal view returns (bool, bytes memory) {
        return ModexpPrecompile.modexp(S, E, N);
    }
}
