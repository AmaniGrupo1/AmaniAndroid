package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo

data class ChatPartner(
    val id: Long,
    val nombre: String,
    val rol: String
)

class ChatListViewModel(
    private val userSessionDataStore: UserSessionDataStore,
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
    private val listarPacientesByPsicologo: ListarPacientesByPsicologo
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

    private fun normalizeRole(role: String): String {
        return role.lowercase().trim()
            .replace("ó", "o")
            .replace("á", "a")
    }

    private fun loadCurrentUser() {
        viewModelScope.launch {
            _isLoading.value = true
            val session = userSessionDataStore.getSession()
            if (session != null) {
                _currentUserId.value = session.idUsuario
                _currentUserRol.value = session.rol

                when (normalizeRole(session.rol)) {
                    "paciente" -> {
                        if (session.idPsicologo != null) {
                            // idPsicologo ya es el idUsuario del psicólogo (endpoint /psicologo/usuario/{id})
                            _partnerId.value = session.idPsicologo
                            loadPsicologoNombre(session.idPsicologo)
                        } else {
                            // Fallback cuando la sesión no trae idPsicologo pero el paciente sí tiene asignación.
                            val idPaciente = session.idPaciente ?: session.idUsuario
                            resolvePsychologistForPatient(idPaciente)
                        }
                    }

                    "psicologo", "psicologa" -> {
                        if (session.idPaciente != null) {
                            // idPaciente en sesión es ahora Firebase user ID (después del fix del backend)
                            resolvePacienteParaChat(session.idPaciente)
                        } else {
                            loadFirstAssignedPatient()
                        }
                    }

                    else -> {
                        _isLoading.value = false
                    }
                }
            } else {
                _isLoading.value = false
            }
        }
    }

    /**
     * Dado un idPaciente (Firebase user ID), obtiene el perfil completo del paciente
     * para extraer su idUsuario real y usarlo como partnerId en el chat.
     */
    private fun resolvePacienteParaChat(idPaciente: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                // Usar getPacienteByIdFirebase que acepta el Firebase UID (idUsuario)
                val result = profileUseCaseGeneral.getPacienteByIdFirebase(idPaciente)
                result.onSuccess { profile ->
                    // profile.usuario.idUsuario ya es el Firebase UID (idPaciente que pasamos)
                    // lo usamos directamente como partnerId
                    if (profile.usuario?.idUsuario != null) {
                        _partnerId.value = profile.usuario.idUsuario
                        val nombre = buildString {
                            profile.usuario?.nombre?.let { append(it) }
                            profile.usuario?.apellido?.let {
                                if (isNotEmpty()) append(" ")
                                append(it)
                            }
                        }
                        _partnerNombre.value = nombre.ifEmpty { "Tu Paciente" }
                    } else {
                        _partnerNombre.value = "Tu Paciente"
                    }
                }.onFailure {
                    _partnerNombre.value = "Tu Paciente"
                }
            } finally {
                _isLoading.value = false
            }
        }
    }

    private fun loadFirstAssignedPatient() {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val pacientes = listarPacientesByPsicologo().first()
                val first = pacientes.firstOrNull()
                // Usar idUsuario (Firebase) si está disponible, si no idPaciente (DB)
                // El backend a veces solo devuelve idPaciente (DB table ID)
                val pacienteId = first?.idUsuario ?: first?.idPaciente
                if (pacienteId != null) {
                    resolvePacienteParaChat(pacienteId)
                } else {
                    _isLoading.value = false
                }
            } catch (_: Exception) {
                _isLoading.value = false
            }
        }
    }

    private fun resolvePsychologistForPatient(idPaciente: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val result = profileUseCaseGeneral.obtenerPsicologoAsignado(idPaciente)
                result.onSuccess { profile ->
                    val psicologoUserId = profile.usuario?.idUsuario ?: profile.idPsicologo
                    if (psicologoUserId != null) {
                        _partnerId.value = psicologoUserId
                    }

                    val nombre = buildString {
                        profile.usuario?.nombre?.let { append(it) }
                        profile.usuario?.apellido?.let {
                            if (isNotEmpty()) append(" ")
                            append(it)
                        }
                    }
                    _partnerNombre.value = nombre.ifEmpty { "Tu Psicólogo" }
                }.onFailure {
                    _partnerId.value = null
                    _partnerNombre.value = ""
                }
            } finally {
                _isLoading.value = false
            }
        }
    }

    private fun loadPsicologoNombre(idUsuarioPsicologo: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val result = profileUseCaseGeneral.getPsicologoById(idUsuarioPsicologo)
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
            } finally {
                _isLoading.value = false
            }
        }
    }
}
