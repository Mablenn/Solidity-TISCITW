
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RegistroPuntuaciones{
    // Dirección dentro de la blockchain donde se guardarán las puntuaciones
    // Debemos relacionar una direccion(address) con un valor numerico(uint)
    mapping(address => uint256) public puntuaciones;

    // Guarda o actualiza la puntuacion del usuario que realiza la llamada a la funcion
    function establecePuntuacion(uint _puntuacion) public {
        puntuaciones[msg.sender] = _puntuacion;
    }

    // Consulta la puntuación de una dirección
    function consultaPuntuacion(address _direccionPuntuacion) public view returns(uint){
        return puntuaciones[_direccionPuntuacion];
    }    
}