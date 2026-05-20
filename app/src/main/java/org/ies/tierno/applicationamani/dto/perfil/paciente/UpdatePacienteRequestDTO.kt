package org.ies.tierno.applicationamani.dto.perfil.paciente

import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import java.time.LocalDate

/**
 * DTO de solicitud para actualizar los datos del perfil de un paciente.
 *
 * Permite modificar los datos específicos del paciente y los datos
 * del usuario base. Los campos con valor `null` se ignoran.
 *
 * @property telefono Nuevo número de teléfono, o `null` si no se modifica.
 * @property genero Nuevo género, o `null` si no se modifica.
 * @property fechaNacimiento Nueva fecha de nacimiento, o `null` si no se modifica.
 * @property usuario Datos de usuario a actualizar como [UsuarioUpdateDTO], o `null`.
 */
data class UpdatePacienteRequestDTO(
    val telefono: String?,
    val genero: String?,
    val fechaNacimiento: LocalDate?,
    val usuario: UsuarioUpdateDTO?,
)
