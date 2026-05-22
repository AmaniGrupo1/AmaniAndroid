package org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.domain.usecases.ticketsUseCase.TicketsUseCase
import org.ies.tierno.applicationamani.dto.tickets.TicketModel

class TicketsViewModel(
    private val ticketsUseCase: TicketsUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    private val profileApi: ProfileApi
) : ViewModel() {

    private val _isLoading = MutableLiveData(false)
    val isLoading: LiveData<Boolean> = _isLoading

    private val _isHistoryLoading = MutableLiveData(false)
    val isHistoryLoading: LiveData<Boolean> = _isHistoryLoading

    private val _message = MutableLiveData<String?>()
    val message: LiveData<String?> = _message

    private val _userEmail = MutableLiveData("")
    val userEmail: LiveData<String> = _userEmail

    private val _tickets = MutableLiveData<List<TicketModel>>(emptyList())
    val tickets: LiveData<List<TicketModel>> = _tickets

    fun cargarEmailUsuario() {
        viewModelScope.launch {
            try {
                val session = userSessionDataStore.getSession()
                if (session != null) {
                    if (!session.email.isNullOrBlank()) {
                        _userEmail.value = session.email
                        cargarTicketsUsuario(session.email)
                    } else {
                        val idPaciente = session.idPaciente
                        if (idPaciente != null && idPaciente > 0) {
                            val perfil = profileApi.getPacienteById(idPaciente)
                            val email = perfil.usuario?.email
                            if (!email.isNullOrBlank()) {
                                _userEmail.value = email
                                userSessionDataStore.saveSession(session.copy(email = email))
                                cargarTicketsUsuario(email)
                            }
                        }
                    }
                }
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }
    }


    fun cargarTicketsUsuario(email: String) {
        viewModelScope.launch {

            try {

                _isHistoryLoading.value = true

                ticketsUseCase.escucharTickets(
                    email = email
                ) { list ->

                    _tickets.value = list

                    _isHistoryLoading.value = false
                }

            } catch (e: Exception) {

                e.printStackTrace()

                _tickets.value = emptyList()

                _isHistoryLoading.value = false
            }
        }
    }

    fun enviarTicket(ticket: TicketModel) {
        viewModelScope.launch {

            try {
                _isLoading.value = true

                val result = ticketsUseCase(ticket)

                result.onSuccess {
                    _message.value = "Reporte enviado correctamente"
                    // Recargar tickets tras enviar uno nuevo
                    _userEmail.value?.let { email ->
                        if (email.isNotBlank()) {
                            cargarTicketsUsuario(email)
                        }
                    }
                }.onFailure {
                    _message.value = it.message ?: "Error desconocido"
                }

            } finally {

                _isLoading.value = false
            }
        }
    }

    fun limpiarMensaje() {
        _message.value = null
    }
}