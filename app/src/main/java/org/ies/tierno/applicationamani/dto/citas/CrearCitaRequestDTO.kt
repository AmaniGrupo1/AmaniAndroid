package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import java.time.LocalDateTime

data class CrearCitaRequestDTO(

    @SerializedName("idPaciente")
    val idPaciente: Long,

    @SerializedName("idPsicologo")
    val idPsicologo: Long,

    @SerializedName("startDatetime")
    val startDatetime: LocalDateTime,

    @SerializedName("durationMinutes")
    val durationMinutes: Int,

    @SerializedName("motivo")
    val motivo: String,

    val estado : EstadoCita = EstadoCita.pendiente,

    val idTipoTerapia : Long
)