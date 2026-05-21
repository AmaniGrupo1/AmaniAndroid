package org.ies.tierno.applicationamani.domain.models.psicologo

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO

/**
 * Agrupa las estadísticas emocionales calculadas para un paciente
 * a partir de su historial de entradas del diario emocional.
 *
 * Proporciona al psicólogo una visión agregada del estado anímico
 * del paciente, incluyendo promedios, extremos y tendencias.
 *
 * @property promedioPeriodo Promedio de intensidad emocional en el periodo analizado.
 * @property mejorSesion Entrada del diario con la valoración más alta del periodo.
 * @property peorSesion Entrada del diario con la valoración más baja del periodo.
 * @property totalSesiones Número total de entradas del diario consideradas.
 * @property tendenciaPuntos Variación neta de la intensidad emocional a lo largo del periodo.
 * @property observacion Texto descriptivo con observaciones o recomendaciones automáticas.
 */
data class EstadisticasEmocionales(
    val promedioPeriodo: Double = 0.0,
    val mejorSesion: DiarioEmocionResponseDTO? = null,
    val peorSesion: DiarioEmocionResponseDTO? = null,
    val totalSesiones: Int = 0,
    val tendenciaPuntos: Double = 0.0,
    val observacion: String = "",
)
