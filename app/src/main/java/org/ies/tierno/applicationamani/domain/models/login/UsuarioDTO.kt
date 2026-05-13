package org.ies.tierno.applicationamani.domain.models.login

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.Rol

/**
 * Representa el objeto "usuario" anidado en la respuesta del login.
 */

data class UsuarioDTO(
    @SerializedName("idUsuario")
    val idUsuario: Long? = null,

    @SerializedName("nombre")
    val nombre: String? = null,

    @SerializedName("apellido")
    val apellido: String? = null,

    @SerializedName("email")
    val email: String? = null,

    @SerializedName("dni")           // ✅ AÑADE
    val dni: String? = null,

    @SerializedName("rol")
    val rol: Rol? = null,

    @SerializedName("activo")
    val activo: Boolean? = null,

    @SerializedName("idPsicologo")   // ✅ AÑADE
    val idPsicologo: Long? = null,

    @SerializedName("idPaciente")    // ✅ AÑADE
    val idPaciente: Long? = null
)