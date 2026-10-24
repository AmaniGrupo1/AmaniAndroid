package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de registro de un nuevo administrador.
 */
@Composable
fun AgregarAdministrador(
    navController: NavController,
    loginViewModel: LoginViewModel,
) {
    val name by loginViewModel.nombre.collectAsStateWithLifecycle()
    val surname by loginViewModel.apellido.collectAsStateWithLifecycle()
    val email by loginViewModel.email.collectAsStateWithLifecycle()
    val password by loginViewModel.regPassword.collectAsStateWithLifecycle()
    val emailError by loginViewModel.emailError.collectAsStateWithLifecycle()

    val isPasswordValid = loginViewModel.isValidPassword(password)
    val isFormValid =
        name.isNotBlank() &&
            surname.isNotBlank() &&
            email.isNotBlank() &&
            emailError == null &&
            isPasswordValid

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            MenuAdministrador(stringResource(R.string.admin_agregar_administrador_titulo), navController)
        },
    ) { padding ->
        AgregarAdministradorContent(
            name = name,
            surname = surname,
            email = email,
            password = password,
            emailError = emailError,
            isPasswordValid = isPasswordValid,
            passwordErrorMessage = LoginViewModel.getPasswordErrorMessage(),
            isFormValid = isFormValid,
            onNameChange = loginViewModel::setNombre,
            onSurnameChange = loginViewModel::setApellido,
            onEmailChange = loginViewModel::setEmail,
            onPasswordChange = loginViewModel::setRegPassword,
            onRegisterClick = loginViewModel::registrarAdmin,
            onCancelClick = { navController.popBackStack() },
            modifier = Modifier.padding(padding),
        )
    }
}

