package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

// Colores corporativos AMANI Psicología
object AmaniPrincipalColors {
    val Primary = Color(0xFF6B4E71)      // Morado principal
    val PrimaryLight = Color(0xFF9B7E9F)  // Morado claro
    val PrimaryDark = Color(0xFF4A2B50)   // Morado oscuro
    val Secondary = Color(0xFFE8B4B8)     // Rosa suave
    val Accent = Color(0xFFF5E6E8)        // Fondo claro
    val Gold = Color(0xFFD4AF37)          // Dorado para detalles
    val TextPrimary = Color(0xFF2D1B30)   // Texto principal
    val TextSecondary = Color(0xFF7A6B7E) // Texto secundario
    val Surface = Color(0xFFFFFFFF)       // Superficie blanca
}

/**
 * Frases motivacionales de AMANI Psicología
 */
val frasesMotivacionales = listOf(
    "🌿 Cada paso que das hacia tu bienestar es un acto de amor propio",
    "🌸 La sanación comienza cuando te permites sentir",
    "💜 Tu salud mental es tan importante como tu salud física",
    "🌟 Eres más fuerte de lo que crees y más amado de lo que imaginas",
    "🍃 No estás roto, solo estás en proceso de transformación",
    "✨ Permítete crecer a tu propio ritmo",
    "🌙 Descansar también es parte del camino hacia el bienestar",
    "💫 La terapia es un regalo que te haces a ti mismo"
)

/**
 * Consejos aleatorios de AMANI Psicología
 */
val consejosLista = listOf(
    "🧘‍♀️ Tómate 5 minutos al día para respirar profundamente",
    "📝 Escribe tres cosas por las que estás agradecido cada noche",
    "💬 No tengas miedo de pedir ayuda cuando la necesites",
    "🚶‍♂️ Una caminata corta al aire libre puede mejorar tu estado de ánimo",
    "😴 Duerme al menos 7-8 horas para una buena salud mental",
    "🎨 Encuentra un hobby creativo que te haga feliz",
    "📱 Desconéctate de las redes sociales una hora antes de dormir",
    "🤗 Acepta tus emociones, todas son válidas"
)

/**
 * Pantalla principal de bienvenida de AMANI Psicología.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 */
@Composable
fun Principal(navController: NavController) {
    val typography = MaterialTheme.typography

    var mostrarConsejo by remember { mutableStateOf(false) }
    var consejoActual by remember { mutableStateOf("") }
    var fraseActual by remember { mutableStateOf(frasesMotivacionales[0]) }

    // Función para cambiar a una frase aleatoria diferente
    fun cambiarFrase() {
        val otrasFrases = frasesMotivacionales.filter { it != fraseActual }
        fraseActual = if (otrasFrases.isNotEmpty()) {
            otrasFrases.random()
        } else {
            frasesMotivacionales.random()
        }
    }

    // Cambiar frase automáticamente cada 15 segundos
    LaunchedEffect(Unit) {
        while (true) {
            delay(15000) // 15 segundos
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
            // Logo / Nombre de la marca
            Text(
                text = "AMANI",
                style = typography.displayLarge?.copy(
                    fontSize = 56.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 4.sp
                ) ?: MaterialTheme.typography.displayLarge,
                color = AmaniPrincipalColors.Primary,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            // Subtítulo
            Text(
                text = "Psicología y Bienestar",
                style = typography.titleMedium?.copy(
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                ) ?: MaterialTheme.typography.titleMedium,
                color = AmaniPrincipalColors.PrimaryLight,
                modifier = Modifier.padding(bottom = 32.dp)
            )

            // Tarjeta de frase motivacional
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
                    // Icono clickable para cambiar frase manualmente
                    Icon(
                        imageVector = Icons.Default.SelfImprovement,
                        contentDescription = "Cambiar frase",
                        tint = AmaniPrincipalColors.Primary,
                        modifier = Modifier
                            .size(48.dp)
                            .clickable { cambiarFrase() }
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    // Texto de la frase
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

                    // Indicadores visuales
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
                            text = "Tap para nueva frase",
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

            // Botón Consejo (único botón)
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
                    "Recibir Consejo de Bienestar",
                    style = typography.labelLarge?.copy(
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.labelLarge
                )
            }

            // Mostrar consejo
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
                            text = "💫 Consejo del Día",
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
                            text = "✖ Tap para cerrar",
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
