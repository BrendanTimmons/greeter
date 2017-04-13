pragma solidity ^0.4.0;

contract GuestBook {
    address creator;
    string message;

    function GuestBook(string _message) public {
        creator = msg.sender;
        message = _message;
    }
    
    function readMsg() constant returns (string){
        return message;
    }

    function writeMessage(string _newmessage){
        message = _newmessage;
    }

    // kill to recover funds
    
    function kill(){ 
        if (msg.sender == creator)
            suicide(creator);  
    }
}
