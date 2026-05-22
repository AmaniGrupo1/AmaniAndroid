package org.ies.tierno.applicationamani.domain.usecases.ticketsUseCase

import org.ies.tierno.applicationamani.data.repositorio.TicketsRepository
import org.ies.tierno.applicationamani.dto.tickets.TicketModel

class TicketsUseCase(
    private val repository: TicketsRepository
) {

    suspend operator fun invoke(
        ticket: TicketModel
    ): Result<Unit> {

        val validation = ticket.validar()

        if (!validation.success) {

            return Result.failure(
                Exception(validation.message)
            )
        }

        return repository.enviarTicket(ticket)
    }

    fun escucharTickets(
        email: String,
        onResult: (List<TicketModel>) -> Unit
    ) {

        repository.escucharTicketsPorEmail(
            email = email,
            onResult = onResult
        )
    }
}