package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO

data class DatosPacienteAdminDTO(
    val idPaciente: Long,
    val nombreUsuario: String,
    val apellidoUsuario: String,
    val emailUsuario: String,
    val fechaNacimiento: String,
    val genero: String,
    val telefono: String,
    val createdAt: String,
    val updatedAt: String,
    val activo: Boolean,
    val estadoPago: String,
    val metodoPago: String,
    val situaciones: List<SituacionDTO>
)

