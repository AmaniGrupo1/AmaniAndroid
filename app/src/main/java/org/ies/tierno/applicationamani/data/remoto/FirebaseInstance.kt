package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage

object FirebaseInstance {
    private const val RTDB_URL = "https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app"

    private val databaseInstance: FirebaseDatabase by lazy {
        FirebaseDatabase.getInstance(RTDB_URL)
    }

    private val storageInstance: FirebaseStorage by lazy {
        FirebaseStorage.getInstance()
    }

    fun getDatabase(): FirebaseDatabase = databaseInstance

    fun getStorage(): FirebaseStorage = storageInstance

    fun getReference(path: String) = databaseInstance.getReference(path)

    fun getStorageReference(path: String) = storageInstance.getReference(path)
}
