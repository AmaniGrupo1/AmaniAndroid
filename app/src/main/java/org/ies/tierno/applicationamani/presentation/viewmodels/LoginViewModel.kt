package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest

/**
 * ViewModel que gestiona el estado del formulario de inicio de sesión
 * y los flujos de registro de usuarios (psicólogo, admin, paciente).
 *
 * Mantiene campos observables ([StateFlow]) para el login y registro,
 * y proporciona métodos que delegan en [LoginUseCase] para ejecutar
 * las operaciones de autenticación contra el backend.
 *
 * @param loginUseCase Caso de uso que encapsula las operaciones de autenticación y registro.
 *
 * @see org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
 */
class LoginViewModel(private val loginUseCase: LoginUseCase) : ViewModel() {

    // ── Login ──

    /** Email o nombre de usuario para el inicio de sesión. */
    private val _username = MutableStateFlow("")
    /** Email o nombre de usuario observable. */
    val username: StateFlow<String> = _username

    /** Contraseña para el inicio de sesión. */
    private val _password = MutableStateFlow("")
    /** Contraseña observable. */
    val password: StateFlow<String> = _password

    /** Actualiza el email / nombre de usuario de login. */
    fun setUsername(username: String) { _username.value = username }
    /** Actualiza la contraseña de login. */
    fun setPassword(password: String) { _password.value = password }

    // ── Registro (campos compartidos) ──

    /** Nombre del usuario a registrar. */
    private val _nombre = MutableStateFlow("")
    /** Nombre observable. */
    val nombre: StateFlow<String> = _nombre

    /** Apellido del usuario a registrar. */
    private val _apellido = MutableStateFlow("")
    /** Apellido observable. */
    val apellido: StateFlow<String> = _apellido

    /** Email del usuario a registrar. */
    private val _email = MutableStateFlow("")
    /** Email de registro observable. */
    val email: StateFlow<String> = _email

    /** Contraseña del usuario a registrar. */
    private val _regPassword = MutableStateFlow("")
    /** Contraseña de registro observable. */
    val regPassword: StateFlow<String> = _regPassword

    /** Actualiza el nombre de registro. */
    fun setNombre(value: String) { _nombre.value = value }
    /** Actualiza el apellido de registro. */
    fun setApellido(value: String) { _apellido.value = value }
    /** Actualiza el email de registro. */
    fun setEmail(value: String) { _email.value = value }
    /** Actualiza la contraseña de registro. */
    fun setRegPassword(value: String) { _regPassword.value = value }

    // ── Campos extra para registro de paciente ──

    /** Teléfono del paciente a registrar. */
    private val _telefono = MutableStateFlow("")
    /** Teléfono observable. */
    val telefono: StateFlow<String> = _telefono

    /** Género del paciente a registrar. */
    private val _genero = MutableStateFlow("")
    /** Género observable. */
    val genero: StateFlow<String> = _genero

    /** Fecha de nacimiento del paciente a registrar (formato `YYYY-MM-DD`). */
    private val _fechaNacimiento = MutableStateFlow("")
    /** Fecha de nacimiento observable. */
    val fechaNacimiento: StateFlow<String> = _fechaNacimiento

    /** Actualiza el teléfono. */
    fun setTelefono(value: String) { _telefono.value = value }
    /** Actualiza el género. */
    fun setGenero(value: String) { _genero.value = value }
    /** Actualiza la fecha de nacimiento. */
    fun setFechaNacimiento(value: String) { _fechaNacimiento.value = value }

    // ── Estado de sesión ──

    /** Indica si el usuario ha iniciado sesión. */
    private val _isLoggedIn = MutableStateFlow(false)
    /** Estado de sesión observable. */
    val isLoggedIn: StateFlow<Boolean> = _isLoggedIn

    // ── Acciones de registro ──

    /**
     * Registra un nuevo psicólogo con los datos del formulario.
     *
     * Lanza una corrutina en [viewModelScope] y delega en [LoginUseCase.registrarPsicologo].
     */
    fun registrarPsicologo() {
        viewModelScope.launch {
            loginUseCase.registrarPsicologo(
                RegistryPacienteDTO(
                    nombre = _nombre.value,
                    apellido = _apellido.value,
                    email = _email.value,
                    password = _regPassword.value
                )
            )
        }
    }

    /**
     * Registra un nuevo administrador con los datos del formulario.
     *
     * Lanza una corrutina en [viewModelScope] y delega en [LoginUseCase.registrarAdmin].
     */
    fun registrarAdmin() {
        viewModelScope.launch {
            loginUseCase.registrarAdmin(
                RegistryPacienteDTO(
                    nombre = _nombre.value,
                    apellido = _apellido.value,
                    email = _email.value,
                    password = _regPassword.value
                )
            )
        }
    }

    /**
     * Registra un nuevo paciente desde el panel de administración.
     *
     * Construye un [PacienteRequest] con todos los campos del formulario
     * y delega en [LoginUseCase.registerPacienteAdmin].
     */
    fun registrarPacienteAdmin() {
        viewModelScope.launch {
            loginUseCase.registerPacienteAdmin(
                PacienteRequest(
                    fechaNacimiento = _fechaNacimiento.value,
                    genero = _genero.value,
                    telefono = _telefono.value,
                    usuario = UsuarioRequest(
                        nombre = _nombre.value,
                        apellido = _apellido.value,
                        email = _email.value,
                        password = _regPassword.value,
                        rol = "paciente"
                    )
                )
            )
        }
    }
}