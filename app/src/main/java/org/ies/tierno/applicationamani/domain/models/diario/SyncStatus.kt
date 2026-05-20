package org.ies.tierno.applicationamani.domain.models.diario

/**
 * Define los estados de sincronización de una entrada del diario emocional
 * entre el dispositivo local y el backend.
 *
 * @property SYNCED La entrada está sincronizada y no tiene cambios pendientes.
 * @property PENDING_CREATE La entrada es nueva y está pendiente de creación en el backend.
 * @property PENDING_UPDATE La entrada tiene modificaciones locales pendientes de enviar.
 * @property PENDING_DELETE La entrada ha sido marcada para eliminación y está pendiente de borrado en el backend.
 */
enum class SyncStatus {
    SYNCED,
    PENDING_CREATE,
    PENDING_UPDATE,
    PENDING_DELETE,
}
