# Manifest y permisos

Esta página detalla los permisos de sistema, características de hardware (`<uses-feature>`) y componentes de aplicación (`<activity>`, `<provider>`, `<service>`) declarados en [`app/src/main/AndroidManifest.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/AndroidManifest.xml).

## Permisos declarados y propósito

| Permiso en `AndroidManifest.xml` | Atributos adicionales | Para qué se usa en la aplicación |
|---|---|---|
| `android.permission.INTERNET` | — | Comunicación HTTP/HTTPS con el backend REST en Cloud Run, Firebase, Stripe y Jitsi Meet. |
| `android.permission.RECORD_AUDIO` | — | Grabación de notas de voz en el chat ([`ChatScreenV2`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenV2.kt)) y sesiones de videollamada con Jitsi Meet. |
| `android.permission.POST_NOTIFICATIONS` | Android 13+ (API 33+) | Mostrar notificaciones locales de recordatorio de citas ([`CitaNotificationWorker`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/utils/CitaNotificationWorker.kt)) y avisos push de chat ([`AmaniFirebaseMessagingService`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/services/AmaniFirebaseMessagingService.kt)). |
| `android.permission.CAMERA` | `camera` y `autofocus` con `required="false"` | Captura de fotografías de perfil, envío de imágenes en el chat con CameraX y videollamadas. |
| `android.permission.CALL_PHONE` | `telephony` con `required="false"` | Funcionalidad de llamada telefónica de contacto/asistencia desde la app sin exigir que el dispositivo sea un teléfono móvil (permite tablets). |
| `android.permission.READ_EXTERNAL_STORAGE` | — | Lectura de imágenes y documentos PDF para adjuntar en perfiles, chat o asistente RAG. |
| `android.permission.WRITE_EXTERNAL_STORAGE` | `android:maxSdkVersion="28"` | Escritura en almacenamiento externo en dispositivos con Android 9 (API 28) o inferior, como exportación de PDFs generados con iText7 ([`HistorialClinicoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/HistorialClinicoScreen.kt)). |

## Configuración de `<application>` y componentes

El bloque `<application>` registra [`AmaniApplication`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/AmaniApplication.kt) como clase de arranque y declara cuatro componentes internos:

```xml title="app/src/main/AndroidManifest.xml"
<application
    android:name=".AmaniApplication"
    android:allowBackup="true"
    android:dataExtractionRules="@xml/data_extraction_rules"
    android:fullBackupContent="@xml/backup_rules"
    android:icon="@mipmap/ic_launcher"
    android:label="@string/app_name"
    android:roundIcon="@mipmap/ic_launcher_round"
    android:supportsRtl="true"
    android:theme="@style/Theme.ApplicationAmani"
    android:usesCleartextTraffic="true"
    android:enableOnBackInvokedCallback="true">
```

| Componente | Nombre en Manifest | Exportado | Función |
|---|---|---|---|
| **`<activity>`** | `.MainActivity` | `true` (`MAIN` / `LAUNCHER`) | Única actividad del proyecto (`windowSoftInputMode="adjustNothing"`). Inicializa el idioma, habilita edge-to-edge y aloja `NavGraph`. |
| **`<provider>`** | `androidx.core.content.FileProvider` | `false` (`grantUriPermissions="true"`) | Comparte de forma segura URIs `content://` de archivos temporales (fotos de cámara y PDFs generados en caché/files según [`res/xml/file_paths.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/res/xml/file_paths.xml)). |
| **`<provider>`** | `androidx.startup.InitializationProvider` | `false` (`tools:node="merge"`) | Elimina `androidx.work.WorkManagerInitializer` (`tools:node="remove"`) para que Koin inicialice WorkManager con `workManagerFactory()`. |
| **`<service>`** | `.services.AmaniFirebaseMessagingService` | `false` (`MESSAGING_EVENT`) | Recibe mensajes push de Firebase Cloud Messaging y publica notificaciones en el canal `CANAL_CHAT_ID`. |
| **`<meta-data>`** | `firebase_crashlytics_collection_enabled` | — | Recibe el placeholder `${crashlyticsCollectionEnabled}` (`false` en `debug`, `true` en `release`). |

!!! warning "Consideraciones de seguridad en el Manifest"
    El manifiesto declara `android:usesCleartextTraffic="true"` y `android:allowBackup="true"`. Consulta [Seguridad y privacidad](seguridad-y-alcance.md) para ver el impacto de estas banderas y las recomendaciones registradas en [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md).

## Siguientes pasos

- Revisa [Seguridad y privacidad](seguridad-y-alcance.md) para el análisis de tráfico de red, reglas de backup y protección de secretos.
- Consulta [Build y configuración](referencia/configuracion.md) para ver cómo se inyecta `crashlyticsCollectionEnabled` desde `app/build.gradle.kts`.

*[HTTP]: Hypertext Transfer Protocol
*[HTTPS]: Hypertext Transfer Protocol Secure
*[REST]: Representational State Transfer
*[PDF]: Portable Document Format
*[RAG]: Retrieval-Augmented Generation
*[URI]: Uniform Resource Identifier
*[FCM]: Firebase Cloud Messaging
