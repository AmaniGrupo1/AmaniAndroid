package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionRequest
import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import java.time.LocalDate
import java.time.Period

class LoginViewModel(
    private val loginUseCase: LoginUseCase,
    private val asignarPacienteAlPsicologoUseCase: AsignarPacienteAlPsicologoUseCase,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    // ── Login ──
    private val _username = MutableStateFlow("")
    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow("")
    val password: StateFlow<String> = _password

    private val _loginResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val loginResult: StateFlow<Result<LoginResponseDTO>?> = _loginResult

    private val _isLoggingIn = MutableStateFlow(false)
    val isLoggingIn: StateFlow<Boolean> = _isLoggingIn

    private val _loginError = MutableStateFlow<String?>(null)
    val loginError: StateFlow<String?> = _loginError

    fun setUsername(username: String) { _username.value = username }
    fun setPassword(password: String) { _password.value = password }

    /**
     * Ejecuta el proceso de inicio de sesión.
     * Válida los campos antes de realizar la llamada al caso de uso.
     */
    /**
     * Ejecuta el proceso de inicio de sesión.
     * Válida los campos antes de realizar la llamada al caso de uso.
     */
    fun login() {
        // Validaciones previas
        val usernameValue = _username.value
        val passwordValue = _password.value

        when {
            usernameValue.isBlank() -> {
                _loginError.value = "El correo electrónico es obligatorio"
                return
            }
            !usernameValue.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                _loginError.value = "Introduce un correo electrónico válido"
                return
            }
            passwordValue.isBlank() -> {
                _loginError.value = "La contraseña es obligatoria"
                return
            }
        }

        _isLoggingIn.value = true
        _loginError.value = null
        _loginResult.value = null

        viewModelScope.launch {
            try {
                val request = LoginRequestDTO(
                    email = usernameValue,
                    password = passwordValue
                )

                val result = loginUseCase.login(request)

                result.onSuccess { loginResponse ->
                    // ✅ GUARDAR LA SESIÓN INMEDIATAMENTE DESPUÉS DEL LOGIN EXITOSO
                    saveUserSession(loginResponse)
                    _loginResult.value = Result.success(loginResponse)
                    _loginError.value = null
                }.onFailure { error ->
                    _loginResult.value = Result.failure(error)
                    _loginError.value = when (error) {
                        is retrofit2.HttpException -> {
                            when (error.code()) {
                                401 -> "Credenciales incorrectas"
                                404 -> "Usuario no encontrado"
                                else -> "Error de conexión: ${error.message()}"
                            }
                        }
                        else -> error.message ?: "Error al iniciar sesión"
                    }
                }
            } catch (e: Exception) {
                _loginError.value = e.message ?: "Error inesperado al iniciar sesión"
                _loginResult.value = Result.failure(e)
            } finally {
                _isLoggingIn.value = false
            }
        }
    }

    /**
     * ✅ NUEVO MÉTODO: Guarda la sesión del usuario en DataStore
     */
    private suspend fun saveUserSession(loginResponse: LoginResponseDTO) {
        try {
            val session = UserSession(
                idUsuario = loginResponse.idUsuario,
                nombre = loginResponse.nombre,
                rol = loginResponse.rol,
                idPsicologo = loginResponse.idPsicologo  // Este campo viene del backend
            )

            userSessionDataStore.saveSession(session)

            // Debug: verificar que se guardó correctamente
            val savedSession = userSessionDataStore.getSession()
            println("=== SESIÓN GUARDADA ===")
            println("ID Usuario: ${savedSession?.idUsuario}")
            println("Nombre: ${savedSession?.nombre}")
            println("Rol: ${savedSession?.rol}")
            println("ID Psicólogo: ${savedSession?.idPsicologo}")
        } catch (e: Exception) {
            println("Error al guardar la sesión: ${e.message}")
        }
    }

    /**
     * Limpia los campos de usuario y contraseña.
     */
    fun clearLoginFields() {
        _username.value = ""
        _password.value = ""
    }

    /**
     * Resetea el estado del login (resultado y errores).
     */
    fun resetLoginState() {
        _loginResult.value = null
        _loginError.value = null
        _isLoggingIn.value = false
    }

    /**
     * Válida si el formulario de login es válido para habilitar el botón.
     */
    fun isLoginFormValid(): Boolean {
        return _username.value.isNotBlank() &&
                _username.value.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) &&
                _password.value.isNotBlank()
    }
    // ── Campos registro básico ──
    val nombre = MutableStateFlow("")
    val apellido = MutableStateFlow("")
    val dni = MutableStateFlow("")
    val email = MutableStateFlow("")
    val regPassword = MutableStateFlow("")
    val telefono = MutableStateFlow("")
    val genero = MutableStateFlow("")
    val fechaNacimiento = MutableStateFlow("")
    val aceptaTerminos = MutableStateFlow(false)
    val aceptaVideoconferencia = MutableStateFlow(false)
    val aceptaComunicacion = MutableStateFlow(false)
    val metodoPago = MutableStateFlow<MetodoPago>(MetodoPago.PRESENCIAL)
    val situacionesIds = MutableStateFlow<List<Long>>(emptyList())

    // ── Tutor ──
    val tutorNombre = MutableStateFlow("")
    val tutorTelefono = MutableStateFlow("")
    val tutorEmail = MutableStateFlow("")
    val tutorDni = MutableStateFlow("")
    val tutorTipo = MutableStateFlow("PADRE")

    // ── Campos específicos para Psicólogo ──
    val registroEspecialidad = MutableStateFlow("")
    val registroExperiencia = MutableStateFlow<Int?>(null)
    val registroDescripcion = MutableStateFlow<String?>(null)
    val registroLicencia = MutableStateFlow<String?>(null)

    // ── Estados para control de registro ──
    private val _isRegistering = MutableStateFlow(false)
    val isRegistering: StateFlow<Boolean> = _isRegistering

    private val _registerError = MutableStateFlow<String?>(null)
    val registerError: StateFlow<String?> = _registerError

    private val _registerSuccess = MutableStateFlow(false)
    val registerSuccess: StateFlow<Boolean> = _registerSuccess

    // ── Setters ──
    fun setNombre(value: String) { nombre.value = value }
    fun setApellido(value: String) { apellido.value = value }
    fun setDni(value: String) { dni.value = value }
    fun setEmail(value: String) { email.value = value }
    fun setRegPassword(value: String) { regPassword.value = value }
    fun setTelefono(value: String) { telefono.value = value }
    fun setGenero(value: String) { genero.value = value }
    fun setFechaNacimiento(value: String) { fechaNacimiento.value = value }

    fun setTutorNombre(value: String) { tutorNombre.value = value }
    fun setTutorTelefono(value: String) { tutorTelefono.value = value }
    fun setTutorEmail(value: String) { tutorEmail.value = value }
    fun setTutorDni(value: String) { tutorDni.value = value }
    fun setTutorTipo(value: String) { tutorTipo.value = value }

    // Setters para campos de psicólogo
    fun setRegistroEspecialidad(value: String) { registroEspecialidad.value = value }
    fun setRegistroExperiencia(value: Int?) { registroExperiencia.value = value }
    fun setRegistroDescripcion(value: String?) { registroDescripcion.value = value }
    fun setRegistroLicencia(value: String?) { registroLicencia.value = value }

    // Función para resetear estados de registro
    fun resetRegisterState() {
        _isRegistering.value = false
        _registerError.value = null
        _registerSuccess.value = false
    }

    // ── Dirección ──
    val calle = MutableStateFlow("")
    val ciudad = MutableStateFlow("")
    val provincia = MutableStateFlow("")
    val codigoPostal = MutableStateFlow("")
    val pais = MutableStateFlow("España")

    fun setCalle(value: String) { calle.value = value }
    fun setCiudad(value: String) { ciudad.value = value }
    fun setProvincia(value: String) { provincia.value = value }
    fun setCodigoPostal(value: String) { codigoPostal.value = value }
    fun setPais(value: String) { pais.value = value }

    // ── Estados derivados ──

    // Calcular si es menor de edad (para mostrar/ocultar tutor en UI)
    val esMenor: StateFlow<Boolean> = fechaNacimiento.map { f ->
        try {
            val nacimiento = LocalDate.parse(f)
            Period.between(nacimiento, LocalDate.now()).years < 18
        } catch (e: Exception) { false }
    }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // Validar datos del tutor SOLO si es menor de edad
    val tutorValido: StateFlow<Boolean> = combine(
        esMenor,
        tutorNombre,
        tutorTelefono,
        tutorEmail,
        tutorDni
    ) { esMenor, nombre, telefono, email, dni ->
        if (!esMenor) {
            true
        } else {
            nombre.isNotBlank() &&
                    telefono.isNotBlank() &&
                    email.isNotBlank() &&
                    email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) &&
                    dni.isNotBlank() &&
                    dni.matches(Regex("^[0-9]{8}[A-Za-z]$"))
        }
    }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // Validar dirección (siempre requerida)
    val direccionValida: StateFlow<Boolean> = combine(calle) { array ->
        array[0].isNotBlank()
    }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // Validar campos básicos del paciente
    val formularioValido: StateFlow<Boolean> = combine(
        listOf(nombre, apellido, dni, email, regPassword, telefono, genero, fechaNacimiento, aceptaTerminos)
    ) { values ->
        val n = values[0] as String
        val a = values[1] as String
        val d = values[2] as String
        val e = values[3] as String
        val p = values[4] as String
        val t = values[5] as String
        val g = values[6] as String
        val f = values[7] as String
        val term = values[8] as Boolean

        val camposCompletos = listOf(n, a, d, e, p, t, g, f).all { it.isNotBlank() }
        val fechaValida = f.matches(Regex("""\d{4}-\d{2}-\d{2}"""))
        camposCompletos && fechaValida && term
    }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // Validar formulario COMPLETO (incluye tutor solo si es necesario)
    val formularioCompletoValido: StateFlow<Boolean> = combine(
        formularioValido,
        tutorValido,
        direccionValida,
        situacionesIds
    ) { formValido, tutorVal, dirVal, sitIds ->
        formValido && tutorVal && dirVal && sitIds.isNotEmpty()
    }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // ── Acciones de registro ──
    fun registrarPsicologo() {
        if (nombre.value.isBlank() || apellido.value.isBlank() ||
            email.value.isBlank() || regPassword.value.isBlank() ||
            registroEspecialidad.value.isBlank()) {
            _registerError.value = "Todos los campos obligatorios deben estar completos"
            return
        }

        _isRegistering.value = true
        _registerError.value = null
        _registerSuccess.value = false

        viewModelScope.launch {
            try {
                val psicologoRequest = PsicologoRequestDTO(
                    nombrePsicologo = nombre.value,
                    apellidoPsicologo = apellido.value,
                    email = email.value,
                    password = regPassword.value,
                    especialidad = registroEspecialidad.value,
                    experiencia = registroExperiencia.value,
                    descripcion = registroDescripcion.value,
                    licencia = registroLicencia.value
                )

                val result = loginUseCase.registrarPsicologo(psicologoRequest)

                result.onSuccess { response ->
                    _registerSuccess.value = true
                    _registerError.value = null
                }.onFailure { error ->
                    _registerError.value = error.message ?: "Error al registrar psicólogo"
                    _registerSuccess.value = false
                }
            } catch (e: Exception) {
                _registerError.value = e.message ?: "Error inesperado al registrar psicólogo"
                _registerSuccess.value = false
            } finally {
                _isRegistering.value = false
            }
        }
    }

    // ── Funciones auxiliares ──
    fun limpiarFormularioPsicologo() {
        nombre.value = ""
        apellido.value = ""
        email.value = ""
        regPassword.value = ""
        registroEspecialidad.value = ""
        registroExperiencia.value = null
        registroDescripcion.value = null
        registroLicencia.value = null
        resetRegisterState()
    }

    fun registrarAdmin() {
        _isRegistering.value = true
        _registerError.value = null
        _registerSuccess.value = false

        viewModelScope.launch {
            try {
                val result = loginUseCase.registrarAdmin(
                    RegistryPacienteDTO(
                        nombre = nombre.value,
                        apellido = apellido.value,
                        email = email.value,
                        password = regPassword.value
                    )
                )

                result.onSuccess {
                    _registerSuccess.value = true
                }.onFailure { error ->
                    _registerError.value = error.message ?: "Error al registrar administrador"
                }
            } catch (e: Exception) {
                _registerError.value = e.message ?: "Error inesperado"
            } finally {
                _isRegistering.value = false
            }
        }
    }

    private val _successMessage = MutableStateFlow<String?>(null)
    val successMessage: StateFlow<String?> = _successMessage

    fun registrarPaciente() {
        if (!formularioCompletoValido.value) {
            _registerError.value = "Complete todos los campos obligatorios"
            return
        }

        _isRegistering.value = true
        _registerError.value = null
        _registerSuccess.value = false

        viewModelScope.launch {
            try {
                val tutoresList = if (esMenor.value) {
                    listOf(
                        TutorRequestDTO(
                            nombre = tutorNombre.value,
                            telefono = tutorTelefono.value,
                            email = tutorEmail.value,
                            dni = tutorDni.value,
                            tipo = tutorTipo.value
                        )
                    )
                } else {
                    emptyList()
                }

                val direccion = DireccionRequest(
                    idPaciente = null,
                    calle = calle.value,
                    ciudad = ciudad.value.ifBlank { null },
                    provincia = provincia.value.ifBlank { null },
                    codigoPostal = codigoPostal.value.ifBlank { null },
                    pais = pais.value.ifBlank { null }
                )

                val request = PacienteRequest(
                    fechaNacimiento = fechaNacimiento.value,
                    genero = genero.value,
                    telefono = telefono.value,
                    estadoPago = EstadoPago.PENDIENTE.name,
                    metodoPago = metodoPago.value.name,
                    usuario = UsuarioRequest(
                        nombre = nombre.value,
                        apellido = apellido.value,
                        email = email.value,
                        password = regPassword.value,
                        rol = Rol.paciente,
                        dni = dni.value
                    ),
                    aceptaTerminos = aceptaTerminos.value,
                    aceptaVideoconferencia = aceptaVideoconferencia.value,
                    aceptaComunicacion = aceptaComunicacion.value,
                    idSituaciones = situacionesIds.value,
                    tutores = tutoresList,
                    direccion = listOf(direccion)
                )

                val result = loginUseCase.registerPaciente(request)

                result.onSuccess { response ->
                    _registerSuccess.value = true
                    _registerError.value = null
                    _successMessage.value = "¡Paciente registrado correctamente!"
                    limpiarFormulario()
                }.onFailure { error ->
                    _registerError.value = error.message ?: "Error al registrar paciente"
                    _registerSuccess.value = false
                }
            } catch (e: Exception) {
                _registerError.value = e.message ?: "Error inesperado al registrar paciente"
                _registerSuccess.value = false
            } finally {
                _isRegistering.value = false
            }
        }
    }

    // ── Funciones auxiliares ──
    fun limpiarFormulario() {
        nombre.value = ""
        apellido.value = ""
        dni.value = ""
        email.value = ""
        regPassword.value = ""
        telefono.value = ""
        genero.value = ""
        fechaNacimiento.value = ""
        aceptaTerminos.value = false
        aceptaVideoconferencia.value = false
        aceptaComunicacion.value = false
        tutorNombre.value = ""
        tutorTelefono.value = ""
        tutorEmail.value = ""
        tutorDni.value = ""
        tutorTipo.value = "PADRE"
        metodoPago.value = MetodoPago.PRESENCIAL
        situacionesIds.value = emptyList()
        calle.value = ""
        ciudad.value = ""
        provincia.value = ""
        codigoPostal.value = ""
        pais.value = "España"

        // Limpiar campos de psicólogo
        registroEspecialidad.value = ""
        registroExperiencia.value = null
        registroDescripcion.value = null
        registroLicencia.value = null
        resetRegisterState()
    }

    // ── Asignar paciente a psicólogo ──
    private val _asignarPacienteSuccess = MutableStateFlow(false)
    val asignarPacienteSuccess: StateFlow<Boolean> = _asignarPacienteSuccess

    private val _asignarPacienteError = MutableStateFlow<String?>(null)
    val asignarPacienteError: StateFlow<String?> = _asignarPacienteError

    private val _isAsignandoPaciente = MutableStateFlow(false)
    val isAsignandoPaciente: StateFlow<Boolean> = _isAsignandoPaciente

    fun asignarPaciente(idPaciente: Long, idPsicologo: Long) {
        _isAsignandoPaciente.value = true
        _asignarPacienteError.value = null
        _asignarPacienteSuccess.value = false

        viewModelScope.launch {
            try {
                val result = asignarPacienteAlPsicologoUseCase(idPaciente, idPsicologo)

                result.onSuccess {
                    _asignarPacienteSuccess.value = true
                    _asignarPacienteError.value = null
                }.onFailure { error ->
                    _asignarPacienteError.value = error.message ?: "Error al asignar paciente"
                    _asignarPacienteSuccess.value = false
                }

            } catch (e: Exception) {
                _asignarPacienteError.value = e.message ?: "Error inesperado al asignar paciente"
                _asignarPacienteSuccess.value = false
            } finally {
                _isAsignandoPaciente.value = false
            }
        }
    }
    fun clearAsignarPsicologoResult() {
        _asignarPacienteSuccess.value = false
        _asignarPacienteError.value = null
    }
}