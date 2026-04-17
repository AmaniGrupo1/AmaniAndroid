package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import kotlinx.serialization.SerialName
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalDateTime

data class CrearCitaRequestDTO(

    @SerializedName("idPaciente")
    val idPaciente: Long,

    @SerializedName("idPsicologo")
    val idPsicologo: Long,

    @SerializedName("startDatetime")
    val startDatetime: String,

    @SerializedName("durationMinutes")
    val durationMinutes: Int,


    val metodoPago: MetodoPago,

    val estadoPago: EstadoPago,

    @SerializedName("monto")
    val monto: BigDecimal,

    @SerializedName("motivo")
    val motivo: String,

    val estado : EstadoCita = EstadoCita.pendiente,

    @SerializedName("idTipoTerapia")
    val idTipoTerapia: Long,

    @SerializedName("modalidad")
    val modalidad: ModalidadCita

)