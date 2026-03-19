package org.ies.tierno.applicationamani.domain.models.test

import org.ies.tierno.applicationamani.domain.models.test.Opcion

data class PreguntaConOpciones(
     val id: String = "",
    val textoPregunta: String,
    val opciones: List<Opcion>
)