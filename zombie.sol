pragma solidity ^0.4.19;

contract ZombieFactory {

    uint dnaDigits = 3;
    uint dnaModulus = 10 ** dnaDigits;
 
    string name;
    uint dna;

    function _generateRandomDna(string _str) private view returns (uint) {
        uint rand = uint(keccak256(_str));
        return rand % dnaModulus;
    }
	
    function createRandomZombie(string _name) public {
        uint randDna = _generateRandomDna(_name);
		dna = randDna;
		name = _name;
    }
	
	function showZombie() public view returns(uint,string) {
        return(dna,name);
    }
}