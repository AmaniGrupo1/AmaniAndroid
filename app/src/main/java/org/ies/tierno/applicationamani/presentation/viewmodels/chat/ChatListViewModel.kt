package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral

data class ChatPartner(
    val id: Long,
    val nombre: String,
    val rol: String
)

class ChatListViewModel(
    private val userSessionDataStore: UserSessionDataStore,
    private val chatRepository: ChatRepository,
    private val profileUseCaseGeneral: ProfileUseCaseGeneral
) : ViewModel() {

    private val _currentUserId = MutableStateFlow<Long?>(null)
    val currentUserId: StateFlow<Long?> = _currentUserId.asStateFlow()

    private val _currentUserRol = MutableStateFlow<String>("")
    val currentUserRol: StateFlow<String> = _currentUserRol.asStateFlow()

    private val _partnerId = MutableStateFlow<Long?>(null)
    val partnerId: StateFlow<Long?> = _partnerId.asStateFlow()

    private val _partnerNombre = MutableStateFlow<String>("")
    val partnerNombre: StateFlow<String> = _partnerNombre.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    init {
        loadCurrentUser()
    }

    private fun loadCurrentUser() {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            if (session != null) {
                _currentUserId.value = session.idUsuario
                _currentUserRol.value = session.rol
                
                if (session.rol == "paciente" && session.idPsicologo != null) {
                    _partnerId.value = session.idPsicologo
                    loadPartnerNombre(session.idPsicologo)
                } else if (session.rol == "psicologo" && session.idPaciente != null) {
                    _partnerId.value = session.idPaciente
                    loadPartnerNombre(session.idPaciente)
                }
            }
        }
    }

    private fun loadPartnerNombre(partnerId: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val session = userSessionDataStore.getSession()
                if (session?.rol == "paciente") {
                    val result = profileUseCaseGeneral.getPsicologoById(partnerId)
                    result.onSuccess { profile ->
                        val nombre = buildString {
                            profile.usuario?.nombre?.let { append(it) }
                            profile.usuario?.apellido?.let { 
                                if (isNotEmpty()) append(" ")
                                append(it) 
                            }
                        }
                        _partnerNombre.value = nombre.ifEmpty { "Tu Psicólogo" }
                    }.onFailure {
                        _partnerNombre.value = "Tu Psicólogo"
                    }
                } else {
                    val result = profileUseCaseGeneral.getPacienteById(partnerId)
                    result.onSuccess { profile ->
                        val nombre = buildString {
                            profile.usuario?.nombre?.let { append(it) }
                            profile.usuario?.apellido?.let { 
                                if (isNotEmpty()) append(" ")
                                append(it) 
                            }
                        }
                        _partnerNombre.value = nombre.ifEmpty { "Tu Paciente" }
                    }.onFailure {
                        _partnerNombre.value = "Tu Paciente"
                    }
                }
            } finally {
                _isLoading.value = false
            }
        }
    }
}
