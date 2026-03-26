package org.ies.tierno.applicationamani.domain.models.login

import com.google.gson.annotations.SerializedName

/**
 * Representa el objeto "usuario" anidado en la respuesta del login.
 */
data class UsuarioDTO(
    @SerializedName("id")
    val id: Long? = null,
    val nombre: String? = null,
    val apellido: String? = null,
    val email: String? = null,
    val rol: String? = null,
    val activo: Boolean? = null
)
