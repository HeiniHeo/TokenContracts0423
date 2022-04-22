pragma solidity ^0.4.16;

contract WalletVisibleToken {
    mapping (address => uint256) public balanceOf;

    event Transfer(address _from, address _to, uint _value);

    function WalletVisibleTokenf(uint256 initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
    }

    function transfer(address _to, uint256 _value) public {
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        Transfer(msg.sender,_to,_value);
    }
}