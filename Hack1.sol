pragma solidity ^0.4.24;

contract Hack1 {

  address public owner = msg.sender;

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function setOwner(address _newOwner) public{
    owner = _newOwner;
  }
  
  function () public payable {
  }


  function withdraw() onlyOwner public{
    require(address(this).balance > 0);
    msg.sender.transfer(address(this).balance);
  }

}
