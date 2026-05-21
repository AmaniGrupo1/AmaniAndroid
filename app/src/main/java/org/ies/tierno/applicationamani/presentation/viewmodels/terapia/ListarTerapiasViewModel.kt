package org.ies.tierno.applicationamani.presentation.viewmodels.terapia

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.terapia.TerapiasGeneralUseCase
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import java.math.BigDecimal

/**
 * ViewModel que gestiona el CRUD de tipos de terapia desde el panel de administración.
 *
 * Permite listar, crear, actualizar y eliminar terapias mediante [CitasRepository]
 * y [TerapiasGeneralUseCase]. Expone estados de carga, error y diálogos de
 * creación/edición para la UI.
 *
 * @param repository Repositorio de citas para operaciones de lectura de terapias.
 * @param terapiasGeneralUseCase Caso de uso para operaciones de escritura (crear, actualizar, eliminar).
 */
class ListarTerapiasViewModel(
    private val repository: CitasRepository,
    private val terapiasGeneralUseCase: TerapiasGeneralUseCase,
) : ViewModel() {
    /** Lista de tipos de terapia disponibles en el sistema. */
    private val _terapias = MutableStateFlow<List<TerapiaResponseDTO>>(emptyList())
    val terapias = _terapias.asStateFlow()

    /** Indica si una operación está en curso. */
    private val _loading = MutableStateFlow(false)
    val loading = _loading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error = _error.asStateFlow()

    /** Última terapia creada exitosamente. */
    private val _terapiaCreada = MutableStateFlow<TerapiaResponseDTO?>(null)
    val terapiaCreada = _terapiaCreada.asStateFlow()

    /** Controla la visibilidad del diálogo de creación/edición de terapia. */
    private val _showDialog = MutableStateFlow(false)
    val showDialog = _showDialog.asStateFlow()

    /** Terapia que se está editando actualmente. `null` si es una creación nueva. */
    private val _terapiaEditando = MutableStateFlow<TerapiaResponseDTO?>(null)
    val terapiaEditando = _terapiaEditando.asStateFlow()

    // 📌 LISTAR
    /**
     * Carga la lista de tipos de terapia desde el backend.
     */
    fun cargarTerapias() {
        viewModelScope.launch {
            _loading.value = true

            repository
                .getTerapias()
                .onSuccess { _terapias.value = it }
                .onFailure {
                    _error.value = it.message
                    _terapias.value = emptyList()
                }

            _loading.value = false
        }
    }

    // ➕ CREAR
    /**
     * Crea un nuevo tipo de terapia y refresca la lista.
     *
     * @param nombre Nombre del tipo de terapia.
     * @param duracion Duración en minutos de la sesión de este tipo.
     * @param precio Precio de la sesión para este tipo de terapia.
     */
    fun crearTerapia(
        nombre: String,
        duracion: Int,
        precio: BigDecimal,
    ) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result =
                terapiasGeneralUseCase.crearTerapia(
                    TerapiaRequest(nombre, duracion, precio),
                )

            result
                .onSuccess {
                    _terapiaCreada.value = it
                    cargarTerapias()
                    _showDialog.value = false
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // ✏️ EDITAR
    /**
     * Actualiza un tipo de terapia existente y refresca la lista.
     *
     * @param id Identificador del tipo de terapia a actualizar.
     * @param nombre Nuevo nombre del tipo de terapia.
     * @param duracion Nueva duración en minutos.
     * @param precio Nuevo precio de la sesión.
     */
    fun actualizarTerapia(
        id: Long,
        nombre: String,
        duracion: Int,
        precio: BigDecimal,
    ) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result =
                terapiasGeneralUseCase.actualizarTerapia(
                    id,
                    TerapiaRequest(nombre, duracion, precio),
                )

            result
                .onSuccess {
                    cargarTerapias()
                    _showDialog.value = false
                    _terapiaEditando.value = null
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // 🗑️ ELIMINAR
    /**
     * Elimina un tipo de terapia por su ID y refresca la lista.
     *
     * @param id Identificador del tipo de terapia a eliminar.
     */
    fun eliminarTerapia(id: Long) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            terapiasGeneralUseCase
                .eliminarTerapia(id)
                .onSuccess {
                    cargarTerapias()
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // Añade este método a tu ListarTerapiasViewModel
    /** Limpia el mensaje de error actual. */
    fun limpiarError() {
        _error.value = null
    }

    /** Muestra el diálogo de creación de una nueva terapia. */
    fun mostrarDialogCrear() {
        _terapiaEditando.value = null
        _showDialog.value = true
    }

    /**
     * Muestra el diálogo de edición con los datos de la terapia seleccionada.
     *
     * @param terapia Terapia a editar.
     */
    fun mostrarDialogEditar(terapia: TerapiaResponseDTO) {
        _terapiaEditando.value = terapia
        _showDialog.value = true
    }

    /** Oculta el diálogo de creación/edición y limpia el estado de edición. */
    fun ocultarDialog() {
        _showDialog.value = false
        _terapiaEditando.value = null
    }

    init {
        cargarTerapias()
    }
}
