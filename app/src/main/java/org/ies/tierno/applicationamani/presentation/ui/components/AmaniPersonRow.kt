package org.ies.tierno.applicationamani.presentation.ui.components

import android.content.res.Configuration
import androidx.compose.foundation.clickable
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ConversationAvatar
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions

/**
 * Fila de persona según Material 3 [ListItem]: avatar, nombre y texto de apoyo.
 */
@Composable
fun AmaniPersonRow(
    name: String,
    supporting: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    photoUrl: String? = null,
    trailing: (@Composable () -> Unit)? = null,
) {
    ListItem(
        headlineContent = {
            Text(
                text = name,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        },
        supportingContent = {
            Text(
                text = supporting,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        },
        leadingContent = {
            ConversationAvatar(
                name = name,
                size = Dimensions.avatarMedium,
                photoUrl = photoUrl,
            )
        },
        trailingContent = trailing,
        colors =
            ListItemDefaults.colors(
                containerColor = MaterialTheme.colorScheme.surface,
            ),
        modifier =
            modifier
                .clickable(onClick = onClick)
                .semantics { role = Role.Button },
    )
}

@Preview(name = "PersonRow Light", showBackground = true)
@Preview(name = "PersonRow Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Composable
private fun AmaniPersonRowPreview() {
    AppTheme {
        AmaniPersonRow(
            name = "Laura Fernández",
            supporting = "Psicóloga asignada",
            onClick = {},
        )
    }
}
