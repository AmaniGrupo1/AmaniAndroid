package org.ies.tierno.applicationamani.core.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.CoroutineExceptionHandler
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.core.crash.CrashReporter

/**
 * BaseViewModel que provee un manejo seguro de corrutinas para capturar
 * y reportar excepciones no manejadas a Crashlytics de forma consistente.
 */
abstract class BaseViewModel(
    protected val crashReporter: CrashReporter
) : ViewModel() {

    private val safeExceptionHandler = CoroutineExceptionHandler { _, exception ->
        crashReporter.logError(exception, "Unhandled Exception in ${this::class.simpleName}")
        handleError(exception)
    }

    /**
     * Helper para lanzar corrutinas de manera segura, reportando
     * cualquier crash inesperado a Crashlytics antes de fallar.
     */
    protected fun safeLaunch(block: suspend CoroutineScope.() -> Unit) {
        viewModelScope.launch(safeExceptionHandler) {
            block()
        }
    }

    /**
     * Opcional: Sobrescribir en las subclases si se desea
     * reaccionar a una excepción fatal a nivel de UI.
     */
    protected open fun handleError(exception: Throwable) {
        // Implementación por defecto vacía.
    }
}
