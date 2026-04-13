package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter


class ListarPacientesByPsicologoViewModel(
    val listarPacientesByPsicologo: ListarPacientesByPsicologo
) : ViewModel() {

    private val _pacientes = MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val pacientes: StateFlow<List<PacientePsicologoResponseDTO>> = _pacientes

    // Estado separado para pacientes con información de si son menores
    private val _pacientesConInfo = MutableStateFlow<List<PacienteConInfoMenor>>(emptyList())
    val pacientesConInfo: StateFlow<List<PacienteConInfoMenor>> = _pacientesConInfo

    init {
        viewModelScope.launch {
            listarPacientesByPsicologo().collect { lista ->
                _pacientes.value = lista
                _pacientesConInfo.value = lista.map { paciente ->
                    PacienteConInfoMenor(
                        paciente = paciente,
                        esMenor = esMenorDeEdad(paciente.fechaNacimiento),
                        datosTutor = if (esMenorDeEdad(paciente.fechaNacimiento)) {
                            paciente.tutor ?: emptyList()
                        } else emptyList()
                    )
                }
            }
        }
    }

    private fun esMenorDeEdad(fechaNacimientoStr: String?): Boolean {
        if (fechaNacimientoStr.isNullOrBlank()) return false

        return try {
            val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
            val fechaNacimiento = LocalDate.parse(fechaNacimientoStr, formatter)
            val edad = Period.between(fechaNacimiento, LocalDate.now()).years
            edad < 18
        } catch (e: Exception) {
            false
        }
    }
}

// Clase auxiliar para combinar la información
data class PacienteConInfoMenor(
    val paciente: PacientePsicologoResponseDTO,
    val esMenor: Boolean,
    val datosTutor: List<TutorResponseDTO>
)