package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Path

interface HistorialApi {

    @GET("api/historial-clinico/paciente/{idPaciente}")
    suspend fun getHistorialPaciente(
        @Path("id") idPaciente: Long,
        @Header("Authorization") token: String
    ): List<HistorialClinicoResponseDTO>
}