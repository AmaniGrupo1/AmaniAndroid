package org.ies.tierno.applicationamani.data.remoto.role

import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.PUT
import retrofit2.http.Query

interface AdminApiService {
    @PUT("api/admin/cambiar-rol")
    suspend fun cambiarRol(
        @Body request: CambiarRolRequestDTO,
    ): Response<CambiarRolResponseDTO>

    @GET("api/admin/listarUsuarios")
    suspend fun getUsuarios(
        @Query("rol") rol: String? = null,
        @Query("dni") dni: String? = null,
    ): Response<List<UsuarioDTO>>
}
