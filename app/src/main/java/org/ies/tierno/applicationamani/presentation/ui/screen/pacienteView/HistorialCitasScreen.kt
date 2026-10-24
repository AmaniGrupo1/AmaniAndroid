package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.FitnessCenter
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

@Composable
fun HistorialCitasScreen(
    navController: NavController,
    viewModel: ListarCitasViewModel,
    modifier: Modifier = Modifier,
) {
    val historialCitas = remember { viewModel.historialCitas }
    val isLoading by remember { viewModel.isLoading }
    val error by remember { viewModel.error }

    LaunchedEffect(Unit) {
        viewModel.cargarHistorialCitas()
    }

    HistorialCitasContent(
        historialCitas = historialCitas,
        isLoading = isLoading,
        error = error,
        onBackClick = { navController.navigateUp() },
        onRetry = { viewModel.cargarHistorialCitas() },
        modifier = modifier,
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialCitasContent(
    historialCitas: List<HistorialCitaResponseDTO>,
    isLoading: Boolean,
    error: String?,
    onBackClick: () -> Unit,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_historial_de_citas),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colorScheme.onSurface,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                    ),
            )
        },
    ) { padding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .background(colorScheme.background),
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_cargando_historial),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                error != null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.padding(Spacing.l),
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                tint = colorScheme.error,
                                modifier = Modifier.size(Dimensions.iconHero),
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = error,
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Button(
                                onClick = onRetry,
                                colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                            ) {
                                Text(
                                    stringResource(R.string.auto_reintentar),
                                    color = colorScheme.onPrimary,
                                    style = typography.labelLarge,
                                )
                            }
                        }
                    }
                }

                historialCitas.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.padding(Spacing.l),
                        ) {
                            Icon(
                                Icons.Default.CalendarToday,
                                contentDescription = null,
                                tint = colorScheme.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconHero),
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_no_tienes_citas_en),
                                style = typography.titleMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = stringResource(R.string.auto_las_citas_completadas_apareceran),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        items(
                            items = historialCitas,
                            key = { "${it.fechaHora}_${it.nombrePsicologo}" },
                            contentType = { "historial_cita" },
                        ) { cita ->
                            HistorialCitaCard(cita = cita)
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun HistorialCitaCard(
    cita: HistorialCitaResponseDTO,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = AmaniTheme.colors

    val formattedDate =
        try {
            val dateTime = LocalDateTime.parse(cita.fechaHora)
            val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")
            val timeFormatter = DateTimeFormatter.ofPattern("HH:mm")
            "${dateTime.format(dateFormatter)} - ${dateTime.format(timeFormatter)}"
        } catch (_: Exception) {
            cita.fechaHora
        }

    val estadoColor =
        when (cita.estado.lowercase()) {
            "completada", "realizada" -> amaniColors.success
            "cancelada" -> colorScheme.error
            "pendiente" -> amaniColors.warning
            else -> colorScheme.onSurfaceVariant
        }

    val pagoColor =
        when (cita.estadoPago.lowercase()) {
            "pagado", "completado" -> amaniColors.success
            "pendiente" -> amaniColors.warning
            "fallido", "rechazado" -> colorScheme.error
            "reembolsado" -> colorScheme.tertiary
            else -> colorScheme.onSurfaceVariant
        }

    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(
                        Icons.Default.CalendarToday,
                        contentDescription = null,
                        tint = colorScheme.primary,
                        modifier = Modifier.size(Dimensions.iconButton),
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = formattedDate,
                        style = typography.bodyMedium,
                        fontWeight = FontWeight.Medium,
                        color = colorScheme.onSurface,
                    )
                }

                Surface(
                    shape = CircleShape,
                    color = estadoColor.copy(alpha = 0.15f),
                ) {
                    Text(
                        text = cita.estado,
                        style = typography.labelSmall,
                        modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                        color = estadoColor,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.sm))

            Row(
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = null,
                    tint = colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(Dimensions.iconSmall),
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = stringResource(R.string.pago_psicologo, cita.nombrePsicologo),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurface,
                )
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(
                        Icons.Default.FitnessCenter,
                        contentDescription = null,
                        tint = colorScheme.onSurfaceVariant,
                        modifier = Modifier.size(Dimensions.iconSmall),
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = cita.tipoTerapia,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }

                Surface(
                    shape = CircleShape,
                    color = colorScheme.primary.copy(alpha = 0.1f),
                ) {
                    Text(
                        text = cita.modalidad,
                        style = typography.labelSmall,
                        modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                        color = colorScheme.primary,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            Row(
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Icon(
                    Icons.Default.Timer,
                    contentDescription = null,
                    tint = colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(Dimensions.iconSmall),
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = stringResource(R.string.cita_duracion_minutos, cita.duracionMinutos),
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                )
            }

            if (!cita.motivo.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(Spacing.s))
                Row(
                    verticalAlignment = Alignment.Top,
                ) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        tint = colorScheme.onSurfaceVariant,
                        modifier = Modifier.size(Dimensions.iconSmall),
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = cita.motivo,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        modifier = Modifier.weight(1f),
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.sm))

            HorizontalDivider(
                modifier = Modifier.padding(vertical = Spacing.xs),
                color = colorScheme.outlineVariant,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = String.format(Locale.getDefault(), "€ %.2f", cita.precio),
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.primary,
                )

                Surface(
                    shape = CircleShape,
                    color = pagoColor.copy(alpha = 0.15f),
                ) {
                    Text(
                        text = cita.estadoPago,
                        style = typography.labelMedium,
                        modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.xs),
                        color = pagoColor,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
        }
    }
}

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun HistorialCitasScreenPreview() {
    AppTheme {
        HistorialCitasContent(
            historialCitas = emptyList(),
            isLoading = false,
            error = null,
            onBackClick = {},
            onRetry = {},
        )
    }
}