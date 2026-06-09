package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage
import org.ies.tierno.applicationamani.data.remoto.FirebaseInstance.USE_EMULATOR

/**
 * Singleton que centraliza la inicialización y acceso a las instancias de Firebase.
 *
 * Mantiene una única instancia de [FirebaseDatabase] (Realtime Database) y de
 * [FirebaseStorage] con soporte para alternar entre entorno de producción y
 * emulador local según la constante [USE_EMULATOR].
 */
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
            // Persistencia en disco: los mensajes se cachean entre sesiones
            // y el chat funciona sin conexión leyendo la caché local.
            setPersistenceEnabled(true)
            // Tamaño máximo de caché en disco: 10 MB (defecto 10 MB, máx 100 MB)
            setPersistenceCacheSizeBytes(10L * 1024 * 1024)
        }
    }

    private val storageInstance: FirebaseStorage by lazy {
        FirebaseStorage.getInstance().apply {
            if (USE_EMULATOR) {
                android.util.Log.d("FirebaseInstance", "MODO DESARROLLO: Usando emulador Storage en 10.0.2.2:9199")
                useEmulator("10.0.2.2", 9199)
            } else {
                android.util.Log.d("FirebaseInstance", "MODO PRODUCCIÓN: Usando bucket por defecto de google-services.json")
            }
        }
    }

    /**
     * Retorna la instancia inicializada de Realtime Database.
     *
     * @return Instancia única de [FirebaseDatabase].
     */
    fun getDatabase(): FirebaseDatabase = databaseInstance

    /**
     * Retorna la instancia inicializada de Firebase Storage.
     *
     * @return Instancia única de [FirebaseStorage].
     */
    fun getStorage(): FirebaseStorage = storageInstance

    /**
     * Obtiene una referencia a una ruta específica dentro de Realtime Database.
     *
     * @param path Ruta dentro de la base de datos en tiempo real.
     * @return Referencia de Firebase al nodo solicitado.
     */
    fun getReference(path: String) = databaseInstance.getReference(path)

    /**
     * Obtiene una referencia a una ruta dentro de Firebase Storage.
     *
     * @param path Ruta dentro del bucket de almacenamiento.
     * @return Referencia de Storage al objeto o carpeta solicitada.
     */
    fun getStorageReference(path: String) = storageInstance.getReference(path)
}
