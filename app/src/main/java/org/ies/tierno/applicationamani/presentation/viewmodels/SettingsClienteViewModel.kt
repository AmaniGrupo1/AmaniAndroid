package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral

/**
 * ViewModel para la pantalla de ajustes del perfil del cliente.
 */
class SettingsClienteViewModel(
    private val sessionDataStore: UserSessionDataStore,
    private val profileUseCase: ProfileUseCaseGeneral,
) : ViewModel() {
    var nombre by mutableStateOf("")
    var apellidos by mutableStateOf("")
    var genero by mutableStateOf("")
    var direccion by mutableStateOf("")
    var telefono by mutableStateOf("")
    var codigoPostal by mutableStateOf("")

    var isLoading by mutableStateOf(false)
    var errorMessage by mutableStateOf<String?>(null)

    /**
     * Carga los datos del usuario desde la sesión y el backend.
     */
    fun cargarUsuario() {
        isLoading = true
        viewModelScope.launch {
            try {
                val session = sessionDataStore.getSession()
                val idPaciente = session?.idPaciente

                if (idPaciente != null) {
                    val result = profileUseCase.getPacienteById(idPaciente)
                    result
                        .onSuccess { profile ->
                            nombre = profile.usuario?.nombre ?: ""
                            apellidos = profile.usuario?.apellido ?: ""
                            genero = profile.genero ?: "Hombre"
                            telefono = profile.telefono ?: ""
                            // Nota: Dirección y CP pueden requerir otro endpoint o DTO extendido
                            // Por ahora los mantenemos vacíos o cargamos lo disponible
                            errorMessage = null
                        }.onFailure {
                            errorMessage = "Error al cargar datos del perfil"
                        }
                } else {
                    errorMessage = "No se encontró sesión activa"
                }
            } catch (e: Exception) {
                errorMessage = "Ocurrió un error: ${e.message}"
            } finally {
                isLoading = false
            }
        }
    }

    /**
     * Persiste los cambios realizados en el perfil del usuario.
     */
    fun guardarUsuario() {
        // Pendiente: Implementar caso de uso para actualizar perfil
    }

    /**
     * Elimina la cuenta del usuario.
     */
    fun borrarCuenta() {
        // Pendiente: Implementar borrado
    }
}
