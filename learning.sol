pragma solidity ^0.5.0;

contract Learning {

    string public name = "Kosi";

    function getName() public view returns(string){
        return name;
    }
}