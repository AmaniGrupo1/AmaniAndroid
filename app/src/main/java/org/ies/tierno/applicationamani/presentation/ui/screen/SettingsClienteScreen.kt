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
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import android.content.Context
import androidx.compose.ui.platform.LocalContext
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.res.stringResource
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.koin.androidx.compose.koinViewModel
// Añadir imports faltantes
import androidx.compose.foundation.clickable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.graphics.Color
import kotlinx.coroutines.launch

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
fun SettingsClienteScreen(
    navController: NavController,
    viewModel: SettingsClienteViewModel = koinViewModel(),
    idiomaViewModel: IdiomaViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current
    val isDark = isDarkTheme()

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

    // Obtener el tema actual del ViewModel
    val currentTema by idiomaViewModel.tema.collectAsState()

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
                colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
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
                            Modifier.weight(1f),
                            isDark = isDark
                        )

                        TextFieldCustom(
                            "Apellidos",
                            viewModel.apellidos,
                            { viewModel.apellidos = it },
                            Modifier.weight(1f),
                            isDark = isDark
                        )
                    }

                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        TextFieldCustom(
                            "Género",
                            viewModel.genero,
                            { viewModel.genero = it },
                            Modifier.weight(1f),
                            isDark = isDark
                        )

                        TextFieldCustom(
                            "Dirección",
                            viewModel.direccion,
                            { viewModel.direccion = it },
                            Modifier.weight(1f),
                            isDark = isDark
                        )
                    }

                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        TextFieldCustom(
                            "Teléfono",
                            viewModel.telefono,
                            { viewModel.telefono = it },
                            Modifier.weight(1f),
                            isDark = isDark
                        )

                        TextFieldCustom(
                            "Código postal",
                            viewModel.codigoPostal,
                            { viewModel.codigoPostal = it },
                            Modifier.weight(1f),
                            isDark = isDark
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

            TextButton(
                onClick = { viewModel.borrarCuenta() }
            ) {
                Text("Eliminar cuenta", color = colors.error)
            }

            // Nuevo bloque: preferencia de tema (Claro/Oscuro)
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        Text("Apariencia", style = typography.titleMedium, color = colors.onSurface)
                    }

                    Spacer(modifier = Modifier.height(8.dp))

                    // Fila de selección de tema (ahora con booleano)
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = stringResource(id = R.string.tema_oscuro_claro),
                            style = typography.bodyLarge,
                            color = colors.onSurface
                        )
                        ThemeSelector(
                            currentTema = currentTema,
                            idiomaViewModel = idiomaViewModel
                        )
                    }
                }
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
 * @param modifier Modificador de diseño.
 * @param isDark Indica si el tema es oscuro.
 */
@Composable
fun TextFieldCustom(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    modifier: Modifier = Modifier,
    isDark: Boolean = false
) {
    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current

    val textFieldContainer = if (isDark) Color.DarkGray else amaniColors.textFieldContainer
    val textColor = if (isDark) Color.White else amaniColors.cardContent

    Column(modifier = modifier) {
        Text(label, style = MaterialTheme.typography.bodyMedium, color = colors.onSurface)

        Spacer(modifier = Modifier.height(4.dp))

        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            shape = RoundedCornerShape(12.dp),
            colors = OutlinedTextFieldDefaults.colors(
                focusedTextColor = textColor,
                unfocusedTextColor = textColor,
                focusedBorderColor = colors.primary,
                unfocusedBorderColor = colors.outline,
                focusedContainerColor = textFieldContainer,
                unfocusedContainerColor = textFieldContainer,
                focusedLabelColor = colors.primary,
                unfocusedLabelColor = colors.onSurfaceVariant
            )
        )
    }
}

/**
 * Selector de tema (Claro/Oscuro) que usa el IdiomaViewModel.
 */
@Composable
fun ThemeSelector(
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel
) {
    var expanded by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    val amaniColors = LocalAmaniColors.current
    val isDark = isDarkTheme()
    val dropdownContainerColor = if (isDark) Color.DarkGray else Color.White

    Row(modifier = Modifier.fillMaxWidth()) {
        Row(
            modifier = Modifier
                .weight(1f)
                .clickable { expanded = true }
                .padding(start = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = if (currentTema) "Oscuro" else "Claro",
                color = amaniColors.cardContent
            )

            Icon(
                Icons.Default.ArrowDropDown,
                contentDescription = null,
                modifier = Modifier.padding(start = 6.dp),
                tint = amaniColors.cardContent
            )
        }

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false },
            containerColor = dropdownContainerColor
        ) {
            DropdownMenuItem(
                text = { Text("Claro", color = amaniColors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        idiomaViewModel.cambiarTema(false) // false = claro
                    }
                }
            )

            DropdownMenuItem(
                text = { Text("Oscuro", color = amaniColors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        idiomaViewModel.cambiarTema(true) // true = oscuro
                    }
                }
            )
        }
    }
}

