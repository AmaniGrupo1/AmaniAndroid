package org.ies.tierno.applicationamani.dto.ajuste

data class AjusteResponseDTO(
    val idAjuste: Long,
    val idUsuario: Long,
    val idioma: String,
    val notificaciones: Boolean,
    val tema: Boolean,
    val timezone: String,
    val updatedAt: String,
)
