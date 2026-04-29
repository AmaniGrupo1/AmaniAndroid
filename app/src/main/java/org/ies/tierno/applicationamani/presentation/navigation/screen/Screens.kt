package org.ies.tierno.applicationamani.presentation.navigation.screen

import android.net.Uri

/**
 * Clase sellada que define todas las rutas de navegación de la aplicación.
 *
 * Cada objeto hijo representa una pantalla accesible a través del
 * [org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph]. El uso de una clase sellada garantiza que las rutas
 * se gestionan de forma segura en tiempo de compilación.
 *
 * @property route Cadena identificadora única de la ruta de navegación.
 *
 * @see org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
 */
sealed class Screens(val route: String) {

    /** Pantalla de inicio de sesión. */
    object login : Screens("login")

    /** Pantalla de registro de nuevo usuario. */
    object registro : Screens("registro")

    /** Pantalla principal para usuarios no autenticados. */
    object principal : Screens("principal")



    /** Pantalla del cuestionario de evaluación inicial. */
    object questionnaire : Screens("questionnaire")

    /** Pantalla principal del cliente autenticado con su psicólogo asignado. */
    object principalCliente : Screens("principalCliente")

    /** Pantalla de ajustes del cliente. */
    object settingsCliente : Screens("settingsCliente")

    /** Pantalla para agregar un psicólogo (vista de administrador). */
    object agregarPsicologo : Screens("agregarPsicologo")

    /** Pantalla de creación de preguntas de test (vista de administrador). */
    object test : Screens("test")

    /** Pantalla de listado de pacientes (vista de administrador). */
    object pacientes : Screens("pacientes")

    /** Pantalla para agregar un administrador. */
    object agregarAdmin : Screens("agregarAdmin")

    /** Pantalla para registrar un paciente desde la vista de administrador. */
    object agregarPacienteAdmin : Screens("agregarPacienteAdmin")

    /** Pantalla principal del administrador. */
    object adminHome : Screens("home")

    /** Pantalla del cuestionario. */
    object cuestionario : Screens("cuestionario")

    /** Pantalla de citas del paciente con calendario y horas libres. */
    object citas : Screens("citas")

    /** Pantalla de agenda de la psicóloga (horario, pacientes por día, días no disponibles). */
    object psicologoAgenda : Screens("psicologoAgenda")

    object psicologoHome : Screens("psicologoHome")
    object pacienteHome : Screens("pacienteHome")
    object settingsPsicologo : Screens("settingsPsicologo")

    object listarPsicologo : Screens("listarPsicologo/{pacienteId}"){
        fun createRoute(pacienteId: Long) = "listarPsicologo/$pacienteId"
    }

    object calendario : Screens("calendario")

    object perfilPsicologo : Screens("perfilPsicologo/{psicologoId}"){
        fun createRoute(psicologoId: Long?) = "perfilPsicologo/$psicologoId"
    }

    object chatList : Screens("chatList")
    object chat : Screens("chat/{currentUserId}/{otherUserId}/{otherUserName}"){
        fun createRoute(currentUserId: Long, otherUserId: Long, otherUserName: String): String {
            val encodedName = Uri.encode(otherUserName)
            return "chat/$currentUserId/$otherUserId/$encodedName"
        }
    }

    object agendaCitaScreen : Screens("agendaCitaScreen")

    object editarCitaScreen : Screens("editarCitaScreen/{citaId}") {
        fun pass(citaId: String) = "editarCitaScreen/$citaId"
    }

    object registroPacienteDesdePsicologo : Screens("registroPacienteDesdePsicologo")
    object pacientesSinPsicologo : Screens("pacientesSinPsicologo")

    object diarioEmocional : Screens("diarioEmocional")

    object nuevoTicket : Screens("nuevoTicket")
    object misTickets : Screens("misTickets")
}
