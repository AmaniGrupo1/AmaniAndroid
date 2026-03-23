package org.ies.tierno.applicationamani.presentation.navigation.screen


sealed class Screens (val route: String){
    object login: Screens("login")
    object registro: Screens("registro")
    object principal: Screens("principal")

    object test: Screens("test")

    //Login
    object adminHome: Screens("adminHome")
    object psicologoHome: Screens("psicologoHome")
    object pacienteHome: Screens("pacienteHome")

    //Agregar Psicologo
    object agregarPsicologo: Screens("agregarPsicologo")

    object agregarAdmin: Screens("agregarAdmin")

    object cuestionario : Screens("cuestionario")

    object pacientes : Screens("pacientes")

    object agregarPacienteAdmin : Screens("agregarPacienteAdmin")

    object testPaciente: Screens("testPaciente/{pacienteId}") {
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

