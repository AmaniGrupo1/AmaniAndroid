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
8. **Rotar el keystore de release** que estuvo versionado en `app/release.keystore` y purgar o asumir la exposición del historial (P0 si es el de producción).
9. Migrar de Firebase Test Lab (obsoleto el 30-09-2027) a Gradle Managed Devices o a la Developer Device Platform.
10. Conceder en Google Cloud los permisos de Test Lab y Secret Manager a la cuenta de servicio del CI y activar `TEST_LAB_ENABLED`.

