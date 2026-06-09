package org.ies.tierno.applicationamani.presentation.ui.componente

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.time.format.TextStyle
import java.util.Locale

// ─── Modelo de franja horaria ──────────────────────────────────

/**
 * Representa una franja horaria en la vista diaria del calendario.
 *
 * @property horaInicio Hora de inicio de la franja.
 * @property activo `true` si la franja está disponible para reservar.
 * @property motivo Texto opcional que describe la cita ocupada (ej: "Sesión con Dr. García").
 */
data class FranjaHoraria(
    val diaSemana: Short,
    val horaInicio: String,
    val horaFin: String,
    val activo: Boolean = true,
    val motivo: String? = null,
)

// ─── Composable principal ──────────────────────────────────────

/**
 * Vista diaria que muestra las franjas horarias de un día concreto.
 *
 * Presenta una cabecera con la fecha seleccionada, una leyenda de colores
 * y una lista vertical de franjas horarias. Las franjas libres son
 * pulsa bles para que el usuario pueda reservar una cita.
 *
 * Los colores se obtienen de [LocalAmaniColors] (`citaLibre`, `citaOcupada`,
 * `citaOcupadaBg`) y la tipografía de [MaterialTheme.typography].
 *
 * @param fecha Día que se está visualizando.
 * @param franjas Lista de [FranjaHoraria] del día (normalmente de 08:00 a 20:00).
 * @param modifier Modificador externo.
 * @param onFranjaSeleccionada Callback al pulsar una franja libre.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun VistaDiariaHoras(
    fecha: LocalDate,
    franjas: List<FranjaHoraria>,
    modifier: Modifier = Modifier,
    onFranjaSeleccionada: (FranjaHoraria) -> Unit = {},
) {
    Column(modifier = modifier) {
        // ── Cabecera del día ──
        CabeceraDia(fecha)

        Spacer(modifier = Modifier.height(8.dp))

        // ── Leyenda ──
        Leyenda()

        Spacer(modifier = Modifier.height(12.dp))

        // ── Lista de franjas ──
        Column(
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            franjas.forEach { franja ->
                TarjetaFranja(
                    franja = franja,
                    onClick = {
                        if (franja.activo) onFranjaSeleccionada(franja)
                    },
                )
            }
        }
    }
}

// ─── Cabecera del día ──────────────────────────────────────────

/**
 * Muestra la fecha seleccionada con formato legible en español
 * (ej: "Viérnes, 20 de marzo de 2026").
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CabeceraDia(fecha: LocalDate) {
    val localeEs = Locale.forLanguageTag("es-ES")

    val diaSemana =
        fecha.dayOfWeek
            .getDisplayName(TextStyle.FULL, localeEs)
            .replaceFirstChar { it.uppercase() }

    val formatter = DateTimeFormatter.ofPattern("d 'de' MMMM 'de' yyyy", localeEs)

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Column(
        modifier =
            Modifier
                .fillMaxWidth()
                .background(
                    color = colors.primaryContainer,
                    shape = RoundedCornerShape(12.dp),
                ).padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(
            text = diaSemana,
            style = typography.titleLarge,
            fontWeight = FontWeight.Bold,
            color = colors.onPrimaryContainer,
        )
        Spacer(modifier = Modifier.height(4.dp))
        Text(
            text = fecha.format(formatter),
            style = typography.bodyMedium,
            color = colors.onPrimaryContainer,
        )
    }
}

// ─── Leyenda ───────────────────────────────────────────────────

/**
 * Leyenda visual que indica qué color corresponde a «Libre» y a «Ocupado».
 */
@Composable
private fun Leyenda() {
    val amani = LocalAmaniColors.current

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.Center,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        IndicadorLeyenda(color = amani.citaLibre, texto = "Libre")
        Spacer(modifier = Modifier.width(24.dp))
        IndicadorLeyenda(color = amani.citaOcupada, texto = "Ocupado")
    }
}

/**
 * Pequeño punto de color + texto para un ítem de la leyenda.
 */
@Composable
private fun IndicadorLeyenda(
    color: Color,
    texto: String,
) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier =
                Modifier
                    .size(16.dp)
                    .clip(CircleShape)
                    .background(color),
        )
        Spacer(modifier = Modifier.width(6.dp))
        Text(
            text = texto,
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurface,
        )
    }
}

// ─── Tarjeta de franja horaria ─────────────────────────────────

