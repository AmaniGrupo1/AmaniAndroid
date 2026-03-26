package org.ies.tierno.applicationamani.dto.login


data class PsicologoConPacientesDTO(
    val idPsicologo: Long,               // Id del psicólogo
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val emailPsicologo: String,
    val especialidad: String,
    val licencia: String?,
    val fechaDadoAlta: String,
    val pacientes: List<PacientesAsignadoDTO>  // Lista de pacientes asignados
)