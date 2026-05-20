package org.ies.tierno.applicationamani.domain.models.psicologo

import java.time.LocalTime

/**
 * Representa una cita en la agenda del psicólogo con los datos esenciales
 * para su visualización en la interfaz de calendario.
 *
 * @property hora Hora programada de inicio de la cita.
 * @property paciente Nombre completo del paciente citado.
 * @property motivo Motivo o descripción breve de la consulta.
 */
data class CitaPsicologo(
    val hora: LocalTime,
    val paciente: String,
    val motivo: String,
)
