package org.ies.tierno.applicationamani.domain.models

import com.google.firebase.firestore.DocumentId

data class Respuesta (
    @DocumentId val preguntaId: String = "",
     val texto: String,
     val valor: Int = 0,
){
    constructor(): this("","",0)
}
