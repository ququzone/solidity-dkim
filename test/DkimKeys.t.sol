// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DkimKeys.sol";

contract CounterTest is Test {
    DkimKeys public keys;

    function setUp() public {
        keys = new DkimKeys();
    }
}
