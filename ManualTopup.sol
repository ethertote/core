// Ethertote - TopUp CryptoPrice contracts during testing
// 29.07.18

// Multiple values must be changed prior to deployment 

pragma solidity 0.4.24;

// IMPORTS
import "github.com/ethertote/core/SafeMath.sol";


// EXTERNAL CONTRACTS

contract PriceManager { 
    function cryptoPriceAddress01() public pure returns(address) {} 	  
    function cryptoPriceAddress02() public pure returns(address) {} 
    function cryptoPriceAddress03() public pure returns(address) {} 
    function cryptoPriceAddress04() public pure returns(address) {} 
    function cryptoPriceAddress05() public pure returns(address) {} 
    function cryptoPriceAddress06() public pure returns(address) {} 
    function cryptoPriceAddress07() public pure returns(address) {} 
    function cryptoPriceAddress08() public pure returns(address) {} 
    function cryptoPriceAddress09() public pure returns(address) {} 
    function cryptoPriceAddress10() public pure returns(address) {} 
    function cryptoPriceAddress11() public pure returns(address) {} 
    function cryptoPriceAddress12() public pure returns(address) {} 
    function cryptoPriceAddress13() public pure returns(address) {} 
    function cryptoPriceAddress14() public pure returns(address) {} 
    function cryptoPriceAddress15() public pure returns(address) {} 
    function cryptoPriceAddress16() public pure returns(address) {} 
    function cryptoPriceAddress17() public pure returns(address) {} 
    function cryptoPriceAddress18() public pure returns(address) {} 
    function cryptoPriceAddress19() public pure returns(address) {} 
    function cryptoPriceAddress20() public pure returns(address) {} 
    function cryptoPriceAddress21() public pure returns(address) {} 
    function cryptoPriceAddress22() public pure returns(address) {} 
    function cryptoPriceAddress23() public pure returns(address) {} 
    function cryptoPriceAddress24() public pure returns(address) {} 
    function cryptoPriceAddress25() public pure returns(address) {} 
}


//////////////////////////////////////////////////////////////////////////////



// MAIN CONTRACT

