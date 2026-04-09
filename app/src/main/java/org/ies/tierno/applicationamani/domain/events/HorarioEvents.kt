package org.ies.tierno.applicationamani.domain.events

import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.asSharedFlow

/**
 * Singleton de eventos de dominio para propagar cambios de horario
 * entre ViewModels sin acoplamiento directo.
 * Patrón: SharedFlow con replay=0 (evento puntual, no estado).
 */
object HorarioEvents {
    private val _horarioActualizado = MutableSharedFlow<Unit>(replay = 0)
    val horarioActualizado: SharedFlow<Unit> = _horarioActualizado.asSharedFlow()

    suspend fun notificar() {
        _horarioActualizado.emit(Unit)
    }
}
