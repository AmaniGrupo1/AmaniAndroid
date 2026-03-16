package org.ies.tierno.applicationamani.domain.models

import com.google.firebase.firestore.DocumentId

data class Opcion(
    @DocumentId val id: String = "",
    val texto: String = "",
    val valor: Int = 0
){
    constructor() : this("", "", 0)
}
