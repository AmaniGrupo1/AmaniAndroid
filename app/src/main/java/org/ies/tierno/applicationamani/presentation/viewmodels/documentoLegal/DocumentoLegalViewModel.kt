package org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.documentoLegal.DocumentoLegalGeneralUseCase
import org.ies.tierno.applicationamani.dto.legal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.legal.DocumentoLegalResponseDTO

/**
 * ViewModel que gestiona el CRUD de documentos legales desde el panel de administración.
 *
 * Permite listar, crear, editar, eliminar y consultar documentos legales por tipo
 * mediante [DocumentoLegalGeneralUseCase]. Expone estados de carga, error y el
 * documento seleccionado para visualización o edición.
 *
 * @constructor Crea una instancia con el caso de uso de documentos legales.
 * @param useCase Caso de uso que centraliza las operaciones sobre documentos legales.
 */
class DocumentoLegalViewModel(
    private val useCase: DocumentoLegalGeneralUseCase,
) : ViewModel() {
    /** Lista de todos los documentos legales existentes. */
    private val _documentos = MutableStateFlow<List<DocumentoLegalResponseDTO>>(emptyList())
    val documentos: StateFlow<List<DocumentoLegalResponseDTO>> = _documentos.asStateFlow()

    /** Documento legal seleccionado para consulta por tipo. */
    private val _documentoSeleccionado =
        MutableStateFlow<DocumentoLegalResponseDTO?>(null)
    val documentoSeleccionado: StateFlow<DocumentoLegalResponseDTO?> =
        _documentoSeleccionado.asStateFlow()

    /** Indica si una operación está en curso. */
    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    init {
        getAllDocumentos()
    }

    /**
     * Obtiene todos los documentos legales desde el backend.
     *
     * Lanza una corrutina que consulta [DocumentoLegalGeneralUseCase.getAllDocumentos]
     * y actualiza [documentos] con el resultado.
     */
    fun getAllDocumentos() {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.getAllDocumentos()

            result
                .onSuccess {
                    _documentos.value = it
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    /**
     * Crea un nuevo documento legal y refresca la lista.
     *
     * @param request DTO con los datos del nuevo documento.
     */
    fun crearDocumento(request: DocumentoLegalRequestDTO) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.crearDocumento(request)

            result
                .onSuccess {
                    getAllDocumentos()
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    /**
     * Edita un documento legal existente y refresca la lista.
     *
     * @param idDocumento Identificador del documento a editar.
     * @param request DTO con los nuevos datos del documento.
     */
    fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO,
    ) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.editarDocumento(idDocumento, request)

            result
                .onSuccess {
                    getAllDocumentos()
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    /**
     * Elimina un documento legal por su ID y refresca la lista.
     *
     * @param idDocumento Identificador del documento a eliminar.
     */
    fun eliminarDocumento(idDocumento: Long) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = useCase.eliminarDocumento(idDocumento)

            result
                .onSuccess {
                    getAllDocumentos()
                }.onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    /**
     * Obtiene un documento legal por su tipo y lo expone en [documentoSeleccionado].
     *
     * @param tipo Tipo del documento legal a consultar (ej. "privacidad", "terminos").
     */
    fun getDocumentoByTipo(tipo: String) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null
            val result =
                useCase.getDocumentoByTipo(tipo)
            result
                .onSuccess {
                    _documentoSeleccionado.value = it
                }.onFailure {
                    _error.value = it.message
                }
            _loading.value = false
        }
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _error.value = null
    }
}
