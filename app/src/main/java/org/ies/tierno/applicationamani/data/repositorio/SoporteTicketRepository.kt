package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.SoporteTicketApi
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteRequestDTO
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteResponseDTO
import retrofit2.Response
import timber.log.Timber

/**
 * Repositorio para tickets de soporte.
 *
 * Wrapper alrededor de [SoporteTicketApi] que expone operaciones
 * suspendidas para crear y listar tickets.
 */
class SoporteTicketRepository(
    private val api: SoporteTicketApi,
) {
    /**
     * Obtiene la lista de tickets del usuario autenticado.
     *
     * @throws Exception si la respuesta no es exitosa.
     */
    suspend fun getMisTickets(): List<TicketSoporteResponseDTO> {
        Timber.d("Repositorio: Solicitando mis tickets...")
        val response: Response<List<TicketSoporteResponseDTO>> = api.getMisTickets()
        if (response.isSuccessful) {
            val body = response.body() ?: emptyList()
            Timber.i("Repositorio: Tickets obtenidos correctamente (${body.size} items)")
            return body
        } else {
            Timber.e("Repositorio: Error HTTP al obtener tickets. C\u00f3digo: ${response.code()}")
            throw Exception("Error al obtener los tickets: ${response.code()}")
        }
    }

    /**
     * Obtiene un ticket específico por su ID.
     *
     * @param idTicket ID del ticket.
     * @throws Exception si la respuesta no es exitosa.
     */
    suspend fun getTicketById(idTicket: Long): TicketSoporteResponseDTO {
        val response: Response<TicketSoporteResponseDTO> = api.getTicketById(idTicket)
        if (response.isSuccessful) {
            return response.body()
                ?: throw Exception("Respuesta vacía al obtener ticket")
        } else {
            throw Exception("Error al obtener el ticket: ${response.code()}")
        }
    }

    /**
     * Crea un nuevo ticket de soporte.
     *
     * @param request DTO con los datos del ticket.
     * @throws Exception si la respuesta no es exitosa.
     */
    suspend fun crearTicket(request: TicketSoporteRequestDTO): TicketSoporteResponseDTO {
        Timber.d("Repositorio: Creando ticket: ${request.titulo}")
        val response: Response<TicketSoporteResponseDTO> = api.crearTicket(request)
        if (response.isSuccessful) {
            val body = response.body() ?: throw Exception("Respuesta vac\u00eda al crear ticket")
            Timber.i("Repositorio: Ticket creado con \u00e9xito. ID: ${body.idTicket}")
            return body
        } else {
            Timber.e(
                "Repositorio: Error HTTP al crear ticket. C\u00f3digo: ${response.code()}, ErrorBody: ${response.errorBody()?.string()}",
            )
            throw Exception("Error al crear ticket: ${response.code()}")
        }
    }
}
