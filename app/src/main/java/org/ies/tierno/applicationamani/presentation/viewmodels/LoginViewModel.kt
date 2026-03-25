package org.ies.tierno.applicationamani.presentation.viewmodels

import android.util.Base64
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.admin.RegistrarPsicologoAdminDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest
import org.json.JSONObject

class LoginViewModel(
    private val authUseCase: LoginUseCase,
    private val tokenDataStore: TokenDataStore,
    private val userSessionDataStore: UserSessionDataStore,
    val asignarUseCase: AsignarPacienteAlPsicologoUseCase
) : ViewModel() {

    // --- Campos para Login ---
    private val _username = MutableStateFlow("")
    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow("")
    val password: StateFlow<String> = _password

    private val _isLoggedIn = MutableStateFlow(false)
    val isLoggedIn: StateFlow<Boolean> = _isLoggedIn

    private val _isLoggingIn = MutableStateFlow(false)
    val isLoggingIn: StateFlow<Boolean> = _isLoggingIn

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

    // --- Estados de UI para registro ---
    private val _isRegistering = MutableStateFlow(false)
    val isRegistering: StateFlow<Boolean> = _isRegistering

    private val _registerError = MutableStateFlow<String?>(null)
    val registerError: StateFlow<String?> = _registerError

    private val _registerSuccess = MutableStateFlow(false)
    val registerSuccess: StateFlow<Boolean> = _registerSuccess

    // --- Result Flows ---
    private val _loginResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val loginResult: StateFlow<Result<LoginResponseDTO>?> = _loginResult

    private val _registerResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val registerResult: StateFlow<Result<LoginResponseDTO>?> = _registerResult

    // En LoginViewModel
    private val _registroEspecialidad = MutableStateFlow("")
    val registroEspecialidad: StateFlow<String> = _registroEspecialidad
    fun setRegistroEspecialidad(value: String) {
        _registroEspecialidad.value = value
    }

    private val _registroExperiencia = MutableStateFlow<Int?>(null)
    val registroExperiencia: StateFlow<Int?> = _registroExperiencia
    fun setRegistroExperiencia(value: Int?) {
        _registroExperiencia.value = value
    }

    private val _registroDescripcion = MutableStateFlow<String?>(null)
    val registroDescripcion: StateFlow<String?> = _registroDescripcion
    fun setRegistroDescripcion(value: String?) {
        _registroDescripcion.value = value
    }

    private val _registroLicencia = MutableStateFlow<String?>(null)
    val registroLicencia: StateFlow<String?> = _registroLicencia
    fun setRegistroLicencia(value: String?) {
        _registroLicencia.value = value
    }

    // --- Setters ---
    fun setUsername(value: String) {
        _username.value = value
    }

    fun setPassword(value: String) {
        _password.value = value
    }

    fun setNombre(value: String) {
        _nombre.value = value
    }

    fun setApellido(value: String) {
        _apellido.value = value
    }

    fun setEmail(value: String) {
        _email.value = value
    }

    fun setRegPassword(value: String) {
        _regPassword.value = value
    }

    fun setTelefono(value: String) {
        _telefono.value = value
    }

    fun setGenero(value: String) {
        _genero.value = value
    }

    fun setFechaNacimiento(value: String) {
        _fechaNacimiento.value = value
    }

    fun setLoggedIn(value: Boolean) {
        _isLoggedIn.value = value
    }

    // ----------------------------
    // Login
    // ----------------------------
    fun login() {
        viewModelScope.launch {
            _isLoggingIn.value = true
            try {
                val request = LoginRequestDTO(email = _username.value, password = _password.value)
                val result = authUseCase.login(request)
                result.onSuccess { response ->
                    tokenDataStore.saveToken(response.token)
                    userSessionDataStore.saveSession(
                        UserSession(
                            idUsuario = response.idUsuario,
                            nombre = response.nombre,
                            rol = response.rol,
                            idPsicologo = response.idPsicologo ?: extractPsychologistId(response.token)
                        )
                    )
                    _loginResult.value = Result.success(response)
                    setLoggedIn(true)
                }.onFailure { error ->
                    _loginResult.value = Result.failure(error)
                    setLoggedIn(false)
                }
            } catch (e: Exception) {
                _loginResult.value = Result.failure(e)
                setLoggedIn(false)
            } finally {
                _isLoggingIn.value = false
            }
        }
    }

    // ----------------------------
    // Registro de Paciente (desde Admin)
    // ----------------------------
    fun registrarPacienteAdmin(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false

            try {
                // Validar campos
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
                    ),
                    aceptaVideo = _aceptaVideo.value,           // agregado
                    aceptaComunicacion = _aceptaComunicacion.value // agregado
                )

                val result = authUseCase.registerPacienteAdmin(request)

                result.onSuccess { response ->
                    _registerResult.value = Result.success(response)
                    _registerSuccess.value = true
                    clearRegistrationFields() // Limpiar campos después del éxito
                    onResult(true)
                }.onFailure { error ->
                    _registerResult.value = Result.failure(error)
                    _registerError.value = error.message ?: "Error al registrar paciente"
                    onResult(false)
                }
            } catch (e: Exception) {
                _registerResult.value = Result.failure(e)
                _registerError.value = e.message ?: "Error inesperado"
                onResult(false)
            } finally {
                _isRegistering.value = false
            }
        }
    }
    // Consentimiento
    private val _aceptaVideo = MutableStateFlow(false)
    val aceptaVideo: StateFlow<Boolean> = _aceptaVideo

    private val _aceptaComunicacion = MutableStateFlow(false)
    val aceptaComunicacion: StateFlow<Boolean> = _aceptaComunicacion

    private val _puntuacionTest = MutableStateFlow(0)
    val puntuacionTest: StateFlow<Int> = _puntuacionTest

    fun setAceptaVideo(value: Boolean) {
        _aceptaVideo.value = value
    }
    fun setAceptaComunicacion(value: Boolean) {
        _aceptaComunicacion.value = value
    }

    fun setPuntuacionTest(value: Int) {
        _puntuacionTest.value = value
    }

    // ----------------------------
    // Registro de Paciente Normal
    // ----------------------------
    fun registrarPaciente(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false

            try {
                // Validar que el paciente haya aceptado al menos un consentimiento
                if (!_aceptaVideo.value && !_aceptaComunicacion.value) {
                    _registerError.value = "Debe aceptar el consentimiento informado"
                    onResult(false)
                    return@launch
                }

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
                    ),
//                    aceptaVideo = _aceptaVideo.value,
//                    aceptaComunicacion = _aceptaComunicacion.value
                )

                val result = authUseCase.registerPaciente(request)

                result.onSuccess { response ->
                    _registerResult.value = Result.success(response)
                    _registerSuccess.value = true
                    clearRegistrationFields()
                    onResult(true)
                }.onFailure { error ->
                    _registerResult.value = Result.failure(error)
                    _registerError.value = error.message ?: "Error al registrar paciente"
                    onResult(false)
                }
            } catch (e: Exception) {
                _registerResult.value = Result.failure(e)
                _registerError.value = e.message ?: "Error inesperado"
                onResult(false)
            } finally {
                _isRegistering.value = false
            }
        }
    }


    // Registro de Admin
