package org.ies.tierno.applicationamani.dto.requestPaciente

data class DatosPacienteAdminDTO (
    val idPaciente: Long,
    val nombreUsuario: String,
    val apellidoUsuario: String,
    val emailUsuario: String,
    val fechaNacimiento: String,
    val genero: String,
    val telefono: String,
    val createdAt: String,
    val updatedAt: String,
    val activo : Boolean
)

