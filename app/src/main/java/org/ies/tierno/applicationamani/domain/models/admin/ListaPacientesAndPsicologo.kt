package org.ies.tierno.applicationamani.domain.models.admin

import com.google.gson.annotations.SerializedName

/**
 * DTO que representa la relación entre un paciente y su psicólogo asignado.
 *
 * Se utiliza en la vista de administración para listar los pacientes
 * junto con los datos del psicólogo que los atiende.
 *
 * @property nombrePsicologo Nombre del psicólogo asignado, o `null` si no tiene.
 * @property apellidoPsicologo Apellido del psicólogo asignado, o `null` si no tiene.
 * @property nombreUsuario Nombre del paciente.
 * @property apellidoUsuario Apellido del paciente.
 * @property emailUsuario Correo electrónico del paciente.
 * @property updatedAt Fecha de última actualización en formato ISO 8601.
 */
data class ListaPacientesAndPsicologo(
    val nombrePsicologo: String? = null,

    val apellidoPsicologo: String? = null,

    val nombreUsuario: String? = null,

    val apellidoUsuario: String? = null,

    val emailUsuario: String? = null,

    @SerializedName("updatedAt")
    val updatedAt: String? = null
)