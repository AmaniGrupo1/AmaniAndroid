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
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.graphics.Color
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
object AmaniPrincipalColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Gold = Color(0xFFD4AF37)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Surface = Color(0xFFFFFFFF)
}

// Función para obtener las frases según el idioma actual
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
        resources.getString(R.string.frase_8)
    )
}

// Función para obtener los consejos según el idioma actual
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
        resources.getString(R.string.consejo_8)
    )
}

@Composable
fun Principal(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore
) {
    val typography = MaterialTheme.typography
    val context = LocalContext.current

    // ✅ Obtener el idioma desde la sesión (igual que en SettingsAdminScreen)
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val currentLanguage = session?.idioma ?: "es"

    // ✅ Forzar recomposición cuando cambia el idioma
    val frasesMotivacionales = remember(currentLanguage) {
        getFrasesMotivacionales(context)
    }
    val consejosLista = remember(currentLanguage) {
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
        fraseActual = if (otrasFrases.isNotEmpty()) {
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
        containerColor = AmaniPrincipalColors.Accent
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .padding(innerPadding)
                .fillMaxSize()
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(
                            AmaniPrincipalColors.Accent,
                            Color.White
                        )
                    )
                )
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text(
                text = stringResource(R.string.amani),
                style = typography.displayLarge?.copy(
                    fontSize = 56.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 4.sp
                ) ?: MaterialTheme.typography.displayLarge,
                color = AmaniPrincipalColors.Primary,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            Text(
                text = stringResource(R.string.psicologia_bienestar),
                style = typography.titleMedium?.copy(
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                ) ?: MaterialTheme.typography.titleMedium,
                color = AmaniPrincipalColors.PrimaryLight,
                modifier = Modifier.padding(bottom = 32.dp)
            )

            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 16.dp),
                shape = RoundedCornerShape(24.dp),
                colors = CardDefaults.cardColors(
                    containerColor = AmaniPrincipalColors.Surface
                ),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(
                    modifier = Modifier.padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Icon(
                        imageVector = Icons.Default.SelfImprovement,
                        contentDescription = "Cambiar frase",
                        tint = AmaniPrincipalColors.Primary,
                        modifier = Modifier
                            .size(48.dp)
                            .clickable { cambiarFrase() }
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = fraseActual,
                        style = typography.bodyLarge?.copy(
                            fontSize = 18.sp,
                            lineHeight = 28.sp
                        ) ?: MaterialTheme.typography.bodyLarge,
                        textAlign = TextAlign.Center,
                        color = AmaniPrincipalColors.TextPrimary
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "🔄",
                            fontSize = 14.sp,
                            modifier = Modifier.clickable { cambiarFrase() }
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = stringResource(R.string.tap_nueva_frase),
                            style = typography.labelSmall?.copy(
                                fontSize = 12.sp,
                                color = AmaniPrincipalColors.TextSecondary
                            ) ?: MaterialTheme.typography.labelSmall,
                            textAlign = TextAlign.Center
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "⏱️",
                            fontSize = 14.sp
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp),
                shape = RoundedCornerShape(28.dp),
                onClick = {
                    consejoActual = consejosLista.random()
                    mostrarConsejo = true
                },
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniPrincipalColors.Primary,
                    contentColor = Color.White
                ),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Favorite,
                    contentDescription = null,
                    modifier = Modifier.size(20.dp)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = stringResource(R.string.recibir_consejo),
                    style = typography.labelLarge?.copy(
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.labelLarge
                )
            }

            if (mostrarConsejo) {
                Spacer(modifier = Modifier.height(24.dp))
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { mostrarConsejo = false },
                    shape = RoundedCornerShape(20.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = AmaniPrincipalColors.Secondary.copy(alpha = 0.3f)
                    ),
                    border = BorderStroke(1.dp, AmaniPrincipalColors.PrimaryLight)
                ) {
                    Column(
                        modifier = Modifier.padding(20.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = stringResource(R.string.consejo_dia),
                            style = typography.titleSmall?.copy(
                                fontWeight = FontWeight.Bold,
                                color = AmaniPrincipalColors.Primary
                            ) ?: MaterialTheme.typography.titleSmall
                        )
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            text = consejoActual,
                            style = typography.bodyMedium?.copy(
                                fontSize = 16.sp,
                                lineHeight = 24.sp
                            ) ?: MaterialTheme.typography.bodyMedium,
                            textAlign = TextAlign.Center,
                            color = AmaniPrincipalColors.TextPrimary
                        )
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            text = stringResource(R.string.tap_cerrar),
                            style = typography.labelSmall?.copy(
                                fontSize = 12.sp,
                                color = AmaniPrincipalColors.TextSecondary
                            ) ?: MaterialTheme.typography.labelSmall
                        )
                    }
                }
            }
        }
    }
}