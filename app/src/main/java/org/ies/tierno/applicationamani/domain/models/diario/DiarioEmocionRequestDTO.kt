package org.ies.tierno.applicationamani.domain.models.diario

/**
 * DTO de solicitud para crear o actualizar una entrada del diario emocional.
 *
 * Agrupa los campos que el paciente envía al backend al registrar
 * una nueva entrada en su diario emocional, incluyendo la emoción
 * predominante y su intensidad en una escala definida.
 *
 * @property idPaciente Identificador del paciente que registra la entrada.
 * @property fecha Fecha de la entrada en formato ISO (yyyy-MM-dd).
 * @property titulo Título descriptivo de la entrada del diario.
 * @property emocion Emoción predominante registrada (ej. «alegría», «tristeza»).
 * @property intensidad Nivel de intensidad de la emoción en una escala numérica.
 * @property nota Texto libre con observaciones o reflexiones del paciente.
 */
data class DiarioEmocionRequestDTO(
    val idPaciente: Long,
    val fecha: String,
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String,
)