contract ManualTopup {              
    using SafeMath for uint256;
       
    // SPECIAL VARIABLES 
    
    uint amountSet = 50000000000000000;    // equivalent to 0.05 Eth 
    address public admin;
    address public thisContractAddress;
    address public priceManagerAddress;      
    
    address public cryptoPriceAddress01;
    address public cryptoPriceAddress02;
    address public cryptoPriceAddress03;
    address public cryptoPriceAddress04;
    address public cryptoPriceAddress05;
    address public cryptoPriceAddress06;
    address public cryptoPriceAddress07;
    address public cryptoPriceAddress08;
    address public cryptoPriceAddress09;
    address public cryptoPriceAddress10;
    address public cryptoPriceAddress11;
    address public cryptoPriceAddress12;
    address public cryptoPriceAddress13;
    address public cryptoPriceAddress14;
    address public cryptoPriceAddress15;
    address public cryptoPriceAddress16;
    address public cryptoPriceAddress17;
    address public cryptoPriceAddress18;
    address public cryptoPriceAddress19;
    address public cryptoPriceAddress20;
    address public cryptoPriceAddress21;
    address public cryptoPriceAddress22;
    address public cryptoPriceAddress23;
    address public cryptoPriceAddress24;
    address public cryptoPriceAddress25;
    
    
    
    // ENUMS
    PriceManager pricemanager;
    
    // MODIFIERS
    modifier onlyAdmin { 
        require(msg.sender == admin
        ); 
        _; 
    }
    
    modifier remoteControl {
        require(
        msg.sender == admin ||
        msg.sender == thisContractAddress
        );
        _;
    }
    
    
    // CONSTRUCTOR FUNCTION
    
    constructor() public {    										    
        
        admin = msg.sender;  
        thisContractAddress = address(this);

	      pricemanager = PriceManager(priceManagerAddress); 
    }
    
    
    // FALLBACK
    function () private payable {}
    
    
    // MAIN FUNCTIONS

    
	function setPriceManagerAddress(address Price) onlyAdmin public {
	        priceManagerAddress = address(Price);
	        updateReferences();
	}
	
	
	 function updateReferences() remoteControl public {
            if (priceManagerAddress != 0x0) { 
                pricemanager = PriceManager(priceManagerAddress); 
                cryptoPriceAddress01 = pricemanager.cryptoPriceAddress01();
                cryptoPriceAddress02 = pricemanager.cryptoPriceAddress02();
                cryptoPriceAddress03 = pricemanager.cryptoPriceAddress03();
                cryptoPriceAddress04 = pricemanager.cryptoPriceAddress04();
                cryptoPriceAddress05 = pricemanager.cryptoPriceAddress05();
                cryptoPriceAddress06 = pricemanager.cryptoPriceAddress06();
                cryptoPriceAddress07 = pricemanager.cryptoPriceAddress07();
                cryptoPriceAddress08 = pricemanager.cryptoPriceAddress08();
                cryptoPriceAddress09 = pricemanager.cryptoPriceAddress09();
                cryptoPriceAddress10 = pricemanager.cryptoPriceAddress10();
                cryptoPriceAddress11 = pricemanager.cryptoPriceAddress11();
                cryptoPriceAddress12 = pricemanager.cryptoPriceAddress12();
                cryptoPriceAddress13 = pricemanager.cryptoPriceAddress13();
                cryptoPriceAddress14 = pricemanager.cryptoPriceAddress14();
                cryptoPriceAddress15 = pricemanager.cryptoPriceAddress15();
                cryptoPriceAddress16 = pricemanager.cryptoPriceAddress16();
                cryptoPriceAddress17 = pricemanager.cryptoPriceAddress17();
                cryptoPriceAddress18 = pricemanager.cryptoPriceAddress18();
                cryptoPriceAddress19 = pricemanager.cryptoPriceAddress19();
                cryptoPriceAddress20 = pricemanager.cryptoPriceAddress20();
                cryptoPriceAddress21 = pricemanager.cryptoPriceAddress21();
                cryptoPriceAddress22 = pricemanager.cryptoPriceAddress22();
                cryptoPriceAddress23 = pricemanager.cryptoPriceAddress23();
                cryptoPriceAddress24 = pricemanager.cryptoPriceAddress24();
                cryptoPriceAddress25 = pricemanager.cryptoPriceAddress25();
            }
        
     }
	
    
    function setTopupAmount(uint _value) onlyAdmin public {
        amountSet = uint(_value);
    }
    
    function AmountNeededForTopupInWei() public view returns(uint) {
        return amountSet.mul(25);
    }

    function topupCryptoPriceContracts() onlyAdmin public {
        require(address(this).balance > 0);
        require(address(this).balance >= amountSet * 25);
        
        address(cryptoPriceAddress01).transfer(amountSet);
        address(cryptoPriceAddress02).transfer(amountSet);
        address(cryptoPriceAddress03).transfer(amountSet);
        address(cryptoPriceAddress04).transfer(amountSet);
        address(cryptoPriceAddress05).transfer(amountSet);
        address(cryptoPriceAddress06).transfer(amountSet);
        address(cryptoPriceAddress07).transfer(amountSet);
        address(cryptoPriceAddress08).transfer(amountSet);
        address(cryptoPriceAddress09).transfer(amountSet);
        address(cryptoPriceAddress10).transfer(amountSet);
        address(cryptoPriceAddress11).transfer(amountSet);
        address(cryptoPriceAddress12).transfer(amountSet);
        address(cryptoPriceAddress13).transfer(amountSet);
        address(cryptoPriceAddress14).transfer(amountSet);
        address(cryptoPriceAddress15).transfer(amountSet);
        address(cryptoPriceAddress16).transfer(amountSet);
        address(cryptoPriceAddress17).transfer(amountSet);
        address(cryptoPriceAddress18).transfer(amountSet);
        address(cryptoPriceAddress19).transfer(amountSet);
        address(cryptoPriceAddress20).transfer(amountSet);
        address(cryptoPriceAddress21).transfer(amountSet);
        address(cryptoPriceAddress22).transfer(amountSet);
        address(cryptoPriceAddress23).transfer(amountSet);
        address(cryptoPriceAddress24).transfer(amountSet);
        address(cryptoPriceAddress25).transfer(amountSet);
    }

    function checkAContractBalance(address _address) public view returns(uint) {
        return address(_address).balance;
    }
    
    function thisContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    
// ----------------------------------------------------------------------------
// This method can be used by admin to extract Eth accidentally 
// sent to this smart contract.
// ----------------------------------------------------------------------------
    function ClaimEth() onlyAdmin public {
        address(admin).transfer(address(this).balance);

    }
        
}
