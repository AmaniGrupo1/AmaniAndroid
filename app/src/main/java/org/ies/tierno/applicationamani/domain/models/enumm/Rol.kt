package org.ies.tierno.applicationamani.domain.models.enumm

/**
 * Define los roles de usuario del sistema que determinan los permisos
 * y las funcionalidades accesibles para cada perfil.
 *
 * @property ADMIN Acceso completo al panel de administración y gestión de usuarios.
 * @property PSICOLOGO Acceso al panel del profesional con sus pacientes y agenda.
 * @property PACIENTE Acceso a la aplicación del paciente con diario emocional y citas.
 */
enum class Rol {
    ADMIN,
    PSICOLOGO,
    PACIENTE,
}
