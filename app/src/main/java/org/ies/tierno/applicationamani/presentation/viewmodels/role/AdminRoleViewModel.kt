package org.ies.tierno.applicationamani.presentation.viewmodels.role

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.usecases.role.RoleAdminUseCase

/**
 * ViewModel que gestiona el cambio de rol de un usuario desde el panel de administración.
 *
 * Delega en [RoleAdminUseCase] la petición al backend y expone los estados
 * de carga, éxito y error para que la UI reaccione en tiempo real.
 *
 * @constructor Crea una instancia con el caso de uso de roles.
 * @param roleAdminUseCase Caso de uso que ejecuta el cambio de rol en el backend.
 */
class AdminRoleViewModel(
    private val roleAdminUseCase: RoleAdminUseCase,
) : ViewModel() {
    /** Indica si una operación de cambio de rol está en curso. */
    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    /** Mensaje de éxito tras un cambio de rol exitoso. */
    private val _success = MutableStateFlow<String?>(null)
    val success: StateFlow<String?> = _success

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    /**
     * Cambia el rol de un usuario en el sistema.
     *
     * Lanza una corrutina que invoca [RoleAdminUseCase] con el nuevo rol y
     * actualiza [success] o [error] según el resultado de la respuesta HTTP.
     *
     * @param idUsuario Identificador del usuario al que se le cambiará el rol.
     * @param nuevoRol Nuevo rol a asignar (ver [Rol]).
     */
    fun cambiarRol(
        idUsuario: Long,
        nuevoRol: Rol,
    ) {
        viewModelScope.launch {
            _loading.value = true

            try {
                val response =
                    roleAdminUseCase(
                        idUsuario = idUsuario,
                        nuevoRol = nuevoRol,
                    )

                if (response.isSuccessful) {
                    val body = response.body()

                    _success.value =
                        body?.mensaje ?: "Rol cambiado correctamente"

                    Log.d(
                        "ADMIN_ROLE",
                        "Nuevo rol: ${body?.nuevoRol}",
                    )
                } else {
                    _error.value =
                        "Error al cambiar rol: ${response.code()}"

                    Log.e(
                        "ADMIN_ROLE",
                        response.errorBody()?.string() ?: "Error desconocido",
                    )
                }
            } catch (e: Exception) {
                _error.value =
                    e.message ?: "Error desconocido"

                Log.e(
                    "ADMIN_ROLE",
                    e.message ?: "Exception",
                )
            } finally {
                _loading.value = false
            }
        }
    }

    /** Limpia los mensajes de éxito y error para reiniciar el estado de la UI. */
    fun clearMessages() {
        _success.value = null
        _error.value = null
    }
}
