package org.ies.tierno.applicationamani.domain.models.admin

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import java.time.LocalDateTime

data class PsicologoConPacientesDTO(
    @SerializedName("idPsicologo")
    val idPsicologo: Long? = null,

    @SerializedName("nombrePsicologo")
    val nombrePsicologo: String? = null,

    @SerializedName("apellidoPsicologo")
    val apellidoPsicologo: String? = null,

    @SerializedName("emailPsicologo")
    val emailPsicologo: String? = null,

    @SerializedName("especialidad")
    val especialidad: String? = null,

    @SerializedName("licencia")
    val licencia: String? = null,

    @SerializedName("fechaDadoAlta")
    val fechaDadoAlta: LocalDateTime? = null,

    @SerializedName("pacientes")
    val pacientes: List<PacientesAsignadoDTO>? = null
)