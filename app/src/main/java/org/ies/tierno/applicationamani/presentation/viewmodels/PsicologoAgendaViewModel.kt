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
import org.ies.tierno.applicationamani.dto.citas.HorarioPsicologoRequest
import java.time.LocalDate
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

    init {
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

    fun actualizarHorario(horaInicio: Int, horaFin: Int, duracionSesion: Int) {
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
            try {
                val request = HorarioPsicologoRequest(
                    horaInicio = horaInicio,
                    horaFin = horaFin,
                    duracionSesion = duracionSesion
                )
                citasRepository.actualizarHorario(psychologistId, request)
                cargarAgendaMensual(_mesVisible.value)
            } catch (e: Exception) {
                _errorMessage.value = e.message ?: "Error al actualizar el horario"
            }
            _isLoading.value = false
        }
    }

    fun alternarDiaNoDisponible(
        fecha: LocalDate,
        yaNoDisponible: Boolean
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
            try {
                citasRepository.alternarDiaNoDisponible(
                    idPsicologo = psychologistId,
                    fecha = fecha.toString(),
                    yaNoDisponible = yaNoDisponible
                )
                cargarAgendaMensual(_mesVisible.value)
            } catch (e: Exception) {
                _errorMessage.value = e.message ?: "Error al alternar día no disponible"
            }
            _isLoading.value = false
        }
    }
}
