package org.ies.tierno.applicationamani.dto.opcionAdminDTO

/**
 * DTO que representa una pregunta de test gestionada por el administrador.
 *
 * Contiene el texto de la pregunta, su tipo y las opciones de respuesta.
 * Se utiliza tanto para crear preguntas desde el panel de admin como para
 * mostrarlas al paciente en el cuestionario.
 *
 * @property texto Enunciado de la pregunta, o `null` si no se ha definido.
 * @property tipo Tipo de pregunta (p. ej. «selección única», «múltiple»), o `null`.
 * @property opciones Lista de textos de las opciones de respuesta, o `null`.
 */
data class OpcionAdminDTO(
    val texto: String? = null,
    val tipo: String? = null,
    val opciones: List<String>? = null,
)
