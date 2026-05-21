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

/**
 * ViewModel que gestiona las preferencias de idioma y tema del usuario.
 *
 * Persiste los cambios tanto en el backend mediante [IdiomaUseCase] como en
 * la sesión local a través de [UserSessionDataStore]. También expone la carga
 * del horario actual del psicólogo cuando la sesión lo requiera.
 *
 * @constructor Crea una instancia con las dependencias de idioma, sesión y citas.
 * @param idiomaUseCase Caso de uso para persistir cambios de idioma y tema.
 * @param userSessionDataStore Almacén local de la sesión del usuario.
 * @param citasRepository Repositorio para consultar el horario del psicólogo.
 */
class IdiomaViewModel(
    private val idiomaUseCase: IdiomaUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    val citasRepository: CitasRepository
) : ViewModel() {

    /**
     * Código de idioma actual del usuario, derivado de la sesión.
     * Valor por defecto: `"es"`.
     */
    val idioma = userSessionDataStore.sessionFlow
        .map { it?.idioma ?: "es" }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = "es"
        )

    /**
     * Cambia el idioma del usuario y persiste el cambio en backend y sesión local.
     *
     * No hace nada si el nuevo idioma coincide con el actual.
     *
     * @param nuevoIdioma Código del nuevo idioma (ej. `"es"`, `"en"`).
     */
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

    /**
     * Preferencia de tema oscuro del usuario, derivada de la sesión.
     * `false` = tema claro, `true` = tema oscuro.
     */
    val tema = userSessionDataStore.sessionFlow
        .map { it?.tema ?: false }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = false
        )

    /**
     * Cambia la preferencia de tema y la persiste en backend y sesión local.
     *
     * @param nuevoTema `true` para activar el tema oscuro, `false` para el claro.
     */
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

    /** Horario actual del psicólogo autenticado, si aplica. */
    private val _horarioActual = MutableStateFlow<HorarioRequestDTO?>(null)
    val horarioActual: StateFlow<HorarioRequestDTO?> = _horarioActual.asStateFlow()

    /**
     * Carga el horario del psicólogo desde [CitasRepository].
     *
     * Solo se ejecuta si la sesión activa pertenece a un psicólogo.
     */
    fun cargarHorarioActual() {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            val idPsicologo = session?.idPsicologo ?: return@launch

            try {
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
