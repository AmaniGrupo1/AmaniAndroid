package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import java.time.LocalTime

data class FranjaDisponibilidadResponse(
    val hora: LocalTime,
    val horaFin: LocalTime? = null,
    @SerializedName("ocupado")
    val ocupado: Boolean = false,
    val descripcion: String? = null
)
