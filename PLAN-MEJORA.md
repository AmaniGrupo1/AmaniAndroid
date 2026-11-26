# Plan de mejora

Backlog vivo. El detalle del chat está en `docs/chat-auditoria.md`.

## Chat (pendiente)

1. Confirmar con el backend el formato de `auth.uid` y desplegar las reglas endurecidas tras probarlas en el emulador (P0).
2. Migrar `enviadoEn` legacy (String/ISO) a número, con copia previa y reversión (P1).
3. Registrar el token FCM en el backend, pedir `POST_NOTIFICATIONS` y enlazar la notificación con la sala (P2).
4. Lista de conversaciones: último mensaje, hora, no leídos y búsqueda (requiere nodo de resumen) (P2).
5. Subida de imágenes: compresión, progreso real y `contentType` explícito (P2).
6. Retirar el stack V1 del chat y sus tests (P3).
7. Tests de UI (`androidTest`) y de reglas con el emulador de Firebase.
