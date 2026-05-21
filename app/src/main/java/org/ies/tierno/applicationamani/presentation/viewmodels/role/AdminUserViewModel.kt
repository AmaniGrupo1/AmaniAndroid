package org.ies.tierno.applicationamani.presentation.viewmodels.role

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.domain.usecases.role.GetUsuariosUseCase

private const val TAG = "AdminUserViewModel"

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
        Log.d(TAG, "🚀 Cargando usuarios - Rol: $rol, DNI: $dni")
        viewModelScope.launch {
            _isLoading.value = true
            Log.d(TAG, "⏳ Estado de carga activado")

            try {
                Log.d(TAG, "📡 Llamando al API con parámetros: rol=$rol, dni=$dni")
                val response = getUsuariosUseCase(rol, dni)

                if (response.isSuccessful) {
                    val body = response.body().orEmpty()
                    Log.d(TAG, "✅ Respuesta exitosa - Usuarios recibidos: ${body.size}")

                    // Log detallado de cada usuario recibido
                    body.forEachIndexed { index, user ->
                        Log.d(TAG, "   📍 Usuario $index: ID=${user.idUsuario}, " +
                                "Nombre=${user.nombre} ${user.apellido}, " +
                                "Rol=${user.rol}, " +
                                "DNI=${user.dni ?: "null"}, " +
                                "Email=${user.email}")
                    }

                    _usuariosOriginal.value = body
                    _usuariosFiltrados.value = body

                    Log.d(TAG, "💾 Datos guardados en memoria - Original: ${_usuariosOriginal.value.size}, " +
                            "Filtrados: ${_usuariosFiltrados.value.size}")
                } else {
                    val errorBody = response.errorBody()?.string()
                    Log.e(TAG, "❌ Error en respuesta - Código: ${response.code()}, " +
                            "Mensaje: ${response.message()}, " +
                            "Body error: $errorBody")
                    _error.value = "Error al cargar usuarios: ${response.code()}"
                }
            } catch (e: Exception) {
                Log.e(TAG, "❌ Excepción al cargar usuarios: ${e.message}", e)
                _error.value = e.message
            } finally {
                _isLoading.value = false
                Log.d(TAG, "🏁 Carga finalizada - Estado de carga desactivado")
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
        Log.d(TAG, "🔍 Iniciando filtrado local - Rol: ${rol?.name ?: "TODOS"}, Búsqueda: '${dni.ifEmpty { "vacío" }}'")
        Log.d(TAG, "📊 Usuarios originales disponibles: ${_usuariosOriginal.value.size}")

        var filtrados = _usuariosOriginal.value

        if (rol != null) {
            val antes = filtrados.size
            filtrados = filtrados.filter { it.rol == rol }
            Log.d(TAG, "🎯 Filtro por rol '${rol.name}': $antes → ${filtrados.size} usuarios")

            // Log de qué usuarios quedaron después del filtro de rol
            filtrados.forEach { user ->
                Log.d(TAG, "   ✅ Después filtro rol: ${user.nombre} ${user.apellido} (${user.rol})")
            }
        }

        if (dni.isNotBlank()) {
            val antes = filtrados.size
            filtrados = filtrados.filter {
                val matchDni = (it.dni ?: "").contains(dni, ignoreCase = true)
                val matchNombre = (it.nombre ?: "").contains(dni, ignoreCase = true)
                val matchApellido = (it.apellido ?: "").contains(dni, ignoreCase = true)
                val matchEmail = (it.email ?: "").contains(dni, ignoreCase = true)

                val matched = matchDni || matchNombre || matchApellido || matchEmail

                if (matched) {
                    Log.d(TAG, "   🔍 Match encontrado: ${it.nombre} ${it.apellido} - " +
                            "DNI:${it.dni}, Nombre:${matchNombre}, Apellido:${matchApellido}, Email:${matchEmail}")
                }

                matched
            }
            Log.d(TAG, "🔎 Filtro por texto '$dni': $antes → ${filtrados.size} usuarios")
        }

        _usuariosFiltrados.value = filtrados
        Log.d(TAG, "✅ Filtrado completado - Total final: ${filtrados.size} usuarios")

        if (filtrados.isEmpty()) {
            Log.w(TAG, "⚠️ El filtrado no produjo resultados")
            Log.w(TAG, "   - Rol aplicado: ${rol?.name ?: "NINGUNO"}")
            Log.w(TAG, "   - Búsqueda aplicada: '${dni.ifEmpty { "ninguna" }}'")
            Log.w(TAG, "   - Usuarios originales: ${_usuariosOriginal.value.size}")
        }
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        Log.d(TAG, "🧹 Limpiando mensaje de error")
        _error.value = null
    }
}