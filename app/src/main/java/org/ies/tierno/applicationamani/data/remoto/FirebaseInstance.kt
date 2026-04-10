package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage

object FirebaseInstance {
    private val databaseInstance: FirebaseDatabase by lazy {
        FirebaseDatabase.getInstance()
    }

    private val storageInstance: FirebaseStorage by lazy {
        FirebaseStorage.getInstance()
    }

    fun getDatabase(): FirebaseDatabase = databaseInstance

    fun getStorage(): FirebaseStorage = storageInstance

    fun getReference(path: String) = databaseInstance.getReference(path)

    fun getStorageReference(path: String) = storageInstance.getReference(path)
}
