package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de creación de preguntas de test.
 *
 * Permite al administrador escribir el enunciado, tipo y hasta cuatro opciones
 * de respuesta. Al pulsar «Guardar pregunta» se persiste en el backend
 * mediante [CrearPreguntaViewModel].
 *
 * @param navController Controlador de navegación.
 * @param crearPreguntaViewModel ViewModel que gestiona el formulario y la acción de guardado.
 */
@Composable
fun TestScreen(
    navController: NavController,
    crearPreguntaViewModel: CrearPreguntaViewModel = koinViewModel(),
) {
    val request by crearPreguntaViewModel.request.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val guardadoExitoso by crearPreguntaViewModel.guardadoExitoso.collectAsStateWithLifecycle()
    val msgGuardado = stringResource(R.string.admin_pregunta_guardada)

    if (guardadoExitoso) {
        LaunchedEffect(guardadoExitoso) {
            snackbarHostState.showSnackbar(msgGuardado)
            navController.popBackStack()
            crearPreguntaViewModel.limpiarEstadoGuardado()
        }
    }

    TestScreenContent(
        texto = request.texto ?: "",
        tipo = request.tipo ?: "",
        opcion1 = request.opciones?.getOrNull(0) ?: "",
        opcion2 = request.opciones?.getOrNull(1) ?: "",
        opcion3 = request.opciones?.getOrNull(2) ?: "",
        opcion4 = request.opciones?.getOrNull(3) ?: "",
        snackbarHostState = snackbarHostState,
        onTextoChange = crearPreguntaViewModel::setTexto,
        onTipoChange = crearPreguntaViewModel::setTipo,
        onOpcion1Change = crearPreguntaViewModel::setOpcion1,
        onOpcion2Change = crearPreguntaViewModel::setOpcion2,
        onOpcion3Change = crearPreguntaViewModel::setOpcion3,
        onOpcion4Change = crearPreguntaViewModel::setOpcion4,
        onGuardarClick = crearPreguntaViewModel::guardarPregunta,
    )
}

@Composable
fun TestScreenContent(
    texto: String,
    tipo: String,
    opcion1: String,
    opcion2: String,
    opcion3: String,
    opcion4: String,
    snackbarHostState: SnackbarHostState,
    onTextoChange: (String) -> Unit,
    onTipoChange: (String) -> Unit,
    onOpcion1Change: (String) -> Unit,
    onOpcion2Change: (String) -> Unit,
    onOpcion3Change: (String) -> Unit,
    onOpcion4Change: (String) -> Unit,
    onGuardarClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { innerPadding ->
        Column(
            modifier =
                Modifier
                    .padding(innerPadding)
                    .fillMaxSize()
                    .padding(horizontal = Spacing.l),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            Text(
                text = stringResource(R.string.auto_crear_pregunta),
                style = typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                color = colorScheme.onBackground,
            )

            Spacer(modifier = Modifier.height(Spacing.m))

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.m),
                    verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                ) {
                    CampoPregunta(
                        value = texto,
                        placeholder = stringResource(R.string.admin_test_pregunta_placeholder),
                        onChange = onTextoChange,
                    )

                    CampoPregunta(
                        value = tipo,
                        placeholder = stringResource(R.string.admin_test_tipo_placeholder),
                        onChange = onTipoChange,
                    )

                    CampoPregunta(
                        value = opcion1,
                        placeholder = stringResource(R.string.admin_test_opcion_formato, 1),
                        onChange = onOpcion1Change,
                    )

                    CampoPregunta(
                        value = opcion2,
                        placeholder = stringResource(R.string.admin_test_opcion_formato, 2),
                        onChange = onOpcion2Change,
                    )

                    CampoPregunta(
                        value = opcion3,
                        placeholder = stringResource(R.string.admin_test_opcion_formato, 3),
                        onChange = onOpcion3Change,
                    )

                    CampoPregunta(
                        value = opcion4,
                        placeholder = stringResource(R.string.admin_test_opcion_formato, 4),
                        onChange = onOpcion4Change,
                    )

                    Spacer(modifier = Modifier.height(Spacing.xs))

                    Button(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .height(Dimensions.buttonHeight),
                        shape = MaterialTheme.shapes.medium,
                        onClick = onGuardarClick,
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.primary,
                                contentColor = colorScheme.onPrimary,
                            ),
                    ) {
                        Text(
                            text = stringResource(R.string.auto_guardar_pregunta),
                            style = typography.labelLarge,
                        )
                    }
                }
            }
        }
    }
}

/**
 * Campo de texto reutilizable para el formulario de creación de preguntas.
 *
 * @param value Valor actual del campo.
 * @param placeholder Texto indicativo cuando el campo está vacío.
 * @param onChange Callback invocado al cambiar el texto.
 */
@Composable
fun CampoPregunta(
    value: String,
    placeholder: String,
    onChange: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    OutlinedTextField(
        modifier = modifier.fillMaxWidth(),
        value = value,
        onValueChange = onChange,
        placeholder = {
            Text(
                text = placeholder,
                style = MaterialTheme.typography.bodyMedium,
            )
        },
        singleLine = true,
        shape = MaterialTheme.shapes.medium,
        colors =
            OutlinedTextFieldDefaults.colors(
                focusedContainerColor = colorScheme.surface,
                unfocusedContainerColor = colorScheme.surface,
                focusedBorderColor = colorScheme.primary,
                unfocusedBorderColor = colorScheme.outlineVariant,
                cursorColor = colorScheme.primary,
            ),
    )
}

@Preview(name = "TestScreen Light", showBackground = true)
@Preview(
    name = "TestScreen Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "TestScreen Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun TestScreenPreview() {
    AppTheme {
        TestScreenContent(
            texto = "¿Con qué frecuencia sientes ansiedad?",
            tipo = "Opción múltiple",
            opcion1 = "Nunca",
            opcion2 = "A veces",
            opcion3 = "Frecuentemente",
            opcion4 = "Siempre",
            snackbarHostState = remember { SnackbarHostState() },
            onTextoChange = {},
            onTipoChange = {},
            onOpcion1Change = {},
            onOpcion2Change = {},
            onOpcion3Change = {},
            onOpcion4Change = {},
            onGuardarClick = {},
        )
    }
}
