package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

/**
 * Interfaz DAO de Room para el acceso a la tabla de entradas del diario emocional.
 *
 * Proporciona consultas reactivas mediante [Flow] y operaciones suspendibles
 * para insertar, actualizar, eliminar y filtrar entradas según su estado de sincronización.
 */
@Dao
interface DiarioEmocionalDao {
    /**
     * Observa de forma reactiva todas las entradas no marcadas para eliminación,
     * ordenadas por fecha de creación descendente.
     *
     * @return [Flow] que emite la lista actualizada de entradas ante cualquier cambio en la tabla.
     */
    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus != 'PENDING_DELETE' ORDER BY createdAt DESC")
    fun observeEntradas(): Flow<List<EntradaDiarioEntity>>

    /**
     * Recupera una entrada del diario por su identificador local.
     *
     * @param id Identificador local de la entrada.
     * @return La entidad encontrada o `null` si no existe.
     */
    @Query("SELECT * FROM entradas_diario_emocional WHERE id = :id LIMIT 1")
    suspend fun getEntradaById(id: Long): EntradaDiarioEntity?

    /**
     * Busca una entrada por su identificador remoto.
     *
     * @param remoteId Identificador asignado por el backend.
     * @return La entidad encontrada o `null` si no existe.
     */
    @Query("SELECT * FROM entradas_diario_emocional WHERE remoteId = :remoteId LIMIT 1")
    suspend fun getByRemoteId(remoteId: Long): EntradaDiarioEntity?

    /**
     * Lista las entradas cuyo estado de sincronización no es [SyncStatus.SYNCED].
     *
     * @return Lista de entradas pendientes de sincronizar con el backend.
     */
    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus != 'SYNCED'")
    suspend fun getPendingSync(): List<EntradaDiarioEntity>

    /**
     * Actualiza el estado de sincronización y la marca de tiempo del último intento.
     *
     * @param id Identificador local de la entrada.
     * @param status Nuevo estado de sincronización.
     * @param timestamp Marca de tiempo en epoch millis del intento de sincronización.
     */
    @Query("UPDATE entradas_diario_emocional SET syncStatus = :status, lastSyncAttempt = :timestamp WHERE id = :id")
    suspend fun updateSyncStatus(
        id: Long,
        status: SyncStatus,
        timestamp: Long?,
    )

    /**
     * Asigna el identificador remoto y el estado de sincronización a una entrada local.
     *
     * @param localId Identificador local de la entrada.
     * @param remoteId Identificador remoto asignado por el backend.
     * @param status Estado de sincronización resultante.
     */
    @Query("UPDATE entradas_diario_emocional SET remoteId = :remoteId, syncStatus = :status WHERE id = :localId")
    suspend fun updateRemoteId(
        localId: Long,
        remoteId: Long,
        status: SyncStatus,
    )

    /**
     * Inserta una nueva entrada en la tabla. Si existe un conflicto, reemplaza la entrada.
     *
     * @param entrada Entidad a insertar.
     * @return Identificador local autogenerado de la nueva fila.
     */
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertar(entrada: EntradaDiarioEntity): Long

    /**
     * Actualiza una entrada existente en la tabla.
     *
     * @param entrada Entidad con los datos modificados.
     */
    @Update
    suspend fun actualizar(entrada: EntradaDiarioEntity)

    /**
     * Elimina una entrada de la tabla.
     *
     * @param entrada Entidad a eliminar.
     */
    @Delete
    suspend fun eliminar(entrada: EntradaDiarioEntity)
}
