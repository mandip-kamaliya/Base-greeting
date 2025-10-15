// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Greeting} from "../src/greeting.sol";

contract deployGreeting is Script {

    

    function run() external returns(Greeting) {
        uint256 deployedPrivateKey = vm.envUint("PRIVATE_KEY");
        string memory initialGreeting = "HELOOOO";
        vm.startBroadcast(deployedPrivateKey);

        Greeting greetingcontract = new Greeting(initialGreeting);

        vm.stopBroadcast();

        return greetingcontract;
    }
}
