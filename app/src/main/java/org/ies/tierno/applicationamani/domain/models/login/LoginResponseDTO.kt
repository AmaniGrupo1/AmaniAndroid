package org.ies.tierno.applicationamani.domain.models.login

import com.google.gson.annotations.SerializedName

/**
 * DTO de respuesta del servidor. La información del usuario viene en un objeto anidado.
 */
data class LoginResponseDTO(
    @SerializedName("usuario")
    val usuario: UsuarioDTO? = null,

    val token: String? = null,

    // Se mantiene por si la API lo devuelve a nivel raíz en algún caso, o se extrae del token.
    @SerializedName("idPsicologo", alternate = ["id_psicologo"])
    val idPsicologo: Long? = null
)
