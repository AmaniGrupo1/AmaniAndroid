package org.ies.tierno.applicationamani.domain.models.diario

/**
 * Representa una entrada local del diario emocional del paciente.
 *
 * Modela los datos que se almacenan en la base de datos local del dispositivo
 * y que posteriormente se sincronizan con el backend. Incluye marcas de tiempo
 * de creación y actualización para el control de sincronización.
 *
 * @property id Identificador local de la entrada. Es 0 hasta que se asigna desde el backend.
 * @property titulo Título descriptivo de la entrada.
 * @property contenido Texto completo del diario con las reflexiones del paciente.
 * @property emocion Emoción predominante registrada.
 * @property intensidad Nivel de intensidad de la emoción en una escala numérica.
 * @property createdAt Marca de tiempo en milisegundos de la creación local.
 * @property updatedAt Marca de tiempo en milisegundos de la última modificación local.
 */
data class EntradaDiario(
    val id: Long = 0L,
    val titulo: String,
    val contenido: String,
    val emocion: String,
    val intensidad: Int,
    val createdAt: Long,
    val updatedAt: Long,
)
