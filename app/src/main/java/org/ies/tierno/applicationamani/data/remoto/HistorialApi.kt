package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.POST
import retrofit2.http.Path

interface HistorialApi {

    @GET("/api/historial-clinico/paciente/{idPaciente}")
    suspend fun getHistorialPaciente(
        @Path("idPaciente") idPaciente: Long,
        @Header("Authorization") token: String
    ): List<HistorialClinicoResponseDTO>

    @POST("/api/historial-clinico")
    suspend fun createHistorialClinico(
        @Body request: HistorialClinicoRequestDTO
    ): HistorialClinicoResponseDTO
}