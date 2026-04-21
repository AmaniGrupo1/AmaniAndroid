package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Database
import androidx.room.RoomDatabase

@Database(
    entities = [EntradaDiarioEntity::class],
    version = 1,
    exportSchema = false
)
abstract class AmaniDatabase : RoomDatabase() {
    abstract fun diarioEmocionalDao(): DiarioEmocionalDao
}
