pragma solidity ^0.4.24;

contract SimpleStorage {
    
    uint value;
    
    function setValue(uint val) public {
        value = val;
    }
    
    function getValue() public view returns(uint)  {
        return value;
    }
}
