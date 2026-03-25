//package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario
//
//import androidx.compose.runtime.mutableStateListOf
//import androidx.lifecycle.ViewModel
//import androidx.lifecycle.viewModelScope
//import kotlinx.coroutines.flow.MutableStateFlow
//import kotlinx.coroutines.flow.SharingStarted
//import kotlinx.coroutines.flow.StateFlow
//import kotlinx.coroutines.flow.stateIn
//import kotlinx.coroutines.launch
//import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
//import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
//import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
//import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
//
//class CuestionarioViewModel(
//     val obtenerPreguntasUseCase: ListarPreguntasUseCase,
//    val responderTestUseCase : ResponderTestUseCase
//) : ViewModel(){
//    val preguntas: StateFlow<List<OpcionAdminDTO>?> =
//        obtenerPreguntasUseCase()
//            .stateIn(
//                scope = viewModelScope,
//                started = SharingStarted.WhileSubscribed(5000),
//                initialValue = emptyList()
//            )
//
//    // Guardar respuestas temporalmente hasta que acepte consentimiento
//    private val _respuestasTemp = mutableStateListOf<RespuestasRequestDTO>()
//    val respuestasTemp: List<RespuestasRequestDTO> get() = _respuestasTemp
//
//    private val _testCompletado = MutableStateFlow(false)
//    val testCompletado: StateFlow<Boolean> = _testCompletado
//
//    fun guardarRespuestasTemporal(respuestas: List<RespuestasRequestDTO>) {
//        _respuestasTemp.clear()
//        _respuestasTemp.addAll(respuestas)
//        _testCompletado.value = true
//    }
//
//    suspend fun enviarRespuestas(idPaciente: Long): Boolean {
//        if (_respuestasTemp.isEmpty()) return false
//        return responderTestUseCase(idPaciente, _respuestasTemp)
//    }
//}