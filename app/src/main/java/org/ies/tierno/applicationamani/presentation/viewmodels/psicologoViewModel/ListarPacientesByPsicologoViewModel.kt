package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import java.time.YearMonth

class ListarPacientesByPsicologoViewModel(
    private val authRepository: AuthRepository,
    private val citasRepository: CitasRepository,
) : ViewModel() {
    private val _pacientes = MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientes: StateFlow<List<PacientePsicologoResponseDTO>> = _pacientes.asStateFlow()

    private val _citasPorPaciente = MutableStateFlow<Map<Long, List<AgendaItemDTO>>>(emptyMap())
    val citasPorPaciente: StateFlow<Map<Long, List<AgendaItemDTO>>> = _citasPorPaciente.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    fun cargarPacientes(idPsicologo: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            authRepository.getPacientesByPsicologo().collect { pacientesList ->
                _pacientes.value = pacientesList
                cargarCitasDePacientes(pacientesList, idPsicologo)
            }
            _isLoading.value = false
        }
    }

    private fun cargarCitasDePacientes(
        pacientesList: List<PacientePsicologoResponseDTO>,
        idPsicologo: Long,
    ) {
        viewModelScope.launch {
            val mapa = mutableMapOf<Long, List<AgendaItemDTO>>()
            val mesActual = YearMonth.now().toString()
            val mesSiguiente = YearMonth.now().plusMonths(1).toString()

            val citasMesActual = citasRepository.getAgendaPsicologo(idPsicologo, mesActual).getOrNull() ?: emptyList()
            val citasMesSiguiente = citasRepository.getAgendaPsicologo(idPsicologo, mesSiguiente).getOrNull() ?: emptyList()
            val todasLasCitas = citasMesActual + citasMesSiguiente

            for (paciente in pacientesList) {
                paciente.idPaciente?.let { idPaciente ->
                    val citasPaciente = todasLasCitas.filter { it.idPaciente == idPaciente }
                    mapa[idPaciente] = citasPaciente
                }
            }
            _citasPorPaciente.value = mapa
        }
    }

    fun recargarCitas(idPsicologo: Long) {
        cargarPacientes(idPsicologo)
    }
}
