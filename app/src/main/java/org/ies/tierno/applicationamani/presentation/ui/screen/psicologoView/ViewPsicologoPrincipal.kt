package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Pantalla principal de la vista del psicólogo.
 *
 * Redirige automáticamente a [PsicologoAgendaScreen] donde la psicóloga
 * puede gestionar su horario, ver pacientes por día y marcar días
 * como no disponibles.
 *
 * @param navController Controlador de navegación.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ViewPsicologoPrincipal(navController: NavController) {


}