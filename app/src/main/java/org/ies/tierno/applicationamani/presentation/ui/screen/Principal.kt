package org.ies.tierno.applicationamani.presentation.ui.screen

import android.content.Context
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.SelfImprovement
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal

// Colores corporativos AMANI Psicología
// Función para obtener las frases según el idioma actual
/**
 * Obtiene la lista de frases motivacionales desde los recursos de la aplicación.
 *
 * Las frases se localizan según el idioma configurado en el sistema y se
 * muestran de forma rotativa en la pantalla principal.
 *
 * @param context Contexto de la aplicación para acceder a los recursos.
 * @return Lista de frases motivacionales en el idioma actual.
 */
fun getFrasesMotivacionales(context: Context): List<String> {
    val resources = context.resources
    return listOf(
        resources.getString(R.string.frase_1),
        resources.getString(R.string.frase_2),
        resources.getString(R.string.frase_3),
        resources.getString(R.string.frase_4),
        resources.getString(R.string.frase_5),
        resources.getString(R.string.frase_6),
        resources.getString(R.string.frase_7),
        resources.getString(R.string.frase_8),
    )
}

// Función para obtener los consejos según el idioma actual
/**
 * Obtiene la lista de consejos de bienestar desde los recursos de la aplicación.
 *
 * Los consejos se localizan según el idioma configurado en el sistema y
 * se muestran aleatoriamente al usuario cuando solicita un consejo.
 *
 * @param context Contexto de la aplicación para acceder a los recursos.
 * @return Lista de consejos en el idioma actual.
 */
fun getConsejosLista(context: Context): List<String> {
    val resources = context.resources
    return listOf(
        resources.getString(R.string.consejo_1),
        resources.getString(R.string.consejo_2),
        resources.getString(R.string.consejo_3),
        resources.getString(R.string.consejo_4),
        resources.getString(R.string.consejo_5),
        resources.getString(R.string.consejo_6),
        resources.getString(R.string.consejo_7),
        resources.getString(R.string.consejo_8),
    )
}

/**
 * Pantalla principal de bienvenida de la aplicación Amani.
 *
 * Muestra frases motivacionales que rotan automáticamente cada pocos
 * segundos y un botón para recibir un consejo de bienestar aleatorio.
 * Incluye la barra superior [MenuPrincipal] con acceso a inicio de sesión
 * y registro. Las frases y consejos se actualizan dinámicamente cuando
 * el usuario cambia el idioma desde los ajustes.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param userSessionDataStore Almacén de sesión para consultar el idioma actual.
 */
@Composable
fun Principal(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
) {
    val typography = MaterialTheme.typography
    val context = LocalContext.current

    // ✅ Obtener el idioma desde la sesión (igual que en SettingsAdminScreen)
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val currentLanguage = session?.idioma ?: "es"

    // ✅ Forzar recomposición cuando cambia el idioma
    val frasesMotivacionales =
        remember(currentLanguage) {
            getFrasesMotivacionales(context)
        }
    val consejosLista =
        remember(currentLanguage) {
            getConsejosLista(context)
        }

    var mostrarConsejo by remember { mutableStateOf(false) }
    var consejoActual by remember { mutableStateOf("") }
    var fraseActual by remember { mutableStateOf(frasesMotivacionales[0]) }

    // ✅ Actualizar cuando cambia el idioma
    LaunchedEffect(currentLanguage) {
        val nuevasFrases = getFrasesMotivacionales(context)
        fraseActual = nuevasFrases[0]
        if (mostrarConsejo) {
            consejoActual = getConsejosLista(context).random()
        }
    }

    fun cambiarFrase() {
        val otrasFrases = frasesMotivacionales.filter { it != fraseActual }
        fraseActual =
            if (otrasFrases.isNotEmpty()) {
                otrasFrases.random()
            } else {
                frasesMotivacionales.random()
            }
    }

    LaunchedEffect(Unit) {
        while (true) {
            delay(15000)
            cambiarFrase()
        }
    }

    Scaffold(
        topBar = {
            MenuPrincipal(navController)
        },
        containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
    ) { innerPadding ->
        Column(
            modifier =
                Modifier
                    .padding(innerPadding)
                    .fillMaxSize()
                    .background(
                        brush =
                            Brush.verticalGradient(
                                colors =
                                    listOf(
                                        MaterialTheme.colorScheme.surfaceContainerLow,
                                        MaterialTheme.colorScheme.surface,
                                    ),
                            ),
                    ).padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            Text(
                text = stringResource(R.string.amani),
                style =
                    MaterialTheme.typography.displayLarge.copy(
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 4.sp,
                    ),
                color = MaterialTheme.colorScheme.primary,
                modifier = Modifier.padding(bottom = 16.dp),
            )

            Text(
                text = stringResource(R.string.psicologia_bienestar),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.secondary, // M3: Secondary for subtitles
                modifier = Modifier.padding(bottom = 32.dp),
            )

            Card(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(vertical = 16.dp),
                shape = MaterialTheme.shapes.medium, // M3: Medium for cards
                colors =
                    CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                    ),
                elevation = CardDefaults.cardElevation(), // M3: Default elevation
            ) {
                Column(
                    modifier = Modifier.padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Icon(
                        imageVector = Icons.Default.SelfImprovement,
                        contentDescription = "Cambiar frase",
                        tint = MaterialTheme.colorScheme.primary,
                        modifier =
                            Modifier
                                .size(48.dp) // Large icon is fine for illustration
                                .clickable { cambiarFrase() },
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = fraseActual,
                        style = MaterialTheme.typography.bodyLarge,
                        textAlign = TextAlign.Center,
                        color = MaterialTheme.colorScheme.onSurface,
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = "🔄",
                            style = MaterialTheme.typography.bodyMedium,
                            modifier = Modifier.clickable { cambiarFrase() },
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = stringResource(R.string.tap_nueva_frase),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "⏱️",
                            style = MaterialTheme.typography.bodyMedium,
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                modifier = Modifier.fillMaxWidth(),
                shape = CircleShape, // M3: Pill shape
                onClick = {
                    consejoActual = consejosLista.random()
                    mostrarConsejo = true
                },
                colors = ButtonDefaults.buttonColors(), // M3: No hardcoded colors
            ) {
                Icon(
                    imageVector = Icons.Default.Favorite,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp), // M3: 18dp for icons in buttons
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = stringResource(R.string.recibir_consejo),
                    style = MaterialTheme.typography.labelLarge,
                )
            }

            if (mostrarConsejo) {
                Spacer(modifier = Modifier.height(24.dp))
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { mostrarConsejo = false },
                    shape = MaterialTheme.shapes.medium, // M3: Medium for cards
                    colors =
                        CardDefaults.cardColors(
                            containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.4f),
                        ),
                    border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
                ) {
                    Column(
                        modifier = Modifier.padding(24.dp),
                        horizontalAlignment = Alignment.CenterHorizontally,
                    ) {
                        Text(
                            text = stringResource(R.string.consejo_dia),
                            style = MaterialTheme.typography.titleSmall,
                            color = MaterialTheme.colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = consejoActual,
                            style = MaterialTheme.typography.bodyMedium,
                            textAlign = TextAlign.Center,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = stringResource(R.string.tap_cerrar),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
            }
        }
    }
}
