package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.HistorialApi
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO

class HistorialRepository(
    private val historialApi: HistorialApi
) {

    suspend fun getHistorialPaciente(
        idPaciente: Long,
        token: String
    ): List<HistorialClinicoResponseDTO> {

        return historialApi.getHistorialPaciente(
            idPaciente = idPaciente,
            token = "Bearer $token"
        )
    }
}