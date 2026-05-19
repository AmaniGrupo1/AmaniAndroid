package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO

class ListarPsicologosAdminViewModel(
    val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase,
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {
    // Psicólogos activos
    private val _psicologo = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologo

    // Psicólogos dados de baja
    private val _psicologosBaja = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologosBaja: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologosBaja

    init {

        // Solo iniciar las llamadas protegidas cuando exista sesión de usuario.
        viewModelScope.launch {

            val session = userSessionDataStore.getSession()

            if (session != null) {

                // ACTIVOS
                launch {

                    listarPsicologoAdminUseCase().collect { lista ->

                        _psicologo.value = lista
                    }
                }

                // DADOS DE BAJA
                launch {

                    listarPsicologoAdminUseCase.getPsicologosBaja().collect { lista ->

                        _psicologosBaja.value = lista
                    }
                }
            } else {

                userSessionDataStore.sessionFlow.collect { s ->

                    if (s != null) {

                        // ACTIVOS
                        launch {

                            listarPsicologoAdminUseCase().collect { lista ->

                                _psicologo.value = lista
                            }
                        }

                        // DADOS DE BAJA
                        launch {

                            listarPsicologoAdminUseCase.getPsicologosBaja().collect { lista ->

                                _psicologosBaja.value = lista
                            }
                        }
                    } else {

                        _psicologo.value = emptyList()
                        _psicologosBaja.value = emptyList()
                    }
                }
            }
        }
    }

    // =========================================================
    // ACTUALIZAR LOCALMENTE AL DAR ALTA
    // =========================================================
    fun actualizarPsicologoAlta(id: Long) {
        val psicologo =
            _psicologosBaja.value.find {
                it.idPsicologo == id
            }

        _psicologosBaja.value =
            _psicologosBaja.value.filter {
                it.idPsicologo != id
            }

        if (psicologo != null) {
            _psicologo.value =
                _psicologo.value + psicologo
        }
    }

    // =========================================================
    // ACTUALIZAR LOCALMENTE AL DAR BAJA
    // =========================================================
    fun actualizarPsicologoBaja(id: Long) {
        val psicologo =
            _psicologo.value.find {
                it.idPsicologo == id
            }

        _psicologo.value =
            _psicologo.value.filter {
                it.idPsicologo != id
            }

        if (psicologo != null) {
            _psicologosBaja.value =
                _psicologosBaja.value + psicologo
        }
    }
}
