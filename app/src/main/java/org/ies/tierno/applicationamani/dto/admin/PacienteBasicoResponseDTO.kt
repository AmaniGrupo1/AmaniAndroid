package org.ies.tierno.applicationamani.dto.admin

import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO

data class PacienteBasicoResponseDTO(
    val idPaciente: Long,
    val idUsuario: Long,

    val nombre: String,
    val apellido: String,
    val email: String,
    val dni: String?,

    val fechaNacimiento: String?,
    val genero: String?,
    val telefono: String?,

    val direcciones: List<DireccionResponseDTO>?,
    val tutores: List<TutorResponseDTO>?
)