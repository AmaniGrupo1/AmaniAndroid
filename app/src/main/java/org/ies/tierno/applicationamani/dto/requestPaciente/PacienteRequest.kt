package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud para registrar un paciente completo.
 *
 * Agrupa los datos personales del paciente, sus credenciales de usuario,
 * direcciones, citas, historiales clínicos y respuestas a cuestionarios.
 * Se envía a los endpoints de registro de paciente.
 *
 * @property idUsuario Identificador del usuario asociado, o `null` si es un registro nuevo.
 * @property fechaNacimiento Fecha de nacimiento en formato `YYYY-MM-DD`.
 * @property genero Género del paciente.
 * @property telefono Número de teléfono de contacto.
 * @property usuario Datos de la cuenta de usuario ([UsuarioRequest]).
 * @property direcciones Lista de direcciones postales, o `null`.
 * @property citas Lista de citas asociadas, o `null`.
 * @property historiales Lista de entradas del historial clínico, o `null`.
 * @property respuestas Lista de respuestas a cuestionarios, o `null`.
 */
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