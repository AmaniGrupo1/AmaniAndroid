package org.ies.tierno.applicationamani.dto.perfil.admin

/**
 * DTO de solicitud para actualizar los datos del perfil de un administrador.
 *
 * Permite modificar nombre, apellido y correo electrónico. Los campos
 * con valor `null` se ignoran y conservan su valor anterior.
 *
 * @property nombre Nuevo nombre, o `null` si no se modifica.
 * @property apellido Nuevo apellido, o `null` si no se modifica.
 * @property email Nuevo correo electrónico, o `null` si no se modifica.
 */
data class UpdateAdminRequestDTO(
    val nombre: String?,
    val apellido: String?,
    val email: String?,
)
