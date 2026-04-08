package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth

class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
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

    private val _pacientesAsignados = MutableStateFlow<List<PacientesAsignadoDTO>>(emptyList())
    val pacientesAsignados: StateFlow<List<PacientesAsignadoDTO>> = _pacientesAsignados.asStateFlow()

    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    init {
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
                // Cargar pacientes asignados cuando la sesión esté disponible
                if (session?.idPsicologo != null && _pacientesAsignados.value.isEmpty()) {
                    cargarPacientesAsignados()
                }
            }
        }
    }

    fun clearError() {
        _errorMessage.value = null
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

    /**
     * Convierte las franjas del diálogo al DTO que espera Spring Boot.
     * Envía la estructura correcta: { franjas: [{ diaSemana, horaInicio, horaFin, activo }] }
     */
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
            val request = HorarioRequestDTO(franjas = franjas)
            citasRepository.actualizarHorario(psychologistId, request)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al actualizar el horario"
                }
            _isLoading.value = false
        }
    }

    /**
     * Bloquea un día completo (envía null en horaInicio/horaFin).
     * Para bloquear solo un rango horario, usar sobrecarga con esos parámetros.
     */
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

    // ── Cargar pacientes asignados ──

    fun cargarPacientesAsignados() {
        val psychologistId = _userSession.value?.idPsicologo ?: return
        viewModelScope.launch {
            citasRepository.getPacientesDelPsicologo(psychologistId)
                .onSuccess { _pacientesAsignados.value = it }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cargar pacientes"
                }
        }
    }

    // ── Cargar disponibilidad de un día ──

    fun cargarDisponibilidadDia(fecha: LocalDate) {
        val psychologistId = _userSession.value?.idPsicologo ?: return
        viewModelScope.launch {
            citasRepository.getDisponibilidadDia(psychologistId, fecha.toString())
                .onSuccess { _disponibilidadDia.value = it }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cargar disponibilidad"
                }
        }
    }

    fun limpiarDisponibilidad() {
        _disponibilidadDia.value = null
    }

    // ── Crear cita ──

    fun crearCita(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String
    ) {
        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }
        viewModelScope.launch {
            _isLoading.value = true
            val request = CitaRequest(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = "${fecha}T${hora}",
                durationMinutes = duracionMinutos,
                estado = "pendiente",
                motivo = motivo
            )
            citasRepository.crearCita(request)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al crear la cita"
                }
            _isLoading.value = false
        }
    }

    // ── Editar cita ──

    fun editarCita(
        idCita: Long,
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String
    ) {
        val psychologistId = _userSession.value?.idPsicologo ?: run {
            _errorMessage.value = "No hay sesión de psicólogo"
            return
        }
        viewModelScope.launch {
            _isLoading.value = true
            val request = CitaRequest(
                idPaciente = idPaciente,
                idPsicologo = psychologistId,
                startDatetime = "${fecha}T${hora}",
                durationMinutes = duracionMinutos,
                estado = "pendiente",
                motivo = motivo
            )
            citasRepository.editarCita(idCita, request)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al editar la cita"
                }
            _isLoading.value = false
        }
    }

    // ── Cancelar cita ──

    fun cancelarCita(idCita: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.cancelarCita(idCita)
                .onSuccess {
                    cargarAgendaMensual(_mesVisible.value)
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cancelar la cita"
                }
            _isLoading.value = false
        }
    }
}
