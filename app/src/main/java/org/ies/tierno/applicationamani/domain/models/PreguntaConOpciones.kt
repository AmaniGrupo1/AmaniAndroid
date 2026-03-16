package org.ies.tierno.applicationamani.domain.models

import com.google.firebase.firestore.DocumentId

data class PreguntaConOpciones(
    @DocumentId val id: String = "",
    val textoPregunta: String,
    val opciones: List<Opcion>
){
    constructor() : this("", "", emptyList())
}
