package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(
    entities = [EntradaDiarioEntity::class],
    version = 2,
    exportSchema = false
)
abstract class AmaniDatabase : RoomDatabase() {
    abstract fun diarioEmocionalDao(): DiarioEmocionalDao

    companion object {
        val MIGRATION_1_2 = object : Migration(1, 2) {
            override fun migrate(database: SupportSQLiteDatabase) {
                database.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN remoteId INTEGER")
                database.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN syncStatus TEXT NOT NULL DEFAULT 'SYNCED'")
                database.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN lastSyncAttempt INTEGER")
            }
        }
    }
}
