package org.ies.tierno.applicationamani.dto.citas

/**
 * DTO de respuesta con la agenda de citas de un paciente.
 *
 * Agrupa el identificador del paciente, el psicólogo asignado y la
 * lista de citas programadas.
 *
 * @property idPaciente Identificador único del paciente.
 * @property idPsicologoAsignado Identificador del psicólogo asignado, o `null` si no tiene.
 * @property citas Lista de citas del paciente como [CitaDetalleResponse].
 */
data class AgendaPacienteResponse(
    val idPaciente: Long,
    val idPsicologoAsignado: Long? = null,
    val citas: List<CitaDetalleResponse> = emptyList(),
)
