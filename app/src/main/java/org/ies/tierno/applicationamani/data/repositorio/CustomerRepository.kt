package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import org.ies.tierno.applicationamani.data.remoto.CustomerClient
import timber.log.Timber

/**
 * Repositorio de datos de clientes/usuarios.
 *
 * Actúa como capa intermedia entre los ViewModels y el servicio remoto
 * ([CustomerClient]). Contiene la lógica genérica de observación
 * continua de datos mediante [Flow].
 *
 * @property customerClient Cliente Retrofit para la comunicación con el backend.
 * @constructor Crea un repositorio con el cliente de red proporcionado.
 *
 * @see CustomerClient
 */
class CustomerRepository(
    val customerClient: CustomerClient,
) {
    fun <T> observeQuery(
        retryTime: Long = 5000,
        query: suspend () -> List<T>,
    ): Flow<List<T>> =
        flow {
            var lastResult: List<T> = emptyList()
            while (true) {
                try {
                    val newResult = query()
                    if (newResult != lastResult) {
                        lastResult = newResult
                        emit(newResult)
                    }
                } catch (e: Exception) {
                    Timber.e(e, "Error en observeQuery durante polling")
                }
                delay(retryTime) // Consulta cada 5 segundos
            }
        }.flowOn(Dispatchers.IO)
}