// ----------------------------
    fun registrarAdmin(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false

            try {
                // Validar campos mínimos
                if (_nombre.value.isBlank() || _apellido.value.isBlank() ||
                    _email.value.isBlank() || _regPassword.value.isBlank()
                ) {
                    _registerError.value = "Por favor complete todos los campos"
                    onResult(false)
                    return@launch
                }

                if (_regPassword.value.length < 4) {
                    _registerError.value = "La contraseña debe tener al menos 4 caracteres"
                    onResult(false)
                    return@launch
                }

                val request = RegistryPacienteDTO(
                    nombre = _nombre.value,
                    apellido = _apellido.value,
                    email = _email.value,
                    password = _regPassword.value
                )

                val result = authUseCase.registrarAdmin(request)

                result.onSuccess { response ->
                    _registerResult.value = Result.success(response)
                    _registerSuccess.value = true
                    clearRegistrationFields() //  Limpiar campos después del éxito
                    onResult(true)
                }.onFailure { error ->
                    _registerResult.value = Result.failure(error)
                    _registerError.value = error.message ?: "Error al registrar administrador"
                    onResult(false)
                }
            } catch (e: Exception) {
                _registerResult.value = Result.failure(e)
                _registerError.value = e.message ?: "Error inesperado"
                onResult(false)
            } finally {
                _isRegistering.value = false
            }
        }
    }

    // ----------------------------
    // Registro de Psicólogo
    // ----------------------------
    fun registrarPsicologo(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false

            try {
                val request = RegistrarPsicologoAdminDTO(
                    nombrePsicologo = _nombre.value,
                    apellidoPsicologo = _apellido.value,
                    email = _email.value,
                    password = _regPassword.value,
                    especialidad = _registroEspecialidad.value,
                    experiencia = _registroExperiencia.value,
                    descripcion = _registroDescripcion.value,
                    licencia = _registroLicencia.value
                )

                val result = authUseCase.crearPsicologo(request)

                result.onSuccess {
                    _registerSuccess.value = true
                    clearRegistrationFields()
                    onResult(true)
                }.onFailure { error ->
                    _registerError.value = error.message ?: "Error al registrar psicólogo"
                    onResult(false)
                }

            } catch (e: Exception) {
                _registerError.value = e.message ?: "Error inesperado"
                onResult(false)
            } finally {
                _isRegistering.value = false
            }
        }
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
        _registroEspecialidad.value = ""
        _registroExperiencia.value = null
        _registroDescripcion.value = null
        _registroLicencia.value = null
    }

    fun clearLoginFields() {
        _username.value = ""
        _password.value = ""
    }

    fun resetLoginState() {
        _loginResult.value = null
        _isLoggingIn.value = false
    }

    // ----------------------------
    // Resetear estado de registro
    // ----------------------------
    fun resetRegisterState() {
        _isRegistering.value = false
        _registerError.value = null
        _registerSuccess.value = false
        _registerResult.value = null
    }

    // ----------------------------
