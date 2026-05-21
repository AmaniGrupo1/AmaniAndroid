package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO

/**
 * Caso de uso para listar las citas del paciente autenticado.
 *
 * Delega en el repositorio de citas la obtención del listado de citas
 * asociadas al paciente que ha iniciado sesión.
 *
 * @property citasRepository Repositorio de citas.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.CitasRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.citas.CitasViewModel
 */
class ListarCitasUseCase(
    private val citasRepository: CitasRepository,
) {
    /**
     * Obtiene la lista de citas del paciente autenticado.
     *
     * @return Lista de [CitaPacienteViewResponseDTO] con los datos de cada cita.
     */
    suspend operator fun invoke(): List<CitaPacienteViewResponseDTO> = citasRepository.getMisCitas()
}
