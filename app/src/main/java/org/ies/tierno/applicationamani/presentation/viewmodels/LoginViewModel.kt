package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

/**
 * ViewModel que gestiona el estado del formulario de inicio de sesión.
 *
 * Expone los campos [username] y [password] como [StateFlow] de solo
 * lectura para que la pantalla [org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen] los observe de forma reactiva.
 *
 * @see org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
 */
class LoginViewModel : ViewModel() {

    /** Flujo interno mutable del nombre de usuario. */
    private val _username = MutableStateFlow<String>("")

    /** Nombre de usuario introducido por el usuario (solo lectura). */
    val username: StateFlow<String> = _username

    /** Flujo interno mutable de la contraseña. */
    private val _password = MutableStateFlow<String>("")

    /** Contraseña introducida por el usuario (solo lectura). */
    val password: StateFlow<String> = _password

    /**
     * Actualiza el valor del nombre de usuario.
     *
     * @param username Nuevo valor introducido en el campo de texto.
     */
    fun setUsername(username: String) {
        _username.value = username
    }

    /**
     * Actualiza el valor de la contraseña.
     *
     * @param password Nuevo valor introducido en el campo de contraseña.
     */
    fun setPassword(password: String) {
        _password.value = password
    }
}