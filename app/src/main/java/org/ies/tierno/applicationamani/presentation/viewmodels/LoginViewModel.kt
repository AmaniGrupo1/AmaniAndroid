package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase

class LoginViewModel(
     val authUseCase: LoginUseCase
) : ViewModel() {

    private val _username = MutableStateFlow("")
    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow("")
    val password: StateFlow<String> = _password

    private val _loginResult = MutableStateFlow<Result<LoginResponseDTO>?>(null)
    val loginResult: StateFlow<Result<LoginResponseDTO>?> = _loginResult

    private val _loginResultRegistry = MutableStateFlow<Result<RegistryPacienteDTO>?>(null)
    val loginResultRegistry: StateFlow<Result<RegistryPacienteDTO>?> = _loginResultRegistry

    fun setUsername(username: String) {
        _username.value = username
    }

    fun setPassword(password: String) {
        _password.value = password
    }

    fun login() {
        val request = LoginRequestDTO(
            email = _username.value,
            password = _password.value
        )

        viewModelScope.launch {
            val result = authUseCase.login(request)
            _loginResult.value = result
        }
    }

    fun registrarPaciente(nombre: String, apellido: String, email: String, password: String) {
        val request = RegistryPacienteDTO(
            nombre = nombre,
            apellido = apellido,
            email = email,
            password = password
        )

        viewModelScope.launch {
            val result = authUseCase.registerPaciente(request)
            _loginResult.value = result
        }
    }
}