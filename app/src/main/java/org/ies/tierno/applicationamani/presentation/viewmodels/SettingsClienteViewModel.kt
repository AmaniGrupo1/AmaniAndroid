package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.*
import androidx.lifecycle.ViewModel
import org.ies.tierno.applicationamani.domain.models.User

/**
 * ViewModel para la pantalla de ajustes del perfil del cliente.
 *
 * Gestiona los campos del formulario de perfil (nombre, apellidos, género,
 * dirección, teléfono, código postal) utilizando estados observables de Compose.
 * Proporciona métodos para cargar, guardar y eliminar la cuenta del usuario.
 *
 * @see org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen
 * @see org.ies.tierno.applicationamani.domain.models.User
 */
class SettingsClienteViewModel : ViewModel() {

    /** Nombre del usuario. */
    var nombre by mutableStateOf("")
    /** Apellidos del usuario. */
    var apellidos by mutableStateOf("")
    /** Género del usuario. */
    var genero by mutableStateOf("")
    /** Dirección postal del usuario. */
    var direccion by mutableStateOf("")
    /** Teléfono de contacto del usuario. */
    var telefono by mutableStateOf("")
    /** Código postal del usuario. */
    var codigoPostal by mutableStateOf("")

    /**
     * Carga los datos del usuario en los campos del formulario.
     *
     * Actualmente usa datos de ejemplo (placeholder) hasta que se
     * implemente la persistencia con base de datos.
     */
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

    /**
     * Persiste los cambios realizados en el perfil del usuario.
     *
     * Actualmente construye un objeto [User] pero no lo persiste
     * hasta que se implemente la conexión con base de datos.
     */
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

    /**
     * Elimina la cuenta del usuario.
     *
     * Pendiente de implementación.
     */
    fun borrarCuenta() {

    }
}