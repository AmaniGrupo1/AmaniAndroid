package org.ies.tierno.applicationamani.domain.models.diario

/**
 * DTO de respuesta que representa una entrada del diario emocional devuelta por el backend.
 *
 * Contiene la información completa de una entrada registrada, incluyendo
 * el identificador asignado por el servidor tras su creación.
 *
 * @property idDiario Identificador único de la entrada en el backend.
 * @property fecha Fecha de la entrada en formato ISO (yyyy-MM-dd).
 * @property titulo Título descriptivo de la entrada.
 * @property emocion Emoción predominante registrada.
 * @property intensidad Nivel de intensidad de la emoción en una escala numérica.
 * @property nota Texto libre con observaciones o reflexiones del paciente.
 */
data class DiarioEmocionResponseDTO(
    val idDiario: Long,
    val fecha: String,
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String,
)
