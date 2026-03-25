package org.ies.tierno.applicationamani.data.remoto

/**
 * Interfaz cliente de la API REST para la gestión de clientes/usuarios.
 *
 * Define los endpoints HTTP que Retrofit implementará en tiempo de
 * ejecución. Actualmente los métodos están comentados a la espera
 * de que se definan los DTOs correspondientes.
 *
 * Uso típico:
 * ```kotlin
 * val cliente: CustomerClient = retrofit.create(CustomerClient::class.java)
 * val todos = cliente.listAll()
 * ```
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.CustomerRepository
 */
interface CustomerClient {

//    @GET("customers/{id}")
//    suspend fun findById(@Path("id")  id: Long): CustomerCreateDTO
//
//    @GET("customers")
//    suspend fun listAll(): List<CustomerDTO>
//
//
//    @POST("customers")
//    suspend fun save(@Body customer: CustomerCreateDTO): CustomerCreateDTO
//
//    @PUT("customers/{id}")
//    suspend fun update(
//        @Path("id") id: Long,
//        @Body customer: CustomerCreateDTO): CustomerDTO
}