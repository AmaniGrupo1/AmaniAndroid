package org.ies.tierno.applicationamani.dto.perfil.admin

/**
 * DTO con los datos del perfil de un administrador.
 *
 * Contiene la información identificativa del administrador, incluyendo
 * el identificador de usuario, nombre, apellido, email y foto de perfil.
 *
 * @property idUsuario Identificador único del usuario administrador.
 * @property nombre Nombre del administrador.
 * @property apellido Apellido del administrador.
 * @property email Correo electrónico del administrador.
 * @property fotoPerfilUrl URL de la foto de perfil.
 */
data class AdminDTO(
    val idUsuario: Long,
    val nombre: String,
    val apellido: String,
    val email: String,
    val fotoPerfilUrl: String,
)
