package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest

class LoginViewModel(
    private val authUseCase: LoginUseCase,
    private val tokenDataStore: TokenDataStore
) : ViewModel() {

    // --- Campos para Login ---
    private val _username = MutableStateFlow("")
    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow("")
    val password: StateFlow<String> = _password

    private val _isLoggedIn = MutableStateFlow(false)
    val isLoggedIn: StateFlow<Boolean> = _isLoggedIn

    // --- Campos para Registro ---
    private val _nombre = MutableStateFlow("")
    val nombre: StateFlow<String> = _nombre

    private val _apellido = MutableStateFlow("")
    val apellido: StateFlow<String> = _apellido

    private val _email = MutableStateFlow("")
    val email: StateFlow<String> = _email

    private val _regPassword = MutableStateFlow("")
    val regPassword: StateFlow<String> = _regPassword

    private val _telefono = MutableStateFlow("")
    val telefono: StateFlow<String> = _telefono

    private val _genero = MutableStateFlow("")
    val genero: StateFlow<String> = _genero

    private val _fechaNacimiento = MutableStateFlow("")
    val fechaNacimiento: StateFlow<String> = _fechaNacimiento

    // --- Result Flows ---
    private val _loginResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val loginResult: StateFlow<Result<LoginResponseDTO>?> = _loginResult

    private val _registerResult = MutableStateFlow<Result<RegistryPacienteDTO>?>(null)
    val registerResult: StateFlow<Result<RegistryPacienteDTO>?> = _registerResult

    // --- Setters ---
    fun setUsername(value: String) { _username.value = value }
    fun setPassword(value: String) { _password.value = value }
    fun setNombre(value: String) { _nombre.value = value }
    fun setApellido(value: String) { _apellido.value = value }
    fun setEmail(value: String) { _email.value = value }
    fun setRegPassword(value: String) { _regPassword.value = value }
    fun setTelefono(value: String) { _telefono.value = value }
    fun setGenero(value: String) { _genero.value = value }
    fun setFechaNacimiento(value: String) { _fechaNacimiento.value = value }
    fun setLoggedIn(value: Boolean) { _isLoggedIn.value = value }

    // ----------------------------
    // Método genérico de registro
    // ----------------------------
    private fun <T> registrar(
        action: suspend () -> Result<T>,
        resultFlow: MutableStateFlow<Result<T>?>
    ) {
        viewModelScope.launch {
            val result = action()
            // Guardar token si es LoginResponseDTO
            val token = (result.getOrNull() as? LoginResponseDTO)?.token
            token?.let { tokenDataStore.saveToken(it) }
            resultFlow.value = result
        }
    }

    // ----------------------------
    // Login
    // ----------------------------
    fun login() {
        viewModelScope.launch {
            try {
                val request = LoginRequestDTO(email = _username.value, password = _password.value)
                val result = authUseCase.login(request)
                result.onSuccess { response ->
                    tokenDataStore.saveToken(response.token)
                    _loginResult.value = Result.success(response)
                    setLoggedIn(true)
                }.onFailure { error ->
                    _loginResult.value = Result.failure(error)
                    setLoggedIn(false)
                }
            } catch (e: Exception) {
                _loginResult.value = Result.failure(e)
                setLoggedIn(false)
            }
        }
    }

    // ----------------------------
    // Registro usando registrar()
    // ----------------------------
    fun registrarPaciente() {
        val request = PacienteRequest(
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
        registrar({ authUseCase.registerPaciente(request) }, _loginResult)
    }

    fun registrarPacienteAdmin() {
        val request = PacienteRequest(
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
        registrar({ authUseCase.registerPacienteAdmin(request) }, _loginResult)
    }

    fun registrarAdmin() {
        val request = RegistryPacienteDTO(
            nombre = _nombre.value,
            apellido = _apellido.value,
            email = _email.value,
            password = _regPassword.value
        )
        registrar({ authUseCase.registrarAdmin(request) }, _loginResult)
    }

    fun registrarPsicologo() {
        val request = RegistryPacienteDTO(
            nombre = _nombre.value,
            apellido = _apellido.value,
            email = _email.value,
            password = _regPassword.value
        )
        registrar({ authUseCase.registrarPsicologo(request) }, _loginResult)
    }

    // ----------------------------
    // Limpiar campos
    // ----------------------------
    fun clearRegistrationFields() {
        _nombre.value = ""
        _apellido.value = ""
        _email.value = ""
        _regPassword.value = ""
        _telefono.value = ""
        _genero.value = ""
        _fechaNacimiento.value = ""
    }

    fun clearLoginFields() {
        _username.value = ""
        _password.value = ""
    }
}