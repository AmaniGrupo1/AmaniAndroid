package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

/**
 * Base de datos Room de la aplicación Amani.
 *
 * Contiene la tabla de entradas del diario emocional y define las migraciones
 * necesarias entre versiones del esquema.
 *
 * @see EntradaDiarioEntity
 * @see DiarioEmocionalDao
 */
@Database(
    entities = [EntradaDiarioEntity::class],
    version = 2,
    exportSchema = false,
)
abstract class AmaniDatabase : RoomDatabase() {
    /**
     * Proporciona el DAO para el acceso a las entradas del diario emocional.
     *
     * @return Instancia de [DiarioEmocionalDao].
     */
    abstract fun diarioEmocionalDao(): DiarioEmocionalDao

    companion object {
        /**
         * Migración de la versión 1 a la versión 2 del esquema.
         *
         * Añade las columnas `remoteId`, `syncStatus` y `lastSyncAttempt`
         * para habilitar la sincronización bidireccional con el backend.
         */
        val MIGRATION_1_2 =
            object : Migration(1, 2) {
                override fun migrate(db: SupportSQLiteDatabase) {
                    db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN remoteId INTEGER")
                    db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN syncStatus TEXT NOT NULL DEFAULT 'SYNCED'")
                    db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN lastSyncAttempt INTEGER")
                }
            }
    }
}
