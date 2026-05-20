package org.ies.tierno.applicationamani.presentation.viewmodels.role

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.domain.usecases.role.GetUsuariosUseCase

class AdminUserViewModel(
    private val getUsuariosUseCase: GetUsuariosUseCase,
) : ViewModel() {
    private val _usuariosOriginal = MutableStateFlow<List<UsuarioDTO>>(emptyList()) // ✅ Usa UsuarioDTO
    private val _usuariosFiltrados = MutableStateFlow<List<UsuarioDTO>>(emptyList())

    val usuariosFiltrados: StateFlow<List<UsuarioDTO>> = _usuariosFiltrados

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    fun cargarUsuarios(
        rol: String? = null,
        dni: String? = null,
    ) {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val response = getUsuariosUseCase(rol, dni)

                if (response.isSuccessful) {
                    val body = response.body().orEmpty()

                    // ✅ Usa UsuarioDTO directamente, sin mapear a nada
                    _usuariosOriginal.value = body
                    _usuariosFiltrados.value = body
                } else {
                    _error.value = "Error al cargar usuarios: ${response.code()}"
                }
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }

    fun filtrarUsuarios(
        rol: Rol?,
        dni: String,
    ) {
        var filtrados = _usuariosOriginal.value

        if (rol != null) {
            filtrados = filtrados.filter { it.rol == rol }
        }

        if (dni.isNotBlank()) {
            filtrados =
                filtrados.filter {
                    (it.dni ?: "").contains(dni, ignoreCase = true) ||
                        (it.nombre ?: "").contains(dni, ignoreCase = true) ||
                        (it.apellido ?: "").contains(dni, ignoreCase = true)
                }
        }

        _usuariosFiltrados.value = filtrados
    }

    fun clearError() {
        _error.value = null
    }
}
