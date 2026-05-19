package org.ies.tierno.applicationamani.domain.models.psicologo

import java.time.LocalTime

data class CitaPsicologo(
    val hora: LocalTime,
    val paciente: String,
    val motivo: String,
)
