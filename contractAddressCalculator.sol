pragma solidity ^0.4.20;

// Ethertote.com solidity contract address calculator
// used to calculate contract address before being deployed
// to use simply deploy dummy contract then check its
// nonce value on Etherscan. Increment the nonce by 1 and supply to
// this contract to calculate the next contract address

contract contractAddressCalculator {
    
      address public firstDeployment;
    
  function addressForNonce(uint8 nonce) constant returns (address) {
    if (nonce <= 127)
    return address(sha3(0xd6, 0x94, address(this), nonce));
	
	else if (nonce >= 128 && nonce <= 257)
	return address(sha3(0xd7, 0x94, address(this), 0x81, nonce));
	
	else throw;
	
  }

  function contractAddressCalculator() payable {
    firstDeployment = addressForNonce(uint8(1));
    bool b = firstDeployment.send(msg.value);
  }
  
  

}