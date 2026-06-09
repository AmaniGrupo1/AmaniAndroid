package org.ies.tierno.applicationamani.domain.events

import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import org.ies.tierno.applicationamani.domain.events.HorarioEvents.horarioActualizado

/**
 * Bus de eventos de dominio para propagar cambios en la configuración horaria
 * entre ViewModels sin acoplamiento directo.
 *
 * Utiliza un [SharedFlow] sin repetición (replay = 0) para emitir eventos
 * puntuales que notifican a los suscriptores que el horario del psicólogo
 * ha sido modificado, permitiendo la recarga reactiva de la agenda.
 *
 * @property horarioActualizado Flujo compartido al que los ViewModels pueden suscribirse
 *   para reaccionar ante actualizaciones del horario.
 */
object HorarioEvents {
    private val _horarioActualizado = MutableSharedFlow<Unit>(replay = 0)
    val horarioActualizado: SharedFlow<Unit> = _horarioActualizado.asSharedFlow()

    /**
     * Emite un evento de actualización de horario a todos los suscriptores activos.
     */
    suspend fun notificar() {
        _horarioActualizado.emit(Unit)
    }
}
