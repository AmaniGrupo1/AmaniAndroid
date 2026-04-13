package org.ies.tierno.applicationamani.dto.perfil

import java.time.LocalDate

data class PacienteProfileResponseDTO(
    val idPaciente: Long? = null,
    val telefono: String? = null,
    val genero: String? = null,
    val fechaNacimiento: LocalDate? = null,
    val usuario: UsuarioProfileResponseDTO? = null
)