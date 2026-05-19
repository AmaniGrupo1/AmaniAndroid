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
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest
import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO
import retrofit2.HttpException
import timber.log.Timber
import java.time.LocalDate
import java.time.Period

class LoginViewModel(
    private val loginUseCase: LoginUseCase,
    private val asignarPacienteAlPsicologoUseCase: AsignarPacienteAlPsicologoUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    private val tokenDataStore: TokenDataStore,
    private val tokenHolder: TokenHolder,
) : ViewModel() {
    // ==================== VALIDACIONES DE CONTRASEÑA ====================

    companion object {
        /**
         * Regex para validar contraseña:
         * - Mínimo 8 caracteres
         * - Al menos una letra
         * - Al menos un número
         */
        private val PASSWORD_REGEX = Regex("^(?=.*[A-Za-z])(?=.*\\d).{8,}$")

        /**
         * Mensaje de error para la contraseña
         */
        fun getPasswordErrorMessage(): String = "La contraseña debe tener al menos 8 caracteres y contener letras y números"
    }

    /**
     * Valida una contraseña
     * @param password Contraseña a validar
     * @return true si la contraseña es válida, false en caso contrario
     */
    fun isValidPassword(password: String): Boolean = PASSWORD_REGEX.matches(password)

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

    fun setUsername(username: String) {
        _username.value = username
    }

    fun setPassword(password: String) {
        _password.value = password
    }

    /**
     * Ejecuta el proceso de inicio de sesión.
     * Válida los campos antes de realizar la llamada al caso de uso.
     */
    fun login() {
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
            !isValidPassword(passwordValue) -> {
                _loginError.value = getPasswordErrorMessage()
                return
            }
        }

        _isLoggingIn.value = true
        _loginError.value = null
        _loginResult.value = null

        viewModelScope.launch {
            try {
                val request =
                    LoginRequestDTO(
                        email = usernameValue,
                        password = passwordValue,
                    )

                val result = loginUseCase.login(request)

                result
                    .onSuccess { loginResponse ->
                        tokenDataStore.saveToken(loginResponse.token)
                        tokenHolder.setToken(loginResponse.token)
                        Timber.d("Login: token saved and cached in memory")
                        saveUserSession(loginResponse)
                        _loginResult.value = Result.success(loginResponse)
                        _loginError.value = null
                    }.onFailure { error ->
                        _loginResult.value = Result.failure(error)
                        _loginError.value =
                            when (error) {
                                is HttpException -> {
                                    when (error.code()) {
                                        401 -> "Credenciales incorrectas"
                                        404 -> "Usuario no encontrado"
                                        500 -> "Error en el servidor: los datos enviados no son válidos"
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
     * Guarda la sesión del usuario en DataStore
     */

    /**
     * Guarda la sesión del usuario en DataStore
     */
    private suspend fun saveUserSession(loginResponse: LoginResponseDTO) {
        try {
            val session =
                UserSession(
                    idUsuario = loginResponse.idUsuario,
                    nombre = loginResponse.nombre,
                    rol = loginResponse.rol,
                    idPsicologo = loginResponse.idPsicologo,
                    idPaciente = loginResponse.idPaciente,
                    idioma = loginResponse.idioma ?: "es",
                    tema = loginResponse.tema ?: false,
                )

            userSessionDataStore.saveSession(session)

            // ✅ Usar la variable 'session' directamente, no leer de nuevo
            println("=== SESIÓN GUARDADA ===")
            println("ID Usuario: ${session.idUsuario}")
            println("Nombre: ${session.nombre}")
            println("Rol: ${session.rol}")
            println("ID Psicólogo: ${session.idPsicologo}")
        } catch (e: Exception) {
            println("Error al guardar la sesión: ${e.message}")
        }
    }

    fun clearLoginFields() {
        _username.value = ""
        _password.value = ""
    }

    fun resetLoginState() {
        _loginResult.value = null
        _loginError.value = null
        _isLoggingIn.value = false
    }

    fun isLoginFormValid(): Boolean =
        _username.value.isNotBlank() &&
            _username.value.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) &&
            _password.value.isNotBlank() &&
            isValidPassword(_password.value)

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
    val metodoPago = MutableStateFlow<MetodoPago>(MetodoPago.EFECTIVO)
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

    // ── DatePicker para fecha de nacimiento (Psicólogo) ──
    private val _dateOfBirth = MutableStateFlow<LocalDate?>(null)
    val dateOfBirth: StateFlow<LocalDate?> = _dateOfBirth

    private val _showDatePicker = MutableStateFlow(false)
    val showDatePicker: StateFlow<Boolean> = _showDatePicker

    private val _dateError = MutableStateFlow<String?>(null)
    val dateError: StateFlow<String?> = _dateError

    private val _phoneError = MutableStateFlow<String?>(null)
    val phoneError: StateFlow<String?> = _phoneError

    private val _emailError = MutableStateFlow<String?>(null)
    val emailError: StateFlow<String?> = _emailError

    private val _passwordError = MutableStateFlow<String?>(null)
    val passwordError: StateFlow<String?> = _passwordError

    // ── Setters ──
    fun setNombre(value: String) {
        nombre.value = value
    }

    fun setApellido(value: String) {
        apellido.value = value
    }

    fun setDni(value: String) {
        dni.value = value
    }

    fun setEmail(value: String) {
        email.value = value
    }

    fun setRegPassword(value: String) {
        regPassword.value = value
    }

    fun setTelefono(value: String) {
        telefono.value = value
    }

    fun setGenero(value: String) {
        genero.value = value
    }

    fun setFechaNacimiento(value: String) {
        fechaNacimiento.value = value
    }

    fun setTutorNombre(value: String) {
        tutorNombre.value = value
    }

    fun setTutorTelefono(value: String) {
        tutorTelefono.value = value
    }

    fun setTutorEmail(value: String) {
        tutorEmail.value = value
    }

    fun setTutorDni(value: String) {
        tutorDni.value = value
    }

    fun setTutorTipo(value: String) {
        tutorTipo.value = value
    }

    fun setRegistroEspecialidad(value: String) {
        registroEspecialidad.value = value
    }

    fun setRegistroExperiencia(value: Int?) {
        registroExperiencia.value = value
    }

    fun setRegistroDescripcion(value: String?) {
        registroDescripcion.value = value
    }

    fun setRegistroLicencia(value: String?) {
        registroLicencia.value = value
    }

    fun setDateOfBirth(date: LocalDate) {
        _dateOfBirth.value = date
    }

    fun setShowDatePicker(show: Boolean) {
        _showDatePicker.value = show
    }

    fun setDateError(error: String?) {
        _dateError.value = error
    }

    fun setPhoneError(error: String?) {
        _phoneError.value = error
    }

    fun setEmailError(error: String?) {
        _emailError.value = error
    }

    fun setPasswordError(error: String?) {
        _passwordError.value = error
    }

    fun setTelefonoPsicologo(value: String) {
        telefono.value = value
    }

    fun resetRegisterState() {
        _isRegistering.value = false
        _registerError.value = null
        _registerSuccess.value = false
        _dateOfBirth.value = null
        _dateError.value = null
        _phoneError.value = null
        _emailError.value = null
        _passwordError.value = null
    }

    // ── Dirección ──
    val calle = MutableStateFlow("")
    val ciudad = MutableStateFlow("")
    val provincia = MutableStateFlow("")
    val codigoPostal = MutableStateFlow("")
    val pais = MutableStateFlow("España")

    fun setCalle(value: String) {
        calle.value = value
    }

    fun setCiudad(value: String) {
        ciudad.value = value
    }

    fun setProvincia(value: String) {
        provincia.value = value
    }

    fun setCodigoPostal(value: String) {
        codigoPostal.value = value
    }

    fun setPais(value: String) {
        pais.value = value
    }

    // ── Estados derivados ──

    val esMenor: StateFlow<Boolean> =
        fechaNacimiento
            .map { f ->
                try {
                    val nacimiento = LocalDate.parse(f)
                    Period.between(nacimiento, LocalDate.now()).years < 18
                } catch (e: Exception) {
                    false
                }
            }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    val tutorValido: StateFlow<Boolean> =
        combine(
            esMenor,
            tutorNombre,
            tutorTelefono,
            tutorEmail,
            tutorDni,
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

    val direccionValida: StateFlow<Boolean> =
        combine(calle) { array ->
            array[0].isNotBlank()
        }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    val formularioValido: StateFlow<Boolean> =
        combine(
            nombre,
            apellido,
            dni,
            email,
            regPassword,
            telefono,
            genero,
            fechaNacimiento,
            aceptaTerminos,
        ) { array ->
            val n = array[0] as String
            val a = array[1] as String
            val d = array[2] as String
            val e = array[3] as String
            val p = array[4] as String
            val t = array[5] as String
            val g = array[6] as String
            val f = array[7] as String
            val term = array[8] as Boolean

            val camposCompletos = listOf(n, a, d, e, p, t, g, f).all { it.isNotBlank() }
            val fechaValida = f.matches(Regex("""\d{4}-\d{2}-\d{2}"""))
            val passwordValida = isValidPassword(p) // ✅ Validación de contraseña

            camposCompletos && fechaValida && term && passwordValida
        }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    val formularioCompletoValido: StateFlow<Boolean> =
        combine(
            formularioValido,
            tutorValido,
            direccionValida,
        ) { formValido, tutorVal, dirVal ->
            formValido && tutorVal && dirVal
        }.stateIn(viewModelScope, SharingStarted.Lazily, false)

    // ── Acciones de registro ──

    fun limpiarFormularioPsicologo() {
        nombre.value = ""
        apellido.value = ""
        email.value = ""
        regPassword.value = ""
        telefono.value = ""
        registroEspecialidad.value = ""
        registroExperiencia.value = null
        registroDescripcion.value = null
        registroLicencia.value = null
        _dateOfBirth.value = null
        clearAllErrors()
        resetRegisterState()
    }

    /**
     * Registrar Administrador con validación de contraseña
     */
    fun registrarAdmin() {
        // ✅ Validar contraseña antes de registrar
        if (!isValidPassword(regPassword.value)) {
            _registerError.value = getPasswordErrorMessage()
            return
        }

        _isRegistering.value = true
        _registerError.value = null
        _registerSuccess.value = false

        viewModelScope.launch {
            try {
                val result =
                    loginUseCase.registrarAdmin(
                        RegistryPacienteDTO(
                            nombre = nombre.value,
                            apellido = apellido.value,
                            email = email.value,
                            password = regPassword.value,
                        ),
                    )

                result
                    .onSuccess {
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

    /**
     * Registrar Paciente con validación de contraseña
     */
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
                val tutoresList =
                    if (esMenor.value) {
                        listOf(
                            TutorRequestDTO(
                                nombre = tutorNombre.value,
                                telefono = tutorTelefono.value,
                                email = tutorEmail.value,
                                dni = tutorDni.value,
                                tipo = tutorTipo.value,
                            ),
                        )
                    } else {
                        emptyList()
                    }

                val direccion =
                    DireccionRequest(
                        idPaciente = null,
                        calle = calle.value,
                        ciudad = ciudad.value.ifBlank { null },
                        provincia = provincia.value.ifBlank { null },
                        codigoPostal = codigoPostal.value.ifBlank { null },
                        pais = pais.value.ifBlank { null },
                    )

                val request =
                    PacienteRequest(
                        fechaNacimiento = fechaNacimiento.value,
                        genero = genero.value,
                        telefono = telefono.value,
                        usuario =
                            UsuarioRequest(
                                nombre = nombre.value,
                                apellido = apellido.value,
                                email = email.value,
                                password = regPassword.value,
                                rol = Rol.PACIENTE,
                                dni = dni.value,
                            ),
                        aceptaTerminos = aceptaTerminos.value,
                        aceptaVideoconferencia = aceptaVideoconferencia.value,
                        aceptaComunicacion = aceptaComunicacion.value,
                        idSituaciones = situacionesIds.value,
                        tutores = tutoresList,
                        direccion = listOf(direccion),
                    )

                val result = loginUseCase.registerPaciente(request)

                result
                    .onSuccess { response ->
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
        metodoPago.value = MetodoPago.EFECTIVO
        situacionesIds.value = emptyList()
        calle.value = ""
        ciudad.value = ""
        provincia.value = ""
        codigoPostal.value = ""
        pais.value = "España"
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

    fun asignarPaciente(
        idPaciente: Long,
        idPsicologo: Long,
    ) {
        _isAsignandoPaciente.value = true
        _asignarPacienteError.value = null
        _asignarPacienteSuccess.value = false

        viewModelScope.launch {
            try {
                val result = asignarPacienteAlPsicologoUseCase(idPaciente, idPsicologo)

                result
                    .onSuccess {
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

    // ── Registro de Psicólogo con validación de contraseña ──

    private fun isValidEmail(email: String): Boolean = Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(email)

    private fun isValidPhone(phone: String): Boolean = Regex("^[0-9]{9}$").matches(phone)

    private fun calculateAge(dateOfBirth: LocalDate): Int = Period.between(dateOfBirth, LocalDate.now()).years

    private fun isAdult(dateOfBirth: LocalDate): Boolean = calculateAge(dateOfBirth) >= 18

    fun clearAllErrors() {
        _dateError.value = null
        _phoneError.value = null
        _emailError.value = null
        _passwordError.value = null
    }

    /**
     * Validar todos los campos antes de registrar psicólogo
     * Incluye validación de contraseña
     */
    fun validatePsychologistForm(): Pair<Boolean, String?> {
        if (nombre.value.isBlank()) return Pair(false, "nombre")
        if (apellido.value.isBlank()) return Pair(false, "apellido")
        if (email.value.isBlank()) return Pair(false, "email")
        if (!isValidEmail(email.value)) return Pair(false, "email")
        // ✅ Validar contraseña
        if (regPassword.value.isBlank()) return Pair(false, "password")
        if (!isValidPassword(regPassword.value)) return Pair(false, "password")
        if (_dateOfBirth.value == null) return Pair(false, "fecha")
        if (!isAdult(_dateOfBirth.value!!)) return Pair(false, "fecha")
        if (telefono.value.isBlank()) return Pair(false, "telefono")
        if (!isValidPhone(telefono.value)) return Pair(false, "telefono")
        if (registroEspecialidad.value.isBlank()) return Pair(false, "especialidad")

        return Pair(true, null)
    }

    /**
     * Ejecuta el proceso de registro de psicólogo con validación de contraseña
     */
    fun registrarPsicologo() {
        clearAllErrors()

        val (isValid, invalidField) = validatePsychologistForm()
        if (!isValid) {
            when (invalidField) {
                "fecha" -> _dateError.value = "Debes ser mayor de 18 años"
                "email" -> _emailError.value = "Introduce un correo electrónico válido"
                "password" -> _passwordError.value = getPasswordErrorMessage()
                "telefono" -> _phoneError.value = "El teléfono debe tener 9 dígitos"
                "nombre" -> _registerError.value = "El nombre es obligatorio"
                "apellido" -> _registerError.value = "El apellido es obligatorio"
                "especialidad" -> _registerError.value = "La especialidad es obligatoria"
            }
            return
        }

        _isRegistering.value = true
        _registerError.value = null
        _registerSuccess.value = false

        viewModelScope.launch {
            try {
                val psicologoRequest =
                    PsicologoRequestDTO(
                        nombrePsicologo = nombre.value,
                        apellidoPsicologo = apellido.value,
                        email = email.value,
                        password = regPassword.value,
                        especialidad = registroEspecialidad.value,
                        experiencia = registroExperiencia.value,
                        descripcion = registroDescripcion.value,
                        licencia = registroLicencia.value,
                        telefono = telefono.value,
                    )

                val result = loginUseCase.registrarPsicologo(psicologoRequest)

                result
                    .onSuccess { response ->
                        _registerSuccess.value = true
                        _registerError.value = null
                    }.onFailure { error ->
                        if (error.message?.contains("email", ignoreCase = true) == true) {
                            _emailError.value = "Este correo electrónico ya está registrado"
                        }
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

    // ── Registrar paciente desde psicólogo con validación de contraseña ──

    private val _crearPacienteDesdePsicologoSuccess = MutableStateFlow(false)
    val crearPacienteDesdePsicologoSuccess: StateFlow<Boolean> = _crearPacienteDesdePsicologoSuccess

    private val _crearPacienteDesdePsicologoError = MutableStateFlow<String?>(null)
    val crearPacienteDesdePsicologoError: StateFlow<String?> = _crearPacienteDesdePsicologoError

    private val _isCreandoPacienteDesdePsicologo = MutableStateFlow(false)
    val isCreandoPacienteDesdePsicologo: StateFlow<Boolean> = _isCreandoPacienteDesdePsicologo

    fun registrarPacienteDesdePsicologo() {
        if (!formularioCompletoValido.value) {
            _crearPacienteDesdePsicologoError.value = "Complete todos los campos obligatorios"
            return
        }

        _isCreandoPacienteDesdePsicologo.value = true
        _crearPacienteDesdePsicologoError.value = null
        _crearPacienteDesdePsicologoSuccess.value = false

        viewModelScope.launch {
            try {
                val tutoresList =
                    if (esMenor.value) {
                        listOf(
                            TutorRequestDTO(
                                nombre = tutorNombre.value,
                                telefono = tutorTelefono.value,
                                email = tutorEmail.value,
                                dni = tutorDni.value,
                                tipo = tutorTipo.value,
                            ),
                        )
                    } else {
                        emptyList()
                    }

                val direccion =
                    DireccionRequest(
                        idPaciente = null,
                        calle = calle.value,
                        ciudad = ciudad.value.ifBlank { null },
                        provincia = provincia.value.ifBlank { null },
                        codigoPostal = codigoPostal.value.ifBlank { null },
                        pais = pais.value.ifBlank { null },
                    )

                val request =
                    PacienteRequest(
                        fechaNacimiento = fechaNacimiento.value,
                        genero = genero.value,
                        telefono = telefono.value,
                        usuario =
                            UsuarioRequest(
                                nombre = nombre.value,
                                apellido = apellido.value,
                                email = email.value,
                                password = regPassword.value,
                                rol = Rol.PACIENTE,
                                dni = dni.value,
                            ),
                        aceptaTerminos = aceptaTerminos.value,
                        aceptaVideoconferencia = aceptaVideoconferencia.value,
                        aceptaComunicacion = aceptaComunicacion.value,
                        idSituaciones = situacionesIds.value,
                        tutores = tutoresList,
                        direccion = listOf(direccion),
                    )

                val result = loginUseCase.registrarPacienteDesdePsicologo(request)

                result
                    .onSuccess { response ->
                        _crearPacienteDesdePsicologoSuccess.value = true
                        _crearPacienteDesdePsicologoError.value = null
                        limpiarFormulario()
                    }.onFailure { error ->
                        _crearPacienteDesdePsicologoError.value = error.message ?: "Error al registrar paciente"
                        _crearPacienteDesdePsicologoSuccess.value = false
                    }
            } catch (e: Exception) {
                _crearPacienteDesdePsicologoError.value = e.message ?: "Error inesperado al registrar paciente"
                _crearPacienteDesdePsicologoSuccess.value = false
            } finally {
                _isCreandoPacienteDesdePsicologo.value = false
            }
        }
    }

    fun resetCrearPacienteDesdePsicologoState() {
        _crearPacienteDesdePsicologoSuccess.value = false
        _crearPacienteDesdePsicologoError.value = null
        _isCreandoPacienteDesdePsicologo.value = false
    }
}
