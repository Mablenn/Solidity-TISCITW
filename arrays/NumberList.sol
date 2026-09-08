
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NumberList{
    // Array dinamico de numeros
    uint256[] public numbers;

    // Funcion que añade un numero al Array
    function addNumber(uint256 _number) public{
        numbers.push(_number);
    }

    //Funcion que obtiene un numero del array por su posicion
    function getNumber(uint256 _index) public view returns(uint256){
        return numbers[_index];
    }

    //Funcion que muestra el tamaño del array.
    function getLength() public view returns(uint256){
        return numbers.length;
    }
}

