package org.ies.tierno.applicationamani.domain.models.login

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.Rol

/**
 * Representa el objeto «usuario» anidado dentro de la respuesta de autenticación del backend.
 *
 * Contiene el perfil completo del usuario autenticado, incluyendo
 * datos personales, rol y los identificadores de las entidades asociadas
 * (psicólogo o paciente) según el perfil del usuario.
 *
 * @property idUsuario Identificador único del usuario en el sistema.
 * @property nombre Nombre de pila del usuario.
 * @property apellido Apellidos del usuario.
 * @property email Dirección de correo electrónico del usuario.
 * @property dni Documento Nacional de Identidad del usuario.
 * @property rol Rol del usuario dentro del sistema.
 * @property activo Indica si la cuenta del usuario está activa.
 * @property idPsicologo Identificador del psicólogo asociado a esta cuenta.
 * @property idPaciente Identificador del paciente asociado a esta cuenta.
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
    @SerializedName("dni")
    val dni: String? = null,
    @SerializedName("rol")
    val rol: Rol? = null,
    @SerializedName("activo")
    val activo: Boolean? = null,
    @SerializedName("idPsicologo")
    val idPsicologo: Long? = null,
    @SerializedName("idPaciente")
    val idPaciente: Long? = null,
)
