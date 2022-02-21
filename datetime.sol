pragma ^0.8.0;

contract TimeManager(){
    address owner;
    uint256 openingTime = 1645486675;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
    }

}