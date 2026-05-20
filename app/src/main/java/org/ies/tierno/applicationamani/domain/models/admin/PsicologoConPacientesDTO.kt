package org.ies.tierno.applicationamani.domain.models.admin

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import java.time.LocalDateTime

/**
 * DTO que agrupa los datos de un psicólogo junto con la lista de pacientes que tiene asignados.
 *
 * Se utiliza en el panel de administración para visualizar la relación
 * entre profesionales y pacientes, permitiendo al administrador gestionar
 * las asignaciones y dar de alta o baja a los psicólogos.
 *
 * @property idPsicologo Identificador único del psicólogo en el sistema.
 * @property nombrePsicologo Nombre de pila del psicólogo.
 * @property apellidoPsicologo Apellidos del psicólogo.
 * @property emailPsicologo Dirección de correo electrónico del psicólogo.
 * @property especialidad Especialidad profesional del psicólogo.
 * @property licencia Número de licencia profesional del psicólogo.
 * @property fechaDadoAlta Fecha y hora en que el psicólogo fue dado de alta en el sistema.
 * @property pacientes Lista de pacientes actualmente asignados a este psicólogo.
 */
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
    val pacientes: List<PacientesAsignadoDTO>? = null,
)
