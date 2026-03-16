    package org.ies.tierno.applicationamani.presentation.viewmodels


    import androidx.compose.material3.SnackbarHostState
    import androidx.lifecycle.ViewModel
    import androidx.lifecycle.viewModelScope
    import androidx.navigation.NavController
    import kotlinx.coroutines.flow.MutableStateFlow
    import kotlinx.coroutines.flow.StateFlow
    import kotlinx.coroutines.flow.asStateFlow
    import kotlinx.coroutines.launch
    import org.ies.tierno.applicationamani.domain.models.Opcion
    import org.ies.tierno.applicationamani.domain.models.PreguntaConOpciones
    import org.ies.tierno.applicationamani.domain.usecases.InsertarPreguntasAndRequestUseCase

    class TestScreenViewModel(
        private val insertarPreguntasAndRequestUseCase: InsertarPreguntasAndRequestUseCase
    ) : ViewModel() {

        private val _pregunta = MutableStateFlow("")
        val pregunta: StateFlow<String> = _pregunta.asStateFlow()

        private val _opcion1 = MutableStateFlow("")
        val opcion1: StateFlow<String> = _opcion1.asStateFlow()

        private val _opcion2 = MutableStateFlow("")
        val opcion2: StateFlow<String> = _opcion2.asStateFlow()

        private val _opcion3 = MutableStateFlow("")
        val opcion3: StateFlow<String> = _opcion3.asStateFlow()

        private val _opcion4 = MutableStateFlow("")
        val opcion4: StateFlow<String> = _opcion4.asStateFlow()

        fun setPregunta(value: String) {
            _pregunta.value = value
        }

        fun setOpcion1(value: String) {
            _opcion1.value = value
        }

        fun setOpcion2(value: String) {
            _opcion2.value = value
        }

        fun setOpcion3(value: String) {
            _opcion3.value = value
        }

        fun setOpcion4(value: String) {
            _opcion4.value = value
        }

        fun guardarPregunta(snackbarHostState: SnackbarHostState, navController: NavController) {
            viewModelScope.launch {
                val opciones = listOf(
                    Opcion(texto = _opcion1.value, valor = 1),
                    Opcion(texto = _opcion2.value, valor = 2),
                    Opcion(texto = _opcion3.value, valor = 3),
                    Opcion(texto = _opcion4.value, valor = 4)
                )
                if (insertarPreguntasAndRequestUseCase(_pregunta.value, opciones)) {
                    snackbarHostState.showSnackbar("Pregunta guardada correctamente")
                    navController.popBackStack()
                } else {
                    snackbarHostState.showSnackbar("Error al guardar la pregunta")
                }
                limpiarCampos()
            }
        }

        private fun limpiarCampos() {
            _pregunta.value = ""
            _opcion1.value = ""
            _opcion2.value = ""
            _opcion3.value = ""
            _opcion4.value = ""
        }
    }

