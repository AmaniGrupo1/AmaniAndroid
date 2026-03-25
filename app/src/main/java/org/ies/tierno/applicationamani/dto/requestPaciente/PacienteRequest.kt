package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago

data class PacienteRequest(
    val idUsuario: Long? = null,
    val fechaNacimiento: String,   // "YYYY-MM-DD"
    val genero: String,
    val telefono: String,
    val estadoPago: String = "PENDIENTE",   // siempre se envía como string
    val metodoPago: String,  // <-- se envía como String al backend
    val usuario: UsuarioRequest,
    val situacionesIds: List<Long>
)