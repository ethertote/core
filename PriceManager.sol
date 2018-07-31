// Ethertote - Price Manager
// 31.07.18

pragma solidity 0.4.24;

// IMPORT
contract Random {
    function randomNumber() public pure returns(uint) {}
    function requestRandomNumber() public payable {}
}



// MAIN CONTRACT
contract PriceManager { 
    
    // VARIABLES
    
    address public admin;
    address public thisContractAddress;
    
    address public priceStartAddress;
    address public pricePauseAddress;
    address public priceKillAddress;
    
    address public randomNumberAddress;
    
    address public updateVarsAddress;
    
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
    
    //////////////////////////////////////////
    
    uint public customGas = 320000;
    uint public preferredLoopTime = 600;
    uint public standardGameDuration = 60;
    uint public toteLatecomerDuration = 60;
    uint public finishPriceDuration = 60;
    
    //////////////////////////////////////////
    
    // MODIFIERS
    modifier onlyAdmin { 
        require(msg.sender == admin); 
        _; 
    }
    
    // EVENTS
    event Deployed(string text, uint);
    event AddressUpdated(string, address _address, uint);
    event Address_1_13_Updated(string, uint);
    event Address_14_25_Updated(string, uint);
    
    // ENUMS
    Random random;
    
    // CONSTRUCTOR
    constructor () public {   
        admin = msg.sender;   
        emit Deployed("Ethertote - Price Manager contract deployed:", block.timestamp);
        thisContractAddress = address(this);
        
        random = Random(randomNumberAddress);        
    }
    
    // FALLBACK
    function () private payable {}
    
    
    // Main functions //

    // ADMIN 
    function setAdminAddress(address _address) onlyAdmin public {
        admin = address(_address);
    }


    // RANDOM NUMBER
    function setRandomNumberAddress(address _address) onlyAdmin public {
        randomNumberAddress = address(_address);
        random = Random(randomNumberAddress);
    }
    
    function showRandomNumber() public view returns(uint) {
        if(randomNumberAddress == 0x0) { return 60; }
        else return random.randomNumber();
    }
    
    
    // CUSTOM GAS
    function setCustomGas(uint _customgas) onlyAdmin public {
        customGas = uint(_customgas);
    }
    
    // DURATIONS
    function setPreferredLoopStandardTLCFPDurationValues(
        uint _preferredloop,
        uint _standard,
        uint _tlc,
        uint _finishprice
        ) onlyAdmin public {
        preferredLoopTime = uint(_preferredloop);
        standardGameDuration = uint(_standard);
        toteLatecomerDuration = uint(_tlc);
        finishPriceDuration = uint(_finishprice);
    }
    
    // for testing over 12 hour period use "43200","21600","10800","3600"
    

    // PRICE START PAUSE KILL RESTART
    function setStartPauseKill(
        address _start, 
        address _pause, 
        address _kill 
        ) onlyAdmin public {
            priceStartAddress = address(_start);
            pricePauseAddress = address(_pause);
            priceKillAddress = address(_kill);            
        }


    // UPDATE VARS
    function setUpdateVarsAddress(address _address) onlyAdmin public {
        updateVarsAddress = address(_address);
    }

    // PRICE START
    function setPriceStartAddress(address _address) onlyAdmin public {
        priceStartAddress = address(_address);
    }
   
    // PRICE PAUSE
    function setPricePauseAddress(address _address) onlyAdmin public {
        pricePauseAddress = address(_address);
    }

    // PRICE KILL
    function setPriceKillAddress(address _address) onlyAdmin public {
        priceKillAddress = address(_address);
        
    }

    
    // CRYPTO PRICE 01-13 (Bulk Update)
    function updateCryptoPriceAddress_1_to_13(
	address _address01,
	address _address02,
	address _address03,
	address _address04,
	address _address05,
	address _address06,
	address _address07,
	address _address08,
	address _address09,
	address _address10,
	address _address11,
	address _address12,
	address _address13
	) 
	onlyAdmin public { 
        (
        cryptoPriceAddress01 = address(_address01),
		cryptoPriceAddress02 = address(_address02),
		cryptoPriceAddress03 = address(_address03),
		cryptoPriceAddress04 = address(_address04),
		cryptoPriceAddress05 = address(_address05),
		cryptoPriceAddress06 = address(_address06),
		cryptoPriceAddress07 = address(_address07),
		cryptoPriceAddress08 = address(_address08),
		cryptoPriceAddress09 = address(_address09),
		cryptoPriceAddress10 = address(_address10),
		cryptoPriceAddress11 = address(_address11),
		cryptoPriceAddress12 = address(_address12),
		cryptoPriceAddress13 = address(_address13)
		);
	
        emit Address_1_13_Updated("updated all CryptoPriceAddresses:", block.timestamp);
    }
    
    // CRYPTO PRICE 14-25 (Bulk Update)
    function updateCryptoPriceAddress_14_to_25(

	address _address14,
	address _address15,
	address _address16,
	address _address17,
	address _address18,
	address _address19,
	address _address20,
	address _address21,
	address _address22,
	address _address23,
	address _address24,
	address _address25
	) 
	onlyAdmin public { 
        (
		cryptoPriceAddress14 = address(_address14),
		cryptoPriceAddress15 = address(_address15),
		cryptoPriceAddress16 = address(_address16),
		cryptoPriceAddress17 = address(_address17),
		cryptoPriceAddress18 = address(_address18),
		cryptoPriceAddress19 = address(_address19),
		cryptoPriceAddress20 = address(_address20),
		cryptoPriceAddress21 = address(_address21),
		cryptoPriceAddress22 = address(_address22),
		cryptoPriceAddress23 = address(_address23),
		cryptoPriceAddress24 = address(_address24),
		cryptoPriceAddress25 = address(_address25));
		
        emit Address_14_25_Updated("updated all CryptoPriceAddresses:", block.timestamp);
    }
      
    function updateCryptoPriceAddress01(address _address) onlyAdmin public { 
        cryptoPriceAddress01 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress01 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress02(address _address) onlyAdmin public { 
        cryptoPriceAddress02 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress02 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress03(address _address) onlyAdmin public { 
        cryptoPriceAddress03 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress03 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress04(address _address) onlyAdmin public { 
        cryptoPriceAddress04 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress04 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress05(address _address) onlyAdmin public { 
        cryptoPriceAddress05 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress05 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress06(address _address) onlyAdmin public { 
        cryptoPriceAddress06 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress06 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress07(address _address) onlyAdmin public { 
        cryptoPriceAddress07 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress07 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress08(address _address) onlyAdmin public { 
        cryptoPriceAddress08 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress08 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress09(address _address) onlyAdmin public { 
        cryptoPriceAddress09 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress09 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress10(address _address) onlyAdmin public { 
        cryptoPriceAddress10 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress10 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress11(address _address) onlyAdmin public { 
        cryptoPriceAddress11 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress11 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress12(address _address) onlyAdmin public { 
        cryptoPriceAddress12 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress12 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress13(address _address) onlyAdmin public { 
        cryptoPriceAddress13 = address(_address);
       emit AddressUpdated("updated cryptoPriceAddress13 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress14(address _address) onlyAdmin public { 
        cryptoPriceAddress14 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress14 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress15(address _address) onlyAdmin public { 
        cryptoPriceAddress15 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress15 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress16(address _address) onlyAdmin public { 
        cryptoPriceAddress16 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress16 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress17(address _address) onlyAdmin public { 
        cryptoPriceAddress17 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress17 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress18(address _address) onlyAdmin public { 
        cryptoPriceAddress18 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress18 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress19(address _address) onlyAdmin public { 
        cryptoPriceAddress19 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress19 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress20(address _address) onlyAdmin public { 
        cryptoPriceAddress20 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress20 to:", _address, block.timestamp);
    }
    
     function updateCryptoPriceAddress21(address _address) onlyAdmin public { 
        cryptoPriceAddress21 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress21 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress22(address _address) onlyAdmin public { 
        cryptoPriceAddress22 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress22 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress23(address _address) onlyAdmin public { 
        cryptoPriceAddress23 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress23 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress24(address _address) onlyAdmin public { 
        cryptoPriceAddress24 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress24 to:", _address, block.timestamp);
    }
    
    function updateCryptoPriceAddress25(address _address) onlyAdmin public { 
        cryptoPriceAddress25 = address(_address);
        emit AddressUpdated("updated cryptoPriceAddress25 to:", _address, block.timestamp);
    }
    

// ----------------------------------------------------------------------------
// This method can be used by admin to extract Eth accidentally 
// sent to this smart contract.
// ----------------------------------------------------------------------------
    function ClaimEth() onlyAdmin public {
        address(admin).transfer(address(this).balance);

    }

}
