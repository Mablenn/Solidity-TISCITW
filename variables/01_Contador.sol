//SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.8.27

contract Contador{
    // La opción public permite el acceso a la variable desde fuera del contrato. Esto creará una función tipo getter.
    // Si no se declara la variable como 'public', esta no será accesible desde fuera del contrato.5
    uint public contador = 0;

    function incrementar() public{
        contador += 1;
    }
}
