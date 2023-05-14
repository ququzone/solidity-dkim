// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DkimVerifier.sol";
import "../src/DkimKeys.sol";

contract DkimVerifierTest is Test {
    DkimVerifier public verifier;
    DkimKeys public keys;

    function setUp() public {
        keys = new DkimKeys();
        verifier = new DkimVerifier(address(keys));
    }

    function testExtractInfo() public {
        bytes memory data =
            hex"0000002f0000000f000000710000000566726f6d3a223d3f676231383033303f423f30653752703861393f3d22203c717571757a6f6e654071712e636f6d3e0d0a746f3a223d3f676231383033303f423f624756763f3d22203c6c656f40696f7465782e696f3e0d0a7375626a6563743a68656c6c6f0d0a646174653a4672692c2035204d617920323032332032303a34333a3138202b303830300d0a646b696d2d7369676e61747572653a763d313b20613d7273612d7368613235363b20633d72656c617865642f72656c617865643b20643d71712e636f6d3b20733d733230313531323b20743d313638333239303539393b2062683d346b322f5952756177664f704943504f4f6f4672796458433865684851675a30515331333176372b6a4c593d3b20683d46726f6d3a546f3a5375626a6563743a446174653b20623d";
        bytes memory from = verifier.from(data);
        assertEq(from, abi.encodePacked("ququzone@qq.com"));

        bytes memory subject = verifier.subject(data);
        assertEq(subject, abi.encodePacked("hello"));

        bytes32 hash = verifier.hash(data);
        assertEq(hash, hex"86ca54d1fc1493f3d9e8865db9734886697d229b8544eaedeca53f37995b7fee");
    }
}
