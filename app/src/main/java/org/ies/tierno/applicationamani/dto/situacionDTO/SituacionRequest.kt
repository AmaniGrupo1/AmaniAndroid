package org.ies.tierno.applicationamani.dto.situacionDTO

/**
 * DTO de solicitud para crear una nueva situación clínica o administrativa.
 *
 * Permite al administrador registrar una nueva situación que podrá
 * ser asignada a pacientes.
 *
 * @property nombre Nombre descriptivo de la situación.
 * @property categoria Categoría a la que pertenece.
 * @property descripcion Descripción detallada de la situación.
 * @property activo Indica si la situación está activa en el sistema (por defecto `true`).
 */
data class SituacionRequest(
    val nombre: String,
    val categoria: String,
    val descripcion: String,
    val activo: Boolean = true,
)
