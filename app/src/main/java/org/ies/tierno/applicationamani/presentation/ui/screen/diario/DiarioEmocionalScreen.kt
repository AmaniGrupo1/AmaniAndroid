package org.ies.tierno.applicationamani.presentation.ui.screen.diario

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Mood
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Slider
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
    val valence: Valence,
) {
    ALEGRIA(
        "Alegría",
        Color(0xFFFFEB3B),
        "😊",
        listOf("Éxtasis", "Alegría", "Serenidad"),
        Valence.Warm,
    ),
    CONFIANZA(
        "Confianza",
        Color(0xFF8BC34A),
        "🤝",
        listOf("Admiración", "Confianza", "Aceptación"),
        Valence.Neutral,
    ),
    IRA("Ira", Color(0xFFF44336), "😡", listOf("Furia", "Ira", "Irritación"), Valence.Warm),
    TRISTEZA(
        "Tristeza",
        Color(0xFF2196F3),
        "😢",
        listOf("Congoja", "Tristeza", "Melancolía"),
        Valence.Cold,
    ),
    ASCO("Asco", Color(0xFF4CAF50), "🤢", listOf("Repulsión", "Asco", "Aburrimiento"), Valence.Cold),
    MIEDO("Miedo", Color(0xFF9C27B0), "😨", listOf("Terror", "Miedo", "Aprensión"), Valence.Cold),
    SORPRESA(
        "Sorpresa",
        Color(0xFF00BCD4),
        "😲",
        listOf("Asombro", "Sorpresa", "Distracción"),
        Valence.Neutral,
    ),
    ANTICIPACION(
        "Anticipación",
        Color(0xFFFF9800),
        "⏳",
        listOf("Vigilancia", "Anticipación", "Interés"),
        Valence.Warm,
    ),
}

private fun resolvePrimaryEmotion(emocion: String): String {
    if (emocion.isBlank()) return ""
    return PlutchikEmotion.entries.find { it.label == emocion }?.label
        ?: PlutchikEmotion.entries.find { it.variants.contains(emocion) }?.label
        ?: emocion
}

@Composable
fun StepIndicator(
    currentStep: Int,
    totalSteps: Int,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        repeat(totalSteps) { step ->
            val isSelected = step == currentStep
            val color by animateColorAsState(
                targetValue = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.primaryContainer,
                label = "color",
            )
            val width by animateDpAsState(
                targetValue = if (isSelected) 32.dp else 8.dp,
                label = "width",
            )

            Box(
                modifier =
                    Modifier
                        .height(8.dp)
                        .width(width)
                        .clip(CircleShape)
                        .background(color),
            )
        }
    }
}

