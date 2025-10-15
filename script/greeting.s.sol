// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {greeting} from "../src/greeting.sol";

contract greetingScript is Script {

    

    function run() external returns(greeting) {
        uint256 deployedPrivateKey = vm.envUint("PRIVATE_KEY");
        string memory initialGreeting = "HELOOOO";
        vm.startBroadcast(deployedPrivateKey);

        greeting greetingcontract = new greeting(initialGreeting);

        vm.stopBroadcast();

        return greetingcontract;
    }
}
