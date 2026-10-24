package org.ies.tierno.applicationamani.presentation.ui.screen.diario

import android.content.res.Configuration
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.PLUTCHIK_SHADOW_COLOR_INT
import org.ies.tierno.applicationamani.ui.theme.PLUTCHIK_TEXT_COLOR_INT
import org.ies.tierno.applicationamani.ui.theme.PlutchikAnger
import org.ies.tierno.applicationamani.ui.theme.PlutchikAnticipation
import org.ies.tierno.applicationamani.ui.theme.PlutchikColdTint
import org.ies.tierno.applicationamani.ui.theme.PlutchikDisgust
import org.ies.tierno.applicationamani.ui.theme.PlutchikFear
import org.ies.tierno.applicationamani.ui.theme.PlutchikJoy
import org.ies.tierno.applicationamani.ui.theme.PlutchikSadness
import org.ies.tierno.applicationamani.ui.theme.PlutchikSurprise
import org.ies.tierno.applicationamani.ui.theme.PlutchikTrust
import org.ies.tierno.applicationamani.ui.theme.PlutchikWarmTint
import org.ies.tierno.applicationamani.ui.theme.PlutchikWheelCanvasBg
import org.ies.tierno.applicationamani.ui.theme.PlutchikWheelStroke
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.min
import kotlin.math.sin

/**
 * Valencia emocional: cálida, fría o neutra.
 */
sealed class Valence {
    object Warm : Valence()

    object Cold : Valence()

    object Neutral : Valence()
}

/**
 * Emoción según el modelo de la rueda de Plutchik, con color, símbolo y variantes.
 *
 * @property label Etiqueta descriptiva de la emoción.
 * @property color Color asociado a la emoción en la rueda.
 * @property emoji Símbolo representativo en la rueda de Plutchik.
 * @property variants Variantes de intensidad de la emoción.
 * @property valence Valencia emocional (cálida, fría o neutra).
 */
