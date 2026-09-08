// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract VariablesYFunciones {
    // Variables de estado: viven dentro del contrato en la blockchain.
    address public propietario;
    uint256 public contador;
    string public mensaje;
    bool public activo;

    // Un evento deja un registro consultable fuera de la blockchain.
    event ContadorActualizado(uint256 valorAnterior, uint256 valorNuevo, address ejecutor);
    event MensajeActualizado(string nuevoMensaje);

    // Un modificador reutiliza una regla de acceso en varias funciones.
    modifier soloPropietario() {
        require(msg.sender == propietario, "Solo el propietario puede ejecutar esta funcion");
        _;
    }

    // El constructor se ejecuta una sola vez, al desplegar el contrato.
    constructor(string memory mensajeInicial) {
        propietario = msg.sender;
        contador = 0;
        mensaje = mensajeInicial;
        activo = true;
    }

    // Modifica una variable de estado. Por eso no es view ni pure.
    function incrementar() public {
        uint256 valorAnterior = contador; // Variable local: existe solo durante esta llamada.
        contador += 1;
        emit ContadorActualizado(valorAnterior, contador, msg.sender);
    }

    // Recibe un parámetro y actualiza el estado. Solo el propietario puede llamarla.
    function cambiarMensaje(string calldata nuevoMensaje) external soloPropietario {
        mensaje = nuevoMensaje;
        emit MensajeActualizado(nuevoMensaje);
    }

    // view: puede leer el estado, pero no modificarlo.
    function resumen() external view returns (string memory texto, uint256 valor, bool estaActivo) {
        return (mensaje, contador, activo);
    }

    // pure: no lee ni modifica variables de estado; trabaja solo con sus parámetros.
    function sumar(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }

    // Cambia el estado utilizando un parámetro booleano.
    function establecerActivo(bool nuevoEstado) external soloPropietario {
        activo = nuevoEstado;
    }
}
