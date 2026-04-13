package org.ies.tierno.applicationamani.domain.models.enumm

import com.google.gson.annotations.SerializedName

enum class EstadoCita {
    @SerializedName("pendiente")
    pendiente,
    @SerializedName("confirmada")
    confirmada,
    @SerializedName("cancelada")
    cancelada,
    @SerializedName("completada")
    completada
}
