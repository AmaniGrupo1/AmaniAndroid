package org.ies.tierno.applicationamani.domain.models.admin

import kotlinx.serialization.Serializable

/**
 * DTO de solicitud para registrar un nuevo psicólogo desde el panel de administración.
 *
 * Contiene los datos profesionales y de contacto necesarios para crear
 * la cuenta de un psicólogo en el sistema. El campo contraseña es opcional
 * para permitir actualizaciones sin modificar la credencial existente.
 *
 * @property nombrePsicologo Nombre de pila del psicólogo.
 * @property apellidoPsicologo Apellidos del psicólogo.
 * @property email Dirección de correo electrónico del psicólogo.
 * @property password Contraseña de acceso al sistema. Nula si no se desea cambiar.
 * @property especialidad Especialidad profesional del psicólogo.
 * @property experiencia Años de experiencia profesional.
 * @property descripcion Descripción o biografía del psicólogo.
 * @property licencia Número de licencia profesional.
 */
@Serializable
data class RegistrarPsicologoAdminDTO(
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val email: String,
    val password: String? = null,
    val especialidad: String,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
)
