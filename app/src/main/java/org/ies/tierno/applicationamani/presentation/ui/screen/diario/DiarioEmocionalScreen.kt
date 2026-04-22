package org.ies.tierno.applicationamani.presentation.ui.screen.diario

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.defaultMinSize
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
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.min
import kotlin.math.sin

sealed class Valence {
    object Warm : Valence()
    object Cold : Valence()
    object Neutral : Valence()
}

enum class PlutchikEmotion(
    val label: String,
    val color: Color,
    val emoji: String,
    val variants: List<String>,
    val valence: Valence
) {
    ALEGRIA("Alegría", Color(0xFFFFEB3B), "😊", listOf("Éxtasis", "Alegría", "Serenidad"), Valence.Warm),
    CONFIANZA("Confianza", Color(0xFF8BC34A), "🤝", listOf("Admiración", "Confianza", "Aceptación"), Valence.Neutral),
    IRA("Ira", Color(0xFFF44336), "😡", listOf("Furia", "Ira", "Irritación"), Valence.Warm),
    TRISTEZA("Tristeza", Color(0xFF2196F3), "😢", listOf("Congoja", "Tristeza", "Melancolía"), Valence.Cold),
    ASCO("Asco", Color(0xFF4CAF50), "🤢", listOf("Repulsión", "Asco", "Aburrimiento"), Valence.Cold),
    MIEDO("Miedo", Color(0xFF9C27B0), "😨", listOf("Terror", "Miedo", "Aprensión"), Valence.Cold),
    SORPRESA("Sorpresa", Color(0xFF00BCD4), "😲", listOf("Asombro", "Sorpresa", "Distracción"), Valence.Neutral),
    ANTICIPACION("Anticipación", Color(0xFFFF9800), "⏳", listOf("Vigilancia", "Anticipación", "Interés"), Valence.Warm)
}

private fun resolvePrimaryEmotion(emocion: String): String {
    if (emocion.isBlank()) return ""
    return PlutchikEmotion.entries.find { it.label == emocion }?.label
        ?: PlutchikEmotion.entries.find { it.variants.contains(emocion) }?.label
        ?: emocion
}

