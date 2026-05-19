package org.ies.tierno.applicationamani.dto.psicologo

data class PsicologoSelfResponseDTO(
    val idPsicologo: Long,
    val nombre: String,
    val apellido: String,
    val especialidad: String,
    /** Años de experiencia profesional. */
    val experiencia: Int?,
    /** Descripción del psicólogo y su enfoque. */
    val descripcion: String?,
    /** Número de licencia o colegiación profesional. */
    val licencia: String?,
)
