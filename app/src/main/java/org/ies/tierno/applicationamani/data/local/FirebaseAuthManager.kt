package org.ies.tierno.applicationamani.data.local

import com.google.firebase.auth.FirebaseAuth
import kotlinx.coroutines.tasks.await

class FirebaseAuthManager {

    private val auth = FirebaseAuth.getInstance()

    suspend fun loginAnonymous(): Result<Unit> {
        return try {

            if (auth.currentUser == null) {
                auth.signInAnonymously().await()
            }

            Result.success(Unit)

        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    fun logout() {
        auth.signOut()
    }
}