@Composable
fun EmotionWheel(
    selectedEmotion: String,
    onEmotionSelected: (String) -> Unit,
    selectedSubEmotion: String = "",
    modifier: Modifier = Modifier,
) {
    val emotions = PlutchikEmotion.entries
    val angleStep = 360f / emotions.size
    val primaryLabel = resolvePrimaryEmotion(selectedEmotion)

    val accessibilityLabel =
        when {
            primaryLabel.isBlank() ->
                "Rueda de emociones. Toca un segmento para seleccionar tu emoción."

            selectedSubEmotion.isNotBlank() ->
                "Emoción: $primaryLabel – $selectedSubEmotion"

            else ->
                "Emoción seleccionada: $primaryLabel. Toca otro segmento para cambiar."
        }

    Box(
        modifier =
            modifier
                .size(300.dp)
                .clip(CircleShape)
                .background(Color.White)
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
        contentAlignment = Alignment.Center,
    ) {
        androidx.compose.foundation.Canvas(modifier = Modifier.size(300.dp)) {
            val radius = min(size.width, size.height) / 2f
            val center = Offset(size.width / 2f, size.height / 2f)
            val arcSize = Size(radius * 2, radius * 2)
            val arcTopLeft = Offset(center.x - radius, center.y - radius)

            emotions.forEachIndexed { index, emotion ->
                val startAngle = index * angleStep - 90f
                val isSelected = emotion.label == primaryLabel

                val tintColor =
                    when (emotion.valence) {
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
                        size = arcSize,
                    )
                }

                drawArc(
                    color = if (isSelected) emotion.color else emotion.color.copy(alpha = 0.75f),
                    startAngle = startAngle,
                    sweepAngle = angleStep,
                    useCenter = true,
                    topLeft = arcTopLeft,
                    size = arcSize,
                )

                if (isSelected) {
                    drawArc(
                        color = Color.White,
                        startAngle = startAngle,
                        sweepAngle = angleStep,
                        useCenter = true,
                        topLeft = arcTopLeft,
                        size = arcSize,
                        style = Stroke(width = 6f),
                    )
                }

                val midAngleRad = Math.toRadians((startAngle + angleStep / 2.0))
                val textRadius = radius * 0.65f
                val textX = center.x + textRadius * cos(midAngleRad).toFloat()
                val textY = center.y + textRadius * sin(midAngleRad).toFloat()

                drawContext.canvas.nativeCanvas.apply {
                    val paint =
                        android.graphics.Paint().apply {
                            color = android.graphics.Color.WHITE
                            textSize = 32f
                            textAlign = android.graphics.Paint.Align.CENTER
                            isFakeBoldText = isSelected
                            setShadowLayer(4f, 1f, 1f, android.graphics.Color.BLACK)
                        }
                    drawText(emotion.emoji, textX, textY - 14f, paint)
                    paint.textSize = 24f
                    drawText(emotion.label, textX, textY + 20f, paint)
                }
            }

            emotions.forEachIndexed { index, _ ->
                val lineAngleRad = Math.toRadians((index * angleStep - 90.0))
                drawLine(
                    color = Color.White.copy(alpha = 0.4f),
                    start = center,
                    end =
                        Offset(
                            center.x + radius * cos(lineAngleRad).toFloat(),
                            center.y + radius * sin(lineAngleRad).toFloat(),
                        ),
                    strokeWidth = 2f,
                )
            }

            drawCircle(
                color = Color.White,
                radius = radius * 0.2f,
                center = center,
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
    modifier: Modifier = Modifier,
) {
    Row(
        modifier =
            modifier
                .fillMaxWidth()
                .horizontalScroll(rememberScrollState())
                .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterHorizontally),
    ) {
        variants.forEach { variant ->
            FilterChip(
                selected = variant == selectedSubEmotion,
                onClick = { onSubEmotionSelected(variant) },
                label = { Text(variant) },
                modifier =
                    Modifier
                        .defaultMinSize(minWidth = 48.dp, minHeight = 48.dp)
                        .semantics { contentDescription = "Sub-emoción: $variant" },
            )
        }
    }
}

@Composable
private fun StepEmocion(
    titulo: String,
    onTituloChange: (String) -> Unit,
    emocion: String,
    onEmocionChange: (String) -> Unit,
    subEmocion: String,
    onSubEmocionChange: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val primaryEmotion = resolvePrimaryEmotion(emocion)
    val selectedPrimary = PlutchikEmotion.entries.find { it.label == primaryEmotion }

    Column(
        modifier = modifier.padding(horizontal = 8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        OutlinedTextField(
            value = titulo,
            onValueChange = onTituloChange,
            label = { Text("Título de la entrada") },
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            leadingIcon = { Icon(Icons.Default.Mood, contentDescription = null) },
        )

        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = "Tu rueda de emociones",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
            Text(
                text = "Toca un segmento para identificar qué sientes",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }

        EmotionWheel(
            selectedEmotion = emocion,
            onEmotionSelected = onEmocionChange,
            selectedSubEmotion = subEmocion,
            modifier = Modifier.padding(vertical = 8.dp),
        )

        if (selectedPrimary != null && selectedPrimary.variants.isNotEmpty()) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text(
                    text = "¿Puedes ser más específico?",
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Medium,
                )
                SubEmotionChips(
                    variants = selectedPrimary.variants,
                    selectedSubEmotion = subEmocion,
                    onSubEmotionSelected = onSubEmocionChange,
                )
            }
        } else {
            Spacer(modifier = Modifier.height(60.dp))
        }
    }
}

