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
    val nombre: String?, // Permitimos nulo aquí también
    val rol: String,
    val idPsicologo: Long? = null,
    val idPaciente: Long? = null
)

class UserSessionDataStore(private val context: Context) {

    private companion object {
        val USER_ID_KEY = longPreferencesKey("user_id")
        val USER_NAME_KEY = stringPreferencesKey("user_name")
        val USER_ROLE_KEY = stringPreferencesKey("user_role")
        val PSYCHOLOGIST_ID_KEY = longPreferencesKey("psychologist_id")

        val PATIENT_ID_KEY = longPreferencesKey("patient_id")
    }

    val sessionFlow: Flow<UserSession?> = context.userSessionDataStore.data.map { preferences ->
        val idUsuario = preferences[USER_ID_KEY]
        val nombre = preferences[USER_NAME_KEY]
        val rol = preferences[USER_ROLE_KEY]
        val idPsicologo = preferences[PSYCHOLOGIST_ID_KEY]
        val idPaciente = preferences[PATIENT_ID_KEY]

        // Normalizar valores: si el id del psicólogo existe pero es 0 -> tratar como null
        val normalizedPsychologistId = when (idPsicologo) {
            null -> null
            0L -> null
            else -> idPsicologo
        }

        // Permitimos que nombre sea nulo al recuperar la sesión si idUsuario y rol existen
        if (idUsuario != null && rol != null) {
            UserSession(
                idUsuario = idUsuario,
                nombre = nombre,
                rol = rol,
                idPsicologo = normalizedPsychologistId,
                idPaciente = idPaciente
            )
        } else {
            null
        }
    }

    suspend fun saveSession(session: UserSession) {
        context.userSessionDataStore.edit { preferences ->
            preferences[USER_ID_KEY] = session.idUsuario
            if (session.nombre != null) {
                preferences[USER_NAME_KEY] = session.nombre
            } else {
                preferences.remove(USER_NAME_KEY)
            }
            preferences[USER_ROLE_KEY] = session.rol
            // Si el psicólogo es null, eliminamos la clave para evitar valores obsoletos
            if (session.idPsicologo != null) {
                preferences[PSYCHOLOGIST_ID_KEY] = session.idPsicologo
            } else {
                preferences.remove(PSYCHOLOGIST_ID_KEY)
            }

            if (session.idPaciente != null) {
                preferences[PATIENT_ID_KEY] = session.idPaciente
            } else {
                preferences.remove(PATIENT_ID_KEY)
            }
        }
    }

    suspend fun clearSession() {
        context.userSessionDataStore.edit { preferences ->
            preferences.clear()
        }
    }

    suspend fun getSession(): UserSession? = sessionFlow.first()
}
