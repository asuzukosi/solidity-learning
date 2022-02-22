pragma solidity ^0.5.0;


// calling a smart contract from another
contract ERC20Token {
   string public name;
   mapping(address => uint256) public balances;

   function mint() public{
      // wallet.transfer(msg.value);
      balances[tx.origin] ++; 
   }

   function getBalance(address _address) public view returns(uint256){
      return balances[_address];
   }

}
contract MyContract {
   // transacting with ether on the smart contract
   mapping(address => uint256) public balances;
   address payable wallet;
   address token;

   event Purchase(
      address indexed _buyer,
      uint256 _amount
   );
   constructor(address payable _wallet, address _token) public {
      wallet = _wallet;
      token = _token;
   }

   function buyToken() public {
      // buy a token
      // send ether to the wallet
      ERC20Token(address(token)).mint();
      emit Purchase(msg.sender, 1);
   }

   function myBalance() public view returns(uint256){
      uint256 _balance = ERC20Token(address(token)).getBalance(msg.sender);
      return _balance;
   }
}