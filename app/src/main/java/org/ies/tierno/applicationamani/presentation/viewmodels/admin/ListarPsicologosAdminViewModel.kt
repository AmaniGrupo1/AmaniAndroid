package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import timber.log.Timber

class ListarPsicologosAdminViewModel(
    val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase,
    private val userSessionDataStore: UserSessionDataStore,
    val profileUseCase : ProfileUseCaseGeneral
) : ViewModel() {

    // Psicólogos activos
    private val _psicologos = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologos

    // Psicólogos dados de baja
    private val _psicologosBaja = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologosBaja: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologosBaja

    // Estado de carga y error
    private val _isLoading = MutableStateFlow(true)
    val isLoading: StateFlow<Boolean> = _isLoading

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
    fun actualizarPsicologoBaja(id: Long) {
        val psicologo = _psicologos.value.find { it.idPsicologo == id }

        if (psicologo != null) {
            _psicologos.value = _psicologos.value.filter { it.idPsicologo != id }
            _psicologosBaja.value = _psicologosBaja.value + psicologo
            Timber.d("Psicólogo dado de baja localmente: $id")
        }
    }

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
    fun recargarPsicologos() {
        cargarPsicologosActivos()
        cargarPsicologosBaja()
    }
}