@Composable
fun EmotionWheel(
    selectedEmotion: String,
    onEmotionSelected: (String) -> Unit,
    selectedSubEmotion: String = "",
    modifier: Modifier = Modifier
) {
    val emotions = PlutchikEmotion.entries
    val angleStep = 360f / emotions.size
    val primaryLabel = resolvePrimaryEmotion(selectedEmotion)

    val accessibilityLabel = when {
        primaryLabel.isBlank() ->
            "Rueda de emociones. Toca un segmento para seleccionar tu emoción."
        selectedSubEmotion.isNotBlank() ->
            "Emoción: $primaryLabel – $selectedSubEmotion"
        else ->
            "Emoción seleccionada: $primaryLabel. Toca otro segmento para cambiar."
    }

    Box(
        modifier = modifier
            .size(280.dp)
            .semantics { contentDescription = accessibilityLabel }
            .pointerInput(Unit) {
                detectTapGestures { offset ->
                    val center = Offset(size.width / 2f, size.height / 2f)
                    val dx = offset.x - center.x
                    val dy = offset.y - center.y

                    val radius = min(size.width, size.height) / 2f
                    if (dx * dx + dy * dy > radius * radius) return@detectTapGestures

                    var angle = Math.toDegrees(atan2(dy.toDouble(), dx.toDouble())).toFloat()
                    if (angle < 0) angle += 360f
                    val adjustedAngle = (angle + 90f) % 360f
                    val index = (adjustedAngle / angleStep).toInt().coerceIn(0, emotions.size - 1)
                    onEmotionSelected(emotions[index].label)
                }
            },
        contentAlignment = Alignment.Center
    ) {
        androidx.compose.foundation.Canvas(modifier = Modifier.size(280.dp)) {
            val radius = min(size.width, size.height) / 2f
            val center = Offset(size.width / 2f, size.height / 2f)
            val arcSize = Size(radius * 2, radius * 2)
            val arcTopLeft = Offset(center.x - radius, center.y - radius)

            emotions.forEachIndexed { index, emotion ->
                val startAngle = index * angleStep - 90f
                val isSelected = emotion.label == primaryLabel

                val tintColor = when (emotion.valence) {
                    is Valence.Warm -> Color(0xFFFFA726).copy(alpha = 0.25f)
                    is Valence.Cold -> Color(0xFF42A5F5).copy(alpha = 0.25f)
                    is Valence.Neutral -> Color.Transparent
                }
                if (tintColor != Color.Transparent) {
                    drawArc(
                        color = tintColor,
                        startAngle = startAngle,
                        sweepAngle = angleStep,
                        useCenter = true,
                        topLeft = arcTopLeft,
                        size = arcSize
                    )
                }

                drawArc(
                    color = if (isSelected) emotion.color else emotion.color.copy(alpha = 0.75f),
                    startAngle = startAngle,
                    sweepAngle = angleStep,
                    useCenter = true,
                    topLeft = arcTopLeft,
                    size = arcSize
                )

                if (isSelected) {
                    drawArc(
                        color = Color.White,
                        startAngle = startAngle,
                        sweepAngle = angleStep,
                        useCenter = true,
                        topLeft = arcTopLeft,
                        size = arcSize,
                        style = Stroke(width = 6f)
                    )
                }

                val midAngleRad = Math.toRadians((startAngle + angleStep / 2.0))
                val textRadius = radius * 0.65f
                val textX = center.x + textRadius * cos(midAngleRad).toFloat()
                val textY = center.y + textRadius * sin(midAngleRad).toFloat()

                drawContext.canvas.nativeCanvas.apply {
                    val paint = android.graphics.Paint().apply {
                        color = android.graphics.Color.WHITE
                        textSize = 28f
                        textAlign = android.graphics.Paint.Align.CENTER
                        isFakeBoldText = isSelected
                        setShadowLayer(3f, 1f, 1f, android.graphics.Color.BLACK)
                    }
                    drawText(emotion.emoji, textX, textY - 14f, paint)
                    paint.textSize = 22f
                    drawText(emotion.label, textX, textY + 18f, paint)
                }
            }

            emotions.forEachIndexed { index, _ ->
                val lineAngleRad = Math.toRadians((index * angleStep - 90.0))
                drawLine(
                    color = Color.White.copy(alpha = 0.4f),
                    start = center,
                    end = Offset(
                        center.x + radius * cos(lineAngleRad).toFloat(),
                        center.y + radius * sin(lineAngleRad).toFloat()
                    ),
                    strokeWidth = 2f
                )
            }

            drawCircle(
                color = Color.White,
                radius = radius * 0.2f,
                center = center
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SubEmotionChips(
    variants: List<String>,
    selectedSubEmotion: String,
    onSubEmotionSelected: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterHorizontally)
    ) {
        variants.forEach { variant ->
            FilterChip(
                selected = variant == selectedSubEmotion,
                onClick = { onSubEmotionSelected(variant) },
                label = { Text(variant) },
                modifier = Modifier
                    .defaultMinSize(minWidth = 48.dp, minHeight = 48.dp)
                    .semantics { contentDescription = "Sub-emoción: $variant" }
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DiarioEmocionalScreen(
    viewModel: DiarioEmocionalViewModel = koinViewModel()
) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()
    val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val primaryEmotion = resolvePrimaryEmotion(state.emocion)
    val selectedPrimary = PlutchikEmotion.entries.find { it.label == primaryEmotion }

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
                    selectedSubEmotion = state.subEmocion,
                    modifier = Modifier.padding(bottom = 16.dp)
                )
                if (selectedPrimary != null && selectedPrimary.variants.isNotEmpty()) {
                    SubEmotionChips(
                        variants = selectedPrimary.variants,
                        selectedSubEmotion = state.subEmocion,
                        onSubEmotionSelected = viewModel::onSubEmocionChange
                    )
                }
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
                val emotionEntry = PlutchikEmotion.entries.find { it.label == entrada.emocion }
                    ?: PlutchikEmotion.entries.find { it.variants.contains(entrada.emocion) }
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
                            color = emotionEntry?.color
                                ?: MaterialTheme.colorScheme.onSurfaceVariant,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Creado: ${formatter.format(Instant.ofEpochMilli(entrada.createdAt).atZone(ZoneId.systemDefault()).toLocalDateTime())}",
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
