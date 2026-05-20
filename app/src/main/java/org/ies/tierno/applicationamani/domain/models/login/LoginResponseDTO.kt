package org.ies.tierno.applicationamani.domain.models.login

/**
 * DTO de respuesta del servidor tras un inicio de sesión o registro exitoso.
 *
 * Contiene la información mínima necesaria para identificar al usuario
 * autenticado, determinar su rol dentro de la aplicación y almacenar
 * el token de sesión para peticiones autenticadas posteriores.
 *
 * @property idUsuario Identificador único del usuario en el backend.
 * @property nombre Nombre completo del usuario autenticado.
 * @property rol Rol del usuario («paciente», «admin» o «psicologo»).
 * @property token Token JWT de autenticación para las peticiones subsiguientes.
 * @property idPsicologo Identificador del psicólogo asociado, si el usuario tiene ese rol.
 * @property idPaciente Identificador del paciente asociado, si el usuario tiene ese rol.
 * @property idioma Código de idioma preferido del usuario.
 * @property tema Preferencia de tema: `true` para oscuro, `false` para claro.
 *
 * @see LoginRequestDTO
 */
data class LoginResponseDTO(
    val idUsuario: Long,
    val nombre: String,
    val rol: String,
    val token: String,
    val idPsicologo: Long?,
    val idPaciente: Long?,
    val idioma: String,
    val tema: Boolean,
)
