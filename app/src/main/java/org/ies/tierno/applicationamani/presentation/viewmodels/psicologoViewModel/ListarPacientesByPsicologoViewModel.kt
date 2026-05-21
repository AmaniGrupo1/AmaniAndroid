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

/**
 * ViewModel que lista los pacientes asignados a un psicólogo junto con sus citas.
 *
 * Obtiene la lista de pacientes desde [AuthRepository] y cruza la información con
 * la agenda del psicólogo desde [CitasRepository] para exponer un mapa de citas
 * por paciente en [citasPorPaciente].
 *
 * @constructor Crea una instancia con los repositorios necesarios.
 * @param authRepository Repositorio de autenticación para obtener pacientes asignados.
 * @param citasRepository Repositorio de citas para obtener la agenda del psicólogo.
 */
class ListarPacientesByPsicologoViewModel(
    private val authRepository: AuthRepository,
    private val citasRepository: CitasRepository,
) : ViewModel() {
    /** Lista de pacientes asignados al psicólogo autenticado. */
    private val _pacientes = MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientes: StateFlow<List<PacientePsicologoResponseDTO>> = _pacientes.asStateFlow()

    /** Mapa que asocia el ID de cada paciente con sus citas en la agenda. */
    private val _citasPorPaciente = MutableStateFlow<Map<Long, List<AgendaItemDTO>>>(emptyMap())
    val citasPorPaciente: StateFlow<Map<Long, List<AgendaItemDTO>>> = _citasPorPaciente.asStateFlow()

    /** Indica si los datos se están cargando desde el backend. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /**
     * Carga la lista de pacientes del psicólogo y sus citas asociadas.
     *
     * Recolecta el flujo de pacientes desde [AuthRepository] y para cada uno
     * consulta las citas de los meses actual y siguiente.
     *
     * @param idPsicologo Identificador del psicólogo autenticado.
     */
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

    /**
     * Construye el mapa de citas por paciente a partir de la agenda del psicólogo.
     *
     * @param pacientesList Lista de pacientes asignados.
     * @param idPsicologo Identificador del psicólogo.
     */
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

    /**
     * Recarga la lista de pacientes y sus citas desde el backend.
     *
     * @param idPsicologo Identificador del psicólogo autenticado.
     */
    fun recargarCitas(idPsicologo: Long) {
        cargarPacientes(idPsicologo)
    }
}