@Composable
private fun StepIntensidad(
    intensidad: Float,
    onIntensidadChange: (Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.padding(24.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Surface(
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primaryContainer,
            modifier = Modifier.size(120.dp),
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(
                    text = intensidad.toInt().toString(),
                    style = MaterialTheme.typography.displayLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary,
                )
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Text(
            text = "¿Qué tan fuerte es este sentimiento?",
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center,
        )

        Spacer(modifier = Modifier.height(32.dp))

        Slider(
            value = intensidad,
            onValueChange = onIntensidadChange,
            valueRange = 1f..10f,
            steps = 8,
            modifier = Modifier.fillMaxWidth(),
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
        ) {
            Text("Leve", style = MaterialTheme.typography.labelMedium)
            Text("Moderado", style = MaterialTheme.typography.labelMedium)
            Text("Extremo", style = MaterialTheme.typography.labelMedium)
        }
    }
}

@Composable
private fun StepContexto(
    contenido: String,
    onContenidoChange: (String) -> Unit,
    isEditing: Boolean,
    onGuardar: () -> Unit,
    onCancelar: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.padding(horizontal = 8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = "Cuéntanos más",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
            Text(
                text = "Expresar tus pensamientos ayuda a procesarlos",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }

        OutlinedTextField(
            value = contenido,
            onValueChange = onContenidoChange,
            label = { Text("¿Qué está pasando por tu mente?") },
            modifier =
                Modifier
                    .fillMaxWidth()
                    .weight(1f),
            shape = RoundedCornerShape(16.dp),
            minLines = 5,
        )

        Text(
            text = "${contenido.length}/500",
            style = MaterialTheme.typography.labelMedium,
            color =
                if (contenido.length >= 480) {
                    MaterialTheme.colorScheme.error
                } else {
                    MaterialTheme.colorScheme.onSurfaceVariant
                },
            modifier = Modifier.align(Alignment.End),
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            if (isEditing) {
                OutlinedButton(
                    onClick = onCancelar,
                    modifier = Modifier.weight(1f).height(56.dp),
                    shape = RoundedCornerShape(14.dp),
                ) {
                    Text("Cancelar")
                }
            }
            Button(
                onClick = onGuardar,
                modifier = Modifier.weight(if (isEditing) 1.5f else 1f).height(56.dp),
                shape = RoundedCornerShape(14.dp),
                elevation = ButtonDefaults.buttonColors().let { ButtonDefaults.elevatedButtonElevation() },
            ) {
                Icon(if (isEditing) Icons.Default.Edit else Icons.Default.Add, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text(if (isEditing) "Actualizar" else "Guardar entrada")
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun DiarioEmocionalScreen(viewModel: DiarioEmocionalViewModel = koinViewModel()) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()
    val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val snackbarHostState = remember { SnackbarHostState() }
    val pagerState = rememberPagerState(pageCount = { 3 })

    LaunchedEffect(state.currentStep) {
        pagerState.animateScrollToPage(state.currentStep)
    }

    LaunchedEffect(Unit) {
        viewModel.snackbarMessage.collect { message ->
            snackbarHostState.showSnackbar(message)
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Mi Diario Emocional", fontWeight = FontWeight.Bold) },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.primary,
                        titleContentColor = Color.White,
                    ),
                actions = {
                    IconButton(onClick = { viewModel.forzarSincronizacion() }) {
                        Icon(Icons.Default.Info, contentDescription = "Sincronizar", tint = Color.White)
                    }
                },
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        LazyColumn(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(24.dp),
        ) {
            item(key = "indicator_pager") {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(24.dp),
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(16.dp),
                    ) {
                        StepIndicator(
                            currentStep = state.currentStep,
                            totalSteps = 3,
                        )

                        HorizontalPager(
                            state = pagerState,
                            userScrollEnabled = false,
                            modifier = Modifier.height(if (state.currentStep == 1) 320.dp else 520.dp),
                        ) { page ->
                            when (page) {
                                0 ->
                                    StepEmocion(
                                        titulo = state.titulo,
                                        onTituloChange = viewModel::onTituloChange,
                                        emocion = state.emocion,
                                        onEmocionChange = viewModel::onEmocionChange,
                                        subEmocion = state.subEmocion,
                                        onSubEmocionChange = viewModel::onSubEmocionChange,
                                        modifier = Modifier.fillMaxSize(),
                                    )

                                1 ->
                                    StepIntensidad(
                                        intensidad = state.intensidad,
                                        onIntensidadChange = viewModel::onIntensidadChange,
                                        modifier = Modifier.fillMaxSize(),
                                    )

                                2 ->
                                    StepContexto(
                                        contenido = state.contenido,
                                        onContenidoChange = viewModel::onContenidoChange,
                                        isEditing = state.editandoId != null,
                                        onGuardar = viewModel::guardarEntrada,
                                        onCancelar = viewModel::cancelarEdicion,
                                        modifier = Modifier.fillMaxSize(),
                                    )
                            }
                        }

                        if (state.currentStep < 2) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.spacedBy(12.dp),
                            ) {
                                if (state.currentStep > 0) {
                                    OutlinedButton(
                                        onClick = viewModel::onPreviousStep,
                                        modifier = Modifier.weight(1f).height(48.dp),
                                        shape = RoundedCornerShape(12.dp),
                                    ) {
                                        Text("Anterior")
                                    }
                                }
                                Button(
                                    onClick = viewModel::onNextStep,
                                    modifier = Modifier.weight(1f).height(48.dp),
                                    shape = RoundedCornerShape(12.dp),
                                    enabled = if (state.currentStep == 0) state.emocion.isNotBlank() else true,
                                ) {
                                    Text("Siguiente")
                                }
                            }
                        }
                    }
                }
            }

            if (!state.mensajeError.isNullOrBlank()) {
                item(key = "error_message") {
                    Surface(
                        color = MaterialTheme.colorScheme.errorContainer,
                        shape = RoundedCornerShape(8.dp),
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Icon(Icons.Default.Info, contentDescription = null, tint = MaterialTheme.colorScheme.error)
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = state.mensajeError ?: "",
                                color = MaterialTheme.colorScheme.onErrorContainer,
                                style = MaterialTheme.typography.bodySmall,
                            )
                        }
                    }
                }
            }

            item(key = "history_header") {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.padding(top = 8.dp),
                ) {
                    Icon(Icons.Default.History, contentDescription = null, tint = MaterialTheme.colorScheme.primary)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "Historial de Bienestar",
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                    )
                }
            }

            if (state.entradas.isEmpty()) {
                item(key = "empty_history") {
                    Box(
                        modifier = Modifier.fillMaxWidth().padding(vertical = 32.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = "Tu diario está esperando tu primera entrada...",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                    }
                }
            } else {
                items(state.entradas, key = { it.id }) { entrada ->
                    HistoryEntryCard(
                        entrada = entrada,
                        onEdit = { viewModel.editarEntrada(entrada) },
                        onDelete = { viewModel.eliminarEntrada(entrada) },
                        formatter = formatter,
                    )
                }
            }
        }
    }
}

