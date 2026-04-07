package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import java.time.LocalDate

data class DisponibilidadDiaResponse(
    val fecha: LocalDate,
    val diaCompleto : Boolean,
    @SerializedName("slotsLibres")
    val slotsLibres: List<FranjaDisponibilidadResponse> = emptyList()
)
