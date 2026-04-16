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
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.domain.events.HorarioEvents
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.YearMonth

class CitasViewModel(
    private val citasRepository: CitasRepository,
    private val profileRepository: ProfileRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    private val _psicologoId = MutableStateFlow<Long?>(null)
    val psicologoId: StateFlow<Long?> = _psicologoId.asStateFlow()

    private val _agendaMensual = MutableStateFlow<List<AgendaItemDTO>>(emptyList())
    val agendaMensual: StateFlow<List<AgendaItemDTO>> = _agendaMensual.asStateFlow()

    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    init {
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
                if (session?.idPsicologo != null) {
                    _psicologoId.value = session.idPsicologo
                } else if (session?.idPaciente != null) {
                    cargarPsicologoAsignado(session.idPaciente)
                }
            }
        }
        // Re-fetcha disponibilidad si el psicólogo actualiza su horario
        // mientras el paciente tiene una fecha seleccionada en pantalla
        viewModelScope.launch {
            HorarioEvents.horarioActualizado.collect {
                _disponibilidadDia.value?.fecha?.let { fecha ->
                    cargarDisponibilidad(fecha)
                }
            }
        }
    }

    private fun cargarPsicologoAsignado(idPaciente: Long) {
        viewModelScope.launch {
            profileRepository.obtenerPsicologoAsignado(idPaciente)
                .onSuccess { psicologo ->
                    _psicologoId.value = psicologo.idPsicologo
                }
                .onFailure { e ->
                    _errorMessage.value = "No se pudo obtener el psicólogo asignado: ${e.message}"
                }
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }

    fun cargarAgendaMensual(month: YearMonth) {
        val session = _userSession.value ?: return

        val idPaciente = session.idPaciente ?: session.idUsuario

        viewModelScope.launch {
            _isLoading.value = true

            citasRepository.getAgendaPaciente(idPaciente, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }
                .onFailure { error ->
                    _errorMessage.value = error.message ?: "Error cargando agenda"
                    _agendaMensual.value = emptyList()
                }
            _isLoading.value = false
        }
    }

    fun cargarDisponibilidad(fecha: LocalDate) {
        val idPsicologo = _psicologoId.value ?: _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.getDisponibilidadDia(idPsicologo, fecha.toString(), 60)
                .onSuccess {
                    _disponibilidadDia.value = it
                    _errorMessage.value = null
                }
                .onFailure {
                    _errorMessage.value = it.message ?: "Error disponibilidad"
                }
            _isLoading.value = false
        }
    }

    suspend fun reservarCita(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        monto: BigDecimal
    ): Result<Unit> {

        val session = _userSession.value
            ?: return Result.failure(Exception("No hay sesión"))

        val idPsicologo = _psicologoId.value ?: session.idPsicologo
        ?: return Result.failure(Exception("No hay psicólogo asignado"))

        val startDatetime = LocalDateTime.of(fecha, hora)

        val request = CrearCitaRequestDTO(
            idPaciente = idPaciente,
            idPsicologo = idPsicologo,
            startDatetime = startDatetime,
            durationMinutes = duracionMinutos,
            metodoPago = metodoPago,
            estadoPago = if (metodoPago == MetodoPago.ONLINE)
                EstadoPago.PAGADO
            else
                EstadoPago.PENDIENTE,
            monto = monto,
            motivo = motivo,
            idTipoTerapia = idTipoTerapia,
            estado = EstadoCita.pendiente
        )

        return citasRepository.crearCita(request)
            .map {
                refrescarDatosTrasCambio(fecha)
            }
    }

    private fun refrescarDatosTrasCambio(fecha: LocalDate) {
        cargarAgendaMensual(YearMonth.from(fecha))
        cargarDisponibilidad(fecha)
    }

    fun cancelarCita(idCita: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.cancelarCita(idCita)
                .onSuccess {
                    _errorMessage.value = null
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cancelar la cita"
                }
            _isLoading.value = false
        }
    }
}
