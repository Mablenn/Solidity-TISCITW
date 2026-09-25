// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract DireccionPropietario{
    // La variable 'address' almacena una dirección de Ethereum de 20 bytes.
    // Esta representa la dirección de una wallet o la dirección de otro smart contract.
    address public propietario; 

    // El constructor solamente se ejecuta una vez, al desplegar el contrato
    constructor(){
        propietario = msg.sender;
    }
}
