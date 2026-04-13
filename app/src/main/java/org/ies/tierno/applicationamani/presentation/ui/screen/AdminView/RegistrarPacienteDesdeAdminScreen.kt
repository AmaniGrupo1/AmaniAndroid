    package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView


    import androidx.compose.foundation.layout.Arrangement
    import androidx.compose.foundation.layout.Column
    import androidx.compose.foundation.layout.Spacer
    import androidx.compose.foundation.layout.fillMaxSize
    import androidx.compose.foundation.layout.fillMaxWidth
    import androidx.compose.foundation.layout.height
    import androidx.compose.foundation.layout.padding
    import androidx.compose.foundation.shape.RoundedCornerShape
    import androidx.compose.material.icons.Icons
    import androidx.compose.material.icons.filled.Visibility
    import androidx.compose.material.icons.filled.VisibilityOff
    import androidx.compose.material3.Button
    import androidx.compose.material3.ButtonDefaults
    import androidx.compose.material3.Icon
    import androidx.compose.material3.IconButton
    import androidx.compose.material3.OutlinedButton
    import androidx.compose.material3.Scaffold
    import androidx.compose.material3.Text
    import androidx.compose.material3.TextField
    import androidx.compose.material3.TextFieldDefaults
    import androidx.compose.runtime.Composable
    import androidx.compose.runtime.collectAsState
    import androidx.compose.runtime.getValue
    import androidx.compose.runtime.mutableStateOf
    import androidx.compose.runtime.remember
    import androidx.compose.runtime.setValue
    import androidx.compose.ui.Modifier
    import androidx.compose.ui.graphics.Color
    import androidx.compose.ui.text.input.PasswordVisualTransformation
    import androidx.compose.ui.text.input.VisualTransformation
    import androidx.compose.ui.unit.dp
    import androidx.navigation.NavController
    import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
    import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
    import org.ies.tierno.applicationamani.ui.theme.Roboto

    /**
     * Pantalla de registro de un paciente desde el panel de administración.
     *
     * Muestra un formulario con campos de nombre, apellido, email, teléfono,
     * género, fecha de nacimiento y contraseña. Al pulsar «Registrar» se
     * invoca [LoginViewModel.registrarPacienteAdmin] y se vuelve atrás.
     *
     * @param navController Controlador de navegación.
     * @param loginViewModel ViewModel compartido que gestiona los campos y la acción de registro.
     */
    @Composable
    fun RegistrarPacienteDesdeAdminScreen(
        navController: NavController,
        loginViewModel: LoginViewModel
    ) {
        val backgroundColor = Color(0xFFCCC0E4)
        val primaryColor = Color(0xFF6C63FF)

        val roboto = Roboto

        // Campos del ViewModel
        val nombre by loginViewModel.nombre.collectAsState()
        val apellido by loginViewModel.apellido.collectAsState()
        val email by loginViewModel.email.collectAsState()
        val password by loginViewModel.regPassword.collectAsState()

        // Campos locales
        var telefono by remember { mutableStateOf("") }
        var genero by remember { mutableStateOf("") }
        var fechaNacimiento by remember { mutableStateOf("") }

        var passwordVisible by remember { mutableStateOf(false) }

        Scaffold(
            containerColor = backgroundColor,
            topBar = {
                MenuAdministrador("Registrar Psicólogo", navController)
            }
        ) { padding ->

            Column(
                modifier = Modifier
                    .padding(padding)
                    .fillMaxSize()
                    .padding(20.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {

                CustomTextFields(nombre, "Nombre") { loginViewModel.setNombre(it) }
                CustomTextFields(apellido, "Apellido") { loginViewModel.setApellido(it) }
                CustomTextFields(email, "Email") { loginViewModel.setEmail(it) }
                CustomTextFields(telefono, "Teléfono") { telefono = it }
                CustomTextFields(genero, "Género (M/F)") { genero = it }
                CustomTextFields(fechaNacimiento, "Fecha nacimiento (YYYY-MM-DD)") { fechaNacimiento = it }
                // Password
                TextField(
                    value = password,
                    onValueChange = { loginViewModel.setRegPassword(it) },
                    placeholder = { Text("Contraseña", fontFamily = roboto) },
                    visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { passwordVisible = !passwordVisible }) {
                            Icon(
                                imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                                contentDescription = "Ver contraseña"
                            )
                        }
                    },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = TextFieldDefaults.colors(
                        focusedContainerColor = Color.White,
                        unfocusedContainerColor = Color.White
                    )
                )

                Spacer(modifier = Modifier.height(20.dp))

                // Botón Registrar
                Button(
                    onClick = {
                        loginViewModel.setTelefono(telefono)
                        loginViewModel.setGenero(genero)
                        loginViewModel.setFechaNacimiento(fechaNacimiento)
                       // loginViewModel.registrarPacienteAdmin()
                        navController.popBackStack()
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(55.dp),
                    shape = RoundedCornerShape(16.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = primaryColor)
                ) {
                    Text("Registrar", color = Color.White, fontFamily = roboto)
                }

                // Botón Cancelar
                OutlinedButton(
                    onClick = { navController.popBackStack() },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(55.dp),
                    shape = RoundedCornerShape(16.dp)
                ) {
                    Text("Cancelar", fontFamily = roboto)
                }
            }
        }
    }

    /**
     * Campo de texto personalizado reutilizable.
     *
     * Muestra un [TextField] con esquinas redondeadas y fondo blanco.
     *
     * @param value Valor actual del campo.
     * @param placeholder Texto indicativo cuando el campo está vacío.
     * @param onChange Callback invocado al cambiar el texto.
     */
    @Composable
    fun CustomTextFields(value: String, placeholder: String, onChange: (String) -> Unit) {
        TextField(
            value = value,
            onValueChange = onChange,
            placeholder = { Text(placeholder) },
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            colors = TextFieldDefaults.colors(
                focusedContainerColor = Color.White,
                unfocusedContainerColor = Color.White
            )
        )
    }