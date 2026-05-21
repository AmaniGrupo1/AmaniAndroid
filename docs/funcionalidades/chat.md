# Motor de Chat en Tiempo Real

Para lograr una comunicación bidireccional completamente instantánea, persistente y robusta entre el paciente y el psicólogo, AMANI descarta el uso clásico de consultas HTTP largas (*long polling*) y también evita el sobrecoste de desarrollar un túnel propio de WebSockets en el backend.

En su lugar, el sistema de mensajería instantánea delega toda la carga de transmisión, sincronización silenciosa fuera de línea y recepción de notificaciones a **Firebase Realtime Database (RTDB)** actuando como el *broker* de mensajería absoluto.

## Estructura del Árbol de Base de Datos

En Firebase RTDB, los datos se almacenan en un enorme árbol de formato JSON anidado. Para garantizar un acceso sumamente rápido y eficiente a los mensajes sin descargar historiales innecesarios de las demás salas, AMANI utiliza el siguiente patrón de diseño de datos planos:

```json
{
  "chats": {
    "sessionId_12345": {
      "messages": {
        "msg_abc": {
          "senderId": "user_777",
          "text": "Hola, ¿cómo estás hoy?",
          "timestamp": 1716336000000
        },
        "msg_def": {
          "senderId": "psy_999",
          "text": "Todo mejorando, gracias.",
          "timestamp": 1716336060000
        }
      }
    }
  }
}
```

## Arquitectura de Inyección y Acceso (Koin)

El cliente Android implementa un patrón observador hacia esta estructura. El módulo `FirebaseChatRepository` <!-- TODO: verificar nombre real --> es el encargado exclusivo de interactuar con este nodo de Firebase. A través del uso de `callbackFlow`, este repositorio convierte los vetustos "listeners" clásicos de Firebase en flujos fríos nativos y puramente reactivos de Kotlin, listos para que el ViewModel de Compose (`ChatViewModel`) los observe. 

Todo este repositorio es instanciado y proveído como singleton por medio del inyector oficial del proyecto, **Koin**.

## Manejo de Permisos (Permission Denied)

Un error increíblemente común durante la fase de desarrollo ocurre si intentas consultar nodos de Firebase sin haber enviado correctamente el token forjado por el backend de Spring Boot. 

Si el registro de Android Studio marca `Permission denied`, significa estrictamente que el usuario no logró invocar el método `signInWithCustomToken` (revisar [flujo de Autenticación](autenticacion.md)) o que las reglas de seguridad publicadas de tu RTDB exigen privilegios que la cuenta conectada actualmente no posee.

!!! warning "Reglas RTDB"
    Por motivos de privacidad médica, las reglas JSON de Realtime Database deben forzar siempre la directiva estricta `".read": "auth != null"` como mínimo, impidiendo rotundamente que dispositivos anónimos observen las sesiones de los pacientes.
