package org.ies.tierno.applicationamani.presentation.viewmodels.notificacion

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.notificacion.NotificacionUseCase

/**
 * ViewModel que gestiona la activación o desactivación de notificaciones del usuario.
 *
 * Expone la función [toggle] que delega en [NotificacionUseCase] la actualización
 * del estado de notificaciones en el backend.
 *
 * @constructor Crea una instancia con el caso de uso de notificaciones.
 * @param notificacionUseCase Caso de uso para alternar el estado de las notificaciones.
 */
class NotificacionViewModel(
    val notificacionUseCase: NotificacionUseCase,
) : ViewModel() {
    /**
     * Activa o desactiva las notificaciones para el usuario identificado.
     *
     * Lanza una corrutina que llama a [NotificacionUseCase.toggleNotificaciones]
     * con el estado deseado. Los errores se silencian para no interrumpir la UI.
     *
     * @param id Identificador del usuario cuyas notificaciones se modificarán.
     * @param activar `true` para activar las notificaciones, `false` para desactivarlas.
     */
    fun toggle(
        id: Long,
        activar: Boolean,
    ) {
        viewModelScope.launch {
            try {
                notificacionUseCase.toggleNotificaciones(id, activar)
            } catch (e: Exception) {
                // Error handled, no crash
            }
        }
    }
}
