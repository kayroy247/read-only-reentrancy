// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import {Hack, Target} from "../src/Hack.sol";

contract HackTest is Test {
    Hack public hack;
    Target public target;

    function setUp() public {
        target = new Target();
        hack = new Hack(address(target));
    }

    function testPwn() public {
        hack.setup{value: 10 * 1e18}();
        hack.pwn{value: 1000 * 1e18}();
    }
}
