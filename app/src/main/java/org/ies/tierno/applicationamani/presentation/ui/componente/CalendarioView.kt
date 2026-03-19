package org.ies.tierno.applicationamani.presentation.ui.componente

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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.compose.rememberNavController
import java.time.LocalDate
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CalendarioView(
    modifier: Modifier = Modifier,
    fechaSeleccionada: LocalDate? = null,
    fechasDestacadas: Set<LocalDate> = emptySet(),
    onFechaSeleccionada: (LocalDate) -> Unit = {}
) {
    var mesActual by remember { mutableStateOf(YearMonth.now()) }

    Column(modifier = modifier) {
        CalendarioHeader(
            mesActual = mesActual,
            onMesAnterior = { mesActual = mesActual.minusMonths(1) },
            onMesSiguiente = { mesActual = mesActual.plusMonths(1) }
        )
        CalendarioDiasSemana()
        CalendarioGrid(
            mes = mesActual,
            fechaSeleccionada = fechaSeleccionada,
            fechasDestacadas = fechasDestacadas,
            onFechaSeleccionada = onFechaSeleccionada
        )
    }
}

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

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CalendarioGrid(
    mes: YearMonth,
    fechaSeleccionada: LocalDate?,
    fechasDestacadas: Set<LocalDate>,
    onFechaSeleccionada: (LocalDate) -> Unit
) {
    // Calcular offset: primer día del mes (lunes = 0)
    val primerDia = mes.atDay(1)
    val offsetInicio = (primerDia.dayOfWeek.value - 1) // 0=Lun, 6=Dom
    val diasEnMes = mes.lengthOfMonth()

    // Total de celdas (rellenamos con null los huecos)
    val celdas: List<LocalDate?> = buildList {
        repeat(offsetInicio) { add(null) }
        for (dia in 1..diasEnMes) add(mes.atDay(dia))
    }

    val filas = celdas.chunked(7)

    Column {
        filas.forEach { fila ->
            Row(modifier = Modifier.fillMaxWidth()) {
                // Rellenar la última fila si tiene menos de 7 elementos
                val filaPadded = fila + List(7 - fila.size) { null }
                filaPadded.forEach { fecha ->
                    CeldaDia(
                        fecha = fecha,
                        esSeleccionada = fecha == fechaSeleccionada,
                        esDestacada = fecha != null && fecha in fechasDestacadas,
                        esHoy = fecha == LocalDate.now(),
                        modifier = Modifier.weight(1f),
                        onClick = { if (fecha != null) onFechaSeleccionada(fecha) }
                    )
                }
            }
        }
    }
}

@Composable
private fun CeldaDia(
    fecha: LocalDate?,
    esSeleccionada: Boolean,
    esDestacada: Boolean,
    esHoy: Boolean,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val bgColor = when {
        esSeleccionada -> MaterialTheme.colorScheme.primary
        esHoy -> MaterialTheme.colorScheme.primaryContainer
        else -> Color.Transparent
    }
    val textColor = when {
        esSeleccionada -> MaterialTheme.colorScheme.onPrimary
        esHoy -> MaterialTheme.colorScheme.onPrimaryContainer
        fecha == null -> Color.Transparent
        else -> MaterialTheme.colorScheme.onSurface
    }

    Box(
        modifier = modifier
            .aspectRatio(1f)
            .padding(2.dp)
            .clip(CircleShape)
            .background(bgColor)
            .clickable(enabled = fecha != null, onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = fecha?.dayOfMonth?.toString() ?: "",
                style = MaterialTheme.typography.bodySmall,
                color = textColor
            )
            // Punto indicador para fechas destacadas (ej: citas)
            if (esDestacada && !esSeleccionada) {
                Spacer(modifier = Modifier.height(2.dp))
                Box(
                    modifier = Modifier
                        .size(4.dp)
                        .clip(CircleShape)
                        .background(MaterialTheme.colorScheme.primary)
                )
            }
        }
    }
}


@RequiresApi(Build.VERSION_CODES.O)
@Composable
@Preview(showBackground = true)
fun CalendarioViewPreview() {
       CalendarioView(
        fechaSeleccionada = LocalDate.now(),
        fechasDestacadas = setOf(LocalDate.now().plusDays(2), LocalDate.now().plusDays(5)),
        onFechaSeleccionada = { /* Acción al seleccionar fecha */ }
    )
}