@Composable
fun HistoryEntryCard(
    entrada: org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario,
    onEdit: () -> Unit,
    onDelete: () -> Unit,
    formatter: DateTimeFormatter,
) {
    val emotionEntry =
        PlutchikEmotion.entries.find { it.label == entrada.emocion }
            ?: PlutchikEmotion.entries.find { it.variants.contains(entrada.emocion) }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp),
    ) {
        Row(
            modifier = Modifier.height(IntrinsicSize.Min),
        ) {
            // Indicador de color lateral
            Box(
                modifier =
                    Modifier
                        .fillMaxHeight()
                        .width(6.dp)
                        .background(emotionEntry?.color ?: MaterialTheme.colorScheme.outline),
            )

            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top,
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = entrada.titulo,
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                        Text(
                            text =
                                formatter.format(
                                    Instant
                                        .ofEpochMilli(entrada.createdAt)
                                        .atZone(ZoneId.systemDefault())
                                        .toLocalDateTime(),
                                ),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }

                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = (emotionEntry?.color ?: MaterialTheme.colorScheme.primary).copy(alpha = 0.1f),
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Text(
                                text = emotionEntry?.emoji ?: "✨",
                                fontSize = 14.sp,
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = entrada.emocion,
                                style = MaterialTheme.typography.labelMedium,
                                fontWeight = FontWeight.Bold,
                                color = emotionEntry?.color ?: MaterialTheme.colorScheme.primary,
                            )
                        }
                    }
                }

                Text(
                    text = entrada.contenido,
                    style = MaterialTheme.typography.bodyMedium,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                    color = MaterialTheme.colorScheme.onSurface,
                )

                HorizontalDivider(
                    modifier = Modifier.padding(vertical = 4.dp),
                    thickness = 0.5.dp,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.12f),
                )

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(
                            text = "Intensidad:",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        repeat(10) { index ->
                            Box(
                                modifier =
                                    Modifier
                                        .size(8.dp)
                                        .padding(1.dp)
                                        .clip(CircleShape)
                                        .background(
                                            if (index < entrada.intensidad) {
                                                emotionEntry?.color ?: MaterialTheme.colorScheme.primary
                                            } else {
                                                MaterialTheme.colorScheme.surfaceVariant
                                            },
                                        ),
                            )
                        }
                    }

                    Row {
                        IconButton(onClick = onEdit, modifier = Modifier.size(32.dp)) {
                            Icon(
                                Icons.Default.Edit,
                                contentDescription = "Editar",
                                modifier = Modifier.size(18.dp),
                                tint = MaterialTheme.colorScheme.primary,
                            )
                        }
                        IconButton(onClick = onDelete, modifier = Modifier.size(32.dp)) {
                            Icon(
                                Icons.Default.Delete,
                                contentDescription = "Eliminar",
                                modifier = Modifier.size(18.dp),
                                tint = MaterialTheme.colorScheme.error,
                            )
                        }
                    }
                }
            }
        }
    }
}
