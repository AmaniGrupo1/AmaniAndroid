package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow

@Dao
interface DiarioEmocionalDao {

    @Query("SELECT * FROM entradas_diario_emocional ORDER BY createdAt DESC")
    fun observeEntradas(): Flow<List<EntradaDiarioEntity>>

    @Query("SELECT * FROM entradas_diario_emocional WHERE id = :id LIMIT 1")
    suspend fun getEntradaById(id: Long): EntradaDiarioEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertar(entrada: EntradaDiarioEntity): Long

    @Update
    suspend fun actualizar(entrada: EntradaDiarioEntity)

    @Delete
    suspend fun eliminar(entrada: EntradaDiarioEntity)
}
