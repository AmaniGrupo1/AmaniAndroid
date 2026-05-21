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
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TicketSoporte
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteRequestDTO
import timber.log.Timber
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
    val categoria: CategoriaTicket = CategoriaTicket.BUG_APP,
    val tickets: List<TicketSoporte> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null,
    val mostrarToastExito: Boolean = false,
)

/**
 * Enumera las pantallas disponibles en la sección de soporte.
 */
enum class PantallaSoporte {
    NUEVO_TICKET,
    MIS_TICKETS,
}

/**
 * ViewModel que gestiona los tickets de soporte del usuario.
 *
 * Permite listar los tickets existentes, crear nuevos tickets con validación
 * de campos, aplicar filtros por estado y mostrar feedback mediante snackbar.
 * Los tickets se obtienen y persisten a través de [SoporteTicketRepository].
 *
 * @param repository Repositorio para operaciones CRUD de tickets de soporte.
 */
class SoporteTicketViewModel(
    private val repository: SoporteTicketRepository,
) : ViewModel() {
    private val _uiState = MutableStateFlow(SoporteUiState())
    val uiState: StateFlow<SoporteUiState> = _uiState.asStateFlow()

    private val _snackbarMessage = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val snackbarMessage: SharedFlow<String> = _snackbarMessage.asSharedFlow()

    private val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy \u2022 HH:mm", Locale.forLanguageTag("es-ES"))

    init {
        cargarTickets()
    }

    /**
     * Carga la lista de tickets del usuario desde el repositorio.
     *
     * Transforma los DTOs del backend en objetos [TicketSoporte] con fechas
     * formateadas para su presentación en la UI.
     */
    fun cargarTickets() {
        viewModelScope.launch {
            Timber.d("Iniciando carga de tickets...")
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val lista = repository.getMisTickets()
                Timber.i("Se han obtenido ${lista.size} tickets del repositorio")
                val tickets =
                    lista.map { dto ->
                        TicketSoporte(
                            id = dto.idTicket,
                            titulo = dto.titulo,
                            descripcion = dto.descripcion,
                            fecha = formatFecha(dto.creadoEn),
                            estado = dto.estado,
                            etiquetaEstado = dto.estado.nombreVisual,
                            tipo = dto.tipo,
                            categoria = dto.categoria,
                        )
                    }
                _uiState.update { it.copy(tickets = tickets, isLoading = false) }
            } catch (e: Exception) {
                Timber.e(e, "Error al cargar tickets")
                _uiState.update { it.copy(isLoading = false, error = e.message) }
                _snackbarMessage.emit("Error al cargar tickets: ${e.message}")
            }
        }
    }

    /**
     * Cambia la pantalla activa en la sección de soporte.
     *
     * @param pantalla Pantalla de destino ([PantallaSoporte.NUEVO_TICKET] o [PantallaSoporte.MIS_TICKETS]).
     */
    fun navegarA(pantalla: PantallaSoporte) {
        Timber.d("Navegando a: $pantalla")
        _uiState.update { it.copy(pantallaActual = pantalla) }
    }

    /**
     * Aplica un filtro sobre la lista de tickets.
     *
     * @param filtro Criterio de filtrado (todos, abiertos, cerrados).
     */
    fun seleccionarFiltro(filtro: FiltroTicket) {
        Timber.d("Filtro seleccionado: $filtro")
        _uiState.update { it.copy(filtroSeleccionado = filtro) }
    }

    /**
     * Establece el tipo de ticket en el formulario de creación.
     *
     * @param tipo Tipo de ticket (problema, sugerencia, etc.).
     */
    fun seleccionarTipo(tipo: TipoTicket) {
        Timber.d("Tipo de ticket seleccionado: $tipo")
        _uiState.update { it.copy(tipoTicket = tipo) }
    }

    /**
     * Actualiza el título del ticket en el formulario.
     *
     * @param value Nuevo valor del campo título.
     */
    fun onTituloChange(value: String) {
        _uiState.update { it.copy(titulo = value) }
    }

    /**
     * Actualiza la descripción del ticket, con límite de 1000 caracteres.
     *
     * @param value Nuevo valor del campo descripción.
     */
    fun onDescripcionChange(value: String) {
        if (value.length <= 1000) {
            _uiState.update { it.copy(descripcion = value) }
        }
    }

    /**
     * Establece la categoría del ticket en el formulario.
     *
     * @param categoria Categoría seleccionada (bug, funcionalidad, etc.).
     */
    fun onCategoriaChange(categoria: CategoriaTicket) {
        Timber.d("Categor\u00eda seleccionada: $categoria")
        _uiState.update { it.copy(categoria = categoria) }
    }

    /**
     * Valida y envía el ticket de soporte al backend.
     *
     * Requiere que título y descripción no estén vacíos. Si la validación falla,
     * emite un mensaje por snackbar. En caso de éxito, añade el nuevo ticket
     * al principio de la lista y limpia el formulario.
     */
    fun enviarTicket() {
        val state = _uiState.value
        Timber.d(
            "Iniciando env\u00edo de ticket: t\u00edtulo='${state.titulo}', tipo=${state.tipoTicket}, categor\u00eda=${state.categoria}",
        )

        if (state.titulo.isBlank() || state.descripcion.isBlank()) {
            Timber.w("Validaci\u00f3n fallida: t\u00edtulo o descripci\u00f3n est\u00e1n vac\u00edos")
            viewModelScope.launch {
                _snackbarMessage.emit("T\u00edtulo y descripci\u00f3n son obligatorios.")
            }
            return
        }

        val request =
            TicketSoporteRequestDTO(
                titulo = state.titulo.trim(),
                descripcion = state.descripcion.trim(),
                tipo = state.tipoTicket,
                categoria = state.categoria,
            )

        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                Timber.d("Llamando al repositorio para crear ticket...")
                val dto = repository.crearTicket(request)
                Timber.i("Ticket creado con \u00e9xito. ID: ${dto.idTicket}, Estado: ${dto.estado}")

                val nuevo =
                    TicketSoporte(
                        id = dto.idTicket,
                        titulo = dto.titulo,
                        descripcion = dto.descripcion,
                        fecha = formatFecha(dto.creadoEn),
                        estado = dto.estado,
                        etiquetaEstado = dto.estado.nombreVisual,
                        tipo = dto.tipo,
                        categoria = dto.categoria,
                    )
                _uiState.update {
                    it.copy(
                        tickets = listOf(nuevo) + it.tickets,
                        titulo = "",
                        descripcion = "",
                        mostrarToastExito = true,
                        isLoading = false,
                    )
                }
            } catch (e: Exception) {
                Timber.e(e, "Error al enviar ticket")
                _uiState.update { it.copy(isLoading = false, error = e.message) }
                _snackbarMessage.emit("Error al enviar ticket: ${e.message}")
            }
        }
    }

    /** Oculta el toast de confirmación de creación de ticket. */
    fun dismissToast() {
        _uiState.update { it.copy(mostrarToastExito = false) }
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }

    val ticketsFiltrados: List<TicketSoporte>
        get() =
            when (_uiState.value.filtroSeleccionado) {
                FiltroTicket.TODOS -> _uiState.value.tickets
                FiltroTicket.ABIERTOS -> _uiState.value.tickets.filter { it.estado != EstadoTicket.CERRADO }
                FiltroTicket.CERRADOS -> _uiState.value.tickets.filter { it.estado == EstadoTicket.CERRADO }
            }

    private fun formatFecha(dateTime: LocalDateTime?): String =
        try {
            dateTime?.format(formatter) ?: "Fecha desconocida"
        } catch (e: Exception) {
            Timber.e(e, "Error al formatear fecha")
            "Error formato fecha"
        }
}
