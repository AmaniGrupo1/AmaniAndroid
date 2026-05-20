package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Entity
import androidx.room.PrimaryKey
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

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
