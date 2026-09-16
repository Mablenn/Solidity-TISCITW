// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RegistroHash{
    // Almacena un valor fijo de 32 bytes
    bytes32 public myHash;

    // Genera y almacena un hash creado a partir de un texto
    // 'keccak256' es una funcion criptografica que genera un hash a partir de un texto.
    function generaHash(string memory _texto) public {
        myHash = keccak256(abi.encodePacked(_texto));
    }

    // Guarda un nuevo hash que se le pasa desde fuera de la blockchain
    function guardaHash(bytes32 _nuevoHash) public {
        myHash = _nuevoHash;
    }
}