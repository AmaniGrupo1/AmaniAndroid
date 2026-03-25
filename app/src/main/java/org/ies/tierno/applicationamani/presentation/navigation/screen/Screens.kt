package org.ies.tierno.applicationamani.presentation.navigation.screen

sealed class Screens(val route: String) {
    object login : Screens("login")
    object registro : Screens("registro")
    object principal : Screens("principal")

    object adminHome : Screens("adminHome")
    object psicologoHome : Screens("psicologoHome")
    object pacienteHome : Screens("pacienteHome")

    object principalCliente : Screens("principalCliente")
    object questionnaire : Screens("questionnaire")
    object settingsCliente : Screens("settingsCliente")

    object agregarPsicologo : Screens("agregarPsicologo")
    object agregarAdmin : Screens("agregarAdmin")
    object test : Screens("test")
    object pacientes : Screens("pacientes")
    object agregarPacienteAdmin : Screens("agregarPacienteAdmin")
    object adminPrincipal : Screens("adminPrincipal")
    object cuestionario : Screens("cuestionario")
    object citas : Screens("citas")
    object psicologoAgenda : Screens("psicologoAgenda")

    object testPaciente : Screens("testPaciente/{pacienteId}") {
        fun createRoute(pacienteId: Long) = "testPaciente/$pacienteId"
    }

    object settings : Screens("settings")
    object vistaPrincipalPaciente : Screens("vistaPrincipalPaciente")
    object agregarPsicologoAdmin : Screens("agregarPsicologoAdmin")
    object listaPsicologos : Screens("listaPsicologos")

    object asignarPsicologo : Screens("asignarPsicologo/{pacienteId}") {
        fun createRoute(pacienteId: Long) = "asignarPsicologo/$pacienteId"
    }

    object consentimiento : Screens("consentimiento")
    object registroConsentimiento : Screens("registroConsentimiento")
}
