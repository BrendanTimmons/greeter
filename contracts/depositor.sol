pragma solidity ^0.4.0;

contract depositor {
  uint public balance;

  function currBalance() {
    balance = 1000;
  }

  function deposit(uint _value) returns (uint _newValue){
    balance += _value;
    return balance;
  }
}
