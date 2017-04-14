pragma solidity ^0.4.0;

contract mortal {
    address creator;

    function mortal(){ 
        creator = msg.sender; 
    }

    function kill(){ 
        if (msg.sender == creator) suicide(creator);  
    }
}

contract greeter is mortal{
    string greeting;

    function greeter(string _greeting) public {
        greeting = _greeting;
    }

    function greet() constant returns (string){
        return greeting;
    }

    //function writeMessage(string _newmessage){
    //    message = _newmessage;
    //}
}

