
package org.ies.tierno.applicationamani.dto.psicologo
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import java.time.LocalDate
import java.time.LocalTime


data class PacientePsicologoResponseDTO(
    val idPaciente: Long? = null,

    val nombre: String? = null,

    val apellido: String? = null,

    val dni: String? = null,

    val fechaNacimiento: LocalDate? = null,

    val email: String? = null,

    val genero: String? = null,

    val telefono: String? = null,

    val direccion: DireccionResponseDTO? = null,

    val estadoPago: EstadoPago? = null,

    val horaInicio: LocalTime? = null,

    val horaFin: LocalTime? = null
)