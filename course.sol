pragma solidity ^0.4.18;


contract Owned {
	address owner;

	function Owned() public {
		owner = msg.sender;
	}

	modifier onlyOwner {
		require(msg.sender == owner);
		_;
	}
}

contract Courses is Owned {
	struct Instructor{
		uint age;
		bytes16 fname;
		bytes16 lname;
	}

	mapping (address => Instructor) instructors;
	address[] public instructorAccts;

	event setInfo(bytes16 fname, bytes16 lname, uint age);

	function setInstructor(address _address, uint _age, bytes16 _fname, bytes16 _lname) onlyOwner public {
		var instructor = instructors[_address];
		instructor.age = _age;
		instructor.fname = _fname;
		instructor.lname = _lname;

		instructorAccts.push(_address) -1;
		emit setInfo(_fname, _lname, _age);
	}

	function getInstructors() view public returns(address[]) {
		return instructorAccts;
	}

	function getInstructor(address _address) view public returns (uint, bytes16, bytes16) {
		return (instructors[_address].age, instructors[_address].fname, instructors[_address].lname);
	}

	function countInstructors() view public returns (uint) {
		return instructorAccts.length;
	}
}
