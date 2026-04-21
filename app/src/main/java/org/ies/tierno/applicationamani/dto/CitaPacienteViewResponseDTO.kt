package org.ies.tierno.applicationamani.dto

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
    val esProxima: Boolean?
)

// Información de contacto del psicólogo
data class ContactoPsicologoDTO(
    val telefono: String = "+34 900 123 456",
    val email: String = "contacto@amani-psicologo.com",
    val website: String = "www.amani-psicologo.com"
)