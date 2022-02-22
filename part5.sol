pragma solidity ^0.5.0;


// calling a smart contract from another
contract ERC20Token {
   string public name;
   mapping(address => uint256) public balances;

   constructor(string memory _name) public {
      name = _name;
   }

   function mint() public{
      // wallet.transfer(msg.value);
      balances[msg.sender] ++; 
   }

   function getBalance(address _address) public view returns(uint256){
      return balances[_address];
   }

}
contract MyToken is ERC20Token {
   string public name = "Werey Token";
   string public symbol;
   address[] public owners;
   uint256 ownerCount;

   constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
         symbol = _symbol;
   }

   function mint() public{
      super.mint();
      owners.push(msg.sender);
      ownerCount += 1;
   }

}