//package org.ies.tierno.applicationamani.data.repositorio
//
//import com.google.firebase.firestore.FirebaseFirestore
//import kotlinx.coroutines.tasks.await
//import org.ies.tierno.applicationamani.domain.models.test.Opcion
//import org.ies.tierno.applicationamani.domain.models.test.Respuesta
//
//class RespuestasRepository {
//
//    private val db = FirebaseFirestore.getInstance()
//
//    suspend fun obtenerRespuestasPaciente(
//        pacienteId: String
//    ): List<Respuesta> {
//
//        val snapshot = db.collection("respuestas")
//            .whereEqualTo("pacienteId", pacienteId)
//            .get()
//            .await()
//
//        return snapshot.documents.map {
//
//            Respuesta(
//                preguntaId = it.getString("preguntaId") ?: "",
//                texto = it.getString("opcionTexto") ?: "",
//                valor = (it.getLong("valor") ?: 0).toInt()
//            )
//        }
//    }
//    suspend fun guardarRespuesta(
//        pacienteId: String,
//        preguntaId: String,
//        opcion: Opcion
//    ) {
//        db.collection("respuestas")
//            .add(
//                mapOf(
//                    "pacienteId" to pacienteId,
//                    "preguntaId" to preguntaId,
//                    "opcionTexto" to opcion.texto,
//                    "valor" to opcion.valor,
//                    "fecha" to System.currentTimeMillis()
//                )
//            ).await()
//    }
//
//}
