package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName

/**
 * DTO de solicitud para bloquear un intervalo de tiempo en la agenda.
 *
 * Permite al psicólogo marcar un rango horario como no disponible,
 * opcionalmente con un motivo.
 *
 * @property fecha Fecha del bloqueo en formato `YYYY-MM-DD`.
 * @property horaInicio Hora de inicio del bloqueo, mapeado desde «horaInicio» en JSON.
 * @property horaFin Hora de fin del bloqueo, mapeado desde «horaFin» en JSON.
 * @property motivo Motivo del bloqueo, o `null` si no se especifica.
 */
data class BloqueoRequestDTO(
    val fecha: String,
    @SerializedName("horaInicio")
    val horaInicio: String?,
    @SerializedName("horaFin")
    val horaFin: String?,
    val motivo: String? = null,
)