/**
 * Tarjeta que representa una franja horaria individual.
 *
 * - **Libre**: fondo blanco con borde verde, icono de reloj y texto "Disponible".
 * - **Ocupada**: fondo rosa suave con borde rojo, icono de aspa y motivo de la cita.
 *
 * @param franja Datos de la franja.
 * @param onClick Acción al pulsar (solo habilitada si [FranjaHoraria.activo] es `true`).
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun TarjetaFranja(
    franja: FranjaHoraria,
    onClick: () -> Unit,
) {
    val amani = LocalAmaniColors.current
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val borderColor by animateColorAsState(
        targetValue = if (franja.activo) amani.citaLibre else amani.citaOcupada,
        label = stringResource(R.string.auto_bordercolor),
    )
    val containerColor by animateColorAsState(
        targetValue = if (franja.activo) amani.textFieldContainer else amani.citaOcupadaBg,
        label = stringResource(R.string.auto_containercolor),
    )

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .border(1.5.dp, borderColor, RoundedCornerShape(12.dp))
                .clickable(enabled = franja.activo, onClick = onClick),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = containerColor),
        elevation =
            CardDefaults.cardElevation(
                defaultElevation = if (franja.activo) 2.dp else 0.dp,
            ),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            // ── Hora ──
            Text(
                text = franja.horaInicio, // ya está en formato "HH:mm"
                style = typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
                color = if (franja.activo) colors.onSurface else colors.onSurfaceVariant,
                modifier = Modifier.width(56.dp),
                textAlign = TextAlign.Center,
            )

            Spacer(modifier = Modifier.width(12.dp))

            // ── Icono de estado ──
            Icon(
                imageVector = if (franja.activo) Icons.Default.AccessTime else Icons.Default.Close,
                contentDescription = if (franja.activo) "Hora libre" else "Hora ocupada",
                tint = if (franja.activo) amani.citaLibre else amani.citaOcupada,
                modifier = Modifier.size(22.dp),
            )

            Spacer(modifier = Modifier.width(12.dp))

            // ── Texto descriptivo ──
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = if (franja.activo) "Disponible" else "Ocupado",
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium,
                    color = if (franja.activo) amani.citaLibre else amani.citaOcupada,
                )
                if (!franja.activo && !franja.motivo.isNullOrBlank()) {
                    Text(
                        text = franja.motivo,
                        style = typography.bodySmall,
                        color = colors.onSurfaceVariant,
                    )
                }
            }

            // ── Indicador de seleccionable ──
            if (franja.activo) {
                Icon(
                    imageVector = Icons.Default.CheckCircle,
                    contentDescription = stringResource(R.string.auto_seleccionar),
                    tint = amani.citaLibre.copy(alpha = 0.5f),
                    modifier = Modifier.size(20.dp),
                )
            }
        }
    }
}

// ─── Función utilitaria ────────────────────────────────────────

/**
 * Genera las franjas horarias de un día completo (por defecto de 08:00 a 20:00
 * en intervalos de 1 hora) marcando como ocupadas las horas que coincidan con
 * las citas proporcionadas.
 *
 * @param horaInicio Hora de apertura (por defecto 8).
 * @param horaFin Hora de cierre exclusiva (por defecto 20).
 * @param intervaloMinutos Duración de cada franja en minutos (por defecto 60).
 * @param citasOcupadas Mapa de [LocalTime] → motivo para las horas ya reservadas.
 * @return Lista de [FranjaHoraria] lista para pasar a [VistaDiariaHoras].
 */
@RequiresApi(Build.VERSION_CODES.O)
fun generarFranjasDia(
    diaSemana: Short = 1,
    horaInicio: Int = 8,
    horaFin: Int = 20,
    intervaloMinutos: Int = 60,
    citasOcupadas: Map<LocalTime, String> = emptyMap(), // <-- cambio aquí
): List<FranjaHoraria> {
    val franjas = mutableListOf<FranjaHoraria>()
    var hora = LocalTime.of(horaInicio, 0)
    val fin = LocalTime.of(horaFin, 0)
    val formatter = DateTimeFormatter.ofPattern("HH:mm")

    while (hora.isBefore(fin)) {
        val inicioStr = hora.format(formatter)
        val finStr = hora.plusMinutes(intervaloMinutos.toLong()).format(formatter)
        val motivo = citasOcupadas[hora] // ahora funciona con LocalTime

        franjas.add(
            FranjaHoraria(
                diaSemana = diaSemana,
                horaInicio = inicioStr,
                horaFin = finStr,
                activo = motivo == null,
                motivo = motivo,
            ),
        )
        hora = hora.plusMinutes(intervaloMinutos.toLong())
    }
    return franjas
}
