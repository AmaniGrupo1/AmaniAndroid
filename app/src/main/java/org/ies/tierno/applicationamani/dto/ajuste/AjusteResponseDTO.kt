package org.ies.tierno.applicationamani.dto.ajuste


import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp

data class AjusteResponseDTO(

    val idAjuste: Long,

    val idUsuario: Long,

    val idioma: String,

    val notificaciones: Boolean,

    val tema: TemaApp,

    val timezone: String,

    val updatedAt: String
)