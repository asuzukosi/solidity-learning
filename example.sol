pragma solidity ^0.5.0;
contract SolidityTest {
   constructor() public{
   }
   function getResult() public view returns(uint){
      uint a = 1; // defining a vairable of type uint
      uint b = 2; 
      uint result = a + b; // storing result of operation in a variable result
      return result; // returning result variable
   }
}