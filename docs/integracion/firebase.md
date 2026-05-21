# Sincronización Realtime (Firebase)

Como un pilar fundamental complementario a nuestra API REST base, AMANI Android depende intrínsecamente del ecosistema gratuito en la nube administrado por Google: **Firebase**. Su integración permite solucionar la carencia de websockets propios en el servidor Spring Boot, brindando reactividad instantánea en los chats.

## Identificadores del Proyecto

El proyecto alojado y atado institucionalmente a esta aplicación móvil es:
- **ID de Proyecto**: `amani-160bf`
- **Ubicación de los Datos**: Europa Occidental (`europe-west1`), fundamental para el estricto cumplimiento normativo vigente en materia de protección de datos europeos (RGPD).

## Servicios Configurados e Inicializados

1. **Firebase Realtime Database (RTDB)**: Usado exclusivamente como la vía de transporte y persistencia transitoria para el módulo del chat bidireccional entre el paciente registrado y el profesional de la salud.
2. **Firebase Storage**: *(Actualmente configurado como `gs://amani-160bf.firebasestorage.app`)* y preparado estructuralmente para una futura expansión enfocada en albergar activos pesados o documentos adjuntos sin saturar el clúster de bases de datos central.

## Proceso Dual de Inicialización

La inyección real de seguridad de Firebase está fraccionada en dos mitades absolutamente dependientes entre sí:

### En el Cliente Android
El sistema no se conecta ciegamente usando cuentas anónimas. El cliente Android confía la recolección del token central ("Custom Token") a Retrofit. Una vez logrado el inicio de sesión ordinario contra el backend, este pasa el objeto JWT al método estricto del SDK local de Android `signInWithCustomToken()`.

### En el Servidor Spring Boot
Para que el token devuelto hacia el cliente Android tenga real validez de firma criptográfica ante los nodos de Google Firebase, el servidor backend carga silenciosamente una clave maestra de autorización de cuenta de servicio (*Service Account JSON*), forjando manualmente estos tokens temporales únicos.

!!! warning "Políticas y Reglas de Seguridad (Rules)"
    Jamás configures el panel global de reglas de la base de datos RTDB con la regla permisiva obsoleta de pruebas `.read: true`. Esto expondría temporalmente todas las transcripciones de las conversaciones privadas del chat médico hacia cualquier analizador o recolector malintencionado externo al proyecto. Siempre mantén como mínimo una validación estructural nativa de Firebase como `auth != null`.
