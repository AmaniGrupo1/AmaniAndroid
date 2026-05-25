package org.ies.tierno.applicationamani.data.repositorio

import com.google.firebase.firestore.FirebaseFirestore
import kotlinx.coroutines.tasks.await
import org.ies.tierno.applicationamani.dto.tickets.TicketModel

class TicketsRepository(
    private val db: FirebaseFirestore
) {

    // 🔥 1. CREAR TICKET + ENVIAR EMAIL
    suspend fun enviarTicket(ticket: TicketModel): Result<Unit> {
        return try {

            // 🔵 Guardar ticket en Firestore
            val docRef = db.collection("tickets").document()

            val ticketWithId = ticket.copy(
                id = docRef.id,
                fecha = System.currentTimeMillis(),
                estado = "abierto"
            )

            docRef.set(ticketWithId).await()

            // 🟡 CREAR EMAIL (FIREBASE EXTENSION)

            val emailData = hashMapOf(
                "to" to "admin@gmail.com",

                "message" to hashMapOf(
                    "subject" to "📩 Nuevo ticket: ${ticket.titulo}",

                    "html" to """
            <div style="background:#f3f4f6;padding:40px;font-family:Arial,sans-serif;">

                <div style="max-width:600px;margin:auto;background:white;border-radius:16px;overflow:hidden;border:1px solid #e5e7eb;">

                    <div style="background:#111827;padding:24px;">
                        <h1 style="color:white;margin:0;">
                            📩 Nuevo Ticket
                        </h1>
                    </div>

                    <div style="padding:30px;color:#374151;">

                        <p style="font-size:16px;">
                            Se ha creado un nuevo ticket en el sistema.
                        </p>

                        <div style="margin-top:25px;">

                            <p>
                                <strong>Título:</strong><br>
                                ${ticket.titulo}
                            </p>

                            <p>
                                <strong>Categoría:</strong><br>
                                ${ticket.categoria}
                            </p>

                            <p>
                                <strong>Usuario:</strong><br>
                                ${ticket.email}
                            </p>

                            <p>
                                <strong>Descripción:</strong><br>
                                ${ticket.descripcion}
                            </p>

                        </div>

                    </div>

                    <div style="background:#f9fafb;padding:18px;text-align:center;font-size:12px;color:#6b7280;">
                        Sistema de soporte • Amani
                    </div>

                </div>

            </div>
        """.trimIndent()
                )
            )


            db.collection("mail")
                .add(emailData)
                .await()

            Result.success(Unit)

        } catch (e: Exception) {
            e.printStackTrace()
            Result.failure(e)
        }
    }

    // 🔥 2. ESCUCHAR TICKETS POR EMAIL
    fun escucharTicketsPorEmail(
        email: String,
        onResult: (List<TicketModel>) -> Unit
    ) {

        db.collection("tickets")
            .whereEqualTo("email", email)
            .addSnapshotListener { snapshot, error ->

                if (error != null || snapshot == null) return@addSnapshotListener

                val tickets = snapshot.documents.mapNotNull { doc ->
                    doc.toObject(TicketModel::class.java)
                }

                val ordenados = tickets.sortedByDescending { it.fecha }

                onResult(ordenados)
            }
    }
}