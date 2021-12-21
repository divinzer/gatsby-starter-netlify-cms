pragma solidity ^5.0.0;

interface ReceiverInterface{
    function onReceive() external {
        
    }
}

contract MyContract{
    function withdraw(uint amount) external {
        //Check if 'msg.sender' balance is enough
        //Send 'amount' token to ;msg.sender'
        ReceiverInterface(msg.sender).onReceive();
        //Decrease its balance
    }
}

contract Attacker{
    uint count = 0;

    function onReceive() external {
        if(time <9){
            count += 1;
            MyContract(0x...).withdraw((1 ether));
        }
    }
}