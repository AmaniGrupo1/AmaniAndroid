    package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

    import androidx.compose.foundation.layout.*
    import androidx.compose.material.icons.Icons
    import androidx.compose.material.icons.filled.Visibility
    import androidx.compose.material.icons.filled.VisibilityOff
    import androidx.compose.material3.*
    import androidx.compose.runtime.*
    import androidx.compose.ui.Alignment
    import androidx.compose.ui.Modifier
    import androidx.compose.ui.graphics.Color
    import androidx.compose.ui.text.input.PasswordVisualTransformation
    import androidx.compose.ui.text.input.VisualTransformation
    import androidx.compose.ui.unit.dp
    import androidx.navigation.NavController
    import kotlinx.coroutines.delay
    import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel

    @OptIn(ExperimentalMaterial3Api::class)
    @Composable
    fun AgregaPsicologoScreen(
        navController: NavController,
        loginViewModel: LoginViewModel
    ) {
        val backgroundColor = Color(0xFFCCC0E4)
        val colorButton = Color(0xFF6A5ACD)

        val name by loginViewModel.nombre.collectAsState()
        val surname by loginViewModel.apellido.collectAsState()
        val email by loginViewModel.email.collectAsState()
        val password by loginViewModel.regPassword.collectAsState()
        val especialidad by loginViewModel.registroEspecialidad.collectAsState()
        val experiencia by loginViewModel.registroExperiencia.collectAsState()
        val descripcion by loginViewModel.registroDescripcion.collectAsState()
        val licencia by loginViewModel.registroLicencia.collectAsState()

        val isRegistering by loginViewModel.isRegistering.collectAsState()
        val registerError by loginViewModel.registerError.collectAsState()
        val registerSuccess by loginViewModel.registerSuccess.collectAsState()

        var passwordVisible by remember { mutableStateOf(false) }
        val snackbarHostState = remember { SnackbarHostState() }
        var validationMessage by remember { mutableStateOf<String?>(null) }

        LaunchedEffect(validationMessage) {
            validationMessage?.let {
                snackbarHostState.showSnackbar(it)
                validationMessage = null
            }
        }

        LaunchedEffect(registerError) {
            registerError?.let { snackbarHostState.showSnackbar(it) }
        }

        LaunchedEffect(registerSuccess) {
            if (registerSuccess) {
                snackbarHostState.showSnackbar("Psicólogo registrado exitosamente")
                delay(1500)
                loginViewModel.resetRegisterState()
                navController.popBackStack()
            }
        }

        Scaffold(
            containerColor = backgroundColor,
            snackbarHost = { SnackbarHost(snackbarHostState) },
            topBar = { /* Tu MenuAdministrador */ }
        ) { paddingValues ->
            Column(
                modifier = Modifier
                    .padding(paddingValues)
                    .fillMaxSize()
                    .padding(24.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Spacer(modifier = Modifier.height(20.dp))

                OutlinedTextField(
                    value = name,
                    onValueChange = { loginViewModel.setNombre(it) },
                    placeholder = { Text("Nombre *") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = surname,
                    onValueChange = { loginViewModel.setApellido(it) },
                    placeholder = { Text("Apellido *") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = email,
                    onValueChange = { loginViewModel.setEmail(it) },
                    placeholder = { Text("Email *") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = password,
                    onValueChange = { loginViewModel.setRegPassword(it) },
                    placeholder = { Text("Contraseña *") },
                    modifier = Modifier.fillMaxWidth(),
                    visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { passwordVisible = !passwordVisible}) {
                            Icon(
                                imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                                contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña"
                            )
                        }
                    }
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = especialidad,
                    onValueChange = { loginViewModel.setRegistroEspecialidad(it) },
                    placeholder = { Text("Especialidad *") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = experiencia?.toString() ?: "",
                    onValueChange = { loginViewModel.setRegistroExperiencia(it.toIntOrNull()) },
                    placeholder = { Text("Experiencia (años)") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = descripcion ?: "",
                    onValueChange = { loginViewModel.setRegistroDescripcion(it) },
                    placeholder = { Text("Descripción") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(12.dp))

                OutlinedTextField(
                    value = licencia ?: "",
                    onValueChange = { loginViewModel.setRegistroLicencia(it) },
                    placeholder = { Text("Licencia") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(20.dp))

                Button(
                    onClick = {
                        when {
                            name.isBlank() -> validationMessage = "Ingrese nombre"
                            surname.isBlank() -> validationMessage = "Ingrese apellido"
                            email.isBlank() -> validationMessage = "Ingrese email"
                            password.isBlank() -> validationMessage = "Ingrese contraseña"
                            especialidad.isBlank() -> validationMessage = "Ingrese especialidad"
                            else -> loginViewModel.registrarPsicologo()
                        }
                    },
                    modifier = Modifier.fillMaxWidth().height(50.dp),
                    enabled = !isRegistering
                ) {
                    if (isRegistering) CircularProgressIndicator(modifier = Modifier.size(20.dp))
                    else Text("Registrar Psicólogo")
                }
            }
        }
    }