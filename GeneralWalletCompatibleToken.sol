pragma solidity ^0.4.16;

contract GeneralWalletCompatibleToken {
    string public name;
    string public symbol;
    uint8 public decimals;

    mapping (address => uint256) public balanceOf;
    
    event Transfer(address _from, address _to, uint _value);

    function GeneralWalletCompatibleTokenf(string _name, string _symbol,uint8 decimalUnits, uint256 initialSupply) public {
        name = _name;
        symbol = _symbol;
        decimals = decimalUnits;
        balanceOf[msg.sender] = initialSupply;
    }

    function transfer(address _to, uint256 _value) public {
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        Transfer(msg.sender,_to,_value);
    }
}