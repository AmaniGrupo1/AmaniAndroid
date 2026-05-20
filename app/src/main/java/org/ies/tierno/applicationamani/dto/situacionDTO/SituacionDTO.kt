package org.ies.tierno.applicationamani.dto.situacionDTO

/**
 * DTO que representa una situación clínica o administrativa asociada a un paciente.
 *
 * Describe una condición, diagnóstico o circunstancia que contextualiza
 * el estado del paciente en el sistema.
 *
 * @property idSituacion Identificador único de la situación.
 * @property nombre Nombre descriptivo de la situación.
 * @property categoria Categoría a la que pertenece (p. ej. «ansiedad», «administrativa»).
 * @property descripcion Descripción detallada de la situación.
 */
data class SituacionDTO(
    val idSituacion: Long,
    val nombre: String,
    val categoria: String? = null,
    val descripcion: String? = null,
)
