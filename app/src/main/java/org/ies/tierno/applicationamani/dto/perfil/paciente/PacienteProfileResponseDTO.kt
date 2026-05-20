package org.ies.tierno.applicationamani.dto.perfil.paciente

import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import java.time.LocalDate

/**
 * DTO de respuesta con los datos del perfil de un paciente.
 *
 * Incluye los datos específicos del paciente (teléfono, género,
 * fecha de nacimiento) junto con los datos del usuario asociado.
 *
 * @property idPaciente Identificador único del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property genero Género del paciente.
 * @property fechaNacimiento Fecha de nacimiento.
 * @property usuario Datos del usuario base como [UsuarioProfileResponseDTO].
 */
data class PacienteProfileResponseDTO(
    val idPaciente: Long? = null,
    val telefono: String? = null,
    val genero: String? = null,
    val fechaNacimiento: LocalDate? = null,
    val usuario: UsuarioProfileResponseDTO? = null,
)
