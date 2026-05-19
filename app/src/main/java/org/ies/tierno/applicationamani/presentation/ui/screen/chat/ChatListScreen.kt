package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatListScreen(
    navController: NavController,
    viewModel: ChatListViewModel,
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current
    val currentUserId by viewModel.currentUserId.collectAsState()
    val currentUserRol by viewModel.currentUserRol.collectAsState()
    val normalizedRol =
        currentUserRol
            .lowercase()
            .trim()
            .replace("ó", "o")
            .replace("á", "a")
    val partners by viewModel.partners.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val error by viewModel.error.collectAsState()

    Scaffold(
        containerColor = amaniColors.screenBackground,
        topBar = {
            TopAppBar(
                title = { Text("Mensajes") },
                navigationIcon = {
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.surface,
                        titleContentColor = colors.onSurface,
                    ),
            )
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                isLoading || currentUserId == null -> {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center),
                    )
                }
                error != null && partners.isEmpty() -> {
                    Surface(
                        modifier =
                            Modifier
                                .align(Alignment.Center)
                                .padding(24.dp),
                        shape = MaterialTheme.shapes.large,
                        color = colors.surface,
                        tonalElevation = 2.dp,
                    ) {
                        Column(modifier = Modifier.padding(20.dp)) {
                            Text(
                                text = error ?: "No se pudo abrir el chat",
                                style = typography.bodyLarge,
                                textAlign = TextAlign.Center,
                                color = colors.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.height(12.dp))
                            androidx.compose.material3.Button(
                                onClick = viewModel::retry,
                                modifier = Modifier.align(Alignment.CenterHorizontally),
                            ) {
                                Text("Reintentar")
                            }
                        }
                    }
                }
                partners.isEmpty() -> {
                    Surface(
                        modifier =
                            Modifier
                                .align(Alignment.Center)
                                .padding(24.dp),
                        shape = MaterialTheme.shapes.large,
                        color = colors.surface,
                        tonalElevation = 2.dp,
                    ) {
                        Text(
                            text =
                                if (normalizedRol == "psicologo" || normalizedRol == "psicologa") {
                                    "No tienes pacientes asignados aún"
                                } else {
                                    "No tienes psicólogo asignado aún"
                                },
                            style = typography.bodyLarge,
                            textAlign = TextAlign.Center,
                            color = colors.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = 20.dp, vertical = 24.dp),
                        )
                    }
                }
                else -> {
                    Column(
                        modifier =
                            Modifier
                                .fillMaxSize()
                                .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        Text(
                            text = "Tu conversación",
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = colors.onSurface,
                            modifier = Modifier.padding(bottom = 4.dp),
                        )

                        LazyColumn(
                            verticalArrangement = Arrangement.spacedBy(12.dp),
                        ) {
                            items(partners) { partner ->
                                ChatPartnerCard(
                                    partnerName = partner.nombre,
                                    currentUserRol = currentUserRol,
                                    onClick = {
                                        currentUserId?.let { currentId ->
                                            val safePartnerName =
                                                partner.nombre.ifBlank {
                                                    if (normalizedRol == "paciente") "Tu Psicólogo" else "Tu Paciente"
                                                }
                                            navController.navigate(
                                                Screens.chat.createRoute(
                                                    currentId,
                                                    partner.id,
                                                    safePartnerName,
                                                ),
                                            )
                                        }
                                    },
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ChatPartnerCard(
    partnerName: String,
    currentUserRol: String,
    onClick: () -> Unit,
) {
    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { onClick() },
        shape = RoundedCornerShape(12.dp),
        colors =
            CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surface,
            ),
        elevation = CardDefaults.cardElevation(defaultElevation = 3.dp),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Box(
                modifier =
                    Modifier
                        .size(48.dp)
                        .clip(CircleShape)
                        .background(MaterialTheme.colorScheme.primaryContainer),
                contentAlignment = Alignment.Center,
            ) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.Chat,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                )
            }

            Spacer(modifier = Modifier.width(16.dp))

            Column(
                modifier = Modifier.weight(1f),
            ) {
                Text(
                    text = partnerName,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text =
                        if (currentUserRol == "paciente") {
                            "Tu psicólogo asignado"
                        } else {
                            "Tu paciente"
                        },
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}
