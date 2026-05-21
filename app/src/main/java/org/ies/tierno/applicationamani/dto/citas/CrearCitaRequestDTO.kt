package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import java.math.BigDecimal

/**
 * DTO de solicitud para crear una nueva cita.
 *
 * Contiene todos los datos necesarios para registrar una cita en el sistema,
 * incluyendo paciente, psicólogo, fecha, duración, pago, terapia y modalidad.
 *
 * @property idPaciente Identificador del paciente, mapeado desde «idPaciente» en JSON.
 * @property idPsicologo Identificador del psicólogo, mapeado desde «idPsicologo» en JSON.
 * @property startDatetime Fecha y hora de inicio, mapeado desde «startDatetime».
 * @property durationMinutes Duración en minutos, mapeado desde «durationMinutes».
 * @property metodoPago Método de pago seleccionado, mapeado desde «metodoPago».
 * @property estadoPago Estado del pago, mapeado desde «estadoPago».
 * @property monto Importe de la sesión, mapeado desde «monto».
 * @property motivo Motivo de la consulta, mapeado desde «motivo».
 * @property estado Estado de la cita (por defecto [EstadoCita.PENDIENTE]), mapeado desde «estado».
 * @property idTipoTerapia Identificador del tipo de terapia, mapeado desde «idTipoTerapia».
 * @property modalidad Modalidad de la sesión, mapeado desde «modalidad».
 */
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
