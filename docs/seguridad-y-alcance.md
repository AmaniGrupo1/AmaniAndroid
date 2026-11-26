# Seguridad y privacidad

Esta página documenta la gestión de autenticación, tráfico de red, almacenamiento local, reglas de respaldo y hallazgos de seguridad verificados en [`.gitignore`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.gitignore), [`AndroidManifest.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/AndroidManifest.xml) y las reglas de Firebase en la raíz del repositorio.

## Autenticación, tokens y almacenamiento local

- **Persistencia del JWT:** [`TokenDataStore`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/local/TokenDataStore.kt) guarda el token en DataStore Preferences (`auth_prefs`), mientras que [`TokenHolder`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/local/TokenHolder.kt) mantiene la copia en memoria consumida por [`AuthInterceptor`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/AuthInterceptor.kt).
- **Expiración de sesión (HTTP 401):** [`TokenRefreshInterceptor`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor.kt) intercepta códigos `401` y publica `AuthEvent.Unauthorized` en [`AuthEventChannel`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/local/AuthEventChannel.kt).
- **Enmascaramiento en trazas de navegación:** [`NavGraph.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraph.kt) sustituye por `"***"` cualquier argumento de ruta cuyo nombre contenga `password` o `token` antes de registrarlo en `CrashReporter`.

## Tráfico de red, copias de seguridad y reglas Firebase

1. **Tráfico en texto claro (`usesCleartextTraffic="true"`):** [`AndroidManifest.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/AndroidManifest.xml) permite tráfico HTTP en claro de forma global y no define aún un archivo `network_security_config.xml`. Aunque la URL activa en [`RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt) usa HTTPS (`https://amani-api-560473593904.europe-west1.run.app/`), existen referencias HTTP locales en pantallas de perfil señaladas en [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md).
2. **Copias de seguridad (`allowBackup="true"`):** los archivos [`res/xml/backup_rules.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/res/xml/backup_rules.xml) y [`res/xml/data_extraction_rules.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/res/xml/data_extraction_rules.xml) mantienen su plantilla por defecto con las reglas `<include>`/`<exclude>` comentadas, por lo que no excluyen explícitamente `datastore/` ni `amani_local.db`.
3. **Reglas de Firebase versionadas:** el repositorio incluye [`firestore.rules`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/firestore.rules), [`storage.rules`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/storage.rules), [`database/rules.json`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/database/rules.json) y [`firebase-database-rules.json`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/firebase-database-rules.json).

## Gestión de secretos y estado de `.gitignore`

En [`.gitignore`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.gitignore) se excluyen `local.properties` y `/secrets.properties`, pero la exclusión `# /app/google-services.json` aparece comentada y no existe una regla para `*.keystore` ni `*.jks`:

```gitignore title=".gitignore"
# --- Local Configurations ---
local.properties
/secrets.properties

# --- Firebase config ---
# /app/google-services.json
```

!!! warning "Archivos sensibles seguidos actualmente por Git"
    El índice de Git contiene actualmente `app/google-services.json` y `app/release.keystore`. No se incluye ningún valor de estos archivos en la documentación; se recomienda desindexarlos (`git rm --cached`), rotar las claves de firma y descomentar `/app/google-services.json` junto con `*.keystore` en `.gitignore`.

<!-- TODO: confirmar la revisión de reglas de seguridad de Firebase y permisos por rol antes de operar con datos reales -->
<!-- TODO: confirmar la política de privacidad, retención y cifrado local aplicable al despliegue en producción -->

## Reglas de Firebase del chat

Las reglas desplegadas (`firebase-database-rules.json`, `storage.rules`, `firestore.rules`) solo exigen `auth != null`: cualquier usuario autenticado podría leer o escribir en cualquier sala. Existe una propuesta (`firebase-database-rules.proposed.json`, `storage.rules.proposed`) que limita cada sala a sus dos participantes y liga `idSender` a `auth.uid`. **No está desplegada** y asume que el UID del custom token es el `idUsuario` numérico, algo aún sin confirmar. Detalle en [Auditoría del chat](chat-auditoria.md). Esto no constituye una auditoría de cumplimiento del RGPD.

## Siguientes pasos

- Revisa los permisos declarados en [Manifest y permisos](manifest-y-permisos.md).
- Consulta las acciones correctivas priorizadas en [Decisiones y roadmap](limitaciones-y-roadmap.md).

*[JWT]: JSON Web Token
*[HTTP]: Hypertext Transfer Protocol
*[HTTPS]: Hypertext Transfer Protocol Secure
