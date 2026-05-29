package org.ies.tierno.applicationamani.dto

import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import java.time.LocalDate
import java.time.LocalTime

data class CitaPacienteViewResponseDTO(
    val idCita: Long?,
    val fecha: String?,          // 👈 importante (no LocalDate)
    val horaInicio: String?,
    val horaFin: String?,
    val durationMinutes: Int?,
    val estado: String?,
    val modalidad: String?,
    val motivo: String?,
    val tipoTerapia: String?,
    val minutosRestantes: Long?,
    val esProxima: Boolean?,
    val metodoPago: MetodoPago?,
    val estadoPago: EstadoPago?,
    val idPsicologo: Long? = null,
    val idPaciente: Long? = null,
    val idTipoTerapia: Long? = null
)

// Información de contacto del psicólogo
data class ContactoPsicologoDTO(
    val telefono: String = "+34 900 123 456",
    val email: String = "contacto@amani-psicologo.com",
    val website: String = "www.amani-psicologo.com"
)