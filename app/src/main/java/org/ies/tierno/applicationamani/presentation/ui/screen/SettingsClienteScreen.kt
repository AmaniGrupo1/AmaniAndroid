package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

/**
 * Pantalla de ajustes del perfil del cliente (paciente).
 *
 * Permite visualizar y editar los datos personales del usuario: nombre,
 * apellidos, género, dirección, teléfono y código postal. También ofrece
 * botones para subir documentos (consentimiento informado y protección
 * de datos), guardar cambios y eliminar la cuenta.
 *
 * @param navController Controlador de navegación.
 * @param viewModel ViewModel que gestiona el estado del formulario de perfil.
 */
@Composable
fun SettingsClienteScreen(navController: NavController, viewModel: SettingsClienteViewModel = viewModel()) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current
    val consentimientoLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let {
            // Aquí iria el codigo para guardarlo en la DB
        }
    }
    val proteccionDatosLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let {
            // Aquí iria el codigo para guardarlo en la DB
        }
    }

    LaunchedEffect(Unit) {
        viewModel.cargarUsuario()
    }

    Scaffold(
        containerColor = amaniColors.screenBackground
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(16.dp)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Box(
                modifier = Modifier
                    .size(100.dp)
                    .align(Alignment.CenterHorizontally),
                contentAlignment = Alignment.Center
            ) {
                Text("Foto cliente", style = typography.bodyMedium, color = colors.onSurfaceVariant)
            }

            Text("General", style = typography.titleLarge, color = colors.onSurface)

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(containerColor = colors.surface),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        TextFieldCustom(
                            "Nombre",
                            viewModel.nombre,
                            { viewModel.nombre = it },
                            Modifier.weight(1f)
                        )

                        TextFieldCustom(
                            "Apellidos",
                            viewModel.apellidos,
                            { viewModel.apellidos = it },
                            Modifier.weight(1f)
                        )
                    }

                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        TextFieldCustom(
                            "Género",
                            viewModel.genero,
                            { viewModel.genero = it },
                            Modifier.weight(1f)
                        )

                        TextFieldCustom(
                            "Dirección",
                            viewModel.direccion,
                            { viewModel.direccion = it },
                            Modifier.weight(1f)
                        )
                    }

                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        TextFieldCustom(
                            "Teléfono",
                            viewModel.telefono,
                            { viewModel.telefono = it },
                            Modifier.weight(1f)
                        )

                        TextFieldCustom(
                            "Código postal",
                            viewModel.codigoPostal,
                            { viewModel.codigoPostal = it },
                            Modifier.weight(1f)
                        )
                    }
                }
            }

            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                Button(
                    onClick = {
                        consentimientoLauncher.launch("application/pdf")
                    },
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary,
                        contentColor = colors.onPrimary
                    )
                ) {
                    Text("Consentimiento informado")
                }
                Button(
                    onClick = {
                        proteccionDatosLauncher.launch("application/pdf")
                    },
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary,
                        contentColor = colors.onPrimary
                    )
                ) {
                    Text("Protección de datos")
                }
            }

            Button(
                onClick = { viewModel.guardarUsuario() },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.primary,
                    contentColor = colors.onPrimary
                )
            ) {
                Text("Guardar cambios")
            }

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(containerColor = colors.surface),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        "¿Necesitas ayuda?",
                        style = typography.titleMedium,
                        color = colors.onSurface
                    )
                    Text(
                        "Reporta un bug o envía una sugerencia al equipo de soporte.",
                        style = typography.bodyMedium,
                        color = colors.onSurfaceVariant
                    )
                    Button(
                        onClick = { navController.navigate(Screens.nuevoTicket.route) },
                        modifier = Modifier.fillMaxWidth(),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = colors.secondaryContainer,
                            contentColor = colors.onSecondaryContainer
                        )
                    ) {
                        Text("Abrir ticket de soporte")
                    }
                }
            }

            TextButton(
                onClick = { viewModel.borrarCuenta() }
            ) {
                Text("Eliminar cuenta", color = colors.error)
            }

        }
    }

}

/**
 * Campo de texto personalizado con etiqueta superior.
 *
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor actual del campo.
 * @param onValueChange Callback invocado al cambiar el texto.
 * @param color Color de fondo del campo de texto.
 * @param modifier Modificador de diseño.
 */
@Composable
fun TextFieldCustom(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier) {
        val colors = MaterialTheme.colorScheme
        Text(label, style = MaterialTheme.typography.bodyMedium, color = colors.onSurface)

        Spacer(modifier = Modifier.height(4.dp))

        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            shape = RoundedCornerShape(12.dp),
            colors = OutlinedTextFieldDefaults.colors(
                focusedBorderColor = colors.primary,
                unfocusedBorderColor = colors.outline,
                focusedContainerColor = colors.surfaceVariant,
                unfocusedContainerColor = colors.surfaceVariant
            )
        )
    }
}
