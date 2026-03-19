package org.ies.tierno.applicationamani.presentation.navigation.screen

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
}

