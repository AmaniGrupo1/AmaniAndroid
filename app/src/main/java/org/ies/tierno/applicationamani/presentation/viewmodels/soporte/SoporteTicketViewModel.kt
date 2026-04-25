package org.ies.tierno.applicationamani.presentation.viewmodels.soporte

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TicketSoporte
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Estado UI consolidado para la pantalla de tickets de soporte.
 */
data class SoporteUiState(
    val pantallaActual: PantallaSoporte = PantallaSoporte.NUEVO_TICKET,
    val filtroSeleccionado: FiltroTicket = FiltroTicket.TODOS,
    val tipoTicket: TipoTicket = TipoTicket.BUG,
    val titulo: String = "",
    val descripcion: String = "",
    val uriImagen: Uri? = null,
    val mostrarToastExito: Boolean = false,
    val tickets: List<TicketSoporte> = emptyList(),
    val categoria: String = "Bug en la aplicación",
    val error: String? = null
)

enum class PantallaSoporte {
    NUEVO_TICKET,
    MIS_TICKETS
}

class SoporteTicketViewModel : ViewModel() {

    private val _uiState = MutableStateFlow(SoporteUiState())
    val uiState: StateFlow<SoporteUiState> = _uiState.asStateFlow()

    private val _snackbarMessage = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val snackbarMessage: SharedFlow<String> = _snackbarMessage.asSharedFlow()

    private val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy • HH:mm", Locale.forLanguageTag("es-ES"))

    init {
        cargarTicketsMock()
    }

    private fun cargarTicketsMock() {
        val mock = listOf(
            TicketSoporte(
                id = "#TK-2024-0187",
                titulo = "La app se cierra al abrir mis citas",
                fecha = "Reportado el 20/05/2024 • 10:15",
                estado = EstadoTicket.ABIERTO,
                etiquetaEstado = "En revisión por soporte",
                tipo = TipoTicket.BUG
            ),
            TicketSoporte(
                id = "#TK-2024-0152",
                titulo = "Error al realizar el pago",
                fecha = "Reportado el 18/05/2024 • 16:42",
                estado = EstadoTicket.EN_PROCESO,
                etiquetaEstado = "En curso",
                tipo = TipoTicket.BUG
            ),
            TicketSoporte(
                id = "#TK-2024-0103",
                titulo = "No recibo recordatorio de cita",
                fecha = "Reportado el 10/05/2024 • 09:20",
                estado = EstadoTicket.PENDIENTE,
                etiquetaEstado = "Pendiente de más información",
                tipo = TipoTicket.BUG
            ),
            TicketSoporte(
                id = "#TK-2024-0089",
                titulo = "Sugerencia: modo oscuro",
                fecha = "Reportado el 05/05/2024 • 11:05",
                estado = EstadoTicket.CERRADO,
                etiquetaEstado = "Resuelto",
                tipo = TipoTicket.FEATURE
            )
        )
        _uiState.update { it.copy(tickets = mock) }
    }

    fun navegarA(pantalla: PantallaSoporte) {
        _uiState.update { it.copy(pantallaActual = pantalla) }
    }

    fun seleccionarFiltro(filtro: FiltroTicket) {
        _uiState.update { it.copy(filtroSeleccionado = filtro) }
    }

    fun seleccionarTipo(tipo: TipoTicket) {
        _uiState.update { it.copy(tipoTicket = tipo) }
    }

    fun onTituloChange(value: String) {
        _uiState.update { it.copy(titulo = value) }
    }

    fun onDescripcionChange(value: String) {
        if (value.length <= 1000) {
            _uiState.update { it.copy(descripcion = value) }
        }
    }

    fun onImagenSeleccionada(uri: Uri?) {
        _uiState.update { it.copy(uriImagen = uri) }
    }

    fun onCategoriaChange(categoria: String) {
        _uiState.update { it.copy(categoria = categoria) }
    }

    fun enviarTicket() {
        val state = _uiState.value
        if (state.titulo.isBlank() || state.descripcion.isBlank()) {
            viewModelScope.launch {
                _snackbarMessage.emit("Título y descripción son obligatorios.")
            }
            return
        }

        val ahora = LocalDateTime.now()
        val nuevo = TicketSoporte(
            id = "#TK-2024-${(1000..9999).random()}",
            titulo = state.titulo,
            fecha = "Reportado el ${ahora.format(formatter)}",
            estado = EstadoTicket.ABIERTO,
            etiquetaEstado = "En revisión por soporte",
            tipo = state.tipoTicket
        )

        _uiState.update {
            it.copy(
                tickets = listOf(nuevo) + it.tickets,
                titulo = "",
                descripcion = "",
                uriImagen = null,
                mostrarToastExito = true
            )
        }
    }

    fun dismissToast() {
        _uiState.update { it.copy(mostrarToastExito = false) }
    }

    val ticketsFiltrados: List<TicketSoporte>
        get() = when (_uiState.value.filtroSeleccionado) {
            FiltroTicket.TODOS -> _uiState.value.tickets
            FiltroTicket.ABIERTOS -> _uiState.value.tickets.filter { it.estado != EstadoTicket.CERRADO }
            FiltroTicket.CERRADOS -> _uiState.value.tickets.filter { it.estado == EstadoTicket.CERRADO }
        }
}
