package org.ies.tierno.applicationamani.dto.opcionAdminDTO

/**
 * DTO de solicitud para crear una nueva pregunta de test.
 *
 * El administrador rellena estos campos desde la pantalla de creación
 * de preguntas y se envían al endpoint `POST /api/admin/preguntas`.
 *
 * @property texto Enunciado de la pregunta, o `null` si aún no se ha escrito.
 * @property tipo Tipo de pregunta (p. ej. «selección única»), o `null`.
 * @property opciones Lista de textos de las opciones de respuesta, o `null`.
 */
data class PreguntaRequest(
    val texto: String? = null,
    val tipo: String? = null,
    val opciones: List<String?>? = null,
)
