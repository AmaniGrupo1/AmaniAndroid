package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.content.res.Configuration
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material3.Button
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
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatPartner
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla que lista las conversaciones disponibles para el usuario actual.
 *
 * Muestra las parejas de chat (psicólogo asignado para pacientes, o pacientes
 * asignados para psicólogos) en tarjetas pulsables que navegan a [ChatScreen].
 * Si no hay conversaciones disponibles, muestra un mensaje informativo.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de partners de chat.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatListScreen(
    navController: NavController,
    viewModel: ChatListViewModel,
) {
    val currentUserId by viewModel.currentUserId.collectAsStateWithLifecycle()
    val currentUserRol by viewModel.currentUserRol.collectAsStateWithLifecycle()
    val partners by viewModel.partners.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    val normalizedRol =
        currentUserRol
            .lowercase()
            .trim()
            .replace("ó", "o")
            .replace("á", "a")

    val tuPsicologoDefault = stringResource(R.string.chat_tu_psicologo_default)
    val tuPacienteDefault = stringResource(R.string.chat_tu_paciente_default)

    ChatListContent(
        currentUserId = currentUserId,
        currentUserRol = currentUserRol,
        normalizedRol = normalizedRol,
        partners = partners,
        isLoading = isLoading,
        error = error,
        onBackClick = { navController.popBackStack() },
        onRetryClick = viewModel::retry,
        onPartnerClick = { partner ->
            currentUserId?.let { currentId ->
                val safePartnerName =
                    partner.nombre.ifBlank {
                        if (normalizedRol == "paciente") tuPsicologoDefault else tuPacienteDefault
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatListContent(
    currentUserId: Long?,
    currentUserRol: String,
    normalizedRol: String,
    partners: List<ChatPartner>,
    isLoading: Boolean,
    error: String?,
    onBackClick: () -> Unit,
    onRetryClick: () -> Unit,
    onPartnerClick: (ChatPartner) -> Unit,
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.auto_mensajes)) },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.surface,
                        titleContentColor = colors.onSurface,
                        navigationIconContentColor = colors.onSurface,
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
                                .padding(Spacing.l),
                        shape = MaterialTheme.shapes.large,
                        color = colors.surfaceContainerLow,
                        tonalElevation = Elevation.level1,
                    ) {
                        Column(modifier = Modifier.padding(Spacing.l)) {
                            Text(
                                text = error,
                                style = typography.bodyLarge,
                                textAlign = TextAlign.Center,
                                color = colors.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.height(Spacing.sm))
                            Button(
                                onClick = onRetryClick,
                                modifier = Modifier.align(Alignment.CenterHorizontally),
                            ) {
                                Text(stringResource(R.string.auto_reintentar))
                            }
                        }
                    }
                }
                partners.isEmpty() -> {
                    Surface(
                        modifier =
                            Modifier
                                .align(Alignment.Center)
                                .padding(Spacing.l),
                        shape = MaterialTheme.shapes.large,
                        color = colors.surfaceContainerLow,
                        tonalElevation = Elevation.level1,
                    ) {
                        Text(
                            text =
                                if (normalizedRol == "psicologo" || normalizedRol == "psicologa") {
                                    stringResource(R.string.chat_sin_pacientes_asignados)
                                } else {
                                    stringResource(R.string.chat_sin_psicologo_asignado)
                                },
                            style = typography.bodyLarge,
                            textAlign = TextAlign.Center,
                            color = colors.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = Spacing.l, vertical = Spacing.l),
                        )
                    }
                }
                else -> {
                    Column(
                        modifier =
                            Modifier
                                .fillMaxSize()
                                .padding(Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        Text(
                            text = stringResource(R.string.auto_tu_conversacion),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = colors.onSurface,
                            modifier = Modifier.padding(bottom = Spacing.xs),
                        )

                        LazyColumn(
                            verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                        ) {
                            items(
                                items = partners,
                                key = { partner -> partner.id },
                            ) { partner ->
                                ChatPartnerCard(
                                    partnerName = partner.nombre,
                                    currentUserRol = currentUserRol,
                                    onClick = { onPartnerClick(partner) },
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
        shape = MaterialTheme.shapes.medium,
        colors =
            CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
            ),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Box(
                modifier =
                    Modifier
                        .size(Dimensions.avatarMedium)
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

            Spacer(modifier = Modifier.width(Spacing.m))

            Column(
                modifier = Modifier.weight(1f),
            ) {
                Text(
                    text = partnerName,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                Text(
                    text =
                        if (currentUserRol == "paciente") {
                            stringResource(R.string.chat_subtitulo_psicologo_asignado)
                        } else {
                            stringResource(R.string.chat_subtitulo_paciente_asignado)
                        },
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}

@Preview(name = "ChatList Light", showBackground = true)
@Preview(name = "ChatList Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ChatList FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ChatListScreenPreview() {
    AppTheme {
        ChatListContent(
            currentUserId = 10L,
            currentUserRol = "paciente",
            normalizedRol = "paciente",
            partners =
                listOf(
                    ChatPartner(
                        id = 2L,
                        nombre = "Dra. Laura Fernández",
                        rol = "psicologo",
                    ),
                ),
            isLoading = false,
            error = null,
            onBackClick = {},
            onRetryClick = {},
            onPartnerClick = {},
        )
    }
}
