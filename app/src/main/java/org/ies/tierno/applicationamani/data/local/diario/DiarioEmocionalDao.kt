package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

@Dao
interface DiarioEmocionalDao {

    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus != 'PENDING_DELETE' ORDER BY createdAt DESC")
    fun observeEntradas(): Flow<List<EntradaDiarioEntity>>

    @Query("SELECT * FROM entradas_diario_emocional WHERE id = :id LIMIT 1")
    suspend fun getEntradaById(id: Long): EntradaDiarioEntity?

    @Query("SELECT * FROM entradas_diario_emocional WHERE remoteId = :remoteId LIMIT 1")
    suspend fun getByRemoteId(remoteId: Long): EntradaDiarioEntity?

    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus != 'SYNCED'")
    suspend fun getPendingSync(): List<EntradaDiarioEntity>

    @Query("UPDATE entradas_diario_emocional SET syncStatus = :status, lastSyncAttempt = :timestamp WHERE id = :id")
    suspend fun updateSyncStatus(id: Long, status: SyncStatus, timestamp: Long?)

    @Query("UPDATE entradas_diario_emocional SET remoteId = :remoteId, syncStatus = :status WHERE id = :localId")
    suspend fun updateRemoteId(localId: Long, remoteId: Long, status: SyncStatus)

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertar(entrada: EntradaDiarioEntity): Long

    @Update
    suspend fun actualizar(entrada: EntradaDiarioEntity)

    @Delete
    suspend fun eliminar(entrada: EntradaDiarioEntity)
}
