package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.dto.admin.MessageResponse
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO

/**
 * ViewModel que gestiona el listado de pacientes desde el panel de administración.
 *
 * Permite listar todos los pacientes, dar de baja o alta a un paciente y
 * reflejar los cambios en la UI de forma reactiva mediante recargas controladas.
 *
 * @constructor Crea una instancia con los casos de uso de listado y baja de pacientes.
 * @param listarPacientesUseCase Caso de uso que obtiene la lista completa de pacientes.
 * @param darBajaPacienteUseCase Caso de uso para dar de baja o alta a un paciente.
 * @param userSessionDataStore Almacén local de la sesión del administrador.
 */
class ListarPacientesViewModel(
    val listarPacientesUseCase: TodosLosPacientesUseCase,
    val darBajaPacienteUseCase: DarBajaPacienteUseCase,
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {
    /** Lista observable de todos los pacientes del sistema. */
    private val _paciente = MutableStateFlow<List<DatosPacienteAdminDTO>>(emptyList())
    val paciente: StateFlow<List<DatosPacienteAdminDTO>> = _paciente

    /** Resultado de la última operación de baja de paciente. */
    private val _bajaEstado = MutableStateFlow<Result<MessageResponse>?>(null)
    val bajaEstado: StateFlow<Result<MessageResponse>?> = _bajaEstado

    /** Resultado de la última operación de alta de paciente. */
    private val _altaEstado = MutableStateFlow<Result<MessageResponse>?>(null)
    val altaEstado: StateFlow<Result<MessageResponse>?> = _altaEstado

    /** Señal que se activa para forzar una recarga de la lista en la UI. */
    private val _recargarLista = MutableStateFlow(false)
    val recargarLista: StateFlow<Boolean> = _recargarLista

    init {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            if (session != null) {
                listarPacientesUseCase().collect { lista ->
                    _paciente.value = lista
                }
            } else {
                userSessionDataStore.sessionFlow.collect { s ->
                    if (s != null) {
                        listarPacientesUseCase().collect { lista ->
                            _paciente.value = lista
                        }
                    } else {
                        _paciente.value = emptyList()
                    }
                }
            }
        }
    }

    /**
     * Da de baja a un paciente identificado por su ID.
     *
     * Invoca [DarBajaPacienteUseCase] y, si la operación tiene éxito,
     * actualiza el estado local del paciente a inactivo y dispara una recarga.
     *
     * @param id Identificador del paciente a dar de baja.
     */
    fun darBajaPsicologo(id: Long) {
        viewModelScope.launch {
            val result = darBajaPacienteUseCase(id)
            _bajaEstado.value = result
            if (result.isSuccess) {
                actualizarPacienteBaja(id)
                triggerRecarga()
            }
        }
    }

    /**
     * Da de alta a un paciente previamente dado de baja.
     *
     * Invoca [DarBajaPacienteUseCase.darAltaPsicologo] y, si tiene éxito,
     * dispara una recarga y limpia el estado de alta tras un breve retardo.
     *
     * @param id Identificador del paciente a dar de alta.
     */
    fun darAltaPsicologo(id: Long) {
        viewModelScope.launch {
            val result = darBajaPacienteUseCase.darAltaPsicologo(id)
            _altaEstado.value = result
            if (result.isSuccess) {
                triggerRecarga()
                delay(3000)
                _altaEstado.value = null
            }
        }
    }

    /** Activa la señal de recarga para que la UI refresque la lista de pacientes. */
    private fun triggerRecarga() {
        _recargarLista.value = true
        viewModelScope.launch {
            delay(500)
            _recargarLista.value = false
        }
    }

    /**
     * Marca un paciente como inactivo en la lista local tras una baja exitosa.
     *
     * @param id Identificador del paciente a marcar como inactivo.
     */
    private fun actualizarPacienteBaja(id: Long) {
        _paciente.value =
            _paciente.value.map {
                if (it.idPaciente == id) {
                    it.copy(activo = false)
                } else {
                    it
                }
            }
    }

    /** Limpia el estado de alta para ocultar mensajes de confirmación. */
    fun limpiarAltaEstado() {
        _altaEstado.value = null
    }

    /** Limpia el estado de baja para ocultar mensajes de confirmación. */
    fun limpiarBajaEstado() {
        _bajaEstado.value = null
    }
}
