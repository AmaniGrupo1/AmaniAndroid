package org.ies.tierno.applicationamani.data.local.ticket

import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

data class Ticket(
    val id: String,
    val title: String,
    val date: String,
    val status: TicketStatus,
    val statusLabel: String,
)

enum class TicketStatus(
    val displayName: String,
    val containerColor: Color,
    val contentColor: Color,
    val icon: @Composable () -> Unit
) {
    ABIERTO(
        "ABIERTO",
        Color(0xFFDBEAFE), Color(0xFF1E40AF),
        {
            Icon(
                Icons.Default.Schedule,
                contentDescription = null,
                tint = Color(0xFF2563EB),
                modifier = Modifier.size(16.dp)
            )
        }
    ),
    EN_PROCESO(
        "EN PROCESO",
        Color(0xFFDCFCE7), Color(0xFF166534),
        {
            CircularProgressIndicator(
                modifier = Modifier.size(14.dp),
                strokeWidth = 2.dp,
                color = Color(0xFF16A34A)
            )
        }
    ),
    PENDIENTE(
        "PENDIENTE",
        Color(0xFFFEF3C7), Color(0xFF92400E),
        {
            Icon(
                Icons.Default.Schedule,
                contentDescription = null,
                tint = Color(0xFFD97706),
                modifier = Modifier.size(16.dp)
            )
        }
    ),
    CERRADO(
        "CERRADO",
        Color(0xFFF3F4F6), Color(0xFF6B7280),
        {
            Icon(
                Icons.Default.CheckCircle,
                contentDescription = null,
                tint = Color(0xFF6B7280),
                modifier = Modifier.size(16.dp)
            )
        }
    )


}

enum class TicketType { BUG, FEATURE }