enum class PlutchikEmotion(
    val label: String,
    val color: Color,
    val emoji: String,
    val variants: List<String>,
    val valence: Valence,
) {
    ALEGRIA(
        "Alegría",
        PlutchikJoy,
        "😊",
        listOf("Éxtasis", "Alegría", "Serenidad"),
        Valence.Warm,
    ),
    CONFIANZA(
        "Confianza",
        PlutchikTrust,
        "🤝",
        listOf("Admiración", "Confianza", "Aceptación"),
        Valence.Neutral,
    ),
    IRA("Ira", PlutchikAnger, "😡", listOf("Furia", "Ira", "Irritación"), Valence.Warm),
    TRISTEZA(
        "Tristeza",
        PlutchikSadness,
        "😢",
        listOf("Congoja", "Tristeza", "Melancolía"),
        Valence.Cold,
    ),
    ASCO("Asco", PlutchikDisgust, "🤢", listOf("Repulsión", "Asco", "Aburrimiento"), Valence.Cold),
    MIEDO("Miedo", PlutchikFear, "😨", listOf("Terror", "Miedo", "Aprensión"), Valence.Cold),
    SORPRESA(
        "Sorpresa",
        PlutchikSurprise,
        "😲",
        listOf("Asombro", "Sorpresa", "Distracción"),
        Valence.Neutral,
    ),
    ANTICIPACION(
        "Anticipación",
        PlutchikAnticipation,
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

/**
 * Indicador visual de pasos para el flujo de creación de una entrada del diario.
 */
@Composable
fun StepIndicator(
    currentStep: Int,
    totalSteps: Int,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier,
        horizontalArrangement = Arrangement.spacedBy(Spacing.s),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        repeat(totalSteps) { step ->
            val isSelected = step == currentStep
            val color by animateColorAsState(
                targetValue = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.primaryContainer,
                label = stringResource(R.string.auto_color),
            )
            val width by animateDpAsState(
                targetValue = if (isSelected) Spacing.xl else Dimensions.dotIndicator,
                label = stringResource(R.string.auto_width),
            )

            Box(
                modifier =
                    Modifier
                        .height(Dimensions.dotIndicator)
                        .width(width)
                        .clip(CircleShape)
                        .background(color),
            )
        }
    }
}

/**
 * Rueda de emociones interactiva basada en el modelo de Plutchik.
 */
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
                stringResource(R.string.diario_rueda_accesibilidad_vacia)

            selectedSubEmotion.isNotBlank() ->
                stringResource(R.string.diario_rueda_accesibilidad_sub, primaryLabel, selectedSubEmotion)

            else ->
                stringResource(R.string.diario_rueda_accesibilidad_seleccionada, primaryLabel)
        }

    Box(
        modifier =
            modifier
                .size(Dimensions.wheelSize)
                .clip(CircleShape)
                .background(PlutchikWheelCanvasBg)
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
        androidx.compose.foundation.Canvas(modifier = Modifier.size(Dimensions.wheelSize)) {
            val radius = min(size.width, size.height) / 2f
            val center = Offset(size.width / 2f, size.height / 2f)
            val arcSize = Size(radius * 2, radius * 2)
            val arcTopLeft = Offset(center.x - radius, center.y - radius)

            emotions.forEachIndexed { index, emotion ->
                val startAngle = index * angleStep - 90f
                val isSelected = emotion.label == primaryLabel

                val tintColor =
                    when (emotion.valence) {
                        is Valence.Warm -> PlutchikWarmTint
                        is Valence.Cold -> PlutchikColdTint
                        is Valence.Neutral -> null
                    }
                if (tintColor != null) {
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
                        color = PlutchikWheelStroke,
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
                            color = PLUTCHIK_TEXT_COLOR_INT
                            textSize = 32f
                            textAlign = android.graphics.Paint.Align.CENTER
                            isFakeBoldText = isSelected
                            setShadowLayer(4f, 1f, 1f, PLUTCHIK_SHADOW_COLOR_INT)
                        }
                    drawText(emotion.emoji, textX, textY - 14f, paint)
                    paint.textSize = 24f
                    drawText(emotion.label, textX, textY + 20f, paint)
                }
            }

            emotions.forEachIndexed { index, _ ->
                val lineAngleRad = Math.toRadians((index * angleStep - 90.0))
                drawLine(
                    color = PlutchikWheelStroke.copy(alpha = 0.4f),
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
                color = PlutchikWheelCanvasBg,
                radius = radius * 0.2f,
                center = center,
            )
        }
    }
}

