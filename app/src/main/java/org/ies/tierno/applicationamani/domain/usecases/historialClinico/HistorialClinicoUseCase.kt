package org.ies.tierno.applicationamani.domain.usecases.historialClinico

import org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO

class HistorialClinicoUseCase(val historialRepository: HistorialRepository) {

    suspend fun getHistorialClinico(idPaciente: Long, token: String): List<HistorialClinicoResponseDTO> {
        return historialRepository.getHistorialPaciente(idPaciente, token)
    }
}