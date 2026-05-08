package org.ies.tierno.applicationamani.dto.perfil.paciente

import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import java.time.LocalDate

data class PacienteProfileResponseDTO(
    val idPaciente: Long? = null,
    val telefono: String? = null,
    val genero: String? = null,
    val fechaNacimiento: LocalDate? = null,
    val usuario: UsuarioProfileResponseDTO? = null
)