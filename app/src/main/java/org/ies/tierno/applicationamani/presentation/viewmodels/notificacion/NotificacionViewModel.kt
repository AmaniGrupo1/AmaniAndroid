package org.ies.tierno.applicationamani.presentation.viewmodels.notificacion

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.notificacion.NotificacionUseCase

class NotificacionViewModel(
    val notificacionUseCase: NotificacionUseCase,
) : ViewModel() {
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
