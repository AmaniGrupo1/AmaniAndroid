package org.ies.tierno.applicationamani.dto.perfil.psicologo

import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO

/**
 * DTO de solicitud para actualizar los datos del perfil de un psicólogo.
 *
 * Permite modificar los datos profesionales y los datos del usuario base.
 * Los campos con valor `null` se ignoran y conservan su valor anterior.
 *
 * @property especialidad Nueva especialidad, o `null` si no se modifica.
 * @property experiencia Nuevos años de experiencia, o `null` si no se modifica.
 * @property descripcion Nueva descripción del perfil, o `null` si no se modifica.
 * @property licencia Nueva licencia, o `null` si no se modifica.
 * @property usuario Datos de usuario a actualizar como [UsuarioUpdateDTO], o `null`.
 */
data class UpdatePsicologoRequestDTO(
    val especialidad: String?,
    val experiencia: Int?,
    val descripcion: String?,
    val licencia: String?,
    val usuario: UsuarioUpdateDTO?,
)
