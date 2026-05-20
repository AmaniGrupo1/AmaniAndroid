package org.ies.tierno.applicationamani.dto.psicologo

/**
 * DTO de solicitud para crear un nuevo psicólogo en el sistema.
 *
 * Contiene los datos personales, credenciales de acceso e información
 * profesional necesarios para registrar un psicólogo.
 *
 * @property nombrePsicologo Nombre del psicólogo.
 * @property apellidoPsicologo Apellido del psicólogo.
 * @property email Correo electrónico (usado como nombre de usuario).
 * @property password Contraseña de acceso.
 * @property especialidad Especialidad profesional.
 * @property experiencia Años de experiencia profesional, o `null`.
 * @property descripcion Descripción del perfil profesional y enfoque, o `null`.
 * @property licencia Número de licencia o colegiación, o `null`.
 * @property telefono Número de teléfono de contacto, o `null`.
 */
data class PsicologoRequestDTO(
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val email: String,
    val password: String,
    val especialidad: String,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
    val telefono: String? = null,
)
