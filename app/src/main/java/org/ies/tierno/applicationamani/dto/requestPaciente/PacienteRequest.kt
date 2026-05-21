package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO

/**
 * DTO de solicitud para registrar un nuevo paciente en el sistema.
 *
 * Agrupa los datos del usuario, los datos específicos del paciente,
 * el consentimiento de términos y condiciones, las situaciones clínicas,
 * los tutores legales y las direcciones postales.
 *
 * @property idUsuario Identificador del usuario base asociado, o `null` si es nuevo.
 * @property fechaNacimiento Fecha de nacimiento en formato `YYYY-MM-DD`.
 * @property genero Género del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property usuario Datos del usuario base como [UsuarioRequest].
 * @property aceptaTerminos Indica si el paciente acepta los términos y condiciones.
 * @property aceptaVideoconferencia Indica si acepta el uso de videoconferencia, o `null`.
 * @property aceptaComunicacion Indica si acepta comunicaciones del centro, o `null`.
 * @property idSituaciones Lista de identificadores de situaciones clínicas asociadas.
 * @property tutores Lista de tutores legales como [TutorRequestDTO].
 * @property direccion Lista de direcciones postales como [DireccionRequest].
 */
data class PacienteRequest(
    val idUsuario: Long? = null,
    val fechaNacimiento: String,
    val genero: String,
    val telefono: String,
    val usuario: UsuarioRequest,
    val aceptaTerminos: Boolean,
    val aceptaVideoconferencia: Boolean?,
    val aceptaComunicacion: Boolean?,
    val idSituaciones: List<Long>,
    val tutores: List<TutorRequestDTO>,
    val direccion: List<DireccionRequest>,
)
