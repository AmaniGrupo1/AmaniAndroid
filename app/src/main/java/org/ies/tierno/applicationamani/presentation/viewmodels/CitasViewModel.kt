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
import org.ies.tierno.applicationamani.dto.citas.AgendaPacienteResponse
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth

class CitasViewModel(
    private val citasRepository: CitasRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    private val _agendaMensual = MutableStateFlow<AgendaPacienteResponse?>(null)
    val agendaMensual: StateFlow<AgendaPacienteResponse?> = _agendaMensual.asStateFlow()

    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    init {
        // Observar cambios en la sesión de usuario para que los viewmodels reaccionen
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
            }
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }

    fun cargarAgendaMensual(month: YearMonth) {
        val session = _userSession.value ?: return
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.getAgendaPaciente(session.idUsuario, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }
                .onFailure { error ->
                    _errorMessage.value = error.message ?: "No se pudo cargar la agenda del paciente"
                }
            _isLoading.value = false
        }
    }

    fun cargarDisponibilidad(fecha: LocalDate) {
        val idPsicologo = _agendaMensual.value?.idPsicologoAsignado ?: return
        viewModelScope.launch {
            citasRepository.getDisponibilidadDia(idPsicologo, fecha.toString())
                .onSuccess { disponibilidad ->
                    _disponibilidadDia.value = disponibilidad
                    _errorMessage.value = null
                }
                .onFailure { error ->
                    _errorMessage.value = error.message ?: "No se pudo cargar la disponibilidad"
                }
        }
    }

    suspend fun reservarCita(
        fecha: LocalDate,
        hora: LocalTime,
        motivo: String = "Cita psicológica",
        duracionMinutos: Int = 60
    ): Result<Unit> {
        val session = _userSession.value
            ?: return Result.failure(IllegalStateException("No hay sesión de usuario"))
        val idPsicologo = _agendaMensual.value?.idPsicologoAsignado
            ?: return Result.failure(IllegalStateException("El paciente no tiene psicólogo asignado"))

        val request = CitaRequest(
            idPaciente = session.idUsuario,
            idPsicologo = idPsicologo,
            startDatetime = "$fecha" + "T" + hora.toString(),
            durationMinutes = duracionMinutos,
            estado = "pendiente",
            motivo = motivo
        )

        return citasRepository.crearCita(request)
            .map {
                cargarAgendaMensual(YearMonth.from(fecha))
                cargarDisponibilidad(fecha)
            }
    }
}
