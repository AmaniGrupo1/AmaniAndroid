package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.domain.models.admin.RegistrarPsicologoAdminDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest

class LoginViewModel(
    private val authUseCase: LoginUseCase,
    private val tokenDataStore: TokenDataStore,
    val asignarUseCase: AsignarPacienteAlPsicologoUseCase
) : ViewModel() {

    // ================================
    // 1. CAMPOS PARA LOGIN
    // ================================
    private val _username = MutableStateFlow("")
    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow("")
    val password: StateFlow<String> = _password

    private val _idUsuario = MutableStateFlow<Long?>(null)
    val idUsuario: StateFlow<Long?> = _idUsuario

    private val _isLoggedIn = MutableStateFlow(false)
    val isLoggedIn: StateFlow<Boolean> = _isLoggedIn

    // ================================
    // 2. CAMPOS PARA REGISTRO DE PACIENTE
    // ================================
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

    private val _estadoPago = MutableStateFlow("PENDIENTE")
    val estadoPago: StateFlow<String> = _estadoPago

    private val _metodoPago = MutableStateFlow("")
    val metodoPago: StateFlow<String> = _metodoPago

    private val _idSituacion = MutableStateFlow<Long?>(null)
    val idSituacion: StateFlow<Long?> = _idSituacion

    // Estados adicionales para UI
    private val _passwordVisible = MutableStateFlow(false)
    val passwordVisible: StateFlow<Boolean> = _passwordVisible

    private val _situacionSeleccionada = MutableStateFlow<Pair<Long, String>?>(null)
    val situacionSeleccionada: StateFlow<Pair<Long, String>?> = _situacionSeleccionada

    // Estados para pago online
    private val _pagoRealizado = MutableStateFlow(false)
    val pagoRealizado: StateFlow<Boolean> = _pagoRealizado

    private val _mostrarDialogoPago = MutableStateFlow(false)
    val mostrarDialogoPago: StateFlow<Boolean> = _mostrarDialogoPago

    private val _pagoOnlineCompletado = MutableStateFlow(false)
    val pagoOnlineCompletado: StateFlow<Boolean> = _pagoOnlineCompletado

    private val _procesandoPago = MutableStateFlow(false)
    val procesandoPago: StateFlow<Boolean> = _procesandoPago

    // ================================
    // 3. ESTADOS DE UI PARA REGISTRO
    // ================================
    private val _isRegistering = MutableStateFlow(false)
    val isRegistering: StateFlow<Boolean> = _isRegistering

    private val _registerError = MutableStateFlow<String?>(null)
    val registerError: StateFlow<String?> = _registerError

    private val _registerSuccess = MutableStateFlow(false)
    val registerSuccess: StateFlow<Boolean> = _registerSuccess

    // ================================
    // 4. RESULT FLOWS
    // ================================
    private val _loginResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val loginResult: StateFlow<Result<LoginResponseDTO>?> = _loginResult

    private val _registerResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val registerResult: StateFlow<Result<LoginResponseDTO>?> = _registerResult

    // ================================
    // 5. CAMPOS PARA PSICÓLOGO
    // ================================
    private val _registroEspecialidad = MutableStateFlow("")
    val registroEspecialidad: StateFlow<String> = _registroEspecialidad

    private val _registroExperiencia = MutableStateFlow<Int?>(null)
    val registroExperiencia: StateFlow<Int?> = _registroExperiencia

    private val _registroDescripcion = MutableStateFlow<String?>(null)
    val registroDescripcion: StateFlow<String?> = _registroDescripcion

    private val _registroLicencia = MutableStateFlow<String?>(null)
    val registroLicencia: StateFlow<String?> = _registroLicencia

    // ================================
    // 6. ASIGNAR PACIENTE A PSICÓLOGO
    // ================================
    private val _asignarPsicologoResult = MutableStateFlow<String?>(null)
    val asignarPsicologoResult: StateFlow<String?> = _asignarPsicologoResult

    // ================================
    // 7. SETTERS - LOGIN
    // ================================
    fun setUsername(value: String) { _username.value = value }
    fun setPassword(value: String) { _password.value = value }
    fun setLoggedIn(value: Boolean) { _isLoggedIn.value = value }

    // ================================
    // 8. SETTERS - REGISTRO PACIENTE
    // ================================
    fun setNombre(value: String) { _nombre.value = value }
    fun setApellido(value: String) { _apellido.value = value }
    fun setEmail(value: String) { _email.value = value }
    fun setRegPassword(value: String) { _regPassword.value = value }
    fun setTelefono(value: String) { _telefono.value = value }
    fun setGenero(value: String) { _genero.value = value }
    fun setFechaNacimiento(value: String) { _fechaNacimiento.value = value }
    fun setEstadoPago(value: String) { _estadoPago.value = value }
    fun setMetodoPago(value: String) {
        _metodoPago.value = value
        _pagoRealizado.value = false
        if (value == "ONLINE") {
            _mostrarDialogoPago.value = true
        }
    }
    fun setIdSituacion(value: Long?) { _idSituacion.value = value }
    fun setPasswordVisible(value: Boolean) { _passwordVisible.value = value }
    fun setSituacionSeleccionada(value: Pair<Long, String>?) { _situacionSeleccionada.value = value }
    fun setPagoRealizado(value: Boolean) { _pagoRealizado.value = value }
    fun setMostrarDialogoPago(value: Boolean) { _mostrarDialogoPago.value = value }
    fun setPagoOnlineCompletado(value: Boolean) { _pagoOnlineCompletado.value = value }

    // ================================
    // 9. SETTERS - PSICÓLOGO
    // ================================
    fun setRegistroEspecialidad(value: String) { _registroEspecialidad.value = value }
    fun setRegistroExperiencia(value: Int?) { _registroExperiencia.value = value }
    fun setRegistroDescripcion(value: String?) { _registroDescripcion.value = value }
    fun setRegistroLicencia(value: String?) { _registroLicencia.value = value }

    // ================================
    // 10. MÉTODOS DE PAGO ONLINE
    // ================================
    fun simularPagoOnline(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _procesandoPago.value = true
            try {
                delay(1000) // Simular proceso de pago
                _pagoOnlineCompletado.value = true
                _pagoRealizado.value = true
                _mostrarDialogoPago.value = false
                onResult(true)
            } catch (e: Exception) {
                _registerError.value = "Error en el pago: ${e.message}"
                onResult(false)
            } finally {
                _procesandoPago.value = false
            }
        }
    }

    private fun resetPagoOnline() {
        _pagoRealizado.value = false
        _procesandoPago.value = false
        _mostrarDialogoPago.value = false
        _pagoOnlineCompletado.value = false
    }

    // ================================
    // 11. LOGIN
    // ================================
    fun login() {
        viewModelScope.launch {
            try {
                val request = LoginRequestDTO(email = _username.value, password = _password.value)
                val result = authUseCase.login(request)
                result.onSuccess { response ->
                    tokenDataStore.saveToken(response.token)
                    _idUsuario.value = response.idUsuario
                    _loginResult.value = Result.success(response)
                    setLoggedIn(true)
                }.onFailure { error ->
                    _loginResult.value = Result.failure(error)
                    setLoggedIn(false)
                    _registerError.value = error.message ?: "Error al iniciar sesión"
                }
            } catch (e: Exception) {
                _loginResult.value = Result.failure(e)
                setLoggedIn(false)
                _registerError.value = e.message ?: "Error inesperado"
            }
        }
    }

    // ================================
    // 12. REGISTRO DE PACIENTE (CON VALIDACIÓN)
    // ================================
    fun registrarPaciente(onResult: (Boolean) -> Unit = {}) {
        // Validar método de pago
        if (_metodoPago.value.isBlank()) {
            _registerError.value = "Seleccione un método de pago"
            onResult(false)
            return
        }

        // Si es ONLINE, verificar que se haya realizado el pago
        if (_metodoPago.value == "ONLINE" && !_pagoRealizado.value) {
            _registerError.value = "Debe realizar el pago online para continuar"
            onResult(false)
            return
        }

        // Validar situación
        if (_situacionSeleccionada.value == null) {
            _registerError.value = "Seleccione una situación"
            onResult(false)
            return
        }

        // Validar campos obligatorios
        if (_nombre.value.isBlank() || _apellido.value.isBlank() || _email.value.isBlank() ||
            _regPassword.value.isBlank() || _telefono.value.isBlank() || _genero.value.isBlank() ||
            _fechaNacimiento.value.isBlank()
        ) {
            _registerError.value = "Complete todos los campos"
            onResult(false)
            return
        }

        // Validar formato de fecha
        if (!_fechaNacimiento.value.matches(Regex("\\d{4}-\\d{2}-\\d{2}"))) {
            _registerError.value = "Formato de fecha inválido. Use YYYY-MM-DD"
            onResult(false)
            return
        }

        // Construir el request
        val pacienteRequest = PacienteRequest(
            fechaNacimiento = _fechaNacimiento.value,
            genero = _genero.value,
            telefono = _telefono.value,
            estadoPago = if (_metodoPago.value == "ONLINE" && _pagoRealizado.value) "PAGADO" else "PENDIENTE",
            metodoPago = _metodoPago.value,
            idSituacion = _situacionSeleccionada.value!!.first,
            usuario = UsuarioRequest(
                nombre = _nombre.value,
                apellido = _apellido.value,
                email = _email.value,
                password = _regPassword.value,
                rol = "paciente"
            )
        )

        // Llamar al método de registro
        registrarPacienteRequest(pacienteRequest, onResult)
    }

    private fun registrarPacienteRequest(pacienteRequest: PacienteRequest, onResult: (Boolean) -> Unit) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false
            try {
                val result = authUseCase.registerPaciente(pacienteRequest)
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

    fun registrarPacienteConPago(
        pacienteRequest: PacienteRequest,
        onResult: (Boolean) -> Unit = {}
    ) {
        if (pacienteRequest.metodoPago == "ONLINE" && pacienteRequest.estadoPago != "PAGADO") {
            _registerError.value = "Debe completar el pago online para registrarse"
            onResult(false)
            return
        }
        registrarPacienteRequest(pacienteRequest, onResult)
    }

    // ================================
    // 13. REGISTRO DE ADMIN
    // ================================
    fun registrarAdmin(onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            _isRegistering.value = true
            _registerError.value = null
            _registerSuccess.value = false
            try {
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
                    clearRegistrationFields()
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

    // ================================
    // 14. REGISTRO DE PSICÓLOGO
    // ================================
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

    // ================================
    // 15. ASIGNAR PACIENTE A PSICÓLOGO
    // ================================
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

    fun clearAsignarPsicologoResult() { _asignarPsicologoResult.value = null }

    // ================================
    // 16. LIMPIAR CAMPOS
    // ================================
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
        _estadoPago.value = "PENDIENTE"
        _metodoPago.value = ""
        _idSituacion.value = null
        _situacionSeleccionada.value = null
        _passwordVisible.value = false
        resetPagoOnline()
    }

    fun clearLoginFields() {
        _username.value = ""
        _password.value = ""
    }

    // ================================
    // 17. RESETEAR ESTADO DE REGISTRO
    // ================================
    fun resetRegisterState() {
        _isRegistering.value = false
        _registerError.value = null
        _registerSuccess.value = false
        _registerResult.value = null
        _procesandoPago.value = false
    }
}