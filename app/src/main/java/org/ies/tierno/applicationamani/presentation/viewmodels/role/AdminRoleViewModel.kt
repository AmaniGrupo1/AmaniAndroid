package org.ies.tierno.applicationamani.presentation.viewmodels.role

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.usecases.role.RoleAdminUseCase

class AdminRoleViewModel(
    private val roleAdminUseCase: RoleAdminUseCase,
) : ViewModel() {
    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    private val _success = MutableStateFlow<String?>(null)
    val success: StateFlow<String?> = _success

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

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

    fun clearMessages() {
        _success.value = null
        _error.value = null
    }
}
