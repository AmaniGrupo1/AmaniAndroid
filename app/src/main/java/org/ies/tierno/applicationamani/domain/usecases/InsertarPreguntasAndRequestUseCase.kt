package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.PreguntasRepository
import org.ies.tierno.applicationamani.domain.models.Opcion

class InsertarPreguntasAndRequestUseCase(val preguntasRepository: PreguntasRepository) {
    suspend operator fun invoke(textoPregunta: String,opciones: List<Opcion>): Boolean {
        return preguntasRepository.insertarPreguntaConOpciones(textoPregunta, opciones)
    }
}