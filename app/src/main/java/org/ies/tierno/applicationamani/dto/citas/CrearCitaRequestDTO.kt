package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import java.math.BigDecimal

data class CrearCitaRequestDTO(
    @SerializedName("idPaciente")
    val idPaciente: Long,
    @SerializedName("idPsicologo")
    val idPsicologo: Long,
    @SerializedName("startDatetime")
    val startDatetime: String,
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
    @SerializedName("estado")
    val estado: EstadoCita = EstadoCita.PENDIENTE,
    @SerializedName("idTipoTerapia")
    val idTipoTerapia: Long,
    @SerializedName("modalidad")
    val modalidad: ModalidadCita,
)
