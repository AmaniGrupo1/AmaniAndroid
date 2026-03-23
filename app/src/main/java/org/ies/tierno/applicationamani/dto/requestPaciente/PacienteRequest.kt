package org.ies.tierno.applicationamani.dto.requestPaciente

data class PacienteRequest(
    val idUsuario: Long? = null,
    val fechaNacimiento: String, // mejor String para Retrofit (YYYY-MM-DD)
    val genero: String,
    val telefono: String,
    val usuario: UsuarioRequest,
    val direcciones: List<DireccionRequest>? = null,
    val citas: List<CitaRequest>? = null,
    val historiales: List<HistorialClinicoRequest>? = null,
    val respuestas: List<RespuestasRequest>? = null,
    val aceptaVideo : Boolean,
    val aceptaComunicacion : Boolean
)