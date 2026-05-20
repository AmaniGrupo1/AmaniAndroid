package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName

data class BloqueoRequestDTO(
    val fecha: String,
    @SerializedName("horaInicio")
    val horaInicio: String?,
    @SerializedName("horaFin")
    val horaFin: String?,
    val motivo: String? = null,
)
