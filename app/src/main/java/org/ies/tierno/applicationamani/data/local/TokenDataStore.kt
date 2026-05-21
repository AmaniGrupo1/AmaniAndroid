package org.ies.tierno.applicationamani.data.local

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "auth_prefs")

/**
 * Almacén de persistencia del token JWT de autenticación mediante DataStore.
 *
 * Permite guardar, recuperar y limpiar el token de acceso del usuario,
 * así como observar cambios en tiempo real a través de un [Flow].
 *
 * @property context Contexto de la aplicación necesario para inicializar DataStore.
 */
class TokenDataStore(
    private val context: Context,
) {
    companion object {
        val TOKEN_KEY = stringPreferencesKey("jwt_token")
    }

    /**
     * Flow que emite el token JWT actual cada vez que cambia en DataStore.
     */
    val tokenFlow: Flow<String?> =
        context.dataStore.data
            .map { preferences ->
                preferences[TOKEN_KEY]
            }

    /**
     * Guarda el token JWT de forma persistente.
     *
     * @param token Cadena del token JWT a almacenar.
     */
    suspend fun saveToken(token: String) {
        context.dataStore.edit { preferences ->
            preferences[TOKEN_KEY] = token
        }
    }

    /**
     * Elimina el token JWT del almacenamiento persistente.
     */
    suspend fun clearToken() {
        context.dataStore.edit { preferences ->
            preferences.remove(TOKEN_KEY)
        }
    }

    /**
     * Obtiene el token JWT actual de forma suspendible.
     *
     * @return El token almacenado o `null` si no existe.
     */
    suspend fun getToken(): String? =
        context.dataStore.data
            .map { preferences ->
                preferences[TOKEN_KEY]
            }.first()
}
