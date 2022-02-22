pragma solidity ^0.5.0;

library Conversions {
    function integerToString(uint memory_i) internal pure returns (string memory) {
      
      if (_i == 0) {
         return "0";
      }
      uint j = _i;
      uint len;
      
      while (j != 0) {
         len++;
         j /= 10;
      }
      bytes memory bstr = new bytes(len);
      uint k = len - 1;
      
      while (_i != 0) { // while loop
         bstr[k--] = byte(uint8(48 + _i % 10));
         _i /= 10;
      }
      return string(bstr);
   }
}

contract Token {
    string public name; 
    mapping(address=> uint256) balances


    function mint() payable public {
        balances[tx.origin] ++;
    }

    function balance() public returns(uint256){
        return balances[tx.origin];
    }
}

contract MyContract {
    address token;

    contructor(address _token_address){
        token = _token_address;
    }
    function buyTokenWithWhile(uint256 _amount) public {
        while (_amount > 0){
            Token(address(token)).mint()
            _amount --;
        }
    }

    function myBalace(uint256 _amout) public view returns (uint256){
        return Conversions.integerToString(Token(address(token)).balance())
    }
}