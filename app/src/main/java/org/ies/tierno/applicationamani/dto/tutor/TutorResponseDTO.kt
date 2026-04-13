package org.ies.tierno.applicationamani.dto.tutor

data class TutorResponseDTO(
    val idTutor: Long,
    val nombre: String,
    val telefono: String,
    val email: String,
    val dni: String,
    val tipo: String
)