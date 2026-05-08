package org.ies.tierno.applicationamani.domain.usecases.historialClinico

import org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

class HistorialClinicoUseCase(val historialRepository: HistorialRepository) {

    suspend fun getHistorialClinico(idPaciente: Long, token: String): List<HistorialClinicoResponseDTO> {
        return historialRepository.getHistorialPaciente(idPaciente, token)
    }

    suspend fun createHistorialClinico(
        request: HistorialClinicoRequestDTO
    ): HistorialClinicoResponseDTO {

        return historialRepository.createHistorialClinico(request)
    }
}