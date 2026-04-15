package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import java.math.BigDecimal
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

    @SerializedName("metodoPago")
    val metodoPago: MetodoPago,

    @SerializedName("estadoPago")
    val estadoPago: EstadoPago,

    @SerializedName("monto")
    val monto: BigDecimal,

    @SerializedName("motivo")
    val motivo: String,

    val estado : EstadoCita = EstadoCita.pendiente,
    @SerializedName("id_tipo_terapia")  // ← CAMBIA A snake_case
    val idTipoTerapia : Long

)