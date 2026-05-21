package org.ies.tierno.applicationamani.dto.login

/**
 * DTO que representa un paciente asignado a un psicólogo.
 *
 * Contiene los datos identificativos básicos del paciente en el contexto
 * de la asignación profesional.
 *
 * @property idPaciente Identificador único del paciente.
 * @property nombre Nombre del paciente.
 * @property apellido Apellido del paciente.
 * @property email Correo electrónico del paciente.
 */
data class PacientesAsignadoDTO(
    val idPaciente: Long,
    val nombre: String,
    val apellido: String,
    val email: String,
)
