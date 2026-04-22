package org.ies.tierno.applicationamani.presentation.ui.screen.diario

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalViewModel
import org.koin.androidx.compose.koinViewModel
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.math.atan2

enum class PlutchikEmotion(val label: String, val color: Color) {
    ALEGRIA("Alegría", Color(0xFFFFEB3B)),
    IRA("Ira", Color(0xFFF44336)),
    TRISTEZA("Tristeza", Color(0xFF2196F3)),
    ASCO("Asco", Color(0xFF4CAF50)),
    MIEDO("Miedo", Color(0xFF9C27B0)),
    SORPRESA("Sorpresa", Color(0xFF00BCD4))
}

@Composable
fun EmotionWheel(
    selectedEmotion: String,
    onEmotionSelected: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val emotions = PlutchikEmotion.entries
    val angleStep = 360f / emotions.size

    Box(
        modifier = modifier
            .size(280.dp)
            .pointerInput(Unit) {
                detectTapGestures { offset ->
                    val center = Offset(size.width / 2f, size.height / 2f)
                    val dx = offset.x - center.x
                    val dy = offset.y - center.y
                    var angle = Math.toDegrees(atan2(dy.toDouble(), dx.toDouble())).toFloat()
                    if (angle < 0) angle += 360f

                    // Adjust angle to match PlutchikEmotion order (starting from top/right)
                    // atan2 returns 0 at (1,0), but we want a logical map.
                    // Shift by 90 to start from top.
                    val adjustedAngle = (angle + 270f) % 360f
                    val index = (adjustedAngle / angleStep).toInt().coerceIn(0, emotions.size - 1)
                    onEmotionSelected(emotions[index].label)
                }
            },
        contentAlignment = Alignment.Center
    ) {
        androidx.compose.foundation.Canvas(modifier = Modifier.fillMaxSize()) {
            emotions.forEachIndexed { index, emotion ->
                val startAngle = index * angleStep - 90f
                drawArc(
                    color = emotion.color,
                    startAngle = startAngle,
                    sweepAngle = angleStep,
                    useCenter = true
                )
                if (emotion.label == selectedEmotion) {
                    drawArc(
                        color = Color.White,
                        startAngle = startAngle,
                        sweepAngle = angleStep,
                        useCenter = true,
                        style = Stroke(width = 8f)
                    )
                }
            }
        }
        Text(
            text = selectedEmotion,
            fontWeight = FontWeight.Bold,
            color = Color.Black,
            fontSize = 20.sp,
            modifier = Modifier
                .background(Color.White.copy(alpha = 0.7f))
                .border(1.dp, Color.Gray)
                .padding(8.dp)
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DiarioEmocionalScreen(

    viewModel: DiarioEmocionalViewModel = koinViewModel()
) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()
    val formatter = SimpleDateFormat("dd/MM/yyyy HH:mm", Locale.getDefault())

    LazyColumn(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item {
            Text(
                text = "Diario emocional",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold
            )
        }
        item {
            OutlinedTextField(
                value = state.titulo,
                onValueChange = viewModel::onTituloChange,
                label = { Text("Título") },
                modifier = Modifier.fillMaxWidth()
            )
        }
        item {
            Column(
                modifier = Modifier.fillMaxWidth(),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(
                    text = "Selecciona tu emoción",
                    style = MaterialTheme.typography.bodyLarge,
                    modifier = Modifier.padding(bottom = 8.dp)
                )
                EmotionWheel(
                    selectedEmotion = state.emocion,
                    onEmotionSelected = viewModel::onEmocionChange,
                    modifier = Modifier.padding(bottom = 16.dp)
                )
            }
        }
        item {
            OutlinedTextField(
                value = state.contenido,
                onValueChange = viewModel::onContenidoChange,
                label = { Text("¿Cómo te sientes hoy?") },
                modifier = Modifier.fillMaxWidth(),
                minLines = 3
            )
        }
        item {
            Column {
                Text("Intensidad: ${state.intensidad.toInt()}/10")
                Slider(
                    value = state.intensidad,
                    onValueChange = viewModel::onIntensidadChange,
                    valueRange = 1f..10f,
                    steps = 8
                )
            }
        }
        item {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = viewModel::guardarEntrada, modifier = Modifier.weight(1f)) {
                    Text(if (state.editandoId == null) "Guardar entrada" else "Actualizar entrada")
                }
                if (state.editandoId != null) {
                    Button(onClick = viewModel::cancelarEdicion, modifier = Modifier.weight(1f)) {
                        Text("Cancelar")
                    }
                }
            }
        }
        if (!state.mensajeError.isNullOrBlank()) {
            item {
                Text(
                    text = state.mensajeError ?: "",
                    color = MaterialTheme.colorScheme.error
                )
            }
        }
        item {
            Text(
                text = "Historial",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
        }
        if (state.entradas.isEmpty()) {
            item {
                Text(
                    text = "Aún no tienes entradas guardadas.",
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        } else {
            items(state.entradas, key = { it.id }) { entrada ->
                Card(
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(text = entrada.titulo, fontWeight = FontWeight.Bold)
                        Text(text = entrada.contenido)
                        Text(
                            text = "Emoción: ${entrada.emocion} | Intensidad: ${entrada.intensidad}/10",
                            color = PlutchikEmotion.entries.find { it.label == entrada.emocion }?.color ?: MaterialTheme.colorScheme.onSurfaceVariant,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Creado: ${formatter.format(Date(entrada.createdAt))}",
                            style = MaterialTheme.typography.bodySmall
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            Button(onClick = { viewModel.editarEntrada(entrada) }) {
                                Text("Editar")
                            }
                            Button(onClick = { viewModel.eliminarEntrada(entrada) }) {
                                Text("Eliminar")
                            }
                        }
                    }
                }
            }
        }
    }
}
