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
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest
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

    private val _pacientesAsignados = MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientesAsignados: StateFlow<List<PacientePsicologoResponseDTO>> = _pacientesAsignados.asStateFlow()

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

        val session = _userSession.value ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        val psychologistId = session.idPsicologo ?: run {
            _errorMessage.value = "idPsicologo nulo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true

            citasRepository.actualizarHorario(psychologistId, HorarioRequestDTO(franjas))
                .onSuccess {
                    // Refresca agenda y disponibilidad tras guardar el horario.
                    cargarAgendaMensual(_mesVisible.value)
                    val fechaActual = _disponibilidadDia.value?.fecha
                    _disponibilidadDia.value = null
                    if (fechaActual != null) {
                        cargarDisponibilidadDia(fechaActual)
                    }

                    _successMessage.value = "Horario actualizado correctamente"
                    viewModelScope.launch { HorarioEvents.notificar() }
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error al actualizar el horario"
                }

            _isLoading.value = false
        }
    }

    fun alternarDiaNoDisponible(
        fecha: LocalDate,
        yaNoDisponible: Boolean,
        horaInicio: String? = null,
        horaFin: String? = null,
        motivo: String? = null
    ) {
        val session = _userSession.value ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        val psychologistId = session.idPsicologo ?: run {
            _errorMessage.value = "idPsicologo nulo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.alternarDiaNoDisponible(
                idPsicologo = psychologistId,
                fecha = fecha.toString(),
                yaNoDisponible = yaNoDisponible,
                horaInicio = horaInicio,
                horaFin = horaFin,
                motivo = motivo
            )
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al alternar día no disponible"
                }
            _isLoading.value = false
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
                    _successMessage.value = "Duración de citas actualizada a ${nuevaDuracion} minutos"

                    // ✅ IMPORTANTE: Recargar disponibilidad si hay una fecha seleccionada
                    val fechaActual = _disponibilidadDia.value?.fecha
                    if (fechaActual != null) {
                        // Recargar con la nueva duración
                        cargarDisponibilidadDia(fechaActual, nuevaDuracion)
                    }
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al actualizar la duración de las citas"
                }
            _isLoading.value = false
        }
    }

    // ✅ MÉTODO CORREGIDO: Crear cita usando el endpoint de psicólogo
    // ✅ MÉTODO CORREGIDO: Crear cita usando el endpoint de psicólogo
    fun crearCita(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        monto: BigDecimal
    ) {
        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }

        viewModelScope.launch {
            _isLoading.value = true

            val startDatetime = LocalDateTime.of(fecha, hora)

            val request = CitaRequest(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = startDatetime.toString(),
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago.name,
                monto = monto,
                idTipoTerapia = idTipoTerapia,
                estadoPago = if (metodoPago == MetodoPago.ONLINE) "PAGADO" else "PENDIENTE",
                estado = "PENDIENTE",
                motivo = motivo
            )

            citasRepository.crearCita(request)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                    cargarDisponibilidadDia(fecha)
                    _successMessage.value = "Cita creada correctamente"
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error al crear la cita"
                }

            _isLoading.value = false
        }
    }
    // Método para editar cita (usando el endpoint existente)
    fun editarCita(
        idCita: Long,
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        monto: BigDecimal
    ) {
        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }
        viewModelScope.launch {
            _isLoading.value = true

            val startDatetime = LocalDateTime.of(fecha, hora)

            val request = CitaRequest(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = startDatetime.toString(),
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago.name,
                monto = monto,
                idTipoTerapia = idTipoTerapia,
                estadoPago = if (metodoPago == MetodoPago.ONLINE) "PAGADO" else "PENDIENTE",
                estado = "PENDIENTE",
                motivo = motivo
            )

            citasRepository.editarCita(idCita, request)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                    cargarDisponibilidadDia(fecha)
                    _successMessage.value = "Cita editada correctamente"
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al editar la cita"
                }

            _isLoading.value = false
        }
    }

    fun cancelarCita(idCita: Long, fecha: LocalDate) {
        viewModelScope.launch {
            _isLoading.value = true

            citasRepository.cancelarCita(idCita)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                    cargarDisponibilidadDia(fecha) // 🔥 CLAVE
                    _successMessage.value = "Cita cancelada correctamente"
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error al cancelar la cita"
                }

            _isLoading.value = false
        }
    }
}