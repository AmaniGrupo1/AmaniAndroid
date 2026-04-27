package org.ies.tierno.applicationamani.presentation.viewmodels.soporte

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
import org.ies.tierno.applicationamani.data.repositorio.SoporteTicketRepository
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaOpcion
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TicketSoporte
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteRequestDTO
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Estado UI consolidado para la pantalla de tickets de soporte.
 */
data class SoporteUiState(
    val pantallaActual: PantallaSoporte = PantallaSoporte.MIS_TICKETS,
    val filtroSeleccionado: FiltroTicket = FiltroTicket.TODOS,
    val tipoTicket: TipoTicket = TipoTicket.PROBLEMA,
    val titulo: String = "",
    val descripcion: String = "",
    val categoria: String = CategoriaOpcion.todas[0].display,
    val tickets: List<TicketSoporte> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null,
    val mostrarToastExito: Boolean = false
)

enum class PantallaSoporte {
    NUEVO_TICKET,
    MIS_TICKETS
}

class SoporteTicketViewModel(
    private val repository: SoporteTicketRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(SoporteUiState())
    val uiState: StateFlow<SoporteUiState> = _uiState.asStateFlow()

    private val _snackbarMessage = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val snackbarMessage: SharedFlow<String> = _snackbarMessage.asSharedFlow()

    private val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy \u2022 HH:mm", Locale.forLanguageTag("es-ES"))

    init {
        cargarTickets()
    }

    fun cargarTickets() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val lista = repository.getMisTickets()
                val tickets = lista.map { dto ->
                    val estado = dto.estado.toEstadoTicket()
                    TicketSoporte(
                        id = dto.idTicket,
                        titulo = dto.titulo,
                        descripcion = dto.descripcion,
                        fecha = formatFecha(dto.creadoEn),
                        estado = estado,
                        etiquetaEstado = estado.nombreVisual,
                        tipo = dto.tipo.toTipoTicket(),
                        categoria = dto.categoria
                    )
                }
                _uiState.update { it.copy(tickets = tickets, isLoading = false) }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, error = e.message) }
                _snackbarMessage.emit("Error al cargar tickets: ${e.message}")
            }
        }
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

    fun onCategoriaChange(categoria: String) {
        _uiState.update { it.copy(categoria = categoria) }
    }

    fun enviarTicket() {
        val state = _uiState.value
        if (state.titulo.isBlank() || state.descripcion.isBlank()) {
            viewModelScope.launch {
                _snackbarMessage.emit("T\u00edtulo y descripci\u00f3n son obligatorios.")
            }
            return
        }

        val backendCategoria = CategoriaOpcion.todas
            .find { it.display == state.categoria }?.backend ?: "otro"

        val request = TicketSoporteRequestDTO(
            titulo = state.titulo.trim(),
            descripcion = state.descripcion.trim(),
            tipo = state.tipoTicket.backend,
            categoria = backendCategoria
        )

        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val dto = repository.crearTicket(request)
                val estado = dto.estado.toEstadoTicket()
                val nuevo = TicketSoporte(
                    id = dto.idTicket,
                    titulo = dto.titulo,
                    descripcion = dto.descripcion,
                    fecha = formatFecha(dto.creadoEn),
                    estado = estado,
                    etiquetaEstado = estado.nombreVisual,
                    tipo = dto.tipo.toTipoTicket(),
                    categoria = dto.categoria
                )
                _uiState.update {
                    it.copy(
                        tickets = listOf(nuevo) + it.tickets,
                        titulo = "",
                        descripcion = "",
                        mostrarToastExito = true,
                        isLoading = false
                    )
                }
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false, error = e.message) }
                _snackbarMessage.emit("Error al enviar ticket: ${e.message}")
            }
        }
    }

    fun dismissToast() {
        _uiState.update { it.copy(mostrarToastExito = false) }
    }

    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }

    val ticketsFiltrados: List<TicketSoporte>
        get() = when (_uiState.value.filtroSeleccionado) {
            FiltroTicket.TODOS -> _uiState.value.tickets
            FiltroTicket.ABIERTOS -> _uiState.value.tickets.filter { it.estado != EstadoTicket.CERRADO }
            FiltroTicket.CERRADOS -> _uiState.value.tickets.filter { it.estado == EstadoTicket.CERRADO }
        }

    private fun formatFecha(iso: String?): String {
        return try {
            LocalDateTime.parse(iso).format(formatter)
        } catch (e: Exception) {
            iso ?: "Fecha desconocida"
        }
    }

    companion object {
        fun String.toEstadoTicket(): EstadoTicket = when (this.lowercase().trim()) {
            EstadoTicket.ABIERTO.backend -> EstadoTicket.ABIERTO
            EstadoTicket.EN_PROCESO.backend -> EstadoTicket.EN_PROCESO
            EstadoTicket.CERRADO.backend -> EstadoTicket.CERRADO
            else -> EstadoTicket.ABIERTO
        }

        fun String.toTipoTicket(): TipoTicket = when (this.lowercase().trim()) {
            TipoTicket.PROBLEMA.backend -> TipoTicket.PROBLEMA
            TipoTicket.PREGUNTA.backend -> TipoTicket.PREGUNTA
            TipoTicket.SUGERENCIA.backend -> TipoTicket.SUGERENCIA
            else -> TipoTicket.PROBLEMA
        }
    }
}
