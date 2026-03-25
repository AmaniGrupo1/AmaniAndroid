package org.ies.tierno.applicationamani.domain.models.login

import com.google.gson.annotations.SerializedName

/**
 * DTO de respuesta del servidor robusto ante nulos y diferentes formatos de nombre.
 */
data class LoginResponseDTO(
    @SerializedName("idUsuario", alternate = ["id_usuario", "id"])
    val idUsuario: Long? = null,
    
    val nombre: String? = null,
    
    val rol: String? = null,
    
    val token: String? = null,
    
    @SerializedName("idPsicologo", alternate = ["id_psicologo"])
    val idPsicologo: Long? = null
)
