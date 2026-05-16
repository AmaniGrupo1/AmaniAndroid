    package org.ies.tierno.applicationamani.presentation.viewmodels.admin
    
    import androidx.lifecycle.ViewModel
    import androidx.lifecycle.viewModelScope
    import kotlinx.coroutines.delay
    import kotlinx.coroutines.flow.MutableStateFlow
    import kotlinx.coroutines.flow.StateFlow
    import kotlinx.coroutines.launch
    import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
    import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
    import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
    import org.ies.tierno.applicationamani.dto.admin.MessageResponse
    import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
    
    class ListarPacientesViewModel(
        val listarPacientesUseCase: TodosLosPacientesUseCase,
        val darBajaPacienteUseCase: DarBajaPacienteUseCase,
        private val userSessionDataStore: UserSessionDataStore
    ) : ViewModel() {
    
        private val _paciente =
            MutableStateFlow<List<DatosPacienteAdminDTO>>(emptyList())
    
        val paciente: StateFlow<List<DatosPacienteAdminDTO>> = _paciente
    
        private val _bajaEstado =
            MutableStateFlow<Result<MessageResponse>?>(null)
    
        val bajaEstado: StateFlow<Result<MessageResponse>?> = _bajaEstado
    
        // ============================
        // ESTADO ALTA PSICOLOGO
        // ============================
        private val _altaEstado =
            MutableStateFlow<Result<MessageResponse>?>(null)
    
        val altaEstado: StateFlow<Result<MessageResponse>?> = _altaEstado
    
        // ============================
        // RECARGA
        // ============================
        private val _recargarLista =
            MutableStateFlow(false)
    
        val recargarLista: StateFlow<Boolean> = _recargarLista
    
        init {
    
            viewModelScope.launch {
    
                val session = userSessionDataStore.getSession()
    
                if (session != null) {
    
                    listarPacientesUseCase().collect { lista ->
    
                        _paciente.value = lista
                    }
    
                } else {
    
                    userSessionDataStore.sessionFlow.collect { s ->
    
                        if (s != null) {
    
                            listarPacientesUseCase().collect { lista ->
    
                                _paciente.value = lista
                            }
    
                        } else {
    
                            _paciente.value = emptyList()
                        }
                    }
                }
            }
        }
    
        // =========================================================
        // DAR BAJA
        // =========================================================
        fun darBajaPsicologo(id: Long) {
    
            viewModelScope.launch {
    
                val result = darBajaPacienteUseCase(id)
    
                _bajaEstado.value = result
    
                if (result.isSuccess) {
    
                    actualizarPacienteBaja(id)
    
                    triggerRecarga()
                }
            }
        }
    
        // =========================================================
        // DAR ALTA PSICOLOGO
        // =========================================================
        fun darAltaPsicologo(id: Long) {
    
            viewModelScope.launch {
    
                val result =
                    darBajaPacienteUseCase.darAltaPsicologo(id)
    
                _altaEstado.value = result
    
                if (result.isSuccess) {
    
                    triggerRecarga()
    
                    delay(3000)
    
                    _altaEstado.value = null
                }
            }
        }
    
        // =========================================================
        // RECARGAR UI
        // =========================================================
        private fun triggerRecarga() {
    
            _recargarLista.value = true
    
            viewModelScope.launch {
    
                delay(500)
    
                _recargarLista.value = false
            }
        }
    
        // =========================================================
        // ACTUALIZAR LOCALMENTE
        // =========================================================
        private fun actualizarPacienteBaja(id: Long) {
    
            _paciente.value = _paciente.value.map {
    
                if (it.idPaciente == id) {
    
                    it.copy(activo = false)
    
                } else {
                    it
                }
            }
        }
    
        // =========================================================
        // LIMPIAR ESTADOS
        // =========================================================
        fun limpiarAltaEstado() {
    
            _altaEstado.value = null
        }
    
        fun limpiarBajaEstado() {
    
            _bajaEstado.value = null
        }
    }