package org.ies.tierno.applicationamani.domain.models.enumm

import com.google.gson.annotations.SerializedName

enum class EstadoCita {
    @SerializedName("pendiente")
    PENDIENTE,

    @SerializedName("confirmada")
    CONFIRMADA,

    @SerializedName("cancelada")
    CANCELADA,

    @SerializedName("completada")
    COMPLETADA,
}
