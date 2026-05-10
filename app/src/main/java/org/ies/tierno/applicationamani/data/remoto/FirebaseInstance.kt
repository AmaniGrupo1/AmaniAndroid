package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage

import org.ies.tierno.applicationamani.BuildConfig

object FirebaseInstance {
    private const val RTDB_URL = "https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app"
    private const val USE_EMULATOR = false

    private val databaseInstance: FirebaseDatabase by lazy {
        FirebaseDatabase.getInstance(RTDB_URL).apply {
            if (USE_EMULATOR) {
                android.util.Log.d("FirebaseInstance", "MODO DESARROLLO: Usando emulador RTDB en 10.0.2.2:9000")
                useEmulator("10.0.2.2", 9000)
            } else {
                android.util.Log.d("FirebaseInstance", "MODO PRODUCCIÓN: Conectando a Firebase Real...")
            }
        }
    }

    private val storageInstance: FirebaseStorage by lazy {
        FirebaseStorage.getInstance().apply {
            if (USE_EMULATOR) {
                android.util.Log.d("FirebaseInstance", "MODO DESARROLLO: Usando emulador Storage en 10.0.2.2:9199")
                useEmulator("10.0.2.2", 9199)
            }
        }
    }

    fun getDatabase(): FirebaseDatabase = databaseInstance

    fun getStorage(): FirebaseStorage = storageInstance

    fun getReference(path: String) = databaseInstance.getReference(path)

    fun getStorageReference(path: String) = storageInstance.getReference(path)
}
