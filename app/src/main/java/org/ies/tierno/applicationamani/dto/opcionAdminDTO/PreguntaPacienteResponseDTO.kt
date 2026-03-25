package org.ies.tierno.applicationamani.dto.opcionAdminDTO

/**
 * DTO de respuesta con los datos de una pregunta destinada al paciente.
 *
 * Contiene el enunciado, el tipo de pregunta y las opciones de respuesta
 * que se muestran en la pantalla de cuestionario.
 *
 * @property texto Enunciado de la pregunta.
 * @property tipo Tipo de pregunta (p. ej. «selección única»).
 * @property opciones Lista de textos de las opciones de respuesta.
 */
data class PreguntaPacienteResponseDTO(
    val texto: String,
    val tipo: String,
    val opciones: List<String>
)