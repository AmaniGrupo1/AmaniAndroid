package org.ies.tierno.applicationamani.dto.login

import java.time.LocalDateTime

data class ListaPacientesAndPsicologo(
    val idPsicologo: Long,
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val emailPsicologo: String,
    val especialidad: String,
    val licencia: String?,
    val fechaDadoAlta: String,
    val pacientes: List<PacientesAsignadoDTO>
)