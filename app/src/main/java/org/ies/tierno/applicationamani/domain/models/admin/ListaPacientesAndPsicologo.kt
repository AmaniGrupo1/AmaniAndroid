package org.ies.tierno.applicationamani.domain.models.admin

import com.google.gson.annotations.SerializedName


data class ListaPacientesAndPsicologo(
    val nombrePsicologo: String? = null,

    val apellidoPsicologo: String? = null,

    val nombreUsuario: String? = null,

    val apellidoUsuario: String? = null,

    val emailUsuario: String? = null,

    @SerializedName("updatedAt")
    val updatedAt: String? = null
)