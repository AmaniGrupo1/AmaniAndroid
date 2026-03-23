package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.flow
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest


class TestRepositoryApi(private val testApi: TestApi) {

    suspend fun createPregunta(pregunta: PreguntaRequest): OpcionAdminDTO? {
        return try {
            testApi.createPregunta(pregunta)
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }
    }


    fun getPreguntasFlow(): Flow<List<OpcionAdminDTO>> = flow {
        val preguntas = testApi.getPreguntas() // llamada Retrofit suspend
        emit(preguntas) // emitimos la lista como flujo
    }.catch { e ->
        e.printStackTrace()
        emit(emptyList())
    }

    suspend fun responderTest(
        idPaciente: Long,
        respuestas: List<RespuestasRequestDTO>
    ): Boolean {

        return try {

            testApi.responderTest(
                idPaciente,
                respuestas
            )

            true

        } catch (e: Exception) {

            e.printStackTrace()

            false

        }

    }
}
