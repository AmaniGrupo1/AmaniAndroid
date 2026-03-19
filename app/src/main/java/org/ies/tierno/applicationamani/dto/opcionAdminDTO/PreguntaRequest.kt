package org.ies.tierno.applicationamani.dto.opcionAdminDTO

data class PreguntaRequest (
     val texto: String? = null,
     val tipo: String? = null,
     val opciones: List<String?>? = null
)