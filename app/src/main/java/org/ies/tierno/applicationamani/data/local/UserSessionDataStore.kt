package org.ies.tierno.applicationamani.data.local

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map

private val Context.userSessionDataStore: DataStore<Preferences> by preferencesDataStore(
    name = "user_session_prefs"
)

data class UserSession(
    val idUsuario: Long,
    val nombre: String,
    val rol: String,
    val idPsicologo: Long? = null
)

class UserSessionDataStore(private val context: Context) {

    private companion object {
        val USER_ID_KEY = longPreferencesKey("user_id")
        val USER_NAME_KEY = stringPreferencesKey("user_name")
        val USER_ROLE_KEY = stringPreferencesKey("user_role")
        val PSYCHOLOGIST_ID_KEY = longPreferencesKey("psychologist_id")
    }

    val sessionFlow: Flow<UserSession?> = context.userSessionDataStore.data.map { preferences ->
        val idUsuario = preferences[USER_ID_KEY]
        val nombre = preferences[USER_NAME_KEY]
        val rol = preferences[USER_ROLE_KEY]
        val idPsicologo = preferences[PSYCHOLOGIST_ID_KEY]

        if (idUsuario != null && nombre != null && rol != null) {
            UserSession(
                idUsuario = idUsuario,
                nombre = nombre,
                rol = rol,
                idPsicologo = idPsicologo
            )
        } else {
            null
        }
    }

    suspend fun saveSession(session: UserSession) {
        context.userSessionDataStore.edit { preferences ->
            preferences[USER_ID_KEY] = session.idUsuario
            preferences[USER_NAME_KEY] = session.nombre
            preferences[USER_ROLE_KEY] = session.rol
            session.idPsicologo?.let { preferences[PSYCHOLOGIST_ID_KEY] = it }
        }
    }

    suspend fun clearSession() {
        context.userSessionDataStore.edit { preferences ->
            preferences.remove(USER_ID_KEY)
            preferences.remove(USER_NAME_KEY)
            preferences.remove(USER_ROLE_KEY)
            preferences.remove(PSYCHOLOGIST_ID_KEY)
        }
    }

    suspend fun getSession(): UserSession? = sessionFlow.first()
}
