package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.outlined.ShowChart
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.Icon
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

enum class AdminNavItem {
    DOCUMENTOS,
    MENSAJES,
    CALENDARIO,
    ESTADISTICAS,
    CONFIGURACION
}

@Composable
fun BarraNavegationInferiorAdmin(
    navController: NavController,
    selectedItem: AdminNavItem,
    onItemSelected: (AdminNavItem) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(12.dp),
        horizontalArrangement = Arrangement.SpaceAround,
        verticalAlignment = Alignment.CenterVertically
    ) {

        ItemIcon(
            icon = Icons.Outlined.Description,
            selected = selectedItem == AdminNavItem.DOCUMENTOS
        ) { onItemSelected(AdminNavItem.DOCUMENTOS) }

        ItemIcon(
            icon = Icons.Outlined.ChatBubbleOutline,
            selected = selectedItem == AdminNavItem.MENSAJES
        ) { onItemSelected(AdminNavItem.MENSAJES) }

        ItemIcon(
            icon = Icons.Outlined.CalendarToday,
            selected = selectedItem == AdminNavItem.CALENDARIO
        ) {
            onItemSelected(AdminNavItem.CALENDARIO)
            navController.navigate(Screens.psicologoAgenda.route)
        }

        ItemIcon(
            icon = Icons.AutoMirrored.Outlined.ShowChart,
            selected = selectedItem == AdminNavItem.ESTADISTICAS
        ) { onItemSelected(AdminNavItem.ESTADISTICAS) }

        ItemIcon(
            icon = Icons.Outlined.Settings,
            selected = selectedItem == AdminNavItem.CONFIGURACION
        ) { onItemSelected(AdminNavItem.CONFIGURACION) }
    }
}

@Composable
fun ItemIcon(
    icon: ImageVector,
    selected: Boolean,
    onClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .size(50.dp)
            .background(
                color = if (selected) Color(0xFFD1C4E9) else Color.Transparent,
                shape = RoundedCornerShape(12.dp)
            )
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
   Icon(
            imageVector = icon,
            contentDescription = null,
            tint = Color.Black
        )
    }
}