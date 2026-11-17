package org.ies.tierno.applicationamani.presentation.ui.components

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Inbox
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Estado vacío alineado con Material 3: icono decorativo, título y texto de apoyo.
 *
 * @param title Texto principal (sentence case).
 * @param supporting Pista de qué puede hacer la persona a continuación.
 * @param icon Icono vectorial; TalkBack lo ignora (`contentDescription = null`).
 * @param actionLabel Etiqueta del botón opcional.
 * @param onAction Callback del botón opcional.
 */
@Composable
fun AmaniEmptyState(
    title: String,
    supporting: String? = null,
    modifier: Modifier = Modifier,
    icon: ImageVector = Icons.Outlined.Inbox,
    actionLabel: String? = null,
    onAction: (() -> Unit)? = null,
) {
    Column(
        modifier =
            modifier
                .fillMaxSize()
                .padding(horizontal = Spacing.xl),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconHero),
            tint = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = title,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface,
            textAlign = TextAlign.Center,
        )
        if (!supporting.isNullOrBlank()) {
            Spacer(modifier = Modifier.height(Spacing.xs))
            Text(
                text = supporting,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
            )
        }
        if (actionLabel != null && onAction != null) {
            Spacer(modifier = Modifier.height(Spacing.m))
            Button(onClick = onAction) {
                Text(actionLabel)
            }
        }
    }
}

@Preview(name = "Empty Light", showBackground = true)
@Preview(name = "Empty Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "Empty FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun AmaniEmptyStatePreview() {
    AppTheme {
        AmaniEmptyState(
            title = "Aún no hay elementos",
            supporting = "Cuando haya datos, aparecerán aquí",
        )
    }
}
