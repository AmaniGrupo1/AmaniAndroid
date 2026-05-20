package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud para asignar un paciente a un psicólogo.
 *
 * Relaciona un paciente existente con un psicólogo para establecer
 * la relación profesional en el sistema.
 *
 * @property idPaciente Identificador único del paciente a asignar.
 * @property idPsicologo Identificador único del psicólogo al que se asigna.
 */
data class AsignarPacienteAlPsicologoRequestDTO(
    val idPaciente: Long,
    val idPsicologo: Long,
)
