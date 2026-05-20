package org.ies.tierno.applicationamani.dto.tema

/**
 * DTO de solicitud para actualizar la preferencia de tema visual del usuario.
 *
 * Permite cambiar entre tema claro y oscuro.
 *
 * @property tema `true` para tema oscuro, `false` para tema claro.
 */
data class UpdateTemaDTO(
    val tema: Boolean,
)
