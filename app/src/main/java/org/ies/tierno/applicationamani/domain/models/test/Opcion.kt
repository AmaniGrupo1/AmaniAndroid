package org.ies.tierno.applicationamani.domain.models.test

/**
 * Modelo de dominio que representa una opción de respuesta dentro de una pregunta.
 *
 * Cada opción tiene un texto descriptivo y un valor numérico asociado
 * que se utiliza para el cálculo de puntuación en los cuestionarios.
 *
 * @property id Identificador único del documento en Firestore (asignado automáticamente).
 * @property texto Texto descriptivo de la opción que se muestra al usuario.
 * @property valor Valor numérico asociado a esta opción para la puntuación.
 */
data class Opcion(
    val id: String = "",
    val texto: String = "",
    val valor: Int = 0,
)
