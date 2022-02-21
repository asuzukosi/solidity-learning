pragma solidity ^0.5.0;

contract MyContract {
   // create custom modifier
    address owner;
    uint256 openingTime = 1645486971;
    modifier onlyOwner() {
      require(msg.sender == owner);
       _ ;
    }
    modifier onlyWhileOpen(){
       require(block.timestamp >= openingTime);
       _ ;
    }
    string public value;
    enum State {
       Waiting, 
       Ready, 
       Active
   }
    struct Person {
       uint _id;
       string _firstName;
       string _lastName;
    }
    State public state;
   //  Person[] public people;
    mapping(uint => Person) public people;
    uint public peopleCount;

    constructor() public {
       value = "My cool value";
       state = State.Waiting;
       owner = msg.sender;
    }

    function getValue() public view returns (string memory){
       return value;
    }

    function setAsReady() public {
       state = State.Ready;
    }
   
    function setAsActive() public{
       state = State.Active;
    }

    function setValue(string memory _value) public {
        value = _value;
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner onlyWhileOpen {
       peopleCount += 1;
       people[peopleCount]  = Person(peopleCount, _firstName, _lastName);
       
    }
   // Using custom modifiers in solidity
    
}