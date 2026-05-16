package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.BorderStroke
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
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.Roboto
import org.ies.tierno.applicationamani.ui.theme.rememberAdminThemeTokens

// Colores para validaciones
private val SuccessColor = Color(0xFF81C784)
private val ErrorColor = Color(0xFFE57373)

/**
 * Pantalla de registro de un nuevo administrador.
 */
@Composable
fun AgregarAdministrador(
    navController: NavController,
    loginViewModel: LoginViewModel
) {
    val tokens = rememberAdminThemeTokens()
    val amani = LocalAmaniColors.current
    val roboto = Roboto

    // --- Recoger los estados del ViewModel ---
    val name by loginViewModel.nombre.collectAsState()
    val surname by loginViewModel.apellido.collectAsState()
    val email by loginViewModel.email.collectAsState()
    val password by loginViewModel.regPassword.collectAsState()
    val passwordError by loginViewModel.passwordError.collectAsState()
    val emailError by loginViewModel.emailError.collectAsState()

    // Estados para control de interacción
    var passwordVisible by remember { mutableStateOf(false) }
    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }

    // Validar si el formulario es válido
    val isFormValid = name.isNotBlank() &&
            surname.isNotBlank() &&
            email.isNotBlank() &&
            emailError == null &&
            loginViewModel.isValidPassword(password)

    Scaffold(
        containerColor = tokens.screenBackground,
        topBar = {
            MenuAdministrador("Agregar administrador", navController)
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Spacer(modifier = Modifier.height(40.dp))

            // Nombre
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = name,
                onValueChange = { loginViewModel.setNombre(it) },
                placeholder = { Text("Nombre", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = tokens.cardBackground,
                    unfocusedContainerColor = tokens.cardBackground,
                    focusedBorderColor = tokens.primary,
                    unfocusedBorderColor = tokens.cardContent.copy(alpha = 0.3f),
                    cursorColor = tokens.primary,
                    focusedTextColor = tokens.cardContent,
                    unfocusedTextColor = tokens.cardContent,
                    focusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f),
                    unfocusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f)
                )
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Apellido
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = surname,
                onValueChange = { loginViewModel.setApellido(it) },
                placeholder = { Text("Apellido", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = tokens.cardBackground,
                    unfocusedContainerColor = tokens.cardBackground,
                    focusedBorderColor = tokens.primary,
                    unfocusedBorderColor = tokens.cardContent.copy(alpha = 0.3f),
                    cursorColor = tokens.primary,
                    focusedTextColor = tokens.cardContent,
                    unfocusedTextColor = tokens.cardContent,
                    focusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f),
                    unfocusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f)
                )
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Email con validación
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = email,
                onValueChange = {
                    loginViewModel.setEmail(it)
                    emailTouched = true
                },
                placeholder = { Text("Email", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                isError = emailTouched && email.isNotBlank() && emailError != null,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = tokens.cardBackground,
                    unfocusedContainerColor = tokens.cardBackground,
                    focusedBorderColor = if (emailTouched && emailError != null) ErrorColor else tokens.primary,
                    unfocusedBorderColor = tokens.cardContent.copy(alpha = 0.3f),
                    cursorColor = tokens.primary,
                    focusedTextColor = tokens.cardContent,
                    unfocusedTextColor = tokens.cardContent,
                    focusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f),
                    unfocusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f)
                ),
                supportingText = {
                    when {
                        !emailTouched && email.isBlank() -> {
                            Text(
                                text = "📧 Introduce el correo electrónico",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = tokens.cardContent.copy(alpha = 0.6f)
                            )
                        }
                        emailTouched && email.isNotBlank() && emailError != null -> {
                            Text(
                                text = "❌ $emailError",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = ErrorColor
                            )
                        }
                        emailTouched && email.isNotBlank() && emailError == null -> {
                            Text(
                                text = "✅ Correo válido",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = SuccessColor
                            )
                        }
                    }
                }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Password con validación mejorada
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = password,
                onValueChange = {
                    loginViewModel.setRegPassword(it)
                    passwordTouched = true
                },
                placeholder = { Text("Contraseña", fontFamily = roboto) },
                visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                trailingIcon = {
                    IconButton(onClick = { passwordVisible = !passwordVisible }) {
                        Icon(
                            imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                            contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña"
                        )
                    }
                },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                isError = passwordTouched && password.isNotBlank() && (!loginViewModel.isValidPassword(password) || password.length < 8),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = tokens.cardBackground,
                    unfocusedContainerColor = tokens.cardBackground,
                    focusedBorderColor = if (passwordTouched && password.isNotBlank() && (!loginViewModel.isValidPassword(password) || password.length < 8)) ErrorColor else tokens.primary,
                    unfocusedBorderColor = tokens.cardContent.copy(alpha = 0.3f),
                    cursorColor = tokens.primary,
                    focusedTextColor = tokens.cardContent,
                    unfocusedTextColor = tokens.cardContent,
                    focusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f),
                    unfocusedPlaceholderColor = tokens.cardContent.copy(alpha = 0.5f)
                ),
                supportingText = {
                    when {
                        !passwordTouched && password.isBlank() -> {
                            Text(
                                text = "🔒 Introduce una contraseña",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = tokens.cardContent.copy(alpha = 0.6f)
                            )
                        }
                        passwordTouched && password.isNotBlank() && password.length < 8 -> {
                            Text(
                                text = "⚠️ La contraseña debe tener al menos 8 caracteres",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = ErrorColor
                            )
                        }
                        passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password) -> {
                            Text(
                                text = "❌ La contraseña debe tener al menos 8 caracteres y contener letras y números",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = ErrorColor
                            )
                        }
                        passwordTouched && password.isNotBlank() && loginViewModel.isValidPassword(password) -> {
                            Text(
                                text = "✅ Contraseña válida",
                                fontSize = 11.sp,
                                fontFamily = roboto,
                                color = SuccessColor
                            )
                        }
                    }
                }
            )

            Spacer(modifier = Modifier.height(30.dp))

            // Botón Registrar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, tokens.cardContent),
                onClick = { loginViewModel.registrarAdmin() },
                enabled = isFormValid,
                colors = ButtonDefaults.buttonColors(
                    containerColor = tokens.primary,
                    contentColor = tokens.onPrimary,
                    disabledContainerColor = tokens.cardContent.copy(alpha = 0.3f),
                    disabledContentColor = tokens.cardContent.copy(alpha = 0.5f)
                )
            ) {
                Text(
                    "Registrarse administrador",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botón Cancelar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, tokens.cardContent),
                onClick = { navController.popBackStack() },
                colors = ButtonDefaults.buttonColors(
                    containerColor = tokens.cardBackground,
                    contentColor = tokens.cardContent
                )
            ) {
                Text(
                    "Cancelar",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }
        }
    }
}