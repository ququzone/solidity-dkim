// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DkimKeys} from "./DkimKeys.sol";

contract DkimVerifier {
    DkimKeys private keys;

    constructor(address _keys) {
        keys = DkimKeys(_keys);
    }
}
