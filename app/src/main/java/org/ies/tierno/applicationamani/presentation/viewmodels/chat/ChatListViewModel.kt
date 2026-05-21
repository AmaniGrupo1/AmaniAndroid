package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.util.Log
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

/**
 * Representa un interlocutor en la lista de chats.
 *
 * @property id Identificador único del interlocutor (ID de usuario).
 * @property nombre Nombre completo o apelativo mostrado en la lista de chats.
 * @property rol Rol del interlocutor (\"paciente\" o \"psicologo\").
 * @property photoUrl URL opcional de la foto de perfil del interlocutor.
 */
data class ChatPartner(
    val id: Long,
    val nombre: String,
    val rol: String,
    val photoUrl: String? = null,
)

/**
 * ViewModel que gestiona la lista de contactos de chat del usuario autenticado.
 *
 * Según el rol del usuario, carga el psicólogo asignado (para pacientes) o la
 * lista de pacientes asignados (para psicólogos). Expone estados de carga, error
 * y una lista de [ChatPartner] observables para la UI.
 *
 * @param userSessionDataStore Almacén local de la sesión del usuario.
 * @param profileUseCaseGeneral Caso de uso genérico para consultar perfiles.
 * @param listarPacientesByPsicologo Caso de uso para listar pacientes asignados a un psicólogo.
 */
