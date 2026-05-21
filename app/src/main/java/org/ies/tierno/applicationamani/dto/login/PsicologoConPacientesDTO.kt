package org.ies.tierno.applicationamani.dto.login

/**
 * DTO que agrupa los datos de un psicólogo con la lista de sus pacientes asignados.
 *
 * Proporciona la información profesional del psicólogo junto con el listado
 * completo de pacientes que tiene a su cargo.
 *
 * @property idPsicologo Identificador único del psicólogo.
 * @property nombrePsicologo Nombre del psicólogo.
 * @property apellidoPsicologo Apellido del psicólogo.
 * @property emailPsicologo Correo electrónico del psicólogo.
 * @property especialidad Especialidad profesional del psicólogo.
 * @property licencia Número de licencia o colegiación, o `null` si no consta.
 * @property fechaDadoAlta Fecha de alta del psicólogo en el sistema.
 * @property pacientes Lista de pacientes asignados como [PacientesAsignadoDTO].
 */
data class ListaPacientesAndPsicologo(
    val idPsicologo: Long,
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val emailPsicologo: String,
    val especialidad: String,
    val licencia: String?,
    val fechaDadoAlta: String,
    val pacientes: List<PacientesAsignadoDTO>,
)

@Deprecated("Use ListaPacientesAndPsicologo instead", ReplaceWith("ListaPacientesAndPsicologo"))
typealias PsicologoConPacientesDTO = ListaPacientesAndPsicologo
