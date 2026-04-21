package org.ies.tierno.applicationamani.presentation.ui.screen.diario

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalViewModel
import org.koin.androidx.compose.koinViewModel
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

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
            OutlinedTextField(
                value = state.contenido,
                onValueChange = viewModel::onContenidoChange,
                label = { Text("¿Cómo te sientes hoy?") },
                modifier = Modifier.fillMaxWidth(),
                minLines = 3
            )
        }
        item {
            OutlinedTextField(
                value = state.emocion,
                onValueChange = viewModel::onEmocionChange,
                label = { Text("Emoción principal") },
                modifier = Modifier.fillMaxWidth()
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
                            color = MaterialTheme.colorScheme.onSurfaceVariant
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
