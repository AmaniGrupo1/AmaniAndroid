package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO
import retrofit2.http.GET

interface HistorialCitaApi {
    @GET("/api/historial-citas")
    suspend fun getHistorialCitas(): List<HistorialCitaResponseDTO>
}