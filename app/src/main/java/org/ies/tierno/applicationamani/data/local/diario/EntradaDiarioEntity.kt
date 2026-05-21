package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Entity
import androidx.room.PrimaryKey
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

/**
 * Entidad Room que representa una entrada del diario emocional en la base de datos local.
 *
 * Almacena el contenido de cada registro junto con metadatos de sincronización
 * que permiten al [DiarioSyncManager] resolver conflictos entre los datos locales y remotos.
 *
 * @property id Identificador local autogenerado por Room.
 * @property titulo Título de la entrada del diario.
 * @property contenido Texto descriptivo o nota asociada a la emoción registrada.
 * @property emocion Nombre de la emoción registrada (ej. "alegría", "tristeza").
 * @property intensidad Nivel de intensidad de la emoción, en escala definida por la app.
 * @property createdAt Marca de tiempo en epoch millis de creación local.
 * @property updatedAt Marca de tiempo en epoch millis de la última modificación.
 * @property remoteId Identificador asignado por el backend tras la sincronización.
 * @property syncStatus Estado de sincronización actual de la entrada.
 * @property lastSyncAttempt Marca de tiempo del último intento de sincronización.
 */
@Entity(tableName = "entradas_diario_emocional")
data class EntradaDiarioEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0L,
    val titulo: String,
    val contenido: String,
    val emocion: String,
    val intensidad: Int,
    val createdAt: Long,
    val updatedAt: Long,
    val remoteId: Long? = null,
    val syncStatus: SyncStatus = SyncStatus.SYNCED,
    val lastSyncAttempt: Long? = null,
)