// Estado para asignar paciente a psicólogo
// ----------------------------
    private val _asignarPsicologoResult = MutableStateFlow<String?>(null)
    val asignarPsicologoResult: StateFlow<String?> = _asignarPsicologoResult

    fun asignarPacienteAlPsicologo(pacienteId: Long, psicologoId: Long) {
        viewModelScope.launch {
            try {
                val request = org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO(
                    idPaciente = pacienteId,
                    idPsicologo = psicologoId
                )
                val result = asignarUseCase.invoke(request)
                _asignarPsicologoResult.value = result.getOrElse { it.message ?: "Error al asignar psicólogo" }
            } catch (e: Exception) {
                _asignarPsicologoResult.value = e.message ?: "Error inesperado"
            }
        }
    }
    fun clearAsignarPsicologoResult() {
        _asignarPsicologoResult.value = null
    }

    fun logout() {
        viewModelScope.launch {
            tokenDataStore.clearToken()
            userSessionDataStore.clearSession()
            _loginResult.value = null
            _isLoggedIn.value = false
        }
    }

    private fun extractPsychologistId(token: String): Long? {
        return runCatching {
            val parts = token.split(".")
            if (parts.size < 2) return null

            val normalizedPayload = parts[1].replace('-', '+').replace('_', '/').let { payload ->
                payload.padEnd(((payload.length + 3) / 4) * 4, '=')
            }
            val payloadJson = String(Base64.decode(normalizedPayload, Base64.DEFAULT))
            val json = JSONObject(payloadJson)

            when {
                json.has("idPsicologo") -> json.optLong("idPsicologo").takeIf { it != 0L }
                json.has("id_psicologo") -> json.optLong("id_psicologo").takeIf { it != 0L }
                else -> null
            }
        }.getOrNull()
    }



}
