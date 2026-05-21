package org.ies.tierno.applicationamani.data.remoto.role

import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.PUT
import retrofit2.http.Query

/**
 * Interfaz Retrofit para las operaciones administrativas de gestión de roles.
 *
 * Proporciona endpoints para que el administrador pueda cambiar el rol de un usuario
 * y listar los usuarios del sistema con filtros opcionales por rol y DNI.
 */
interface AdminApiService {
    /**
     * Cambia el rol de un usuario en el sistema.
     *
     * @param request Datos del cambio de rol (identificador del usuario y nuevo rol).
     * @return Respuesta HTTP con el resultado del cambio de rol.
     */
    @PUT("/api/admin/cambiar-rol")
    suspend fun cambiarRol(
        @Body request: CambiarRolRequestDTO,
    ): Response<CambiarRolResponseDTO>

    /**
     * Lista los usuarios del sistema con filtros opcionales.
     *
     * @param rol Rol por el que filtrar los usuarios (opcional).
     * @param dni DNI por el que filtrar (opcional).
     * @return Respuesta HTTP con la lista de usuarios que cumplen los criterios.
     */
    @GET("/api/admin/listarUsuarios")
    suspend fun getUsuarios(
        @Query("rol") rol: String? = null,
        @Query("dni") dni: String? = null,
    ): Response<List<UsuarioDTO>>
}