class ChatListViewModel(
    private val userSessionDataStore: UserSessionDataStore,
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
    private val listarPacientesByPsicologo: ListarPacientesByPsicologo,
) : ViewModel() {
    companion object {
        private const val TAG = "ChatListViewModel"
    }

    /** Identificador del usuario autenticado. */
    private val _currentUserId = MutableStateFlow<Long?>(null)
    val currentUserId: StateFlow<Long?> = _currentUserId.asStateFlow()

    /** Rol del usuario autenticado ("paciente" o "psicologo"). */
    private val _currentUserRol = MutableStateFlow<String>("")
    val currentUserRol: StateFlow<String> = _currentUserRol.asStateFlow()

    /** Lista de interlocutores disponibles para chatear. */
    private val _partners = MutableStateFlow<List<ChatPartner>>(emptyList())
    val partners: StateFlow<List<ChatPartner>> = _partners.asStateFlow()

    /** Indica si la lista de contactos se está cargando. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    init {
        loadCurrentUser()
    }

    private fun normalizeRole(role: String): String =
        role
            .lowercase()
            .trim()
            .replace("ó", "o")
            .replace("á", "a")

    private fun loadCurrentUser() {
        viewModelScope.launch {
            _isLoading.value = true
            _error.value = null
            val session = userSessionDataStore.getSession()
            if (session != null) {
                _currentUserId.value = session.idUsuario
                _currentUserRol.value = session.rol

                when (normalizeRole(session.rol)) {
                    "paciente" -> {
                        if (session.idPsicologo != null) {
                            loadPsicologoNombre(session.idPsicologo)
                        } else {
                            // Fallback cuando la sesión no trae idPsicologo pero el paciente sí tiene asignación.
                            val idPaciente = session.idPaciente ?: session.idUsuario
                            resolvePsychologistForPatient(idPaciente)
                        }
                    }

                    "psicologo", "psicologa" -> {
                        loadAllAssignedPatients()
                    }

                    else -> {
                        _error.value = "Rol de usuario no soportado para chat"
                        _isLoading.value = false
                    }
                }
            } else {
                _error.value = "No hay sesión activa"
                _isLoading.value = false
            }
        }
    }

    /**
     * Dado un idPaciente (Firebase user ID), obtiene el perfil completo del paciente
     * para extraer su idUsuario real y añadirlo a la lista de partners.
     */
    private suspend fun resolveAndAddPaciente(idPaciente: Long) {
        try {
            val result = profileUseCaseGeneral.getPacienteByIdFirebase(idPaciente)
            result
                .onSuccess { profile ->
                    if (profile.usuario?.idUsuario != null) {
                        val nombre =
                            buildString {
                                profile.usuario.nombre?.let { append(it) }
                                profile.usuario.apellido?.let {
                                    if (isNotEmpty()) append(" ")
                                    append(it)
                                }
                            }.ifEmpty { "Paciente ${profile.usuario.idUsuario}" }

                        val newPartner =
                            ChatPartner(
                                id = profile.usuario.idUsuario,
                                nombre = nombre,
                                rol = "paciente",
                            )
                        _partners.value = (_partners.value + newPartner).distinctBy { it.id }
                    }
                }.onFailure {
                    Log.e(TAG, "Error resolviendo paciente $idPaciente para chat", it)
                }
        } catch (e: Exception) {
            Log.e(TAG, "Excepción resolviendo paciente $idPaciente", e)
        }
    }

    private fun loadAllAssignedPatients() {
        viewModelScope.launch {
            _isLoading.value = true
            _partners.value = emptyList()
            try {
                val pacientes = listarPacientesByPsicologo().first()
                if (pacientes.isNotEmpty()) {
                    pacientes.forEach { paciente ->
                        val pacienteId = paciente.idUsuario ?: paciente.idPaciente
                        if (pacienteId != null) {
                            resolveAndAddPaciente(pacienteId)
                        }
                    }
                } else {
                    _error.value = "No tienes pacientes asignados aún"
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error cargando pacientes asignados", e)
                _error.value = e.message ?: "No se pudieron cargar pacientes"
            } finally {
                _isLoading.value = false
            }
        }
    }

    private fun resolvePsychologistForPatient(idPaciente: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            _partners.value = emptyList()
            try {
                val result = profileUseCaseGeneral.obtenerPsicologoAsignado(idPaciente)
                result
                    .onSuccess { profile ->
                        val psicologoUserId = profile.usuario?.idUsuario ?: profile.idPsicologo
                        if (psicologoUserId != null) {
                            val nombre =
                                buildString {
                                    profile.usuario?.nombre?.let { append(it) }
                                    profile.usuario?.apellido?.let {
                                        if (isNotEmpty()) append(" ")
                                        append(it)
                                    }
                                }.ifEmpty { "Tu Psicólogo" }

                            _partners.value =
                                listOf(
                                    ChatPartner(
                                        id = psicologoUserId,
                                        nombre = nombre,
                                        rol = "psicologo",
                                    ),
                                )
                        } else {
                            _error.value = "No tienes un psicólogo asignado"
                        }
                    }.onFailure {
                        Log.e(TAG, "Error resolviendo psicólogo asignado", it)
                        _error.value = it.message ?: "No se pudo cargar tu psicólogo"
                    }
            } finally {
                _isLoading.value = false
            }
        }
    }

    private fun loadPsicologoNombre(idUsuarioPsicologo: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            _partners.value = emptyList()
            try {
                val result = profileUseCaseGeneral.getPsicologoById(idUsuarioPsicologo)
                result
                    .onSuccess { profile ->
                        val nombre =
                            buildString {
                                profile.usuario?.nombre?.let { append(it) }
                                profile.usuario?.apellido?.let {
                                    if (isNotEmpty()) append(" ")
                                    append(it)
                                }
                            }.ifEmpty { "Tu Psicólogo" }

                        _partners.value =
                            listOf(
                                ChatPartner(
                                    id = idUsuarioPsicologo,
                                    nombre = nombre,
                                    rol = "psicologo",
                                ),
                            )
                    }.onFailure {
                        Log.e(TAG, "Error cargando nombre de psicólogo", it)
                        _error.value = it.message ?: "No se pudo cargar el psicólogo"
                    }
            } finally {
                _isLoading.value = false
            }
        }
    }

    /** Reinicia la carga de contactos limpiando el estado actual. */
    fun retry() {
        _partners.value = emptyList()
        _error.value = null
        loadCurrentUser()
    }
}
