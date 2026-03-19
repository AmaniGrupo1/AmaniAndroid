package org.ies.tierno.applicationamani.domain.models

data class User(
    val nombre: String,
    val apellidos: String,
    val genero: String,
    val direccion: String,
    val telefono: String,
    val codigoPostal: String
)