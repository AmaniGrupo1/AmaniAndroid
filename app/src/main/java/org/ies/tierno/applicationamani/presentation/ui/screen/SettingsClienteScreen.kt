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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.components.BottomBar
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel

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
    val purple = Color(0xFFCCC0E4)
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )
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
        bottomBar = {
            BottomBar(navController)
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(16.dp)
                .verticalScroll(rememberScrollState())
        ) {
            // Imagen perfil (placeholder)
            Box(
                modifier = Modifier
                    .size(100.dp)
                    .align(Alignment.CenterHorizontally),
                contentAlignment = Alignment.Center
            ) {
                Text("Foto cliente")
            }

            Text("General", fontSize = 22.sp, fontFamily = roboto)

            Spacer(modifier = Modifier.height(16.dp))

            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {

                TextFieldCustom(
                    "Nombre",
                    viewModel.nombre,
                    { viewModel.nombre = it },
                    purple,
                    Modifier.weight(1f)
                )

                TextFieldCustom(
                    "Apellidos",
                    viewModel.apellidos,
                    { viewModel.apellidos = it },
                    purple,
                    Modifier.weight(1f)
                )
            }

            Spacer(modifier = Modifier.height(12.dp))

            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {

                TextFieldCustom(
                    "Género",
                    viewModel.genero,
                    { viewModel.genero = it },
                    purple,
                    Modifier.weight(1f)
                )

                TextFieldCustom(
                    "Dirección",
                    viewModel.direccion,
                    { viewModel.direccion = it },
                    purple,
                    Modifier.weight(1f)
                )
            }

            Spacer(modifier = Modifier.height(12.dp))

            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {

                TextFieldCustom(
                    "Teléfono",
                    viewModel.telefono,
                    { viewModel.telefono = it },
                    purple,
                    Modifier.weight(1f)
                )

                TextFieldCustom(
                    "Código postal",
                    viewModel.codigoPostal,
                    { viewModel.codigoPostal = it },
                    purple,
                    Modifier.weight(1f)
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                Button(
                    onClick = {
                        consentimientoLauncher.launch("application/pdf")
                    },
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = purple
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
                        containerColor = purple
                    )
                ) {
                    Text("Protección de datos")
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                onClick = { viewModel.guardarUsuario() },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = purple
                )
            ) {
                Text("Guardar cambios")
            }

            Spacer(modifier = Modifier.height(16.dp))

            TextButton(
                onClick = { viewModel.borrarCuenta() }
            ) {
                Text("Eliminar cuenta")
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
    color: Color,
    modifier: Modifier = Modifier
) {

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    Column(modifier = modifier) {
        Text(label, fontFamily = roboto)

        Spacer(modifier = Modifier.height(4.dp))

        TextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            colors = TextFieldDefaults.colors(
                focusedContainerColor = color,
                unfocusedContainerColor = color
            )
        )
    }
}

/**
 * Vista previa de la pantalla de ajustes del cliente.
 */
@Preview(showBackground = true)
@Composable
fun SettingsClienteScreenPreview() {
    SettingsClienteScreen(rememberNavController())
}