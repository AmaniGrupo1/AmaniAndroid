package org.ies.tierno.applicationamani.domain.models.test

import com.google.firebase.firestore.DocumentId

data class Respuesta (
   val preguntaId: String = "",
    val texto: String,
    val valor: Int = 0,
)