/**
 * Chips de sub-emociones para refinar la emoción seleccionada en la rueda.
 */
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
                .padding(vertical = Spacing.s),
        horizontalArrangement = Arrangement.spacedBy(Spacing.s, Alignment.CenterHorizontally),
    ) {
        variants.forEach { variant ->
            val subEmotionDesc = stringResource(R.string.diario_sub_emocion_desc, variant)
            FilterChip(
                selected = variant == selectedSubEmotion,
                onClick = { onSubEmotionSelected(variant) },
                label = { Text(variant) },
                modifier =
                    Modifier
                        .defaultMinSize(minWidth = Dimensions.minTouchTarget, minHeight = Dimensions.minTouchTarget)
                        .semantics { contentDescription = subEmotionDesc },
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
        modifier = modifier.padding(horizontal = Spacing.s),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(Spacing.m),
    ) {
        OutlinedTextField(
            value = titulo,
            onValueChange = onTituloChange,
            label = { Text(stringResource(R.string.auto_titulo_de_la_entrada)) },
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            leadingIcon = { Icon(Icons.Default.Mood, contentDescription = null) },
        )

        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = stringResource(R.string.auto_tu_rueda_de_emociones),
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
            Text(
                text = stringResource(R.string.auto_toca_un_segmento_para),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }

        EmotionWheel(
            selectedEmotion = emocion,
            onEmotionSelected = onEmocionChange,
            selectedSubEmotion = subEmocion,
            modifier = Modifier.padding(vertical = Spacing.s),
        )

        if (selectedPrimary != null && selectedPrimary.variants.isNotEmpty()) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text(
                    text = stringResource(R.string.auto_puedes_ser_mas_especifico),
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
            Spacer(modifier = Modifier.height(Dimensions.buttonHeightLarge))
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
        modifier = modifier.padding(Spacing.l),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Surface(
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primaryContainer,
            modifier = Modifier.size(Dimensions.avatarHero),
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(
                    text = intensidad.toInt().toString(),
                    style = MaterialTheme.typography.displayLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onPrimaryContainer,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.l))

        Text(
            text = stringResource(R.string.auto_que_tan_fuerte_es),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center,
        )

        Spacer(modifier = Modifier.height(Spacing.xl))

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
            Text(stringResource(R.string.auto_leve), style = MaterialTheme.typography.labelMedium)
            Text(stringResource(R.string.auto_moderado), style = MaterialTheme.typography.labelMedium)
            Text(stringResource(R.string.auto_extremo), style = MaterialTheme.typography.labelMedium)
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
        modifier = modifier.padding(horizontal = Spacing.s),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(Spacing.m),
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = stringResource(R.string.auto_cuentanos_mas),
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
            Text(
                text = stringResource(R.string.auto_expresar_tus_pensamientos_ayuda),
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }

        OutlinedTextField(
            value = contenido,
            onValueChange = onContenidoChange,
            label = { Text(stringResource(R.string.auto_que_esta_pasando_por)) },
            modifier =
                Modifier
                    .fillMaxWidth()
                    .weight(1f),
            shape = MaterialTheme.shapes.large,
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
            horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            if (isEditing) {
                OutlinedButton(
                    onClick = onCancelar,
                    modifier = Modifier.weight(1f).height(Dimensions.buttonHeightLarge),
                    shape = MaterialTheme.shapes.medium,
                ) {
                    Text(stringResource(R.string.auto_cancelar))
                }
            }
            Button(
                onClick = onGuardar,
                modifier = Modifier.weight(if (isEditing) 1.5f else 1f).height(Dimensions.buttonHeightLarge),
                shape = MaterialTheme.shapes.medium,
                elevation = ButtonDefaults.buttonColors().let { ButtonDefaults.elevatedButtonElevation() },
            ) {
                Icon(if (isEditing) Icons.Default.Edit else Icons.Default.Add, contentDescription = null)
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    if (isEditing) {
                        stringResource(R.string.diario_actualizar_entrada)
                    } else {
                        stringResource(R.string.diario_guardar_entrada)
                    },
                )
            }
        }
    }
}

/**
 * Pantalla del diario emocional del paciente.
 *
 * Permite al usuario registrar sus emociones diarias mediante una rueda
 * de emociones interactiva (modelo de Plutchik), seleccionar sub-emociones,
 * ajustar la intensidad con un slider y añadir notas de contexto. También
 * muestra un histórico de entradas anteriores con opciones de edición y
 * eliminación.
 *
 * @param viewModel ViewModel que gestiona el estado del diario emocional.
 */
@Composable
fun DiarioEmocionalScreen(
    viewModel: DiarioEmocionalViewModel = koinViewModel(),
    modifier: Modifier = Modifier,
) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }

    LaunchedEffect(Unit) {
        viewModel.snackbarMessage.collect { message ->
            snackbarHostState.showSnackbar(message)
        }
    }

    DiarioEmocionalContent(
        state = state,
        snackbarHostState = snackbarHostState,
        onSincronizar = viewModel::forzarSincronizacion,
        onTituloChange = viewModel::onTituloChange,
        onEmocionChange = viewModel::onEmocionChange,
        onSubEmocionChange = viewModel::onSubEmocionChange,
        onIntensidadChange = viewModel::onIntensidadChange,
        onContenidoChange = viewModel::onContenidoChange,
        onGuardar = viewModel::guardarEntrada,
        onCancelarEdicion = viewModel::cancelarEdicion,
        onPreviousStep = viewModel::onPreviousStep,
        onNextStep = viewModel::onNextStep,
        onEditarEntrada = viewModel::editarEntrada,
        onEliminarEntrada = viewModel::eliminarEntrada,
        modifier = modifier,
    )
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun DiarioEmocionalContent(
    state: DiarioEmocionalUiState,
    snackbarHostState: SnackbarHostState,
    onSincronizar: () -> Unit,
    onTituloChange: (String) -> Unit,
    onEmocionChange: (String) -> Unit,
    onSubEmocionChange: (String) -> Unit,
    onIntensidadChange: (Float) -> Unit,
    onContenidoChange: (String) -> Unit,
    onGuardar: () -> Unit,
    onCancelarEdicion: () -> Unit,
    onPreviousStep: () -> Unit,
    onNextStep: () -> Unit,
    onEditarEntrada: (EntradaDiario) -> Unit,
    onEliminarEntrada: (EntradaDiario) -> Unit,
    modifier: Modifier = Modifier,
) {
    val formatter = remember { DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm") }
    val pagerState = rememberPagerState(pageCount = { 3 })

    LaunchedEffect(state.currentStep) {
        pagerState.animateScrollToPage(state.currentStep)
    }

    Scaffold(
        modifier = modifier,
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.auto_mi_diario_emocional), fontWeight = FontWeight.Bold) },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                        actionIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
                actions = {
                    IconButton(onClick = onSincronizar) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = stringResource(R.string.auto_sincronizar),
                            tint = MaterialTheme.colorScheme.onSurface,
                        )
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
            contentPadding = PaddingValues(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.l),
        ) {
            item(key = "indicator_pager", contentType = "pager") {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.extraLarge,
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.m),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        StepIndicator(
                            currentStep = state.currentStep,
                            totalSteps = 3,
                        )

                        HorizontalPager(
                            state = pagerState,
                            userScrollEnabled = false,
                            modifier =
                                Modifier.height(
                                    if (state.currentStep == 1) {
                                        Dimensions.pagerHeightCompact
                                    } else {
                                        Dimensions.pagerHeightExpanded
                                    },
                                ),
                        ) { page ->
                            when (page) {
                                0 ->
                                    StepEmocion(
                                        titulo = state.titulo,
                                        onTituloChange = onTituloChange,
                                        emocion = state.emocion,
                                        onEmocionChange = onEmocionChange,
                                        subEmocion = state.subEmocion,
                                        onSubEmocionChange = onSubEmocionChange,
                                        modifier = Modifier.fillMaxSize(),
                                    )

                                1 ->
                                    StepIntensidad(
                                        intensidad = state.intensidad,
                                        onIntensidadChange = onIntensidadChange,
                                        modifier = Modifier.fillMaxSize(),
                                    )

                                2 ->
                                    StepContexto(
                                        contenido = state.contenido,
                                        onContenidoChange = onContenidoChange,
                                        isEditing = state.editandoId != null,
                                        onGuardar = onGuardar,
                                        onCancelar = onCancelarEdicion,
                                        modifier = Modifier.fillMaxSize(),
                                    )
                            }
                        }

                        if (state.currentStep < 2) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                            ) {
                                if (state.currentStep > 0) {
                                    OutlinedButton(
                                        onClick = onPreviousStep,
                                        modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                                        shape = MaterialTheme.shapes.medium,
                                    ) {
                                        Text(stringResource(R.string.auto_anterior))
                                    }
                                }
                                Button(
                                    onClick = onNextStep,
                                    modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                                    shape = MaterialTheme.shapes.medium,
                                    enabled = if (state.currentStep == 0) state.emocion.isNotBlank() else true,
                                ) {
                                    Text(stringResource(R.string.auto_siguiente))
                                }
                            }
                        }
                    }
                }
            }

            if (!state.mensajeError.isNullOrBlank()) {
                item(key = "error_message", contentType = "error") {
                    Surface(
                        color = MaterialTheme.colorScheme.errorContainer,
                        shape = MaterialTheme.shapes.small,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Row(
                            modifier = Modifier.padding(Spacing.sm),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Icon(Icons.Default.Info, contentDescription = null, tint = MaterialTheme.colorScheme.error)
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                text = state.mensajeError ?: "",
                                color = MaterialTheme.colorScheme.onErrorContainer,
                                style = MaterialTheme.typography.bodySmall,
                            )
                        }
                    }
                }
            }

            item(key = "history_header", contentType = "header") {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.padding(top = Spacing.s),
                ) {
                    Icon(Icons.Default.History, contentDescription = null, tint = MaterialTheme.colorScheme.primary)
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = stringResource(R.string.auto_historial_de_bienestar),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                    )
                }
            }

            if (state.entradas.isEmpty()) {
                item(key = "empty_history", contentType = "empty") {
                    Box(
                        modifier = Modifier.fillMaxWidth().padding(vertical = Spacing.xl),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_tu_diario_esta_esperando),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                    }
                }
            } else {
                items(
                    items = state.entradas,
                    key = { it.id },
                    contentType = { "entry" },
                ) { entrada ->
                    HistoryEntryCard(
                        entrada = entrada,
                        onEdit = { onEditarEntrada(entrada) },
                        onDelete = { onEliminarEntrada(entrada) },
                        formatter = formatter,
                    )
                }
            }
        }
    }
}

