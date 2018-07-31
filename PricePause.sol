pragma solidity 0.4.24;

// Ethertote - CryptoPrice Game Pause 
// 31.07.18

// EXTERNAL CONTRACTS
contract PriceManager { 
    function thisContractAddress() public pure returns(address) {} 
    
    function randomNumberAddress() public pure returns(address) {}
    
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
  
contract PotManager { 
    function thisContractAddress() public pure returns(address) {} 
    
    function processPayoutAddress() public pure returns(address) {}
    function masterUpdaterAddress_backend() public pure returns(address) {}
}

contract Random {
    function startRandomNumberCall() public pure {}
    function stopRandomNumberCall() public pure {}
}

contract ProcessPayout {
    // function startProcessPayout() public pure {}
    function stopProcessPayout() public pure {}
}
  
  
contract CryptoPrice { function pauseGame() public pure {} }


////////////////////////////////////////////////////////////////////////////////


// MAIN CONTRACT

contract PricePause { 
     
    // stored address variables
    address public admin;
    address public thisContractAddress;
    
    address public priceManagerAddress;
    address public potManagerAddress;
    address public masterUpdaterAddress_backend;
    
    address public randomNumberAddress;
    
    address public processPayoutAddress;
    
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

    // used for call functions to contract
    PriceManager pricemanager;
    PotManager potmanager;
    ProcessPayout processpayout;
    
    Random random;
    
    CryptoPrice cp01; 
    CryptoPrice cp02; 
    CryptoPrice cp03; 
    CryptoPrice cp04;
    CryptoPrice cp05; 
    CryptoPrice cp06; 
    CryptoPrice cp07; 
    CryptoPrice cp08;
    CryptoPrice cp09; 
    CryptoPrice cp10; 
    CryptoPrice cp11; 
    CryptoPrice cp12; 
    CryptoPrice cp13; 
    CryptoPrice cp14;
    CryptoPrice cp15; 
    CryptoPrice cp16; 
    CryptoPrice cp17; 
    CryptoPrice cp18;
    CryptoPrice cp19; 
    CryptoPrice cp20; 
    CryptoPrice cp21; 
    CryptoPrice cp22; 
    CryptoPrice cp23; 
    CryptoPrice cp24;
    CryptoPrice cp25; 


    // EVENTS
    event Deployed(string, uint);
    event ContractsStart(string, uint);


    // MODIFIERS
    modifier onlyAdmin { 
        require(
            msg.sender == admin
        ); 
        _; 
    }
    
    modifier remoteControl {
        require(
            msg.sender == admin ||
            msg.sender == thisContractAddress ||
            msg.sender == masterUpdaterAddress_backend
        );
        _;
    }

    
    // CONSTRUCTOR FUNCTION
        
    constructor() public {   
        admin = msg.sender;
        thisContractAddress = address(this);
        emit Deployed("Ethertote - PricePause contract deployed:", block.timestamp);

        pricemanager = PriceManager(priceManagerAddress);
        potmanager = PotManager(potManagerAddress);
		
		processpayout = ProcessPayout(processPayoutAddress);
		    
        cp01 = CryptoPrice(cryptoPriceAddress01); 
        cp02 = CryptoPrice(cryptoPriceAddress02); 
        cp03 = CryptoPrice(cryptoPriceAddress03); 
        cp04 = CryptoPrice(cryptoPriceAddress04);
		    cp05 = CryptoPrice(cryptoPriceAddress05); 
        cp06 = CryptoPrice(cryptoPriceAddress06); 
        cp07 = CryptoPrice(cryptoPriceAddress07); 
        cp08 = CryptoPrice(cryptoPriceAddress08);
		    cp09 = CryptoPrice(cryptoPriceAddress09); 
        cp10 = CryptoPrice(cryptoPriceAddress10); 			
		    cp11 = CryptoPrice(cryptoPriceAddress11); 
        cp12 = CryptoPrice(cryptoPriceAddress12); 
        cp13 = CryptoPrice(cryptoPriceAddress13); 
        cp14 = CryptoPrice(cryptoPriceAddress14);
		    cp15 = CryptoPrice(cryptoPriceAddress15); 
        cp16 = CryptoPrice(cryptoPriceAddress16); 
        cp17 = CryptoPrice(cryptoPriceAddress17); 
        cp18 = CryptoPrice(cryptoPriceAddress18);
		    cp19 = CryptoPrice(cryptoPriceAddress19); 
        cp20 = CryptoPrice(cryptoPriceAddress20);			
		    cp21 = CryptoPrice(cryptoPriceAddress21); 
        cp22 = CryptoPrice(cryptoPriceAddress22); 
        cp23 = CryptoPrice(cryptoPriceAddress23); 
        cp24 = CryptoPrice(cryptoPriceAddress24);
		    cp25 = CryptoPrice(cryptoPriceAddress25);
    }
        
    // FALLBACK
        function () private payable {}
        
        
    // MAIN FUNCTIONS
    
    function setAllAddresses(address Price, address Pot) onlyAdmin public {
        priceManagerAddress = address(Price);
        potManagerAddress = address(Pot);

        updateReferences();
    }
    

    function updateReferences() remoteControl public {    
        if (potManagerAddress != 0x0) {
            potmanager = PotManager(potManagerAddress);
            masterUpdaterAddress_backend = potmanager.masterUpdaterAddress_backend();
            processPayoutAddress = potmanager.processPayoutAddress();
        }

        if (priceManagerAddress != 0x0) {
            pricemanager = PriceManager(priceManagerAddress);
            
            randomNumberAddress = pricemanager.randomNumberAddress();
            
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
            
        if (processPayoutAddress != 0x0) {
            processpayout = ProcessPayout(processPayoutAddress);
        }
        
            if (cryptoPriceAddress01 != 0x0) { cp01 = CryptoPrice(cryptoPriceAddress01); } 
            if (cryptoPriceAddress02 != 0x0) { cp02 = CryptoPrice(cryptoPriceAddress02); } 
            if (cryptoPriceAddress03 != 0x0) { cp03 = CryptoPrice(cryptoPriceAddress03); } 
            if (cryptoPriceAddress04 != 0x0) { cp04 = CryptoPrice(cryptoPriceAddress04); }
            if (cryptoPriceAddress05 != 0x0) { cp05 = CryptoPrice(cryptoPriceAddress05); } 
            if (cryptoPriceAddress06 != 0x0) { cp06 = CryptoPrice(cryptoPriceAddress06); } 
            if (cryptoPriceAddress07 != 0x0) { cp07 = CryptoPrice(cryptoPriceAddress07); } 
            if (cryptoPriceAddress08 != 0x0) { cp08 = CryptoPrice(cryptoPriceAddress08); }
            if (cryptoPriceAddress09 != 0x0) { cp09 = CryptoPrice(cryptoPriceAddress09); } 
            if (cryptoPriceAddress10 != 0x0) { cp10 = CryptoPrice(cryptoPriceAddress10); } 
            if (cryptoPriceAddress11 != 0x0) { cp11 = CryptoPrice(cryptoPriceAddress11); } 
            if (cryptoPriceAddress12 != 0x0) { cp12 = CryptoPrice(cryptoPriceAddress12); } 
            if (cryptoPriceAddress13 != 0x0) { cp13 = CryptoPrice(cryptoPriceAddress13); } 
            if (cryptoPriceAddress14 != 0x0) { cp14 = CryptoPrice(cryptoPriceAddress14); }
            if (cryptoPriceAddress15 != 0x0) { cp15 = CryptoPrice(cryptoPriceAddress15); } 
            if (cryptoPriceAddress16 != 0x0) { cp16 = CryptoPrice(cryptoPriceAddress16); } 
            if (cryptoPriceAddress17 != 0x0) { cp17 = CryptoPrice(cryptoPriceAddress17); } 
            if (cryptoPriceAddress18 != 0x0) { cp18 = CryptoPrice(cryptoPriceAddress18); }
            if (cryptoPriceAddress19 != 0x0) { cp19 = CryptoPrice(cryptoPriceAddress19); } 
            if (cryptoPriceAddress20 != 0x0) { cp20 = CryptoPrice(cryptoPriceAddress20); } 
            if (cryptoPriceAddress21 != 0x0) { cp21 = CryptoPrice(cryptoPriceAddress21); } 
            if (cryptoPriceAddress22 != 0x0) { cp22 = CryptoPrice(cryptoPriceAddress22); } 
            if (cryptoPriceAddress23 != 0x0) { cp23 = CryptoPrice(cryptoPriceAddress23); } 
            if (cryptoPriceAddress24 != 0x0) { cp24 = CryptoPrice(cryptoPriceAddress24); }
            if (cryptoPriceAddress25 != 0x0) { cp25 = CryptoPrice(cryptoPriceAddress25); }
            
            if (randomNumberAddress != 0x0) {random = Random(randomNumberAddress); }
    }



    function pausePriceContracts() onlyAdmin public {
        if (processPayoutAddress != 0x0) {processpayout.stopProcessPayout();}
        
        if (randomNumberAddress != 0x0) {random.stopRandomNumberCall(); }
            
        if (cryptoPriceAddress01 != 0x0) {cp01.pauseGame();}
        if (cryptoPriceAddress02 != 0x0) {cp02.pauseGame();}
        if (cryptoPriceAddress03 != 0x0) {cp03.pauseGame();}
        if (cryptoPriceAddress04 != 0x0) {cp04.pauseGame();}
		    if (cryptoPriceAddress05 != 0x0) {cp05.pauseGame();}
        if (cryptoPriceAddress06 != 0x0) {cp06.pauseGame();}
        if (cryptoPriceAddress07 != 0x0) {cp07.pauseGame();}
        if (cryptoPriceAddress08 != 0x0) {cp08.pauseGame();}
		    if (cryptoPriceAddress09 != 0x0) {cp09.pauseGame();}
        if (cryptoPriceAddress10 != 0x0) {cp10.pauseGame();}
		    if (cryptoPriceAddress11 != 0x0) {cp11.pauseGame();}
        if (cryptoPriceAddress12 != 0x0) {cp12.pauseGame();}
        if (cryptoPriceAddress13 != 0x0) {cp13.pauseGame();}
        if (cryptoPriceAddress14 != 0x0) {cp14.pauseGame();}
		    if (cryptoPriceAddress15 != 0x0) {cp15.pauseGame();}
        if (cryptoPriceAddress16 != 0x0) {cp16.pauseGame();}
        if (cryptoPriceAddress17 != 0x0) {cp17.pauseGame();}
        if (cryptoPriceAddress18 != 0x0) {cp18.pauseGame();}
		    if (cryptoPriceAddress19 != 0x0) {cp19.pauseGame();}
        if (cryptoPriceAddress20 != 0x0) {cp20.pauseGame();}
		    if (cryptoPriceAddress21 != 0x0) {cp21.pauseGame();}
        if (cryptoPriceAddress22 != 0x0) {cp22.pauseGame();}
        if (cryptoPriceAddress23 != 0x0) {cp23.pauseGame();}
        if (cryptoPriceAddress24 != 0x0) {cp24.pauseGame();}
		    if (cryptoPriceAddress25 != 0x0) {cp25.pauseGame();}

        emit ContractsStart("CryptoPrice contracts paused:", block.timestamp);
    }
  
// ----------------------------------------------------------------------------
// This method can be used by admin to extract Eth accidentally 
// sent to this smart contract.
// ----------------------------------------------------------------------------
    function ClaimEth() onlyAdmin public {
        address(admin).transfer(address(this).balance);

    }  

}
