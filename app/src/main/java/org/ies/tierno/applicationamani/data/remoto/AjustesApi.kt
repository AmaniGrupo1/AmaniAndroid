package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.ies.tierno.applicationamani.dto.idioma.IdiomaRequestDTO
import org.ies.tierno.applicationamani.dto.tema.UpdateTemaDTO
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.PUT
import retrofit2.http.Path

interface AjustesApi {
    @PUT("api/ajustes/{idUsuario}/idioma")
    suspend fun actualizarIdioma(
        @Path("idUsuario") idUsuario: Long,
        @Body request: IdiomaRequestDTO,
    )

    @PUT("api/ajustes/tema")
    suspend fun actualizarTema(
        @Body dto: UpdateTemaDTO,
    ): Response<AjusteResponseDTO>
}
