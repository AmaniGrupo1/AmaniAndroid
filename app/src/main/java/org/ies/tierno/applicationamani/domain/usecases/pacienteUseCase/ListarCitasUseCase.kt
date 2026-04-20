package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO

class ListarCitasUseCase(private val citasRepository: CitasRepository) {
    suspend operator fun invoke():List<CitaPacienteViewResponseDTO>{
        return citasRepository.getMisCitas()
    }
}