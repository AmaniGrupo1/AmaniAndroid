package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest

/**
 * ViewModel que gestiona el CRUD de situaciones desde el panel de administración.
 *
 * Permite listar, consultar por ID, crear, actualizar y eliminar situaciones
 * mediante [SituacionUseCase]. Espera a que exista una sesión válida antes de
 * cargar los datos.
 *
 * @constructor Crea una instancia con el caso de uso de situaciones y la sesión.
 * @param useCase Caso de uso que centraliza las operaciones de situaciones.
 * @param userSessionDataStore Almacén local de la sesión del usuario.
 */
class SituacionViewModel(
    private val useCase: SituacionUseCase,
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {
    /** Lista observable de todas las situaciones disponibles. */
    private val _situaciones = MutableStateFlow<List<SituacionDTO>>(emptyList())
    val situaciones: StateFlow<List<SituacionDTO>> = _situaciones

    /** Situación seleccionada para consulta de detalle. */
    private val _situacionSeleccionada = MutableStateFlow<SituacionDTO?>(null)
    val situacionSeleccionada: StateFlow<SituacionDTO?> = _situacionSeleccionada

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    init {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            if (session != null) {
                cargarSituaciones()
            } else {
                userSessionDataStore.sessionFlow.collect { s ->
                    if (s != null) {
                        cargarSituaciones()
                    } else {
                        _situaciones.value = emptyList()
                    }
                }
            }
        }
    }

    /**
     * Carga la lista completa de situaciones desde el backend.
     *
     * Recolecta el flujo de [SituacionUseCase.getSituaciones] y actualiza
     * [situaciones] de forma reactiva.
     */
    fun cargarSituaciones() {
        viewModelScope.launch {
            try {
                useCase.getSituaciones().collect { lista ->
                    _situaciones.value = lista
                }
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    /**
     * Obtiene una situación específica por su ID y la expone en [situacionSeleccionada].
     *
     * @param id Identificador de la situación a consultar.
     */
    fun obtenerPorId(id: Long) {
        viewModelScope.launch {
            val result = useCase.getSituacionById(id)
            result
                .onSuccess { _situacionSeleccionada.value = it }
                .onFailure { _error.value = it.message }
        }
    }

    /**
     * Crea una nueva situación y refresca la lista.
     *
     * @param request DTO con los datos de la nueva situación.
     * @param onResult Callback opcional con `(éxito, mensajeError)`.
     */
    fun crearSituacion(
        request: SituacionRequest,
        onResult: (Boolean, String?) -> Unit = { _, _ -> },
    ) {
        viewModelScope.launch {
            val result = useCase.createSituacion(request)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    /**
     * Actualiza una situación existente y refresca la lista.
     *
     * @param id Identificador de la situación a actualizar.
     * @param request DTO con los nuevos datos.
     * @param onResult Callback opcional con `(éxito, mensajeError)`.
     */
    fun actualizarSituacion(
        id: Long,
        request: SituacionRequest,
        onResult: (Boolean, String?) -> Unit = { _, _ -> },
    ) {
        viewModelScope.launch {
            val result = useCase.updateSituacion(id, request)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    /**
     * Elimina una situación por su ID y refresca la lista.
     *
     * @param id Identificador de la situación a eliminar.
     * @param onResult Callback opcional con `(éxito, mensajeError)`.
     */
    fun eliminarSituacion(
        id: Long,
        onResult: (Boolean, String?) -> Unit = { _, _ -> },
    ) {
        viewModelScope.launch {
            val result = useCase.deleteSituacion(id)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    /** Deselecciona la situación actual. */
    fun limpiarSeleccion() {
        _situacionSeleccionada.value = null
    }

    /** Limpia el mensaje de error actual. */
    fun limpiarError() {
        _error.value = null
    }
}
