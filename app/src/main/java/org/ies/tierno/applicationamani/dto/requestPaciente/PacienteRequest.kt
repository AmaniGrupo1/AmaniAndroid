    package org.ies.tierno.applicationamani.dto.requestPaciente

    import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO

    data class PacienteRequest(
        val idUsuario: Long? = null,
        val fechaNacimiento: String,   // "YYYY-MM-DD"
        val genero: String,
        val telefono: String,
        val estadoPago: String = "PENDIENTE",   // siempre se envía como string
        val metodoPago: String,  // <-- se envía como String al backend
        val usuario: UsuarioRequest,
        val  aceptaTerminos : Boolean,
        val  aceptaVideoconferencia : Boolean?,
        val  aceptaComunicacion : Boolean?,

        val situacionesIds: List<Long>,
        val tutores: List<TutorRequestDTO>,
        val direccion: List<DireccionRequest>
    )