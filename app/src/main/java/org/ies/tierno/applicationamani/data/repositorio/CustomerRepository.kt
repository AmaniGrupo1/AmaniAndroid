package org.ies.tierno.applicationamani.data.repositorio



import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import org.ies.tierno.applicationamani.data.remoto.CustomerClient


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
class CustomerRepository(val customerClient: CustomerClient) {
//
//    fun listAll(): Flow<List<CustomerDTO>> =
//        observeQuery {
//            customerClient.listAll()
//        }
//
//    suspend fun findById(id: Long): CustomerCreateDTO =
//        customerClient
//            .findById(id)
//
//    suspend fun save(customer: CustomerCreateDTO): CustomerCreateDTO =
//        customerClient
//            .save(customer)
//
//    suspend fun update(id:Long, customer: CustomerCreateDTO): CustomerDTO =
//        customerClient
//            .update(id,customer)

    /**
     * Observa los resultados de una consulta de forma continua mediante polling.
     *
     * Ejecuta [query] periódicamente en el dispatcher [Dispatchers.IO] y emite
     * un nuevo valor solo cuando el resultado difiere del anterior, evitando
     * recomposiciones innecesarias.
     *
     * @param T Tipo de los elementos de la lista devuelta por la consulta.
     * @param retryTime Intervalo en milisegundos entre consultas consecutivas.
     *   Por defecto es 5 000 ms (5 segundos).
     * @param query Función suspendida que realiza la consulta al servicio remoto.
     * @return [Flow] que emite listas actualizadas cada vez que cambian.
     */
    fun <T> observeQuery(retryTime: Long = 5000, query: suspend () -> List<T>): Flow<List<T>> =
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
                    println("Error al obtener datos: ${e.message}")
                }
                delay(retryTime) // Consulta cada 5 segundos
            }
        }.flowOn(Dispatchers.IO)

}