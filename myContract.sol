pragma solidity ^0.5.0;

contract MyContract {
    string constant value;
    bool public myBool = true;
    uint public myUint = 1;
    int public myInt = -1;

    // using enums in solidity
    enum State {Waiting, Ready, Active}

    State public state;

    // Working with structs in solidity
    struct Person {
        string _firstName;
        string _lastName;
    }

    Person[] public people;
    contructor(){
        value = "My cool Value";
        state = State.Active;
    }
    function getValue() public view returns(string memory){
        return value;
    }

    function setValue(string memory _value) public {
        value = _value;
    }
}