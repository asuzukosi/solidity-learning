pragma solidity ^0.5.0;
contract SolidityTest {
   constructor() public{
   }
   function getResult() public view returns(uint){
       // this is a comment similar to c++
       /*
            This is a mutli
                      line
                      comment
            also similar to c++
        */

    
    //   address x = 0x212;
    //   address myAddress = this;
    //   if (x.balance < 10 && myAddress.balance >= 10) x.transfer(10);


      uint a = 1; // defining a vairable of type uint
      uint b = 2; 
      uint result = a + b; // storing result of operation in a variable result
      return result; // returning result variable
   }
}