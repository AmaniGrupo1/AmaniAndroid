package org.ies.tierno.applicationamani.data.local

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.launch
import timber.log.Timber

/**
 * TokenHolder mantiene una caché en memoria del JWT token para acceso sincrónico
 * sin bloquear threads de red. Soluciona el problema del runBlocking en AuthInterceptor.
 *
 * Se inicializa escuchando el TokenDataStore y mantiene el token actualizado en memoria.
 */
class TokenHolder(private val tokenDataStore: TokenDataStore) {

    @Volatile
    private var _token: String? = null

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    init {
        // Iniciar recolección del token flow
        scope.launch {
            tokenDataStore.tokenFlow
                .catch { e ->
                    Timber.e(e, "Error collecting token flow")
                    _token = null
                }
                .collect { token ->
                    _token = token
                }
        }
    }

    /**
     * Obtiene el token actual de forma no bloqueante.
     * Esta función es segura para llamar desde threads de red (interceptores OkHttp).
     */
    fun getToken(): String? = _token

    /**
     * Limpia el token de la caché en memoria.
     * Nota: También debe limpiarse desde TokenDataStore para persistencia.
     */
    fun clearToken() {
        _token = null
    }
}

