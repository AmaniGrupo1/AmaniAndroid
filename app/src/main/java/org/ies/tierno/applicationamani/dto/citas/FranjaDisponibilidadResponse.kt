package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import java.time.LocalTime

/**
 * DTO de respuesta que representa un slot horario en la agenda.
 *
 * Indica la hora de inicio y fin de la franja, si está ocupada y
 * una descripción opcional (p. ej. nombre del paciente que la reservó).
 *
 * @property hora Hora de inicio del slot.
 * @property horaFin Hora de finalización del slot, o `null`.
 * @property ocupado Indica si el slot ya está reservado, mapeado desde «ocupado» en JSON.
 * @property descripcion Texto descriptivo del slot (p. ej. nombre del paciente), o `null`.
 */
data class FranjaDisponibilidadResponse(
    val hora: LocalTime,
    val horaFin: LocalTime? = null,
    @SerializedName("ocupado")
    val ocupado: Boolean = false,
    val descripcion: String? = null,
)
