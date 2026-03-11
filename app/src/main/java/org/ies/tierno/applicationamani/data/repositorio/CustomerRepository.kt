package org.ies.tierno.applicationamani.data.repositorio



import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import org.ies.tierno.applicationamani.data.remoto.CustomerClient


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
     * Esta funcion sirve para hacer consultas a un servicio de manera continua
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