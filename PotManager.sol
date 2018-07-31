// Ethertote - Pot Manager
// 31.07.18

pragma solidity 0.4.24;

contract PotManager { 
        
    // Variables
    
    address public admin;
    address public thisContractAddress;
    
    address public tokenContractAddress;
    
    address public potProcessorCoreAddress;
    address public potProcessorAddress_01_05;
    address public potProcessorAddress_06_10;
    address public potProcessorAddress_11_15;
    address public potProcessorAddress_16_20;
    address public potProcessorAddress_21_25;
    
    address public cryptoWinnerRankAddress;
    
    address public masterRefundAddress;
    address public processPayoutAddress;

    address public tokenHolderClaimAddress;
    
    address public masterUpdaterCoreAddress;
    address public masterUpdaterAddress_pot;
    address public masterUpdaterAddress_backend;
    
    address public gasTrackerAddress;
    
    address public cryptoPotAddress01; 
    address public cryptoPotAddress02; 
    address public cryptoPotAddress03; 
    address public cryptoPotAddress04; 
    address public cryptoPotAddress05; 
    address public cryptoPotAddress06; 
    address public cryptoPotAddress07; 
    address public cryptoPotAddress08; 
    address public cryptoPotAddress09; 
    address public cryptoPotAddress10; 
    address public cryptoPotAddress11; 
    address public cryptoPotAddress12; 
    address public cryptoPotAddress13; 
    address public cryptoPotAddress14; 
    address public cryptoPotAddress15; 
    address public cryptoPotAddress16; 
    address public cryptoPotAddress17; 
    address public cryptoPotAddress18; 
    address public cryptoPotAddress19; 
    address public cryptoPotAddress20; 
    address public cryptoPotAddress21; 
    address public cryptoPotAddress22; 
    address public cryptoPotAddress23; 
    address public cryptoPotAddress24; 
    address public cryptoPotAddress25; 
    
    // Modifiers
    modifier onlyAdmin { 
        require(msg.sender == admin); 
        _; 
    }
    
    // Events
    event Deployed(string text, uint);
    event AddressUpdated(string, address _address, uint);
    event Address_1_13_Updated(string, uint);
    event Address_14_25_Updated(string, uint);
    
  
    // Constructor function
    constructor() public {    // Change constructor value
        admin = msg.sender;   
        emit Deployed("Ethertote - PotManager contract deployed:", block.timestamp);
        
        thisContractAddress = address(this);
        
    }
    
    // fallback function to top-up contract to cover gas costs if necessary
    function () private payable {}
    
    
    // MAIN FUNCTIONS
    

    // ADMIN 
    function setAdminAddress(address _address) onlyAdmin public {
        admin = address(_address);
    }


    // TOKEN CONTRACT
    function setTokenContractAddress(address _address) onlyAdmin public {
        tokenContractAddress = address(_address);
    }

    // MASTER REFUND
    function setMasterRefundAddress(address _address) onlyAdmin public {
        masterRefundAddress = address(_address);
    }
    
    // MASTER REFUND
    function setGasTrackerAddress(address _address) onlyAdmin public {
        gasTrackerAddress = address(_address);
    }


    // PROCESS PAYOUT
    function setProcessPayoutAddress(address _address) onlyAdmin public {
        processPayoutAddress = address(_address);
    }


    // POT PROCESSOR
    
    function setPotProcessorAddresses(
        address core, 
        address pp_01_05, 
        address pp_06_10,
        address pp_11_15,
        address pp_16_20,
        address pp_21_25
        ) 
        onlyAdmin public {
        potProcessorCoreAddress = address(core);
        potProcessorAddress_01_05 = address(pp_01_05);
        potProcessorAddress_06_10 = address(pp_06_10);
        potProcessorAddress_11_15 = address(pp_11_15);
        potProcessorAddress_16_20 = address(pp_16_20);
        potProcessorAddress_21_25 = address(pp_21_25);
    }
    
    function setPotProcessorCoreAddress(address _address) onlyAdmin public {
        potProcessorCoreAddress = address(_address);
    }
    
    function setPotProcessorAddress_01_05(address _address) onlyAdmin public {
        potProcessorAddress_01_05 = address(_address);
    }
    
    function setPotProcessorAddress_06_10(address _address) onlyAdmin public {
        potProcessorAddress_06_10 = address(_address);
    }
    
    function setPotProcessorAddress_11_15(address _address) onlyAdmin public {
        potProcessorAddress_11_15 = address(_address);
    }
    
    function setPotProcessorAddress_16_20(address _address) onlyAdmin public {
        potProcessorAddress_16_20 = address(_address);
    }
    
    function setPotProcessorAddress_21_25(address _address) onlyAdmin public {
        potProcessorAddress_21_25 = address(_address);
    }
    

    
    // CRYPTO WINNER RANK
    function setCryptoWinnerRankAddresses(address _address) onlyAdmin public {
        cryptoWinnerRankAddress = address(_address);
    }
    

    // TOKEN HOLDER CLAIM
    function setTokenHolderClaimAddress(address _address) onlyAdmin public {
        tokenHolderClaimAddress = address(_address);
    }


    // MASTER UPDATER
    function setMasterUpdaterAddresses(
        address core, 
        address pot,
        address backend
        ) 
        onlyAdmin public {
        masterUpdaterCoreAddress = address(core);
        masterUpdaterAddress_pot = address(pot);
        masterUpdaterAddress_backend = address(backend);
    }
    
    function setMasterUpdaterCoreAddress(address _address) onlyAdmin public {
        masterUpdaterCoreAddress = address(_address);
    }
    

    function setMasterUpdaterAddress_pot(address _address) onlyAdmin public {
        masterUpdaterAddress_pot = address(_address);
    }
    

    function setMasterUpdaterAddress_backend(address _address) onlyAdmin public {
        masterUpdaterAddress_backend = address(_address);
    }


    
    // CRYPTO POTS
    
  function updateCryptoPotAddress_1_to_13(
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
        cryptoPotAddress01 = address(_address01),
		cryptoPotAddress02 = address(_address02),
		cryptoPotAddress03 = address(_address03),
		cryptoPotAddress04 = address(_address04),
		cryptoPotAddress05 = address(_address05),
		cryptoPotAddress06 = address(_address06),
		cryptoPotAddress07 = address(_address07),
		cryptoPotAddress08 = address(_address08),
		cryptoPotAddress09 = address(_address09),
		cryptoPotAddress10 = address(_address10),
		cryptoPotAddress11 = address(_address11),
		cryptoPotAddress12 = address(_address12),
		cryptoPotAddress13 = address(_address13)
		);

		
        emit Address_1_13_Updated("updated all cryptoPotAddresses:", block.timestamp);
    }
    
   
    function updateCryptoPotAddress_14_to_25(

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
		cryptoPotAddress14 = address(_address14),
		cryptoPotAddress15 = address(_address15),
		cryptoPotAddress16 = address(_address16),
		cryptoPotAddress17 = address(_address17),
		cryptoPotAddress18 = address(_address18),
		cryptoPotAddress19 = address(_address19),
		cryptoPotAddress20 = address(_address20),
		cryptoPotAddress21 = address(_address21),
		cryptoPotAddress22 = address(_address22),
		cryptoPotAddress23 = address(_address23),
		cryptoPotAddress24 = address(_address24),
		cryptoPotAddress25 = address(_address25));
		
        emit Address_14_25_Updated("updated all cryptoPotAddresses:", block.timestamp);
    }
    
    
    function updateCryptoPotAddress01(address _address) onlyAdmin public { 
        cryptoPotAddress01 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress01 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress02(address _address) onlyAdmin public { 
        cryptoPotAddress02 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress02 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress03(address _address) onlyAdmin public { 
        cryptoPotAddress03 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress03 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress04(address _address) onlyAdmin public { 
        cryptoPotAddress04 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress04 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress05(address _address) onlyAdmin public { 
        cryptoPotAddress05 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress05 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress06(address _address) onlyAdmin public { 
        cryptoPotAddress06 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress06 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress07(address _address) onlyAdmin public { 
        cryptoPotAddress07 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress07 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress08(address _address) onlyAdmin public { 
        cryptoPotAddress08 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress08 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress09(address _address) onlyAdmin public { 
        cryptoPotAddress09 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress09 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress10(address _address) onlyAdmin public { 
        cryptoPotAddress10 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress10 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress11(address _address) onlyAdmin public { 
        cryptoPotAddress11 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress11 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress12(address _address) onlyAdmin public { 
        cryptoPotAddress12 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress12 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress13(address _address) onlyAdmin public { 
        cryptoPotAddress13 = address(_address);
      emit AddressUpdated("updated cryptoPotAddress13 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress14(address _address) onlyAdmin public { 
        cryptoPotAddress14 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress14 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress15(address _address) onlyAdmin public { 
        cryptoPotAddress15 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress15 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress16(address _address) onlyAdmin public { 
        cryptoPotAddress16 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress16 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress17(address _address) onlyAdmin public { 
        cryptoPotAddress17 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress17 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress18(address _address) onlyAdmin public { 
        cryptoPotAddress18 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress18 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress19(address _address) onlyAdmin public { 
        cryptoPotAddress19 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress19 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress20(address _address) onlyAdmin public { 
        cryptoPotAddress20 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress20 to:", _address, block.timestamp);
    }
    
     function updateCryptoPotAddress21(address _address) onlyAdmin public { 
        cryptoPotAddress21 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress21 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress22(address _address) onlyAdmin public { 
        cryptoPotAddress22 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress22 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress23(address _address) onlyAdmin public { 
        cryptoPotAddress23 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress23 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress24(address _address) onlyAdmin public { 
        cryptoPotAddress24 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress24 to:", _address, block.timestamp);
    }
    
    function updateCryptoPotAddress25(address _address) onlyAdmin public { 
        cryptoPotAddress25 = address(_address);
        emit AddressUpdated("updated cryptoPotAddress25 to:", _address, block.timestamp);
    }
       
// ----------------------------------------------------------------------------
// This method can be used by admin to extract Eth accidentally 
// sent to this smart contract.
// ----------------------------------------------------------------------------
    function ClaimEth() onlyAdmin public {
        address(admin).transfer(address(this).balance);

    }


}
