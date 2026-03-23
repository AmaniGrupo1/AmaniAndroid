package org.ies.tierno.applicationamani.domain.models.test


data class PreguntaConOpciones(
     val id: String = "",
    val textoPregunta: String,
    val opciones: List<Opcion>
)