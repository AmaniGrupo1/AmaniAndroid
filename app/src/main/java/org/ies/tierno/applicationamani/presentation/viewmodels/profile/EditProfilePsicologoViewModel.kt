import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.UpdatePsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO

class EditProfilePsicologoViewModel(
    private val profile: ProfileUseCaseGeneral
) : ViewModel() {

    private val _state = MutableStateFlow(
        UpdatePsicologoRequestDTO(
            especialidad = "",
            experiencia = null,
            descripcion = "",
            licencia = "",
            usuario = UsuarioUpdateDTO(
                nombre = "",
                apellido = "",
                email = ""
            )
        )
    )

    val state: StateFlow<UpdatePsicologoRequestDTO> = _state.asStateFlow()

    // =========================
    // CARGAR PERFIL
    // =========================
    fun loadProfile(data: PsicologoProfileResponseDTO) {
        _state.value = UpdatePsicologoRequestDTO(
            especialidad = data.especialidad ?: "",
            experiencia = data.experiencia,
            descripcion = data.descripcion ?: "",
            licencia = data.licencia ?: "",
            usuario = UsuarioUpdateDTO(
                nombre = data.usuario?.nombre ?: "",
                apellido = data.usuario?.apellido ?: "",
                email = data.usuario?.email ?: ""
            )
        )
    }

    fun loadProfileById(idPsicologo: Long) {
        viewModelScope.launch {
            val result = profile.getProfile(idPsicologo)

            result.onSuccess {
                loadProfile(it)
            }

            result.onFailure {
                println("Error cargando perfil: ${it.message}")
            }
        }
    }

    // =========================
    // UPDATES
    // =========================
    fun onNombreChange(value: String) {
        _state.value = _state.value.copy(
            usuario = _state.value.usuario?.copy(nombre = value)
        )
    }

    fun onApellidoChange(value: String) {
        _state.value = _state.value.copy(
            usuario = _state.value.usuario?.copy(apellido = value)
        )
    }

    fun onEmailChange(value: String) {
        _state.value = _state.value.copy(
            usuario = _state.value.usuario?.copy(email = value)
        )
    }

    fun onEspecialidadChange(value: String) {
        _state.value = _state.value.copy(especialidad = value)
    }

    fun onExperienciaChange(value: String) {
        _state.value = _state.value.copy(experiencia = value.toIntOrNull())
    }

    fun onDescripcionChange(value: String) {
        _state.value = _state.value.copy(descripcion = value)
    }

    fun onLicenciaChange(value: String) {
        _state.value = _state.value.copy(licencia = value)
    }

    // =========================
    // VALIDACIÓN
    // =========================
    private fun validate(): Boolean {
        val s = _state.value

        if (s.usuario?.nombre.isNullOrBlank()) return false
        if (s.usuario?.apellido.isNullOrBlank()) return false
        if (s.usuario?.email.isNullOrBlank()) return false
        if (!s.usuario.email!!.contains("@")) return false
        if (s.especialidad.isNullOrBlank()) return false

        return true
    }

    // =========================
    // UPDATE (RECIBE ID AQUÍ)
    // =========================
    suspend fun updateProfile(idPsicologo: Long): Boolean {
        if (!validate()) return false

        return try {
            val result = profile.updatePsicologoProfile(idPsicologo, _state.value)
            result.isSuccess
        } catch (e: Exception) {
            false
        }
    }
}