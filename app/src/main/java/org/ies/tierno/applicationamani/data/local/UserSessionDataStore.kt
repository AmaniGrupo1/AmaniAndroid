package org.ies.tierno.applicationamani.data.local

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.transform

private val Context.userSessionDataStore: DataStore<Preferences> by preferencesDataStore(
    name = "user_session_prefs"
)

data class UserSession(
    val idUsuario: Long,
    val nombre: String?,
    val rol: String,
    val email: String? = null,
    val idPsicologo: Long? = null,
    val idPaciente: Long? = null,
    val idioma: String? = "es",
    val tema: Boolean = false  // false = claro, true = oscuro
)

class UserSessionDataStore(
    private val context: Context
) {

    private companion object {
        val USER_ID_KEY = longPreferencesKey("user_id")
        val USER_NAME_KEY = stringPreferencesKey("user_name")
        val USER_ROLE_KEY = stringPreferencesKey("user_role")
        val USER_EMAIL_KEY = stringPreferencesKey("user_email")
        val PSYCHOLOGIST_ID_KEY = longPreferencesKey("psychologist_id")
        val PATIENT_ID_KEY = longPreferencesKey("patient_id")
        val LANGUAGE_KEY = stringPreferencesKey("language")
        val THEME_KEY = booleanPreferencesKey("theme")

        // Clave antigua para migración (si se usaba String)
        val OLD_THEME_KEY = stringPreferencesKey("theme")  // Esta es la misma clave pero como String
        val MIGRATION_DONE_KEY = booleanPreferencesKey("migration_done")
    }

    // Flow con migración automática
    val sessionFlow: Flow<UserSession?> =
        context.userSessionDataStore.data.transform { preferences ->
            var mutablePrefs = preferences

            // Verificar si ya se migró
            val migrationDone = preferences[MIGRATION_DONE_KEY] ?: false

            if (!migrationDone) {
                // Intentar leer el tema antiguo como String
                val oldThemeString = preferences[OLD_THEME_KEY]
                val newTheme = when (oldThemeString) {
                    "DARK" -> true   // Oscuro
                    "LIGHT" -> false // Claro
                    "SYSTEM" -> false // Defecto -> claro
                    else -> false     // Por defecto claro
                }

                // Guardar el nuevo valor y marcar migración completada
                context.userSessionDataStore.edit { editor ->
                    editor[THEME_KEY] = newTheme
                    editor[MIGRATION_DONE_KEY] = true
                    // Opcional: eliminar la clave antigua
                    editor.remove(OLD_THEME_KEY)
                }

                // Recargar los datos después de la migración
                val updatedPrefs = context.userSessionDataStore.data.first()
                mutablePrefs = updatedPrefs
            }

            val idUsuario = mutablePrefs[USER_ID_KEY]
            val nombre = mutablePrefs[USER_NAME_KEY]
            val rol = mutablePrefs[USER_ROLE_KEY]
            val email = mutablePrefs[USER_EMAIL_KEY]
            val idPsicologo = mutablePrefs[PSYCHOLOGIST_ID_KEY]
            val idPaciente = mutablePrefs[PATIENT_ID_KEY]
            val idioma = mutablePrefs[LANGUAGE_KEY]
            val tema = mutablePrefs[THEME_KEY] ?: false

            val normalizedPsychologistId = when (idPsicologo) {
                null -> null
                0L -> null
                else -> idPsicologo
            }

            if (idUsuario != null && rol != null) {
                emit(
                    UserSession(
                        idUsuario = idUsuario,
                        nombre = nombre,
                        rol = rol,
                        email = email,
                        idPsicologo = normalizedPsychologistId,
                        idPaciente = idPaciente,
                        idioma = idioma,
                        tema = tema
                    )
                )
            } else {
                emit(null)
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

            if (session.email != null) {
                preferences[USER_EMAIL_KEY] = session.email
            } else {
                preferences.remove(USER_EMAIL_KEY)
            }

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

            if (session.idioma != null) {
                preferences[LANGUAGE_KEY] = session.idioma
            } else {
                preferences.remove(LANGUAGE_KEY)
            }

            preferences[THEME_KEY] = session.tema
        }
    }

    suspend fun clearSession() {
        context.userSessionDataStore.edit {
            it.clear()
        }
    }

    suspend fun getSession(): UserSession? {
        return sessionFlow.first()
    }
}