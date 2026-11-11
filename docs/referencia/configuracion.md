# Configuración

## Entorno local

| Archivo/propiedad | Uso comprobado | Obligatorio |
|---|---|---|
| `app/google-services.json` | Configuración de Google Services/Firebase para el módulo Android. CI lo materializa a partir del secret `GOOGLE_SERVICES_JSON`. | Sí para la configuración Firebase de Gradle; el archivo debe corresponder al entorno autorizado. |
| `local.properties` → `STRIPE_PUBLISHABLE_KEY` | Se lee para generar `BuildConfig.STRIPE_PUBLISHABLE_KEY`; si falta, el valor de build queda vacío. | No para compilar según el fallback del build; es necesario para inicializar pagos con clave configurada. |
| `local.properties` → `RELEASE_KEYSTORE_FILE` | Ruta de keystore de release; si falta, el build usa el nombre `release.keystore`. | Requerido para firmar release con la configuración correspondiente. |
| `local.properties` → `RELEASE_KEYSTORE_PASSWORD` | Contraseña leída para el keystore y la clave de firma. | Requerido para una firma válida. |
| `local.properties` → `RELEASE_KEYSTORE_ALIAS` | Alias de la clave de firma. | Requerido para una firma válida. |
| `SONAR_HOST_URL` | URL del servidor SonarQube; fallback en el build: `http://localhost:9000`. | Solo si se usa SonarQube. |
| `SONAR_TOKEN` | Token leído por la configuración Gradle de SonarQube; fallback vacío. | Solo si el análisis requiere autenticación. |

No guardes valores de credenciales en documentación, commits o capturas. Aunque `local.properties` aparece en `.gitignore`, actualmente figura versionado; el inventario del repositorio también incluye `app/google-services.json` y `app/release.keystore`. Confirma la política de versionado y no asumas que la regla de ignore protege archivos ya seguidos por Git. No se incluye aquí el contenido de esos archivos.

Solicita los secretos y archivos de configuración necesarios a través del canal aprobado por el equipo.

En CI también se usan los secrets de GitHub `GCP_SA_KEY`, `GCP_PROJECT_ID`, `ANDROID_KEYSTORE_BASE64`, `RELEASE_KEYSTORE_PASSWORD` y `RELEASE_KEYSTORE_ALIAS`, además de `GOOGLE_SERVICES_JSON`. El workflow de build debug lee `STRIPE_PUBLISHABLE_KEY` desde Google Cloud Secret Manager. Esta página nombra claves, pero no contiene valores.

<!-- TODO: confirmar el procedimiento seguro para obtener configuración Firebase y secretos en desarrollo local -->
<!-- TODO: confirmar la política de versionado de los archivos Firebase y de firma que aparecen en el repositorio -->

## Endpoint del backend

La URL base REST activa está declarada en `di/RetrofitModule.kt`; la URL local del emulador se encuentra comentada. No hay una propiedad Gradle o variable de entorno que seleccione el endpoint.

<!-- TODO: confirmar cómo seleccionar un backend local/de pruebas sin editar código fuente -->

## Siguientes pasos

Consulta la [puesta en marcha](../puesta-en-marcha.md), la [API](api-endpoints.md) y el [despliegue](../despliegue.md).
