package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteRequestDTO
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteResponseDTO
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

/**
 * API de Retrofit para tickets de soporte.
 *
 * Endpoints paciente (base /api/tickets-soporte):
 *   - GET /api/tickets-soporte/           → listar mis tickets
 *   - GET /api/tickets-soporte/{id}       → obtener ticket por id
 *   - POST /api/tickets-soporte/          → crear ticket
 */
interface SoporteTicketApi {

    /**
     * Listar los tickets del usuario autenticado.
     */
    @GET("api/tickets-soporte/")
    suspend fun getMisTickets(): Response<List<TicketSoporteResponseDTO>>

    /**
     * Obtener un ticket por su ID (paciente solo puede ver los suyos).
     *
     * @param idTicket ID del ticket.
     */
    @GET("api/tickets-soporte/{idTicket}")
    suspend fun getTicketById(
        @Path("idTicket") idTicket: Long
    ): Response<TicketSoporteResponseDTO>

    /**
     * Crear un nuevo ticket de soporte.
     *
     * @param request DTO con título, descripción, tipo y categoría.
     */
    @POST("api/tickets-soporte/")
    suspend fun crearTicket(
        @Body request: TicketSoporteRequestDTO
    ): Response<TicketSoporteResponseDTO>
}
