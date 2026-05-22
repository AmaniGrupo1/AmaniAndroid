package org.ies.tierno.applicationamani.dto.tickets

import android.util.Patterns

data class TicketModel(

    val id: String = "",
    val titulo: String = "",
    val descripcion: String = "",
    val categoria: String = "",
    val email: String = "",
    val estado: String = "abierto",
    val respuestaAdmin: String = "",
    val fecha: Long = System.currentTimeMillis()
) {

    fun validar(): ValidationResult {

        if (titulo.trim().isEmpty()) {
            return ValidationResult(
                false,
                "El título es obligatorio"
            )
        }

        if (titulo.length < 5) {
            return ValidationResult(
                false,
                "El título es demasiado corto"
            )
        }

        if (categoria.trim().isEmpty()) {
            return ValidationResult(
                false,
                "Selecciona una categoría"
            )
        }

        if (descripcion.trim().isEmpty()) {
            return ValidationResult(
                false,
                "La descripción es obligatoria"
            )
        }

        if (descripcion.length < 10) {
            return ValidationResult(
                false,
                "Describe mejor el problema"
            )
        }

        if (email.trim().isEmpty()) {
            return ValidationResult(
                false,
                "El email es obligatorio"
            )
        }

        if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
            return ValidationResult(
                false,
                "El email no es válido"
            )
        }

        return ValidationResult(
            true,
            "OK"
        )
    }
}

data class ValidationResult(
    val success: Boolean,
    val message: String
)