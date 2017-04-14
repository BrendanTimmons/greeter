pragma solidity ^0.4.0;

contract bank {
    // Creating an owner state variable for this contract
    // if not done, nobody can control it.

    address public owner;

    // maps address uint values to balances
    mapping (address => uint) balances;

    function bank(){
        // msg.sender is the address invoking the function
        owner = msg.sender;

        // give the them some moneys
        balances[owner] = 1000;
    }

    function transfer(address _to, uint _value) returns (bool success){
        if (balances[msg.sender] < _value){
            return false;
        }

        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }

    function getBalance(address _user) constant returns (uint _balance){
        return balances[_user];
    }
}
