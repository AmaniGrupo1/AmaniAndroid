package org.ies.tierno.applicationamani.dto.requestPaciente

import java.math.BigDecimal

/**
 * DTO de solicitud para crear una cita desde el lado del paciente.
 *
 * Contiene los datos de la cita que el paciente envía al solicitar
 * una nueva consulta: psicólogo, fecha, duración, pago y terapia.
 *
 * @property idPaciente Identificador único del paciente solicitante.
 * @property idPsicologo Identificador único del psicólogo solicitado.
 * @property startDatetime Fecha y hora de inicio de la sesión.
 * @property durationMinutes Duración en minutos de la sesión, o `null`.
 * @property metodoPago Método de pago seleccionado (p. ej. «tarjeta»).
 * @property monto Importe de la sesión, o `null`.
 * @property estadoPago Estado inicial del pago (por defecto «PENDIENTE»).
 * @property estado Estado de la cita, o `null`.
 * @property motivo Motivo de la consulta, o `null`.
 * @property idTipoTerapia Identificador del tipo de terapia solicitada, o `null`.
 */
data class CitaRequest(
    val idPaciente: Long,
    val idPsicologo: Long,
    val startDatetime: String,
    val durationMinutes: Int? = null,
    val metodoPago: String? = null,
    val monto: BigDecimal? = null,
    val estadoPago: String = "PENDIENTE",
    val estado: String? = null,
    val motivo: String? = null,
    val idTipoTerapia: Long? = null,
)
