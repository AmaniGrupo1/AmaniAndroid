package org.ies.tierno.applicationamani.data.repositorio


import com.google.firebase.firestore.FirebaseFirestore
import kotlinx.coroutines.tasks.await
import org.ies.tierno.applicationamani.domain.models.Opcion
import org.ies.tierno.applicationamani.domain.models.PreguntaConOpciones
import org.ies.tierno.applicationamani.domain.models.Respuesta

class PreguntasRepository {

    private val db = FirebaseFirestore.getInstance()

    /**
     * Insertar una pregunta
     */
    suspend fun insertarPreguntaConOpciones(
        textoPregunta: String,
        opciones: List<Opcion>
    ): Boolean {

        return try {

            val preguntaRef = db.collection("preguntas").document()

            val pregunta = hashMapOf(
                "texto" to textoPregunta,
                "tipo" to "opcion_multiple"
            )

            preguntaRef.set(pregunta).await()

            opciones.forEach { opcion ->

                val opcionData = hashMapOf(
                    "texto" to opcion.texto,
                    "valor" to opcion.valor
                )

                preguntaRef
                    .collection("opciones")
                    .add(opcionData)
                    .await()
            }

            true

        } catch (e: Exception) {
            false
        }
    }

    suspend fun obtenerPreguntas(): List<PreguntaConOpciones> {

        val preguntasSnapshot = db.collection("preguntas").get().await()

        val lista = mutableListOf<PreguntaConOpciones>()

        for (preguntaDoc in preguntasSnapshot.documents) {

            val opcionesSnapshot = db.collection("preguntas")
                .document(preguntaDoc.id)
                .collection("opciones")
                .get()
                .await()

            val opciones = opcionesSnapshot.documents.map {

                Opcion(
                    id = it.id,
                    texto = it.getString("texto") ?: "",
                    valor = (it.getLong("valor") ?: 0).toInt()
                )
            }

            val preguntaConOpciones = PreguntaConOpciones(
                textoPregunta = preguntaDoc.getString("texto") ?: "",
                opciones = opciones
            )

            lista.add(preguntaConOpciones)
        }

        return lista
    }


}