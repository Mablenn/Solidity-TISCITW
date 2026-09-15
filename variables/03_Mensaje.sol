//SDPX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract Mensaje{
    string public texto = "Test string Solidity";

    function modificaMensaje(string calldata _mensaje) public {
        texto = _mensaje;
    }
}