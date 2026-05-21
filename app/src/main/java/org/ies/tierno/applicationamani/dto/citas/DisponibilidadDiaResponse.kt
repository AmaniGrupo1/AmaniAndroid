package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import java.time.LocalDate

/**
 * DTO de respuesta con la disponibilidad de un día concreto en la agenda.
 *
 * Indica si el día está completo y lista los slots libres disponibles
 * para reservar una cita.
 *
 * @property fecha Fecha consultada.
 * @property diaCompleto Indica si no hay disponibilidad en todo el día.
 * @property slotsLibres Franjas horarias disponibles, mapeado desde «slotsLibres» en JSON.
 */
data class DisponibilidadDiaResponse(
    val fecha: LocalDate,
    val diaCompleto: Boolean,
    @SerializedName("slotsLibres")
    val slotsLibres: List<FranjaDisponibilidadResponse> = emptyList(),
)
