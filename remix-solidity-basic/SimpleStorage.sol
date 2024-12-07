// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // solidity version


contract SimpleStorage {
    // myFavoriteNumber initialized to 0
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // dymaic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
 
    // view , pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }


    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}


