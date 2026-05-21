package org.ies.tierno.applicationamani.dto.ajuste

/**
 * DTO de respuesta con los ajustes de configuración de un usuario.
 *
 * Contiene las preferencias de idioma, notificaciones, tema visual y
 * zona horaria configuradas por el usuario.
 *
 * @property idAjuste Identificador único de los ajustes.
 * @property idUsuario Identificador único del usuario propietario de los ajustes.
 * @property idioma Código del idioma seleccionado (p. ej. «es», «en»).
 * @property notificaciones Indica si las notificaciones están activas.
 * @property tema Indica el tema visual (`true` = oscuro, `false` = claro).
 * @property timezone Zona horaria configurada (p. ej. «Europe/Madrid»).
 * @property updatedAt Fecha de última actualización en formato ISO 8601.
 */
data class AjusteResponseDTO(
    val idAjuste: Long,
    val idUsuario: Long,
    val idioma: String,
    val notificaciones: Boolean,
    val tema: Boolean,
    val timezone: String,
    val updatedAt: String,
)
