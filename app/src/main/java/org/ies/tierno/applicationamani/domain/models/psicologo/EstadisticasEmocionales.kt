package org.ies.tierno.applicationamani.domain.models.psicologo

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO

/**
 * Modelo para representar las estadísticas emocionales de un paciente.
 */
data class EstadisticasEmocionales(
    val promedioPeriodo: Double = 0.0,
    val mejorSesion: DiarioEmocionResponseDTO? = null,
    val peorSesion: DiarioEmocionResponseDTO? = null,
    val totalSesiones: Int = 0,
    val tendenciaPuntos: Double = 0.0,
    val observacion: String = "",
)
