package org.ies.tierno.applicationamani.presentation.viewmodels

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

class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
    private val authRepository: AuthRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    private val _agendaMensual = MutableStateFlow<List<AgendaItemDTO>>(emptyList())
    val agendaMensual: StateFlow<List<AgendaItemDTO>> = _agendaMensual.asStateFlow()

    private val _mesVisible = MutableStateFlow(YearMonth.now())
    val mesVisible: StateFlow<YearMonth> = _mesVisible.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    private val _successMessage = MutableStateFlow<String?>(null)
    val successMessage: StateFlow<String?> = _successMessage.asStateFlow()

    private val _pacientesAsignados =
        MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientesAsignados: StateFlow<List<PacientePsicologoResponseDTO>> =
        _pacientesAsignados.asStateFlow()

    private val _pacientesError = MutableStateFlow<String?>(null)
    val pacientesError: StateFlow<String?> = _pacientesError.asStateFlow()

    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    private val _duracionCita = MutableStateFlow(60)
    val duracionCita: StateFlow<Int> = _duracionCita.asStateFlow()

    private val _horarioActual = MutableStateFlow<HorarioRequestDTO?>(null)
    val horarioActual = _horarioActual.asStateFlow()

    fun cargarHorarioActual() {
        val id = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            citasRepository.getHorarioActual(id)
                .onSuccess {
                    _horarioActual.value = it // ✔️ es HorarioRequestDTO completo
                }
                .onFailure {
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

    fun clearError() {
        _errorMessage.value = null
    }

    fun clearSuccess() {
        _successMessage.value = null
    }

    fun cargarAgendaMensual(month: YearMonth) {
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
            citasRepository.getAgendaPsicologo(psychologistId, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }
                .onFailure { error ->
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
        val psychologistId = session?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true

            try {
                citasRepository.actualizarHorario(
                    psychologistId,
                    HorarioRequestDTO(franjas)
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

    fun bloquearDia(fecha: LocalDate, motivo: String?) {
        val id = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            citasRepository.bloquearDiaNoDisponible(
                id,
                fecha.toString(),
                null,
                null,
                motivo
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
            citasRepository.quitarDiaNoDisponible(
                id,
                fecha.toString()
            ).onSuccess {
                cargarAgendaMensual(_mesVisible.value)
            }.onFailure {
                _errorMessage.value = it.message
            }
        }
    }

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

    fun cargarDisponibilidadDia(fecha: LocalDate, durationMinutes: Int = _duracionCita.value) {
        val psychologistId = _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            _isLoading.value = true

            // 🔥 IMPORTANTE: limpiar antes de recargar
            _disponibilidadDia.value = null

            citasRepository.getDisponibilidadDia(
                psychologistId,
                fecha.toString(),
                durationMinutes
            )
                .onSuccess {
                    _disponibilidadDia.value = it
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error al cargar disponibilidad"
                }

            _isLoading.value = false
        }
    }

    fun limpiarDisponibilidad() {
        _disponibilidadDia.value = null
    }

    // ✅ Función para cargar la duración actual de las citas del psicólogo
    fun cargarDuracionCita() {
        val psychologistId = _userSession.value?.idPsicologo ?: return
        viewModelScope.launch {
            citasRepository.getDuracion(psychologistId)
                .onSuccess { duracion ->
                    _duracionCita.value = duracion
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cargar la duración de las citas"
                }
        }
    }

    // ✅ Función para actualizar la duración de las citas del psicólogo
    // En PsicologoAgendaViewModel.kt

    fun actualizarDuracionCita(nuevaDuracion: Int) {
        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.actualizarDuracion(psychologistId, nuevaDuracion)
                .onSuccess {
                    _duracionCita.value = nuevaDuracion
                    _successMessage.value =
                        "Duración de citas actualizada a ${nuevaDuracion} minutos"

                    // ✅ IMPORTANTE: Recargar disponibilidad si hay una fecha seleccionada
                    val fechaActual = _disponibilidadDia.value?.fecha
                    if (fechaActual != null) {
                        // Recargar con la nueva duración
                        cargarDisponibilidadDia(fechaActual, nuevaDuracion)
                    }
                }
                .onFailure { e ->
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
        estadoPago: EstadoPago,  // ← AÑADIR ESTE PARÁMETRO
        monto: BigDecimal,
        modalidad : ModalidadCita
    ) {
        if (idCita <= 0) {
            _errorMessage.value = "ID de cita inválido"
            return
        }

        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true

            val formatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")
            val startDatetime = LocalDateTime.of(fecha, hora).format(formatter)

            val request = CrearCitaRequestDTO(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = startDatetime,
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago,
                estadoPago = estadoPago,  // ← USAR EL ESTADO RECIBIDO
                monto = monto,
                motivo = motivo,
                estado = EstadoCita.pendiente,
                idTipoTerapia = idTipoTerapia,
                modalidad = modalidad
            )

            citasRepository.editarCita(idCita, request)
                .onSuccess { citaActualizada ->
                    // Actualizar la lista localmente sin recargar todo
                    _agendaMensual.value = _agendaMensual.value
                        .map { if (it.id == idCita) citaActualizada else it }
                        .sortedWith(
                            compareBy<AgendaItemDTO> { it.fecha }
                                .thenBy { it.horaInicio }
                        )

                    // Recargar disponibilidad del día
                    cargarDisponibilidadDia(fecha, duracionMinutos)

                    _successMessage.value = "✏️ Cita editada correctamente"
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al editar la cita"
                }

            _isLoading.value = false
        }
    }

    fun cancelarCita(idCita: Long, fecha: LocalDate, horaInicio: LocalTime, duracionMinutos: Int) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.cancelarCita(idCita)
                .onSuccess { citaActualizada ->
                    // Recargar la agenda mensual para eliminar la cita de la lista
                    cargarAgendaMensual(_mesVisible.value)

                    // Recargar disponibilidad del día para que la hora vuelva a estar libre
                    cargarDisponibilidadDia(fecha, duracionMinutos)

                    // Mostrar mensaje según el estado del pago
                    val mensaje = when (citaActualizada?.estadoPago) {
                        EstadoPago.REEMBOLSADO -> "✅ Cita cancelada. Se ha procesado el reembolso."
                        EstadoPago.PENDIENTE -> "✅ Cita cancelada. No se realizó cargo."
                        EstadoPago.FALLIDO -> "✅ Cita cancelada. El pago ya había fallado."
                        else -> "✅ Cita cancelada correctamente"
                    }
                    _successMessage.value = mensaje
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error al cancelar la cita"
                }
            _isLoading.value = false
        }
    }

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
        modalidad: ModalidadCita
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

        val formatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")

        val startDatetime = LocalDateTime
            .of(fecha, hora)
            .format(formatter)

        val request = CrearCitaRequestDTO(
            idPaciente = idPaciente,
            idPsicologo = psychologistId,
            startDatetime = startDatetime,
            durationMinutes = duracionMinutos,
            metodoPago = metodoPago,
            estadoPago = estadoPago,  // ← USAR EL ESTADO RECIBIDO
            monto = if (metodoPago == MetodoPago.ONLINE) monto else BigDecimal.ZERO,
            motivo = motivo.ifBlank { "Consulta psicológica" },
            idTipoTerapia = idTipoTerapia,
            estado = EstadoCita.pendiente,
            modalidad = modalidad
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

    // En PsicologoAgendaViewModel.kt
    fun cambiarEstadoCita(idCita: Long, nuevoEstado: EstadoCita) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.cambiarEstadoCita(idCita, nuevoEstado)
                .onSuccess { citaActualizada ->
                    // Actualizar la lista local
                    _agendaMensual.value = _agendaMensual.value
                        .map { if (it.id == idCita) citaActualizada else it }
                        .sortedWith(
                            compareBy<AgendaItemDTO> { it.fecha }
                                .thenBy { it.horaInicio }
                        )
                    _successMessage.value = "Estado actualizado a ${nuevoEstado.name}"
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cambiar el estado"
                }
            _isLoading.value = false
        }
    }
}