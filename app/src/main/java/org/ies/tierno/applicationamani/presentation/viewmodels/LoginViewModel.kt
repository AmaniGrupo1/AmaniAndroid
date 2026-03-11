package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

class LoginViewModel : ViewModel() {
    private val _username = MutableStateFlow<String>("")

    val username: StateFlow<String> = _username

    private val _password = MutableStateFlow<String>("")

    val password: StateFlow<String> = _password

    fun setUsername(username: String) {
        _username.value = username
    }

    fun setPassword(password: String) {
        _password.value = password
    }
}