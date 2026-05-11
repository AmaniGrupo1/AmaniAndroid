package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore


class ListarPsicologosAdminViewModel(
    val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase,
    private val userSessionDataStore: UserSessionDataStore
): ViewModel() {
    private val _psicologo = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologo

    init {
        // Solo iniciar las llamadas protegidas cuando exista sesión de usuario.
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            if (session != null) {
                listarPsicologoAdminUseCase().collect { lista ->
                    _psicologo.value = lista
                }
            } else {
                userSessionDataStore.sessionFlow.collect { s ->
                    if (s != null) {
                        listarPsicologoAdminUseCase().collect { lista ->
                            _psicologo.value = lista
                        }
                    } else {
                        _psicologo.value = emptyList()
                    }
                }
            }
        }
    }
}