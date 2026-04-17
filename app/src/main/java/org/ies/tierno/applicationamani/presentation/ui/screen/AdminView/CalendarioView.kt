package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import java.time.LocalDate
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Calendario mensual interactivo.
 *
 * Muestra un mes completo con cabecera de navegación, fila de días de la semana
 * y una cuadrícula de celdas. Permite seleccionar un día y resaltar fechas
 * con eventos (citas).
 *
 * @param modifier Modificador de diseño.
 * @param fechaSeleccionada Fecha actualmente seleccionada, o `null` si ninguna.
 * @param fechasDestacadas Conjunto de fechas que muestran un indicador de evento.
 * @param diasBloqueados Conjunto de fechas bloqueadas por el psicólogo.
 * @param diasNoLaborables Conjunto de fechas no laborables (sábados, domingos, festivos).
 * @param onMesVisibleChange Callback para cambiar el mes visible.
 * @param onFechaSeleccionada Callback invocado cuando el usuario pulsa una fecha.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CalendarioView(
    modifier: Modifier = Modifier,
    mesVisible: YearMonth = YearMonth.now(),
    fechaSeleccionada: LocalDate? = null,
    fechasDestacadas: Set<LocalDate> = emptySet(),
    diasBloqueados: Set<LocalDate> = emptySet(),
    diasNoLaborables: Set<LocalDate> = emptySet(),
    onMesVisibleChange: (YearMonth) -> Unit = {},
    onFechaSeleccionada: (LocalDate) -> Unit = {}
) {
    Column(modifier = modifier) {
        CalendarioHeader(
            mesActual = mesVisible,
            onMesAnterior = { onMesVisibleChange(mesVisible.minusMonths(1)) },
            onMesSiguiente = { onMesVisibleChange(mesVisible.plusMonths(1)) }
        )
        CalendarioDiasSemana()
        CalendarioGrid(
            mes = mesVisible,
            fechaSeleccionada = fechaSeleccionada,
            fechasDestacadas = fechasDestacadas,
            diasBloqueados = diasBloqueados,
            diasNoLaborables = diasNoLaborables,
            onFechaSeleccionada = onFechaSeleccionada
        )
    }
}

/**
 * Cabecera del calendario con el nombre del mes y flechas de navegación.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CalendarioHeader(
    mesActual: YearMonth,
    onMesAnterior: () -> Unit,
    onMesSiguiente: () -> Unit
) {
    val formatter = DateTimeFormatter.ofPattern("MMMM yyyy", Locale.forLanguageTag("es"))

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 12.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        IconButton(onClick = onMesAnterior) {
            Icon(Icons.Default.ChevronLeft, contentDescription = "Mes anterior")
        }
        Text(
            text = mesActual.format(formatter).replaceFirstChar { it.uppercase() },
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.SemiBold
        )
        IconButton(onClick = onMesSiguiente) {
            Icon(Icons.Default.ChevronRight, contentDescription = "Mes siguiente")
        }
    }
}

/**
 * Fila con las iniciales de los días de la semana (L, M, X, J, V, S, D).
 */
