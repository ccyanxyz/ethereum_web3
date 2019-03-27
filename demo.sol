pragma solidity >=0.4.25 <0.6.0;

contract Cyan{
	string name;
	uint age;
	address owner;

	event Info(string name, uint age);


	constructor() public{
		owner = msg.sender;
	}

	modifier onlyOwner{
		require(msg.sender == owner);
		_;
	}


	function setInfo(string _name, uint _age) onlyOwner public{
		name = _name;
		age = _age;
		emit Info(_name, _age);
	}

	
	function getInfo() view public returns (string, uint){
		return (name, age);
	}
}
