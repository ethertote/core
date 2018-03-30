pragma solidity ^0.4.20;

// Ethertote.com solidity contract address calculator

// used to calculate contract addresses before being deployed
// to use calculator simply deploy the contract and 
// then supply a nonce value (must be less than 128), followed by a comma, 
// then the sending address.
// For example:  5, 0xfa8cc96e2e8304c59285aff8b54a5d5e9112321c
// which will give you the contract address of the 5th deployed
// contract sent from address 0xfa8cc96e2e8304c59285aff8b54a5d5e9112321c
// You can check the last current nonce in Etherscan

contract contractAddressCalculator {
    

  function addressForNonce(uint8 nonce_value, address acct_addr) constant returns (address) {
    if (nonce_value <= 127)
    return address(keccak256(0xd6, 0x94, acct_addr, nonce_value));
	
	else throw;
	
  }


}
