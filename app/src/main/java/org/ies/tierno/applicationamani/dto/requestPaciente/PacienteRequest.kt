    package org.ies.tierno.applicationamani.dto.requestPaciente

    import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO

    data class PacienteRequest(
        val idUsuario: Long? = null,
        val fechaNacimiento: String,   // "YYYY-MM-DD"
        val genero: String,
        val telefono: String,
        val usuario: UsuarioRequest,
        val  aceptaTerminos : Boolean,
        val  aceptaVideoconferencia : Boolean?,
        val  aceptaComunicacion : Boolean?,

        val idSituaciones: List<Long>,
        val tutores: List<TutorRequestDTO>,
        val direccion: List<DireccionRequest>
    )