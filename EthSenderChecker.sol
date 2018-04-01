// Ethertote.com 
// send test eth to other accounts
// simply deploy contract from account you want to send from

pragma solidity ^0.4.20;

contract EthSenderChecker {
    
    // function EthSenderChecker() public payable {
        
    // }
    
    function getAContractBalance(address _addr) constant public returns(uint) {
      return _addr.balance;
    }
    
    function thisBalance() constant public returns(uint) {
        return this.balance;
    }
    

    function sendEth(address Ethreceiver) public payable {
        Ethreceiver.send(msg.value);
    }
    
}