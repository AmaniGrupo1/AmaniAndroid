package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import timber.log.Timber

/**
 * ViewModel que gestiona el listado de psicólogos desde el panel de administración.
 *
 * Mantiene dos listas separadas: psicólogos activos y psicólogos dados de baja.
 * Permite editar localmente los datos de un psicólogo y sincronizar los cambios
 * con el backend en segundo plano. También soporta recarga manual de ambas listas.
 *
 * @param listarPsicologoAdminUseCase Caso de uso que obtiene la lista de psicólogos activos y de baja.
 * @param userSessionDataStore Almacén local de la sesión del administrador.
 * @param profileUseCase Caso de uso genérico para operaciones de perfil (edición de psicólogo).
 */
class ListarPsicologosAdminViewModel(
    val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    val profileUseCase : ProfileUseCaseGeneral
) : ViewModel() {

    // Psicólogos activos
    /** Lista de psicólogos activos en el sistema. */
    private val _psicologos = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologos

    // Psicólogos dados de baja
    /** Lista de psicólogos dados de baja. */
    private val _psicologosBaja = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologosBaja: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologosBaja

    // Estado de carga y error
    /** Indica si los datos se están cargando desde el backend. */
    private val _isLoading = MutableStateFlow(true)
    val isLoading: StateFlow<Boolean> = _isLoading

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    init {
        // Esperar a que la sesión esté disponible
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                if (session != null) {
                    Timber.d("Sesión obtenida: ${session.rol} - ID: ${session.idUsuario}")
                    cargarPsicologosActivos()
                    cargarPsicologosBaja()
                } else {
                    Timber.w("Esperando sesión...")
                    _isLoading.value = false
                }
            }
        }
    }

    private var activosJob: Job? = null
    private var bajaJob: Job? = null
    private fun cargarPsicologosActivos() {

        activosJob?.cancel()

        activosJob = viewModelScope.launch {

            _isLoading.value = true
            _error.value = null

            listarPsicologoAdminUseCase()
                .catch { error ->
                    Timber.e(error, "Error al cargar psicólogos activos")
                    _error.value = "Error al cargar psicólogos: ${error.message}"
                    _psicologos.value = emptyList()
                }
                .collect { lista ->

                    Timber.d("Psicólogos activos recibidos: ${lista.size}")

                    _psicologos.value = lista
                    _isLoading.value = false
                }
        }
    }

    private fun cargarPsicologosBaja() {

        bajaJob?.cancel()

        bajaJob = viewModelScope.launch {

            listarPsicologoAdminUseCase.getPsicologosBaja()
                .catch { error ->
                    Timber.e(error, "Error al cargar psicólogos de baja")
                }
                .collect { lista ->

                    Timber.d("Psicólogos de baja recibidos: ${lista.size}")

                    _psicologosBaja.value = lista
                }
        }
    }

    // =========================================================
    // ACTUALIZAR LOCALMENTE AL DAR ALTA
    // =========================================================
    /**
     * Mueve localmente un psicólogo de la lista de baja a la lista de activos.
     *
     * @param id Identificador del psicólogo que se da de alta.
     */
    fun actualizarPsicologoAlta(id: Long) {
        val psicologo = _psicologosBaja.value.find { it.idPsicologo == id }

        if (psicologo != null) {
            _psicologosBaja.value = _psicologosBaja.value.filter { it.idPsicologo != id }
            _psicologos.value = _psicologos.value + psicologo
            Timber.d("Psicólogo dado de alta localmente: $id")
        }
    }

    // =========================================================
    // ACTUALIZAR LOCALMENTE AL DAR BAJA
    // =========================================================
    /**
     * Mueve localmente un psicólogo de la lista de activos a la lista de baja.
     *
     * @param id Identificador del psicólogo que se da de baja.
     */
    fun actualizarPsicologoBaja(id: Long) {
        val psicologo = _psicologos.value.find { it.idPsicologo == id }

        if (psicologo != null) {
            _psicologos.value = _psicologos.value.filter { it.idPsicologo != id }
            _psicologosBaja.value = _psicologosBaja.value + psicologo
            Timber.d("Psicólogo dado de baja localmente: $id")
        }
    }

    /**
     * Actualiza localmente los datos de un psicólogo y sincroniza con el backend.
     *
     * La actualización local es instantánea; la sincronización con el backend
     * se ejecuta en segundo plano mediante una corrutina.
     *
     * @param id Identificador del psicólogo a editar.
     * @param dto DTO con los nuevos datos del perfil del psicólogo.
     */
    fun editarPsicologo(
        id: Long,
        dto: PsicologoRequestDTO
    ) {

        // =====================================================
        // ACTUALIZACIÓN INSTANTÁNEA LOCAL
        // =====================================================

        _psicologos.value = _psicologos.value.map { psicologo ->

            if (psicologo.idPsicologo == id) {

                psicologo.copy(
                    nombre = dto.nombrePsicologo,
                    apellido = dto.apellidoPsicologo,
                    especialidad = dto.especialidad,
                    descripcion = dto.descripcion,
                    licencia = dto.licencia,
                    telefono = dto.telefono,      // ✅ Añadido
                    email = dto.email              // ✅ Añadido
                )

            } else {
                psicologo
            }
        }

        _psicologosBaja.value = _psicologosBaja.value.map { psicologo ->

            if (psicologo.idPsicologo == id) {

                psicologo.copy(
                    nombre = dto.nombrePsicologo,
                    apellido = dto.apellidoPsicologo,
                    especialidad = dto.especialidad,
                    descripcion = dto.descripcion,
                    licencia = dto.licencia,
                    telefono = dto.telefono,      // ✅ Añadido
                    email = dto.email              // ✅ Añadido
                )

            } else {
                psicologo
            }
        }

        // =====================================================
        // BACKEND EN SEGUNDO PLANO
        // =====================================================

        viewModelScope.launch {

            val result = profileUseCase.updatePerfilPsicologoAdmin(
                id,
                dto
            )

            result.onSuccess {

                Timber.d("Psicólogo actualizado en backend")

            }.onFailure { error ->

                Timber.e(error)

                _error.value = error.message
            }
        }
    }

    // Método para recargar manualmente
    /** Recarga ambas listas de psicólogos (activos y de baja) desde el backend. */
    fun recargarPsicologos() {
        cargarPsicologosActivos()
        cargarPsicologosBaja()
    }
}