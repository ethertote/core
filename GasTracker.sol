// Ethertote - Gas Tracker
// 31.07.18

// ----------------------------------------------------------------------------
// Oracle queries cost gas, so the gas fees will be paid for from the total 
// eth collected during the game, and sent to the contracts that use 
// oracles to cover the gas fees
// ----------------------------------------------------------------------------

pragma solidity 0.4.24;

// ----------------------------------------------------------------------------
// Imported contracts
// ----------------------------------------------------------------------------

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
    
    function randomNumberAddress() public pure returns(address) {}
}

contract PotManager {
    function processPayoutAddress() public pure returns(address) {}
    function masterUpdaterAddress_backend() public pure returns(address) {}
}


contract CryptoPrice {
    function gasSpent() public pure returns (uint) {}
}


contract Random {
    function totalGasUsed() public pure returns (uint) {}
}

contract ProcessPayout {
    function startBalance() public pure returns (uint) {}
    function endBalance() public pure returns (uint) {}
    function totalGasUsed() public pure returns (uint) {}
}
// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------



// MAIN CONTRACT
contract GasTracker { 
    
    // VARIABLES
    
    address public admin;
    address public thisContractAddress;
    
    address public masterUpdaterAddress_backend;
    
    address public priceManagerAddress;
    address public potManagerAddress;
    
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
    
    //////////////////////////////////////////
    
    // MODIFIERS
    modifier onlyAdmin { 
        require(msg.sender == admin); 
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
    
    // EVENTS
    event Deployed(string text, uint);
    event AddressUpdated(string, address _address, uint);
    event Address_1_13_Updated(string, uint);
    event Address_14_25_Updated(string, uint);
    
    // ENUMS
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
    
    
    // CONSTRUCTOR
    constructor () public {   
        admin = msg.sender;   
        thisContractAddress = address(this);
        
        emit Deployed("Ethertote - Gas Tracker contract deployed:", block.timestamp);

        pricemanager = PriceManager(priceManagerAddress);
        potmanager = PotManager(potManagerAddress);
        random = Random(randomNumberAddress);
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
    
    
    // Main functions //
    

    // ADMIN 
    function setAdminAddress(address _address) onlyAdmin public {
        admin = address(_address);
    }


   function setAllAddresses(address Price, address Pot) onlyAdmin public {
        priceManagerAddress = address(Price);
        potManagerAddress = address(Pot);
        
        updateReferences();
    }
    
    
    function updateReferences() remoteControl public {    
        if (potManagerAddress != 0x0) {
            potmanager = PotManager(potManagerAddress);
            processPayoutAddress = potmanager.processPayoutAddress();
            masterUpdaterAddress_backend = potmanager.masterUpdaterAddress_backend();
        }

        if (processPayoutAddress != 0x0) {
            processpayout = ProcessPayout(processPayoutAddress);
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
        
        if (randomNumberAddress != 0x0) { 
            random = Random(randomNumberAddress); 
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
}


    function showGasSpentCryptoPriceContract01() public view returns(uint) { 
        return cp01.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract02() public view returns(uint) { 
        return cp02.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract03() public view returns(uint) { 
        return cp03.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract04() public view returns(uint) { 
        return cp04.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract05() public view returns(uint) { 
        return cp05.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract06() public view returns(uint) { 
        return cp06.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract07() public view returns(uint) { 
        return cp07.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract08() public view returns(uint) { 
        return cp08.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract09() public view returns(uint) { 
        return cp09.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract10() public view returns(uint) { 
        return cp10.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract11() public view returns(uint) { 
        return cp11.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract12() public view returns(uint) {
        return cp12.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract13() public view returns(uint) { 
        return cp13.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract14() public view returns(uint) { 
        return cp14.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract15() public view returns(uint) { 
        return cp15.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract16() public view returns(uint) { 
        return cp16.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract17() public view returns(uint) { 
        return cp17.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract18() public view returns(uint) { 
        return cp18.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract19() public view returns(uint) { 
        return cp19.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract20() public view returns(uint) { 
        return cp20.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract21() public view returns(uint) { 
        return cp21.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract22() public view returns(uint) { 
        return cp22.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract23() public view returns(uint) { 
        return cp23.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract24() public view returns(uint) { 
        return cp24.gasSpent(); 
    }
    
    function showGasSpentCryptoPriceContract25() public view returns(uint) { 
        return cp25.gasSpent(); 
    }

///////////////////////////////////////////////////////////////////////////////


    function showGasSpentRandomNumberContract() public view returns(uint) { 
        return random.totalGasUsed(); 
    }


    function showGasSpentProcessPayoutContract() public view returns(uint) { 
        return processpayout.totalGasUsed(); 
    }



// ----------------------------------------------------------------------------
// This method can be used by admin to extract Eth accidentally 
// sent to this smart contract.
// ----------------------------------------------------------------------------
    function ClaimEth() onlyAdmin public {
        address(admin).transfer(address(this).balance);

    }



}
