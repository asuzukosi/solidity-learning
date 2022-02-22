pragma solidity ^0.5.0;

contract Calculator{
    int256 public stateValue; 
    address owner;

    modifier onlyOwner () {
       require(msg.sender == owner);
       _;
    }

    constructor () public {
       owner = msg.sender;
      
    }

    function add(int256 a, int256 b) public pure returns(int256) {
        int256 result = a + b;
        return result;
    }

    function subtract(int256 a, int256 b) public pure returns(int256){
        return a - b;

    }

    function divide(int256 a, int256 b) public pure returns(int256){
        return a / b;
    }

    function multiply(int256 a, int256 b) public pure returns(int256){
        return a * b;
    }

    function modulus(int256 a, int256 b) public pure returns(int256){
        return a % b;
    }

    function incrementState(int256 value) public onlyOwner{
        stateValue += value;
    }

    function decrementState(int256 value) public onlyOwner{
        stateValue -= value;
    }

    function multiplyState(int256 value) public onlyOwner{
        stateValue *= value;
    }

    function divideState(int256 value) public onlyOwner{
        stateValue /= value;
    }

    function modulateState(int256 value) public onlyOwner{
        stateValue %= value;
    }
}