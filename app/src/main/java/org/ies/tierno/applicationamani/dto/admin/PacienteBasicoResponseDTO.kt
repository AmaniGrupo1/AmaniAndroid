package org.ies.tierno.applicationamani.dto.admin

import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO

/**
 * DTO de respuesta con los datos básicos de un paciente para vistas de administración.
 *
 * Proporciona los datos personales, situaciones asociadas, direcciones y
 * tutores del paciente en un formato resumido para listados y búsquedas.
 *
 * @property idPaciente Identificador único del paciente.
 * @property idUsuario Identificador único del usuario asociado.
 * @property nombre Nombre del paciente.
 * @property apellido Apellido del paciente.
 * @property email Correo electrónico del paciente.
 * @property dni Documento nacional de identidad, o `null` si no consta.
 * @property fechaNacimiento Fecha de nacimiento en formato `YYYY-MM-DD`.
 * @property genero Género del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property situaciones Lista de situaciones clínicas o administrativas asociadas.
 * @property direcciones Lista de direcciones registradas del paciente.
 * @property tutores Lista de tutores legales asociados al paciente.
 */
data class PacienteBasicoResponseDTO(
    val idPaciente: Long,
    val idUsuario: Long,
    val nombre: String,
    val apellido: String,
    val email: String,
    val dni: String?,
    val fechaNacimiento: String?,
    val genero: String?,
    val telefono: String?,
    val situaciones: List<SituacionDTO>?,
    val direcciones: List<DireccionResponseDTO>?,
    val tutores: List<TutorResponseDTO>?,
)
