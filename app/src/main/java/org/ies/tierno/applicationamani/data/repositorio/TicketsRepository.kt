package org.ies.tierno.applicationamani.data.repositorio

import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.database.ValueEventListener
import kotlinx.coroutines.tasks.await
import org.ies.tierno.applicationamani.dto.tickets.TicketModel

class TicketsRepository(
    private val database: FirebaseDatabase
) {

    suspend fun enviarTicket(
        ticket: TicketModel
    ): Result<Unit> {

        return try {

            val ref = database
                .getReference("tickets")
                .push()

            val ticketWithId = ticket.copy(
                id = ref.key ?: "",
                fecha = System.currentTimeMillis()
            )

            ref.setValue(ticketWithId).await()

            Result.success(Unit)

        } catch (e: Exception) {

            e.printStackTrace()

            Result.failure(e)
        }
    }

    fun escucharTicketsPorEmail(
        email: String,
        onResult: (List<TicketModel>) -> Unit
    ) {

        database.getReference("tickets")
            .orderByChild("email")
            .equalTo(email)
            .addValueEventListener(object : ValueEventListener {

                override fun onDataChange(snapshot: DataSnapshot) {

                    val tickets = mutableListOf<TicketModel>()

                    for (child in snapshot.children) {

                        val ticket =
                            child.getValue(TicketModel::class.java)

                        if (ticket != null) {
                            tickets.add(ticket)
                        }
                    }

                    tickets.sortByDescending { it.fecha }

                    onResult(tickets)
                }

                override fun onCancelled(error: DatabaseError) {

                }
            })
    }
}