package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.flow
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest

/**
 * Repositorio para la gestión de preguntas de test a través de la API REST.
 *
 * Actúa como capa intermedia entre los casos de uso y el servicio remoto
 * [TestApi]. Proporciona métodos para crear preguntas y obtener la lista
 * completa como un [Flow] reactivo.
 *
 * @property testApi Cliente Retrofit para la comunicación con el backend de tests.
 * @constructor Crea un repositorio con la interfaz de API proporcionada.
 *
 * @see TestApi
 * @see org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
 * @see org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
 */
class TestRepositoryApi(
    private val testApi: TestApi,
) {
    /**
     * Crea una nueva pregunta de test en el backend.
     *
     * @param pregunta Datos de la pregunta a crear (texto, tipo y opciones).
     * @return [OpcionAdminDTO] con los datos de la pregunta creada, o `null` si ocurre un error.
     */
    suspend fun createPregunta(pregunta: PreguntaRequest): OpcionAdminDTO? =
        try {
            testApi.createPregunta(pregunta)
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }

    /**
     * Obtiene un flujo reactivo con la lista de todas las preguntas de test.
     *
     * Realiza una única llamada al backend y emite el resultado. En caso
     * de error, emite una lista vacía y registra la excepción.
     *
     * @return [Flow] que emite una lista de [OpcionAdminDTO].
     */
    fun getPreguntasFlow(): Flow<List<OpcionAdminDTO>> =
        flow {
            val preguntas = testApi.getPreguntas() // llamada Retrofit suspend
            emit(preguntas) // emitimos la lista como flujo
        }.catch { e ->
            e.printStackTrace()
            emit(emptyList())
        }

    suspend fun responderTest(
        idPaciente: Long,
        respuestas: List<RespuestasRequestDTO>,
    ): Boolean =
        try {
            testApi.responderTest(
                idPaciente,
                respuestas,
            )

            true
        } catch (e: Exception) {
            e.printStackTrace()

            false
        }
}
