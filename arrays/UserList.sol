
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UserList{
    // Array de strings donde se almacenan los usuarios
    string[] users;

    // Funcion que registra un nuevo usuario
    function addUser(string memory _name) public{
        users.push(_name);
    }

    // Funcion que obtiene el nombre de un usuario
    function getUser(uint _index) public view returns(string memory){
        return users[_index];
    }

    // Funcion que obtiene el numero total de usuario
    function getTotalUsers() public view returns(uint256){
        return users.length;
    }
}