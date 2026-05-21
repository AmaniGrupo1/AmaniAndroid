package org.ies.tierno.applicationamani.dto.psicologo

import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO

/**
 * DTO de respuesta con los datos de un paciente desde la perspectiva del psicólogo.
 *
 * Proporciona los datos personales, dirección, estado de pago, franja de
 * la última cita y tutores asociados del paciente asignado.
 *
 * @property idPaciente Identificador único del paciente.
 * @property idUsuario Identificador del usuario asociado.
 * @property nombre Nombre del paciente.
 * @property apellido Apellido del paciente.
 * @property dni Documento nacional de identidad.
 * @property fechaNacimiento Fecha de nacimiento en formato `YYYY-MM-DD`.
 * @property email Correo electrónico del paciente.
 * @property genero Género del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property direccion Dirección postal del paciente como [DireccionResponseDTO].
 * @property estadoPago Estado del pago (pendiente, completado, etc.).
 * @property horaInicio Hora de inicio de la última cita.
 * @property horaFin Hora de finalización de la última cita.
 * @property tutor Lista de tutores legales del paciente.
 */
data class PacientePsicologoResponseDTO(
    val idPaciente: Long? = null,
    val idUsuario: Long? = null,
    val nombre: String? = null,
    val apellido: String? = null,
    val dni: String? = null,
    val fechaNacimiento: String? = null,
    val email: String? = null,
    val genero: String? = null,
    val telefono: String? = null,
    val direccion: DireccionResponseDTO? = null,
    val estadoPago: EstadoPago? = null,
    val horaInicio: String? = null,
    val horaFin: String? = null,
    val tutor: List<TutorResponseDTO>? = emptyList(),
)
