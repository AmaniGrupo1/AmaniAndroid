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
import org.ies.tierno.applicationamani.dto.citas.AgendaPsicologoResponse
import org.ies.tierno.applicationamani.dto.citas.HorarioPsicologoRequest
import java.time.LocalDate
import java.time.YearMonth

class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    private val _agendaMensual = MutableStateFlow(AgendaPsicologoResponse())
    val agendaMensual: StateFlow<AgendaPsicologoResponse> = _agendaMensual.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    init {
        viewModelScope.launch {
            _userSession.value = userSessionDataStore.getSession()
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }

    fun cargarAgendaMensual(month: YearMonth) {
        val session = _userSession.value ?: return
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.getAgendaPsicologo(session.idUsuario, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }
                .onFailure { error ->
                    _errorMessage.value = error.message ?: "No se pudo cargar la agenda del psicólogo"
                }
            _isLoading.value = false
        }
    }

    suspend fun actualizarHorario(
        horaInicio: Int,
        horaFin: Int,
        duracionSesion: Int
    ): Result<Unit> {
        val session = _userSession.value
            ?: return Result.failure(IllegalStateException("No hay sesión de psicólogo"))

        return citasRepository.actualizarHorario(
            session.idUsuario,
            HorarioPsicologoRequest(horaInicio, horaFin, duracionSesion)
        ).map { agenda ->
            _agendaMensual.value = agenda
        }
    }

    suspend fun alternarDiaNoDisponible(
        fecha: LocalDate,
        yaNoDisponible: Boolean
    ): Result<Unit> {
        val session = _userSession.value
            ?: return Result.failure(IllegalStateException("No hay sesión de psicólogo"))

        return citasRepository.alternarDiaNoDisponible(
            idPsicologo = session.idUsuario,
            fecha = fecha.toString(),
            yaNoDisponible = yaNoDisponible
        ).map { agenda ->
            _agendaMensual.value = agenda
        }
    }
}
