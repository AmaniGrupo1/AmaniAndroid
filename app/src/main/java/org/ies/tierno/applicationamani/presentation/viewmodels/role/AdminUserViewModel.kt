package org.ies.tierno.applicationamani.presentation.viewmodels.role

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.domain.usecases.role.GetUsuariosUseCase

/**
 * ViewModel que lista y filtra los usuarios del sistema para el panel de administración.
 *
 * Permite cargar usuarios desde el backend mediante [GetUsuariosUseCase] y aplicar
 * filtros por rol y DNI en local, sin nuevas consultas al servidor.
 *
 * @constructor Crea una instancia con el caso de uso de consulta de usuarios.
 * @param getUsuariosUseCase Caso de uso que obtiene la lista de usuarios desde el backend.
 */
class AdminUserViewModel(
    private val getUsuariosUseCase: GetUsuariosUseCase,
) : ViewModel() {
    /** Lista original de usuarios obtenida del backend, sin filtrar. */
    private val _usuariosOriginal = MutableStateFlow<List<UsuarioDTO>>(emptyList())
    /** Lista de usuarios resultante tras aplicar los filtros de rol y DNI. */
    private val _usuariosFiltrados = MutableStateFlow<List<UsuarioDTO>>(emptyList())

    /** Lista observable de usuarios filtrados para la UI. */
    val usuariosFiltrados: StateFlow<List<UsuarioDTO>> = _usuariosFiltrados

    /** Indica si la carga de usuarios está en curso. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    /**
     * Carga la lista de usuarios desde el backend, opcionalmente filtrando por rol.
     *
     * Lanza una corrutina que invoca [GetUsuariosUseCase] y almacena los resultados
     * tanto en la lista original como en la lista filtrada.
     *
     * @param rol Rol por el que filtrar en el backend. `null` para obtener todos.
     * @param dni DNI por el que filtrar en el backend. `null` para no aplicar filtro.
     */
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

    /**
     * Filtra localmente la lista de usuarios por rol y/o DNI.
     *
     * No realiza consultas al backend; opera sobre la lista ya cargada en [_usuariosOriginal].
     *
     * @param rol Rol por el que filtrar. `null` para no aplicar filtro de rol.
     * @param dni Texto de búsqueda que se compara contra DNI, nombre y apellido.
     */
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

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _error.value = null
    }
}
