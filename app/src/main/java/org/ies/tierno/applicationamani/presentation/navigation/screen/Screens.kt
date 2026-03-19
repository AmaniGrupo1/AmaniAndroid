package org.ies.tierno.applicationamani.presentation.navigation.screen


sealed class Screens (val route: String){
    object login: Screens("login")
    object registro: Screens("registro")
    object principal: Screens("principal")

    object test: Screens("test")

    //Login
    object adminHome: Screens("admin_home")
    object psicologoHome: Screens("psicologo_home")
    object pacienteHome: Screens("paciente_home")

    //Agregar Psicologo
    object agregarPsicologo: Screens("agregar_psicologo")

    object agregarAdmin: Screens("agregar_admin")

    object cuestionario : Screens("cuestionario")

    object pacientes : Screens("pacientes")

    object agregarPacienteAdmin : Screens("agregar_paciente_admin")
}