@Composable
private fun CalendarioDiasSemana() {
    val dias = listOf("L", "M", "X", "J", "V", "S", "D")
    Row(modifier = Modifier.fillMaxWidth()) {
        dias.forEach { dia ->
            Text(
                text = dia,
                modifier = Modifier.weight(1f),
                textAlign = TextAlign.Center,
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/**
 * Cuadrícula de celdas que representa los días del mes.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CalendarioGrid(
    mes: YearMonth,
    fechaSeleccionada: LocalDate?,
    fechasDestacadas: Set<LocalDate>,
    diasBloqueados: Set<LocalDate>,
    diasNoLaborables: Set<LocalDate>,
    onFechaSeleccionada: (LocalDate) -> Unit
) {
    val hoy = LocalDate.now()
    val primerDia = mes.atDay(1)
    val offsetInicio = (primerDia.dayOfWeek.value - 1) // 0=Lun, 6=Dom
    val diasEnMes = mes.lengthOfMonth()

    val celdas: List<LocalDate?> = buildList {
        repeat(offsetInicio) { add(null) }
        for (dia in 1..diasEnMes) add(mes.atDay(dia))
    }

    val filas = celdas.chunked(7)

    Column {
        filas.forEach { fila ->
            Row(modifier = Modifier.fillMaxWidth()) {
                val filaPadded = fila + List(7 - fila.size) { null }
                filaPadded.forEach { fecha ->
                    CeldaDia(
                        fecha = fecha,
                        esSeleccionada = fecha == fechaSeleccionada,
                        esDestacada = fecha != null && fecha in fechasDestacadas,
                        esBloqueado = fecha != null && fecha in diasBloqueados,
                        esNoLaborable = fecha != null && fecha in diasNoLaborables,
                        esPasado = fecha != null && fecha.isBefore(hoy),
                        esHoy = fecha == hoy,
                        modifier = Modifier.weight(1f),
                        onClick = { if (fecha != null && !fecha.isBefore(hoy)) onFechaSeleccionada(fecha) }
                    )
                }
            }
        }
    }
}

/**
 * Celda individual que representa un día del calendario.
 *
 * @param fecha Fecha representada, o `null` si la celda es un espacio vacío.
 * @param esSeleccionada `true` si esta celda es la fecha seleccionada.
 * @param esDestacada `true` si la fecha tiene un evento asociado.
 * @param esBloqueado `true` si la fecha está bloqueada por el psicólogo.
 * @param esNoLaborable `true` si la fecha es no laborable (sábado/domingo/festivo).
 * @param esPasado `true` si la fecha es anterior al día actual.
 * @param esHoy `true` si la fecha corresponde al día actual.
 * @param modifier Modificador de diseño.
 * @param onClick Acción al pulsar la celda.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CeldaDia(
    fecha: LocalDate?,
    esSeleccionada: Boolean,
    esDestacada: Boolean,
    esBloqueado: Boolean,
    esNoLaborable: Boolean,
    esPasado: Boolean,
    esHoy: Boolean,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val colors = MaterialTheme.colorScheme

    // Determinar color de fondo según el estado
    val bgColor = when {
        esSeleccionada -> colors.primary
        esBloqueado -> colors.errorContainer.copy(alpha = 0.5f)
        esNoLaborable -> colors.surfaceVariant.copy(alpha = 0.5f)
        esHoy && !esSeleccionada -> colors.primaryContainer
        else -> Color.Transparent
    }

    // Determinar color del texto según el estado
    val textColor = when {
        esSeleccionada -> colors.onPrimary
        esBloqueado -> colors.error
        esNoLaborable -> colors.onSurfaceVariant
        esPasado -> colors.onSurfaceVariant.copy(alpha = 0.4f)
        esHoy -> colors.onPrimaryContainer
        else -> colors.onSurface
    }

    // Determinar si la celda es clickeable (no puede seleccionar días pasados ni días bloqueados)
    val habilitado = fecha != null && !esPasado

    Box(
        modifier = modifier
            .aspectRatio(1f)
            .padding(2.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(bgColor)
            .clickable(enabled = habilitado, onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = fecha?.dayOfMonth?.toString() ?: "",
                style = MaterialTheme.typography.bodySmall,
                fontWeight = if (esSeleccionada) FontWeight.Bold else FontWeight.Normal,
                color = textColor
            )

            // Punto indicador para fechas con citas (solo si no está seleccionada o bloqueada)
            if (esDestacada && !esSeleccionada && !esBloqueado) {
                Spacer(modifier = Modifier.height(2.dp))
                Box(
                    modifier = Modifier
                        .size(4.dp)
                        .clip(CircleShape)
                        .background(colors.tertiary)
                )
            }
        }
    }
}