@Composable
fun AgregarAdministradorContent(
    name: String,
    surname: String,
    email: String,
    password: String,
    emailError: String?,
    isPasswordValid: Boolean,
    passwordErrorMessage: String,
    isFormValid: Boolean,
    onNameChange: (String) -> Unit,
    onSurnameChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onRegisterClick: () -> Unit,
    onCancelClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val extraColors = AmaniTheme.colors

    var passwordVisible by remember { mutableStateOf(false) }
    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }

    Column(
        modifier =
            modifier
                .fillMaxSize()
                .padding(Spacing.l),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Spacer(modifier = Modifier.height(Spacing.xl))

        // Nombre
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = name,
            onValueChange = onNameChange,
            placeholder = { Text(stringResource(R.string.auto_nombre)) },
            singleLine = true,
            shape = MaterialTheme.shapes.medium,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = colorScheme.surfaceContainerLow,
                    unfocusedContainerColor = colorScheme.surfaceContainerLow,
                    focusedBorderColor = colorScheme.primary,
                    unfocusedBorderColor = colorScheme.outlineVariant,
                    cursorColor = colorScheme.primary,
                ),
        )

        Spacer(modifier = Modifier.height(Spacing.m))

        // Apellido
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = surname,
            onValueChange = onSurnameChange,
            placeholder = { Text(stringResource(R.string.auto_apellido)) },
            singleLine = true,
            shape = MaterialTheme.shapes.medium,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = colorScheme.surfaceContainerLow,
                    unfocusedContainerColor = colorScheme.surfaceContainerLow,
                    focusedBorderColor = colorScheme.primary,
                    unfocusedBorderColor = colorScheme.outlineVariant,
                    cursorColor = colorScheme.primary,
                ),
        )

        Spacer(modifier = Modifier.height(Spacing.m))

        // Email con validación
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = email,
            onValueChange = {
                onEmailChange(it)
                emailTouched = true
            },
            placeholder = { Text(stringResource(R.string.auto_email)) },
            singleLine = true,
            shape = MaterialTheme.shapes.medium,
            isError = emailTouched && email.isNotBlank() && emailError != null,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = colorScheme.surfaceContainerLow,
                    unfocusedContainerColor = colorScheme.surfaceContainerLow,
                    focusedBorderColor = if (emailTouched && emailError != null) colorScheme.error else colorScheme.primary,
                    unfocusedBorderColor = colorScheme.outlineVariant,
                    cursorColor = colorScheme.primary,
                ),
            supportingText = {
                when {
                    !emailTouched && email.isBlank() -> {
                        Text(
                            text = stringResource(R.string.auto__introduce_el_correo),
                            style = typography.labelSmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                    emailTouched && email.isNotBlank() && emailError != null -> {
                        Text(
                            text = emailError,
                            style = typography.labelSmall,
                            color = colorScheme.error,
                        )
                    }
                    emailTouched && email.isNotBlank() && emailError == null -> {
                        Text(
                            text = stringResource(R.string.auto__correo_valido),
                            style = typography.labelSmall,
                            color = extraColors.success,
                        )
                    }
                }
            },
        )

        Spacer(modifier = Modifier.height(Spacing.m))

        // Password con validación mejorada
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = password,
            onValueChange = {
                onPasswordChange(it)
                passwordTouched = true
            },
            placeholder = { Text(stringResource(R.string.auto_contrasena)) },
            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
            trailingIcon = {
                IconButton(onClick = { passwordVisible = !passwordVisible }) {
                    Icon(
                        imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                        contentDescription =
                            if (passwordVisible) {
                                stringResource(R.string.ocultar_contrasena)
                            } else {
                                stringResource(R.string.mostrar_contrasena)
                            },
                    )
                }
            },
            singleLine = true,
            shape = MaterialTheme.shapes.medium,
            isError = passwordTouched && password.isNotBlank() && !isPasswordValid,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedContainerColor = colorScheme.surfaceContainerLow,
                    unfocusedContainerColor = colorScheme.surfaceContainerLow,
                    focusedBorderColor =
                        if (passwordTouched && password.isNotBlank() && !isPasswordValid) {
                            colorScheme.error
                        } else {
                            colorScheme.primary
                        },
                    unfocusedBorderColor = colorScheme.outlineVariant,
                    cursorColor = colorScheme.primary,
                ),
            supportingText = {
                when {
                    !passwordTouched && password.isBlank() -> {
                        Text(
                            text = stringResource(R.string.auto__introduce_una_contrasena),
                            style = typography.labelSmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                    passwordTouched && password.isNotBlank() && !isPasswordValid -> {
                        Text(
                            text = passwordErrorMessage,
                            style = typography.labelSmall,
                            color = colorScheme.error,
                        )
                    }
                    passwordTouched && password.isNotBlank() && isPasswordValid -> {
                        Text(
                            text = stringResource(R.string.auto__contrasena_valida),
                            style = typography.labelSmall,
                            color = extraColors.success,
                        )
                    }
                }
            },
        )

        Spacer(modifier = Modifier.height(Spacing.xl))

        // Botón Registrar
        Button(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(Dimensions.buttonHeight),
            shape = MaterialTheme.shapes.large,
            onClick = onRegisterClick,
            enabled = isFormValid,
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
        ) {
            Text(
                stringResource(R.string.auto_registrarse_administrador),
                style = typography.labelLarge,
                fontWeight = FontWeight.Bold,
            )
        }

        Spacer(modifier = Modifier.height(Spacing.m))

        // Botón Cancelar
        OutlinedButton(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(Dimensions.buttonHeight),
            shape = MaterialTheme.shapes.large,
            border = BorderStroke(Dimensions.borderThin, colorScheme.outline),
            onClick = onCancelClick,
        ) {
            Text(
                stringResource(R.string.auto_cancelar),
                style = typography.labelLarge,
                fontWeight = FontWeight.Bold,
            )
        }
    }
}

@Preview(name = "AgregarAdministrador Light", showBackground = true)
@Preview(
    name = "AgregarAdministrador Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "AgregarAdministrador Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun AgregarAdministradorPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            AgregarAdministradorContent(
                name = "Laura",
                surname = "Gómez",
                email = "laura.gomez@amani.es",
                password = "Password123!",
                emailError = null,
                isPasswordValid = true,
                passwordErrorMessage = "",
                isFormValid = true,
                onNameChange = {},
                onSurnameChange = {},
                onEmailChange = {},
                onPasswordChange = {},
                onRegisterClick = {},
                onCancelClick = {},
            )
        }
    }
}
