package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.HistorialApi
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

class HistorialRepository(
    private val historialApi: HistorialApi
) {

    suspend fun getHistorialPaciente(
        idPaciente: Long,
        token: String
    ): List<HistorialClinicoResponseDTO> {

        return historialApi.getHistorialPaciente(
            idPaciente = idPaciente,
            token
        )
    }

    suspend fun createHistorialClinico(
        request: HistorialClinicoRequestDTO
    ): HistorialClinicoResponseDTO {

        return historialApi.createHistorialClinico(request)
    }
}