package org.ies.tierno.applicationamani.dto.requestPaciente

data class PacienteRequest(
    val idUsuario: Long? = null,
    val fechaNacimiento: String,   // "YYYY-MM-DD"
    val genero: String,
    val telefono: String,
    val estadoPago: String = "PENDIENTE",   // se envía siempre, backend valida
    val metodoPago: String,   // "PRESENCIAL" o "ONLINE"
    val usuario: UsuarioRequest,
    val idSituacion: Long? = null
)