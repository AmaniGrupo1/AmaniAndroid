package org.ies.tierno.applicationamani.domain.models.login

/**
 * DTO de respuesta del servidor tras un inicio de sesión o registro exitoso.
 *
 * Contiene la información mínima necesaria para identificar al usuario
 * autenticado y determinar su rol dentro de la aplicación.
 *
 * @property idUsuario Identificador único del usuario en el backend.
 * @property nombre Nombre completo del usuario autenticado.
 * @property rol Rol del usuario (`"paciente"`, `"admin"` o `"psicologo"`).
 *
 * @see LoginRequestDTO
 */
data class LoginResponseDTO(

    val idUsuario: Long,
    val nombre: String,
    val rol: String,
    val token: String,
    @com.google.gson.annotations.SerializedName("id_psicologo")
    val idPsicologo: Long? = null
)
