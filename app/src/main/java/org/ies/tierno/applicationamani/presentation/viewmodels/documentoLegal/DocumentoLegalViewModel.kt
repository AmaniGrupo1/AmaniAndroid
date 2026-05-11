package org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.documentoLegal.DocumentoLegalUseCase
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO

class DocumentoLegalViewModel(
    private val useCase: DocumentoLegalUseCase
) : ViewModel() {

    // =========================
    // ESTADOS UI
    // =========================

    private val _documentos = MutableStateFlow<List<DocumentoLegalResponseDTO>>(emptyList())
    val documentos: StateFlow<List<DocumentoLegalResponseDTO>> = _documentos

    private val _documentoSeleccionado =
        MutableStateFlow<DocumentoLegalResponseDTO?>(null)
    val documentoSeleccionado: StateFlow<DocumentoLegalResponseDTO?> =
        _documentoSeleccionado

    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    // =========================
    // OBTENER TODOS
    // =========================
    fun getAllDocumentos() {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.getAllDocumentos()

            result
                .onSuccess {
                    _documentos.value = it
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // =========================
    // OBTENER POR ID
    // =========================
    fun getDocumentoById(idDocumento: Long) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.getDocumentoById(idDocumento)

            result
                .onSuccess {
                    _documentoSeleccionado.value = it
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // =========================
    // CREAR
    // =========================
    fun crearDocumento(request: DocumentoLegalRequestDTO) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.crearDocumento(request)

            result
                .onSuccess {
                    getAllDocumentos() // refresca lista
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // =========================
    // EDITAR
    // =========================
    fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO
    ) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.editarDocumento(idDocumento, request)

            result
                .onSuccess {
                    getAllDocumentos() // refresca lista
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // =========================
    // ELIMINAR
    // =========================
    fun eliminarDocumento(idDocumento: Long) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.eliminarDocumento(idDocumento)

            result
                .onSuccess {
                    getAllDocumentos() // refresca lista
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // =========================
    // LIMPIAR ERROR
    // =========================
    fun clearError() {
        _error.value = null
    }
}