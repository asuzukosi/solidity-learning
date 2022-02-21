// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.4.0 <0.8.13; // pragma directives define some rules for 
                                 // the smart contract, eg here they are telling the contract to use some specific versions
contract SimpleStorage {
   uint storedData;
   function set(uint x) public {
      storedData = x;
   }
   function get() public view returns (uint) {
      return storedData;
   }
}
