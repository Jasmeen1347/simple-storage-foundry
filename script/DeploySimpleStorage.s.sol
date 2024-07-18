// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";


contract DeploySimpleStorage is Script {
  function run() external returns (SimpleStorage) {
    vm.startBroadcast();
    SimpleStorage simpleStorage = new SimpleStorage();

    vm.stopBroadcast();
  }
}

// anvil
// forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80