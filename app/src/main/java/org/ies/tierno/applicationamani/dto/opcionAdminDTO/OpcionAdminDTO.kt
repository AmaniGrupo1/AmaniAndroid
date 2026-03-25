package org.ies.tierno.applicationamani.dto.opcionAdminDTO

data class OpcionAdminDTO(
    val id: Long? = null,
    val texto: String? = null,
    val tipo: String? = null,
    val opciones: List<String>? = null,
)