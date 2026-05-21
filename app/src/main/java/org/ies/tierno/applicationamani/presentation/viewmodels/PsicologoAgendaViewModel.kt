package org.ies.tierno.applicationamani.presentation.viewmodels

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.events.HorarioEvents
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter

/**
 * ViewModel que gestiona la agenda del psicólogo.
 *
 * Permite visualizar la agenda mensual de citas, gestionar la disponibilidad
 * diaria, crear y cancelar citas, cambiar el estado de las mismas y administrar
 * el horario laboral. También expone la lista de pacientes asignados.
 *
 * @param citasRepository Repositorio para operaciones de citas y disponibilidad.
 * @param authRepository Repositorio de autenticación para obtener pacientes asignados.
 * @param userSessionDataStore Almacén local de la sesión del psicólogo autenticado.
 */
class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
    private val authRepository: AuthRepository,
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {
    /** Sesión del psicólogo autenticado. `null` si no hay sesión activa. */
    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    /** Lista de citas del mes visible en la agenda del psicólogo. */
    private val _agendaMensual = MutableStateFlow<List<AgendaItemDTO>>(emptyList())
    val agendaMensual: StateFlow<List<AgendaItemDTO>> = _agendaMensual.asStateFlow()

    /** Mes actualmente visible en la vista de agenda. */
    private val _mesVisible = MutableStateFlow(YearMonth.now())
    val mesVisible: StateFlow<YearMonth> = _mesVisible.asStateFlow()

    /** Indica si una operación de carga está en curso. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    /** Mensaje de confirmación de la última operación exitosa. */
    private val _successMessage = MutableStateFlow<String?>(null)
    val successMessage: StateFlow<String?> = _successMessage.asStateFlow()

    /** Lista de pacientes asignados al psicólogo autenticado. */
    private val _pacientesAsignados =
        MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientesAsignados: StateFlow<List<PacientePsicologoResponseDTO>> =
        _pacientesAsignados.asStateFlow()

    private val _pacientesError = MutableStateFlow<String?>(null)
    val pacientesError: StateFlow<String?> = _pacientesError.asStateFlow()

    /** Disponibilidad horaria para la fecha seleccionada. */
    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    /** Duración por defecto de las citas en minutos. */
    private val _duracionCita = MutableStateFlow(60)
    val duracionCita: StateFlow<Int> = _duracionCita.asStateFlow()

    /** Horario laboral actual del psicólogo. */
    private val _horarioActual = MutableStateFlow<HorarioRequestDTO?>(null)
    val horarioActual = _horarioActual.asStateFlow()

    /**
     * Carga el horario laboral actual del psicólogo desde el backend.
     */
    fun cargarHorarioActual() {
        val id = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            citasRepository
                .getHorarioActual(id)
                .onSuccess {
                    _horarioActual.value = it // ✔️ es HorarioRequestDTO completo
                }.onFailure {
                    _errorMessage.value = "Error cargando horario"
                }
        }
    }

    init {
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
                if (session?.idPsicologo != null) {
                    if (_pacientesAsignados.value.isEmpty()) {
                        cargarPacientesAsignados()
                    }
                    cargarDuracionCita()
                }
            }
        }
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _errorMessage.value = null
    }

    /** Limpia el mensaje de confirmación actual. */
    fun clearSuccess() {
        _successMessage.value = null
    }

    /**
     * Carga la agenda de citas para el mes especificado.
     *
     * @param month Mes y año del que se desea obtener la agenda.
     */
    fun cargarAgendaMensual(month: YearMonth) {
        Log.d("PSICOLOGO_AGENDA_VM", "📞 cargarAgendaMensual($month) - INICIO")

        val idPsicologo = userSession.value?.idPsicologo
        Log.d("PSICOLOGO_AGENDA_VM", "   - idPsicologo obtenido: $idPsicologo")

        if (idPsicologo == null || idPsicologo <= 0) {
            Log.e(
                "PSICOLOGO_AGENDA_VM",
                "❌ idPsicologo inválido: $idPsicologo - NO se hace la petición",
            )
            return
        }

        Log.d(
            "PSICOLOGO_AGENDA_VM",
            "✅ idPsicologo válido: $idPsicologo - Haciendo petición al backend",
        )
        println("📅 Cargando agenda para mes: $month")
        val session = _userSession.value
        val psychologistId = session?.idPsicologo
        if (psychologistId == null) {
            _errorMessage.value = "No hay sesión de psicólogo o id nulo."
            _agendaMensual.value = emptyList()
            return
        }

        _mesVisible.value = month

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository
                .getAgendaPsicologo(psychologistId, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }.onFailure { error ->
                    _errorMessage.value = error.message ?: "No se pudo cargar la agenda"
                    _agendaMensual.value = emptyList()
                }
            _isLoading.value = false
        }
    }

    fun actualizarHorario(franjas: List<FranjaHorarioDTO>) {
        if (franjas.isEmpty()) {
            _errorMessage.value = "No hay franjas configuradas"
            return
        }

        val session = _userSession.value
        val psychologistId =
            session?.idPsicologo ?: run {
                _errorMessage.value = "No hay sesión de psicólogo"
                return
            }

        viewModelScope.launch {
            _isLoading.value = true

            try {
                citasRepository
                    .actualizarHorario(
                        psychologistId,
                        HorarioRequestDTO(franjas),
                    ).onSuccess {
                        val fechaActual = _disponibilidadDia.value?.fecha

                        cargarAgendaMensual(_mesVisible.value)

                        if (fechaActual != null) {
                            cargarDisponibilidadDia(fechaActual)
                        }

                        _successMessage.value = "Horario actualizado correctamente"
                        HorarioEvents.notificar()
                    }.onFailure {
                        _errorMessage.value = it.message ?: "Error al actualizar el horario"
                    }
            } finally {
                _isLoading.value = false
            }
        }
    }

    fun bloquearDia(
        fecha: LocalDate,
        motivo: String?,
    ) {
        val id = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            citasRepository
                .bloquearDiaNoDisponible(
                    id,
                    fecha.toString(),
                    null,
                    null,
                    motivo,
                ).onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }.onFailure {
                    _errorMessage.value = it.message
                }
        }
    }

    fun quitarBloqueoDia(fecha: LocalDate) {
        val id = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            citasRepository
                .quitarDiaNoDisponible(
                    id,
                    fecha.toString(),
                ).onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }.onFailure {
                    _errorMessage.value = it.message
                }
        }
    }

    /**
     * Carga la lista de pacientes asignados al psicólogo desde [AuthRepository].
     */
    fun cargarPacientesAsignados() {
        viewModelScope.launch {
            _pacientesError.value = null
            authRepository.getPacientesByPsicologo().collect { pacientes ->
                _pacientesAsignados.value = pacientes
                if (pacientes.isEmpty()) {
                    _pacientesError.value = "No hay pacientes asignados"
                }
            }
        }
    }

    fun reintentarCargarPacientes() {
        cargarPacientesAsignados()
    }

    /**
     * Carga la disponibilidad horaria para una fecha y duración de cita específicas.
     *
     * @param fecha Fecha para la que se consulta la disponibilidad.
     * @param duracionMinutos Duración de la cita en minutos para calcular huecos disponibles.
     */
    fun cargarDisponibilidadDia(
        fecha: LocalDate,
        durationMinutes: Int = _duracionCita.value,
    ) {
        Log.d("PSICOLOGO_AGENDA_VM", "📞 cargarDisponibilidadDia($fecha, $duracionCita) - INICIO")

        val idPsicologo = userSession.value?.idPsicologo
        Log.d("PSICOLOGO_AGENDA_VM", "   - idPsicologo obtenido: $idPsicologo")

        if (idPsicologo == null || idPsicologo <= 0) {
            Log.e(
                "PSICOLOGO_AGENDA_VM",
                "❌ idPsicologo inválido: $idPsicologo - NO se hace la petición",
            )
            return
        }

        Log.d(
            "PSICOLOGO_AGENDA_VM",
            "✅ idPsicologo válido: $idPsicologo - Haciendo petición al backend",
        )
        val psychologistId = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            _isLoading.value = true

            // 🔥 IMPORTANTE: limpiar antes de recargar
            _disponibilidadDia.value = null

            citasRepository
                .getDisponibilidadDia(
                    psychologistId,
                    fecha.toString(),
                    durationMinutes,
                ).onSuccess {
                    _disponibilidadDia.value = it
                }.onFailure {
                    _errorMessage.value = it.message ?: "Error al cargar disponibilidad"
                }

            _isLoading.value = false
        }
    }

    fun limpiarDisponibilidad() {
        _disponibilidadDia.value = null
    }

    // ✅ Función para cargar la duración actual de las citas del psicólogo
    /**
     * Carga la duración por defecto de las citas desde el horario actual del psicólogo.
     */
    fun cargarDuracionCita() {
        val psychologistId = _userSession.value?.idPsicologo ?: return
        viewModelScope.launch {
            citasRepository
                .getDuracion(psychologistId)
                .onSuccess { duracion ->
                    _duracionCita.value = duracion
                }.onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cargar la duración de las citas"
                }
        }
    }

    // ✅ Función para actualizar la duración de las citas del psicólogo
    // En PsicologoAgendaViewModel.kt

    fun actualizarDuracionCita(nuevaDuracion: Int) {
        val psychologistId =
            _userSession.value?.idPsicologo ?: run {
                _errorMessage.value = "No hay sesión de psicólogo"
                return
            }

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository
                .actualizarDuracion(psychologistId, nuevaDuracion)
                .onSuccess {
                    _duracionCita.value = nuevaDuracion
                    _successMessage.value =
                        "Duración de citas actualizada a $nuevaDuracion minutos"

                    // ✅ IMPORTANTE: Recargar disponibilidad si hay una fecha seleccionada
                    val fechaActual = _disponibilidadDia.value?.fecha
                    if (fechaActual != null) {
                        // Recargar con la nueva duración
                        cargarDisponibilidadDia(fechaActual, nuevaDuracion)
                    }
                }.onFailure { e ->
                    _errorMessage.value =
                        e.message ?: "Error al actualizar la duración de las citas"
                }
            _isLoading.value = false
        }
    }

    fun editarCita(
        idCita: Long,
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        estadoPago: EstadoPago, // ← AÑADIR ESTE PARÁMETRO
        monto: BigDecimal,
        modalidad: ModalidadCita,
    ) {
        if (idCita <= 0) {
            _errorMessage.value = "ID de cita inválido"
            return
        }

        val psychologistId =
            _userSession.value?.idPsicologo ?: run {
                _errorMessage.value = "No hay sesión de psicólogo"
                return
            }

        viewModelScope.launch {
            _isLoading.value = true

            val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")
            val startDatetime = LocalDateTime.of(fecha, hora).format(formatter)

            val request =
                CrearCitaRequestDTO(
                    idPaciente = idPaciente,
                    idPsicologo = psychologistId,
                    startDatetime = startDatetime,
                    durationMinutes = duracionMinutos,
                    metodoPago = metodoPago,
                    estadoPago = estadoPago, // ← USAR EL ESTADO RECIBIDO
                    monto = monto,
                    motivo = motivo,
                    estado = EstadoCita.PENDIENTE,
                    idTipoTerapia = idTipoTerapia,
                    modalidad = modalidad,
                )
            android.util.Log.d("EDIT_CITA", "========== EDITAR CITA ==========")
            android.util.Log.d("EDIT_CITA", "idCita: $idCita")
            android.util.Log.d("EDIT_CITA", "idPaciente: $idPaciente")
            android.util.Log.d("EDIT_CITA", "fecha: $fecha hora: $hora")
            android.util.Log.d("EDIT_CITA", "motivo: $motivo")
            android.util.Log.d("EDIT_CITA", "metodoPago: $metodoPago")
            android.util.Log.d("EDIT_CITA", "estadoPago: $estadoPago")
            android.util.Log.d("EDIT_CITA", "monto: $monto")
            android.util.Log.d("EDIT_CITA", "modalidad: $modalidad")
            android.util.Log.d("EDIT_CITA", "request FINAL: $request")
            citasRepository
                .editarCita(idCita, request)
                .onSuccess { citaActualizada ->

                    android.util.Log.d("EDIT_CITA", "✅ SUCCESS RESPONSE: $citaActualizada")
                    // Actualizar la lista localmente sin recargar todo
                    _agendaMensual.value =
                        _agendaMensual.value
                            .map { if (it.id == idCita) citaActualizada else it }
                            .sortedWith(
                                compareBy<AgendaItemDTO> { it.fecha }
                                    .thenBy { it.horaInicio },
                            )

                    // Recargar disponibilidad del día
                    cargarDisponibilidadDia(fecha, duracionMinutos)

                    _successMessage.value = "✏️ Cita editada correctamente"
                }.onFailure { e ->
                    android.util.Log.e("EDIT_CITA", "❌ ERROR EDITANDO CITA", e)
                    android.util.Log.e("EDIT_CITA", "mensaje: ${e.message}")
                }

            _isLoading.value = false
        }
    }

    fun cancelarCita(
        idCita: Long,
        fecha: LocalDate,
        horaInicio: LocalTime,
        duracionMinutos: Int,
    ) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository
                .cancelarCita(idCita)
                .onSuccess { citaActualizada ->
                    // Recargar la agenda mensual para eliminar la cita de la lista
                    cargarAgendaMensual(_mesVisible.value)

                    // Recargar disponibilidad del día para que la hora vuelva a estar libre
                    cargarDisponibilidadDia(fecha, duracionMinutos)

                    // Mostrar mensaje según el estado del pago
                    val mensaje =
                        when (citaActualizada?.estadoPago) {
                            EstadoPago.REEMBOLSADO -> "✅ Cita cancelada. Se ha procesado el reembolso."
                            EstadoPago.PENDIENTE -> "✅ Cita cancelada. No se realizó cargo."
                            EstadoPago.FALLIDO -> "✅ Cita cancelada. El pago ya había fallado."
                            else -> "✅ Cita cancelada correctamente"
                        }
                    _successMessage.value = mensaje
                }.onFailure {
                    _errorMessage.value = it.message ?: "Error al cancelar la cita"
                }
            _isLoading.value = false
        }
    }

    /**
     * Crea una nueva cita desde la perspectiva del psicólogo para un paciente asignado.
     *
     * Es una función suspendida que construye la petición [CrearCitaRequestDTO]
     * y la envía a [CitasRepository.crearCita]. Si la operación tiene éxito,
     * refresca la agenda mensual y la disponibilidad del día. En caso de error,
     * actualiza [_errorMessage] con el mensaje recibido.
     *
     * @param idPaciente Identificador del paciente para el que se crea la cita.
     * @param fecha Fecha de la cita.
     * @param hora Hora de inicio de la cita.
     * @param duracionMinutos Duración en minutos de la cita.
     * @param motivo Motivo o descripción de la consulta.
     * @param idTipoTerapia Identificador del tipo de terapia.
     * @param metodoPago Método de pago seleccionado.
     * @param monto Importe de la cita.
     * @param modalidad Modalidad de la cita (presencial, videoconferencia, etc.).
     * @return [Result.success] si la cita se creó correctamente, [Result.failure] en caso contrario.
     */
    suspend fun crearCitaDesdePsicologo(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        estadoPago: EstadoPago,
        monto: BigDecimal,
        modalidad: ModalidadCita,
    ): Result<Unit> {
        val session = _userSession.value
        if (session == null) {
            _errorMessage.value = "No hay sesión de usuario"
            return Result.failure(Exception("No hay sesión"))
        }

        val psychologistId = session.idPsicologo
        if (psychologistId == null) {
            _errorMessage.value = "No hay ID de psicólogo"
            return Result.failure(Exception("No hay id del psicólogo"))
        }

        if (idTipoTerapia <= 0) {
            _errorMessage.value = "Debe seleccionar un tipo de terapia"
            return Result.failure(Exception("Tipo de terapia inválido"))
        }

        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")

        val startDatetime =
            LocalDateTime
                .of(fecha, hora)
                .format(formatter)

        val request =
            CrearCitaRequestDTO(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = startDatetime,
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago,
                estadoPago = estadoPago, // ← USAR EL ESTADO RECIBIDO
                monto = if (metodoPago == MetodoPago.TARJETA) monto else BigDecimal.ZERO,
                motivo = motivo.ifBlank { "Consulta psicológica" },
                idTipoTerapia = idTipoTerapia,
                estado = EstadoCita.PENDIENTE,
                modalidad = modalidad,
            )

        _isLoading.value = true

        return try {
            val resultado = citasRepository.crearCita(request)

            if (resultado.isSuccess) {
                android.util.Log.e("CITA_ERROR", "✅ CITA CREADA CON ÉXITO")
                _successMessage.value = "Cita creada exitosamente"
                cargarAgendaMensual(_mesVisible.value)
                cargarDisponibilidadDia(fecha, duracionMinutos)
                Result.success(Unit)
            } else {
                val error = resultado.exceptionOrNull()
                android.util.Log.e("CITA_ERROR", "❌ ERROR: ${error?.message}")
                error?.printStackTrace()
                _errorMessage.value = error?.message ?: "Error al crear la cita"
                Result.failure(error ?: Exception("Error desconocido"))
            }
        } catch (e: Exception) {
            android.util.Log.e("CITA_ERROR", "❌ EXCEPCIÓN: ${e.message}")
            e.printStackTrace()
            _errorMessage.value = "Error al crear cita: ${e.message}"
            Result.failure(e)
        } finally {
            _isLoading.value = false
        }
    }

    // En PsicologoAgendaViewModel.kt, añadir este método:

    /**
     * Crea una cita para un paciente con control detallado del estado de pago y modalidad.
     *
     * Similar a [crearCitaDesdePsicologo] pero con parámetros adicionales de
     * [metodoPago], [estadoPago] y [modalidad]. Es una función suspendida que
     * retorna [Result] para que el llamante pueda reaccionar al éxito o fallo.
     *
     * @param idPaciente Identificador del paciente.
     * @param fecha Fecha de la cita.
     * @param hora Hora de inicio.
     * @param duracionMinutos Duración en minutos.
     * @param motivo Motivo de la consulta.
     * @param idTipoTerapia Tipo de terapia.
     * @param metodoPago Método de pago.
     * @param estadoPago Estado inicial del pago.
     * @param monto Importe a cobrar.
     * @param modalidad Modalidad de la cita.
     * @return [Result.success] con Unit si se creó correctamente.
     */
    suspend fun crearCitaParaPaciente(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        estadoPago: EstadoPago,
        monto: BigDecimal,
        modalidad: ModalidadCita,
    ): Result<Unit> {
        Log.d("VM_CREAR_CITA", "========== INICIO crearCitaParaPaciente ==========")
        Log.d("VM_CREAR_CITA", "idPaciente: $idPaciente")
        Log.d("VM_CREAR_CITA", "fecha: $fecha, hora: $hora")
        Log.d("VM_CREAR_CITA", "idTipoTerapia: $idTipoTerapia")
        Log.d("VM_CREAR_CITA", "metodoPago: $metodoPago, estadoPago: $estadoPago")

        val session = _userSession.value
        Log.d("VM_CREAR_CITA", "session es null? ${session == null}")

        if (session == null) {
            Log.e("VM_CREAR_CITA", "❌ ERROR: session es null")
            return Result.failure(Exception("No hay sesión"))
        }

        val psychologistId = session.idPsicologo
        Log.d("VM_CREAR_CITA", "psychologistId: $psychologistId")

        if (psychologistId == null) {
            Log.e("VM_CREAR_CITA", "❌ ERROR: psychologistId es null")
            return Result.failure(Exception("No hay ID del psicólogo"))
        }


        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")
        val startDatetime = LocalDateTime.of(fecha, hora).format(formatter)

        val request =
            CrearCitaRequestDTO(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = startDatetime,
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago,
                estadoPago = estadoPago,
                monto = if (metodoPago == MetodoPago.TARJETA) monto else BigDecimal.ZERO,
                motivo = motivo.ifBlank { "Consulta psicológica" },
                idTipoTerapia = idTipoTerapia,
                modalidad = modalidad,
            )

        _isLoading.value = true

        return try {
            val resultado = citasRepository.crearCita(request)
            if (resultado.isSuccess) {
                _successMessage.value = "Cita creada exitosamente"
                cargarAgendaMensual(_mesVisible.value)
                cargarDisponibilidadDia(fecha, duracionMinutos)
                Result.success(Unit)
            } else {
                val error = resultado.exceptionOrNull() ?: Exception("Error al crear cita")
                _errorMessage.value = error.message
                Result.failure(error)
            }
        } catch (e: Exception) {
            _errorMessage.value = e.message
            Result.failure(e)
        } finally {
            _isLoading.value = false
        }
    }

    // En PsicologoAgendaViewModel.kt
    /**
     * Cambia el estado de una cita (pendiente, confirmada, cancelada, etc.).
     *
     * Lanza una corrutina que invoca [CitasRepository.cambiarEstadoCita] y
     * actualiza localmente la cita en [_agendaMensual] sin necesidad de recargar.
     *
     * @param idCita Identificador de la cita a modificar.
     * @param nuevoEstado Nuevo estado a asignar a la cita.
     */
    fun cambiarEstadoCita(
        idCita: Long,
        nuevoEstado: EstadoCita,
    ) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                citasRepository
                    .cambiarEstadoCita(idCita, nuevoEstado)
                    .onSuccess {
                        _agendaMensual.value =
                            _agendaMensual.value.map {
                                if (it.id == idCita) {
                                    it.copy(estado = nuevoEstado.name)
                                } else {
                                    it
                                }
                            }
                    }.onFailure {
                        _errorMessage.value = it.message
                    }
            } finally {
                _isLoading.value = false
            }
        }
    }

    private val _citaSeleccionada = MutableStateFlow<AgendaItemDTO?>(null)
    val citaSeleccionada = _citaSeleccionada.asStateFlow()

    /**
     * Selecciona una cita de la agenda por su ID y la expone en [citaSeleccionada].
     *
     * @param id Identificador de la cita a seleccionar.
     */
    fun seleccionarCitaPorId(id: Long) {
        println("🔍 seleccionarCitaPorId llamado con id: $id")
        println("📋 Agenda actual tiene ${_agendaMensual.value.size} citas")
        val cita = _agendaMensual.value.find { it.id == id }
        println("✅ Cita encontrada: ${cita != null}")
        _citaSeleccionada.value = cita
    }
}
