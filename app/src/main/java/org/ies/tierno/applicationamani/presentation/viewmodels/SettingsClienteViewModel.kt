package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.*
import androidx.lifecycle.ViewModel
import org.ies.tierno.applicationamani.domain.models.User

class SettingsClienteViewModel : ViewModel() {

    var nombre by mutableStateOf("")
    var apellidos by mutableStateOf("")
    var genero by mutableStateOf("")
    var direccion by mutableStateOf("")
    var telefono by mutableStateOf("")
    var codigoPostal by mutableStateOf("")
    fun cargarUsuario() {
        // Placeholder hasta que implementemos DB
        val usuario = User(
            "Nombre",
            "Apellidos",
            "No se",
            "Calle Falsa 123",
            "123456789",
            "28001"
        )

        nombre = usuario.nombre
        apellidos = usuario.apellidos
        genero = usuario.genero
        direccion = usuario.direccion
        telefono = usuario.telefono
        codigoPostal = usuario.codigoPostal
    }

    fun guardarUsuario() {
        User(
            nombre,
            apellidos,
            genero,
            direccion,
            telefono,
            codigoPostal
        )
        // Poner DB
    }

    fun borrarCuenta() {

    }
}