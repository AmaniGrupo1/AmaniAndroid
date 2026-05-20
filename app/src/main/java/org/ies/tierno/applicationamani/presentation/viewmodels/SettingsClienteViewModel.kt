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
 * ViewModel que gestiona la pantalla de ajustes y edición del perfil del cliente.
 *
 * Permite cargar los datos del usuario autenticado desde la sesión local y el backend,
 * editar campos como nombre, apellidos, teléfono y dirección, así como persistir cambios
 * o eliminar la cuenta.
 *
 * @constructor Crea el ViewModel con las dependencias de sesión y perfil.
 * @param sessionDataStore Almacén local de la sesión del usuario autenticado.
 * @param profileUseCase Caso de uso genérico para operaciones de perfil.
 */
class SettingsClienteViewModel(
    private val sessionDataStore: UserSessionDataStore,
    private val profileUseCase: ProfileUseCaseGeneral,
) : ViewModel() {
    /** Nombre del usuario en el formulario de edición. */
    var nombre by mutableStateOf("")
    /** Apellidos del usuario en el formulario de edición. */
    var apellidos by mutableStateOf("")
    /** Género seleccionado por el usuario. */
    var genero by mutableStateOf("")
    /** Dirección postal introducida por el usuario. */
    var direccion by mutableStateOf("")
    /** Teléfono de contacto del usuario. */
    var telefono by mutableStateOf("")
    /** Código postal asociado a la dirección. */
    var codigoPostal by mutableStateOf("")

    /** Indica si los datos del perfil se están cargando desde el backend. */
    var isLoading by mutableStateOf(false)
    /** Mensaje de error de la última operación fallida de carga o guardado. */
    var errorMessage by mutableStateOf<String?>(null)

    /**
     * Carga los datos del perfil del usuario desde la sesión local y el backend.
     *
     * Recupera el `idPaciente` de [UserSessionDataStore] y consulta el perfil
     * completo mediante [ProfileUseCaseGeneral.getPacienteById]. Rellena los
     * campos del formulario con los valores obtenidos.
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
     *
     * Pendiente de implementación: se requiere un caso de uso de actualización de perfil.
     */
    fun guardarUsuario() {
        // Pendiente: Implementar caso de uso para actualizar perfil
    }

    /**
     * Elimina la cuenta del usuario autenticado.
     *
     * Pendiente de implementación: se requiere un caso de uso de borrado de cuenta.
     */
    fun borrarCuenta() {
        // Pendiente: Implementar borrado
    }
}
