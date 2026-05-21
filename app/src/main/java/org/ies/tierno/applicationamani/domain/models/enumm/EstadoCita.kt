package org.ies.tierno.applicationamani.domain.models.enumm

import com.google.gson.annotations.SerializedName

/**
 * Define los estados en los que puede encontrarse una cita a lo largo de su ciclo de vida.
 *
 * Cada estado se mapea a un valor de cadena mediante la anotación [SerializedName]
 * para la correcta serialización y deserialización con el backend.
 *
 * @property PENDIENTE La cita ha sido creada pero aún no ha sido confirmada.
 * @property CONFIRMADA La cita ha sido aceptada por ambas partes.
 * @property CANCELADA La cita ha sido cancelada, ya no tendrá lugar.
 * @property COMPLETADA La cita ya se ha realizado con éxito.
 */
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
