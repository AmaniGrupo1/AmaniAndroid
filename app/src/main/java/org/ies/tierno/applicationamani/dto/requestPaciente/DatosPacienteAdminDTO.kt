package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO

/**
 * DTO con los datos de un paciente para la vista de administración.
 *
 * Se recibe del endpoint `GET /api/pacientes/admin` y contiene toda
 * la información necesaria para listar, editar o dar de baja a un paciente.
 *
 * @property idPaciente Identificador único del paciente.
 * @property nombreUsuario Nombre del paciente.
 * @property apellidoUsuario Apellido del paciente.
 * @property emailUsuario Correo electrónico del paciente.
 * @property fechaNacimiento Fecha de nacimiento en formato `YYYY-MM-DD`.
 * @property genero Género del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property createdAt Fecha de creación del registro en formato ISO 8601.
 * @property updatedAt Fecha de última actualización en formato ISO 8601.
 * @property activo Indica si el paciente está activo (`true`) o dado de baja (`false`).
 * @property metodoPago Método de pago configurado por el paciente.
 * @property estadoPago Estado del último pago (pendiente, completado, etc.).
 * @property situaciones Lista de situaciones clínicas o administrativas asociadas.
 * @property tutores Lista de tutores legales asociados al paciente.
 * @property direccion Lista de direcciones registradas del paciente.
 * @property edad Edad calculada del paciente en años.
 */
data class DatosPacienteAdminDTO(
    val idPaciente: Long,
    val nombreUsuario: String,
    val apellidoUsuario: String,
    val emailUsuario: String,
    val fechaNacimiento: String,
    val genero: String,
    val telefono: String,
    val createdAt: String,
    val updatedAt: String,
    val activo: Boolean,
    val metodoPago: String,
    val estadoPago: String,
    val situaciones: List<SituacionDTO>,
    val tutores: List<TutorResponseDTO>,
    val direccion: List<DireccionResponseDTO>,
    val edad: Int,
)
