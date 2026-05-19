package org.ies.tierno.applicationamani.dto.perfil.paciente

import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import java.time.LocalDate

data class UpdatePacienteRequestDTO(
    val telefono: String?,
    val genero: String?,
    val fechaNacimiento: LocalDate?,
    val usuario: UsuarioUpdateDTO?,
)
