package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO

class IdiomaViewModel(
    private val idiomaUseCase: IdiomaUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    val citasRepository: CitasRepository
) : ViewModel() {

    // ================= IDIOMA =================

    val idioma = userSessionDataStore.sessionFlow
        .map { it?.idioma ?: "es" }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = "es"
        )

    fun cambiarIdioma(nuevoIdioma: String) {

        viewModelScope.launch {

            val session = userSessionDataStore.getSession()
                ?: return@launch

            if (session.idioma == nuevoIdioma) {
                return@launch
            }

            try {

                // Backend
                idiomaUseCase.actualizarIdioma(
                    session.idUsuario,
                    nuevoIdioma
                )

                // Local
                userSessionDataStore.saveSession(
                    session.copy(
                        idioma = nuevoIdioma
                    )
                )

            } catch (e: Exception) {

                println("Error al cambiar idioma: ${e.message}")
            }
        }
    }

    // ================= TEMA =================

    val tema = userSessionDataStore.sessionFlow
        .map { it?.tema ?: false } // false = blanco
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = false
        )

    fun cambiarTema(nuevoTema: Boolean) {

        viewModelScope.launch {

            val session = userSessionDataStore.getSession()
                ?: return@launch

            if (session.tema == nuevoTema) {
                return@launch
            }

            idiomaUseCase.actualizarTema(nuevoTema)
                .onSuccess {

                    userSessionDataStore.saveSession(
                        session.copy(
                            tema = nuevoTema
                        )
                    )
                }
                .onFailure {

                    println(
                        "Error al actualizar tema: ${it.message}"
                    )
                }
        }
    }

    // En IdiomaViewModel.kt, añade:

    // En IdiomaViewModel.kt, agrega:

    private val _horarioActual = MutableStateFlow<HorarioRequestDTO?>(null)
    val horarioActual: StateFlow<HorarioRequestDTO?> = _horarioActual.asStateFlow()

    fun cargarHorarioActual() {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            val idPsicologo = session?.idPsicologo ?: return@launch

            // Necesitas tener el repositorio disponible
            // Si no lo tienes, tendrás que inyectarlo en el constructor
            try {
                // Llama a tu API/Repository para obtener el horario
                // Esto es solo un ejemplo, adapta a tu implementación
                val horario = citasRepository?.getHorarioActual(idPsicologo)
                horario?.onSuccess {
                    _horarioActual.value = it
                }
            } catch (e: Exception) {
                Log.e("IdiomaViewModel", "Error cargando horario", e)
            }
        }
    }
}