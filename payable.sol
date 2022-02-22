pragma solidity ^0.5.0;

contract MyContract {
   // transacting with ether on the smart contract
   mapping(address => uint256) public balances;
   address payable wallet;
   
   // using events in solidity
   // events of a smart contract are stored in the logs of the contract
   // and can be viewed at any later point in time
   event Purchase(
       address _buyer;
       uint256 _amount;
   );
   constructor(address payable _wallet) public {
      wallet = _wallet;
   }

   function buyToken(uint256 _numTokens) public payable{
      // buy a token
      // send ether to the wallet
      wallet.transfer(msg.value);
      balances[msg.sender] += _numTokens;
      emit Purchase(msg.sender, _numTokens )
   }

   function myBalance() public view returns(uint){
      return balances[msg.sender];
   }
}