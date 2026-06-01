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
import kotlinx.coroutines.flow.transform

private val Context.userSessionDataStore: DataStore<Preferences> by preferencesDataStore(
    name = "user_session_prefs",
)

/**
 * Representa la sesión activa del usuario en la aplicación.
 *
 * Contiene los identificadores, rol, nombre, idioma y preferencia de tema
 * necesarios para personalizar la experiencia de cada tipo de usuario.
 *
 * @property idUsuario Identificador único del usuario en el sistema.
 * @property nombre Nombre visible del usuario en la interfaz.
 * @property rol Rol del usuario (paciente, psicólogo, administrador).
 * @property idPsicologo Identificador del psicólogo asociado, si aplica.
 * @property idPaciente Identificador del paciente asociado, si aplica.
 * @property idioma Código ISO del idioma preferido (por defecto "es").
 * @property tema Preferencia de tema: `false` para claro, `true` para oscuro.
 */
data class UserSession(
    val idUsuario: Long,
    val nombre: String?,
    val rol: String,
    val email: String? = null,
    val idPsicologo: Long? = null,
    val idPaciente: Long? = null,
    val idioma: String? = "es",
    val tema: Boolean = false,
)

/**
 * Almacén de persistencia de la sesión del usuario mediante DataStore.
 *
 * Permite guardar, recuperar y limpiar los datos de sesión activa. Además,
 * incluye una migración automática del formato antiguo de tema (String) al nuevo (Boolean).
 *
 * @property context Contexto de la aplicación necesario para inicializar DataStore.
 */
class UserSessionDataStore(
    private val context: Context,
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

        val OLD_THEME_KEY = stringPreferencesKey("theme")
        val MIGRATION_DONE_KEY = booleanPreferencesKey("migration_done")
    }

    /**
     * Flow reactivo que emite la sesión actual del usuario.
     *
     * Realiza una migración automática del antiguo formato de tema (String "DARK"/"LIGHT")
     * al nuevo formato (Boolean) en la primera lectura si aún no se ha migrado.
     */
    val sessionFlow: Flow<UserSession?> =
        context.userSessionDataStore.data.transform { preferences ->
            var mutablePrefs = preferences

            val migrationDone = preferences[MIGRATION_DONE_KEY] ?: false

            if (!migrationDone) {
                val oldThemeString = preferences[OLD_THEME_KEY]
                val newTheme =
                    when (oldThemeString) {
                        "DARK" -> true
                        "LIGHT" -> false
                        "SYSTEM" -> false
                        else -> false
                    }

                context.userSessionDataStore.edit { editor ->
                    editor[THEME_KEY] = newTheme
                    editor[MIGRATION_DONE_KEY] = true
                    editor.remove(OLD_THEME_KEY)
                }

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

            val normalizedPsychologistId =
                when (idPsicologo) {
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
                        tema = tema,
                    ),
                )
            } else {
                emit(null)
            }
        }

    /**
     * Persiste los datos de sesión del usuario en DataStore.
     *
     * @param session Objeto [UserSession] con los datos a almacenar.
     */
    suspend fun saveSession(session: UserSession) {
        if (session.idioma != null) {
            context.getSharedPreferences("amani_lang_prefs", Context.MODE_PRIVATE)
                .edit()
                .putString("language", session.idioma)
                .apply()
        }

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

    /**
     * Elimina todos los datos de sesión del almacenamiento persistente.
     */
    suspend fun clearSession() {
        context.userSessionDataStore.edit {
            it.clear()
        }
    }

    /**
     * Obtiene la sesión actual de forma suspendible.
     *
     * @return La sesión activa o `null` si no hay sesión almacenada.
     */
    suspend fun getSession(): UserSession? = sessionFlow.first()
}
