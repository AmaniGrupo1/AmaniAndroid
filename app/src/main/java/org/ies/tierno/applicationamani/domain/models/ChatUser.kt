package org.ies.tierno.applicationamani.domain.models

/**
 * Representa un usuario participante dentro del sistema de chat en tiempo real.
 *
 * Almacena la información mínima necesaria para identificar y mostrar
 * a un interlocutor en una conversación.
 *
 * @property id Identificador único del usuario en el sistema de chat.
 * @property nombre Nombre visible del usuario en las conversaciones.
 * @property rol Rol del usuario dentro del sistema («paciente» o «psicólogo»).
 */
data class ChatUser(
    val id: String = "",
    val nombre: String = "",
    val rol: String = "",
)