/**
 * Tarjeta que muestra una entrada del historial del diario emocional.
 */
@Composable
fun HistoryEntryCard(
    entrada: EntradaDiario,
    onEdit: () -> Unit,
    onDelete: () -> Unit,
    formatter: DateTimeFormatter,
    modifier: Modifier = Modifier,
) {
    val emotionEntry =
        PlutchikEmotion.entries.find { it.label == entrada.emocion }
            ?: PlutchikEmotion.entries.find { it.variants.contains(entrada.emocion) }

    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Row(
            modifier = Modifier.height(IntrinsicSize.Min),
        ) {
            Box(
                modifier =
                    Modifier
                        .fillMaxHeight()
                        .width(Dimensions.colorStripWidth)
                        .background(emotionEntry?.color ?: MaterialTheme.colorScheme.outline),
            )

            Column(
                modifier = Modifier.padding(Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.s),
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
                        shape = MaterialTheme.shapes.medium,
                        color = (emotionEntry?.color ?: MaterialTheme.colorScheme.primary).copy(alpha = 0.1f),
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            if (emotionEntry != null) {
                                Text(
                                    text = emotionEntry.emoji,
                                    style = MaterialTheme.typography.bodyMedium,
                                )
                            } else {
                                Icon(
                                    imageVector = Icons.Default.Mood,
                                    contentDescription = null,
                                    modifier = Modifier.size(Dimensions.iconSmall),
                                    tint = MaterialTheme.colorScheme.primary,
                                )
                            }
                            Spacer(modifier = Modifier.width(Spacing.xs))
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
                    modifier = Modifier.padding(vertical = Spacing.xs),
                    thickness = Dimensions.dividerThickness,
                    color = MaterialTheme.colorScheme.outlineVariant,
                )

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(
                            text = stringResource(R.string.auto_intensidad),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        repeat(10) { index ->
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.dotIndicator)
                                        .padding(Dimensions.borderThin)
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
                        IconButton(onClick = onEdit, modifier = Modifier.size(Dimensions.minTouchTarget)) {
                            Icon(
                                Icons.Default.Edit,
                                contentDescription = stringResource(R.string.auto_editar),
                                modifier = Modifier.size(Dimensions.iconButton),
                                tint = MaterialTheme.colorScheme.primary,
                            )
                        }
                        IconButton(onClick = onDelete, modifier = Modifier.size(Dimensions.minTouchTarget)) {
                            Icon(
                                Icons.Default.Delete,
                                contentDescription = stringResource(R.string.auto_eliminar),
                                modifier = Modifier.size(Dimensions.iconButton),
                                tint = MaterialTheme.colorScheme.error,
                            )
                        }
                    }
                }
            }
        }
    }
}

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun DiarioEmocionalPreview() {
    AppTheme {
        DiarioEmocionalContent(
            state =
                DiarioEmocionalUiState(
                    titulo = "Día tranquilo",
                    emocion = "Alegría",
                    subEmocion = "Serenidad",
                    intensidad = 7f,
                    currentStep = 1,
                ),
            snackbarHostState = remember { SnackbarHostState() },
            onSincronizar = {},
            onTituloChange = {},
            onEmocionChange = {},
            onSubEmocionChange = {},
            onIntensidadChange = {},
            onContenidoChange = {},
            onGuardar = {},
            onCancelarEdicion = {},
            onPreviousStep = {},
            onNextStep = {},
            onEditarEntrada = {},
            onEliminarEntrada = {},
        )
    }
}
