package org.ies.tierno.applicationamani.presentation.navigation.screen


sealed class Screens (val route: String){
    object login: Screens("login")
    object registro: Screens("registro")
    object principal: Screens("principal")
    object questionnaire: Screens("questionnaire")
    object principalCliente: Screens("principalCliente")
}

