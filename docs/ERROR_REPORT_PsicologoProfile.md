# Reporte de error — `PsicologoProfileScreen`

Fecha: 2026-05-05

Resumen
-------
Reporte técnico completo sobre errores y comportamiento anómalo detectados en la pantalla de perfil del psicólogo (`PsicologoProfileScreen.kt`). Incluye: pasos de reproducción, logs útiles, mapeo/trasabilidad a líneas y símbolos del código, hipótesis de causa raíz, acciones correctivas sugeridas y parches de ejemplo.

Archivos afectados
------------------
- `app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoProfileScreen.kt`
- (Relacionado) `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/NotificacionApi.kt` — se incluye por contexto de red
- ViewModel: `ProfilePsicologoViewModel` (métodos: `fetchProfile`, `uploadFotoPerfil`) — referencia en runtime

Resumen de síntomas reportados
------------------------------
- La foto de perfil no se muestra (AsyncImage muestra el placeholder o lanza error).
- Al intentar subir foto desde cámara/galería, la subida falla o no se ve reflejada en la UI.
- Errores o mensajes genéricos en Snackbar: "Error al cargar el perfil" o mensajes en `uploadStatus` tipo `Error` sin detalle claro.
- En dispositivos Android modernos: posibilidad de excepciones relacionadas con URIs de archivo (FileUriExposedException) o fallos por permisos.
- En entornos donde el backend está en HTTP (IP local): carga de imágenes en HTTP bloqueada por configuración de seguridad (cleartext).

Reproducción (pasos)
--------------------
Precondiciones:
- App compilada e instalada en dispositivo/emulador.
- Backend (si aplica) accesible en la misma red local (IP `192.168.1.175:8080`) o sustituir por la URL correcta.

Pasos:
1. Abrir la app y navegar a la pantalla de perfil del psicólogo (ruta que usa `PsicologoProfileScreen`).
2. Observar si la foto de perfil se carga correctamente.
3. Pulsar el botón de cámara y elegir "Galería" o "Cámara".
4. Seleccionar o tomar foto.
5. Comprobar si aparece Snackbar de éxito o error y si la imagen se refresca en pantalla.

Comportamiento observado (ejemplo)
----------------------------------
- AsyncImage muestra el `placeholder` y en logs aparecen líneas como "AsyncImage - Error al cargar imagen".
- Snackbar con mensaje de error genérico (mensaje proveniente de `viewModel.error` o `uploadStatus`)
- En logcat puede aparecer "Permission denied" o excepciones relacionadas con URIs.

Información a recolectar (logs / trazas)
----------------------------------------
1. Filtrar logcat por TAG `PsicologoProfileScreen` y por `ProfilePsicologoViewModel`:

```powershell
adb logcat -v time | Select-String "PsicologoProfileScreen" -SimpleMatch
adb logcat -v time | Select-String "ProfilePsicologoViewModel" -SimpleMatch
```

2. Si la app falla con excepción, guardar stack trace completo:
```powershell
adb logcat > logcat_full.txt
# Reproducir y detener la captura después del fallo
```

3. Comprobar respuesta HTTP para la URL de la imagen (desde PC) y status del endpoint:
```powershell
# Reemplaza BASE con http://192.168.1.175:8080 o la URL real
curl -I "http://192.168.1.175:8080/path/a/la/imagen.jpg"
```

Trazabilidad (mapa de código → síntoma)
---------------------------------------
A continuación se listan los puntos del código en `PsicologoProfileScreen.kt` que intervienen directamente en los síntomas y por qué:

1) Construcción de URL de imagen
- Función: `buildFullImageUrl(relativeUrl: String?)`
- Archivo: `PsicologoProfileScreen.kt`
- Riesgo: si `relativeUrl` es relativa y `BASE_URL` usa `http://` en un app con cleartext bloqueado, carga fallará.
- Línea(s) clave: creación de `fullImageUrl = "${BASE_URL}${relativeUrl}"` y uso posterior.

2) AsyncImage + cache/refresh
- Uso: `AsyncImage(model = ImageRequest.Builder(...).data(imageUrl) ... )`
- Observación: `imageUrl` puede ser `Int` (recurso drawable) o `String` (URL). Mezclar tipos puede confundir la cacheKey y el comportamiento.
- `diskCacheKey("$fullImageUrl$refreshTrigger")` se usa para forzar refresh, pero si `imageUrl` es Int (drawable) se ignora.

3) Cámara y guardado temporal
- `cameraLauncher` usa `ActivityResultContracts.TakePicturePreview()` que devuelve `Bitmap`. Código escribe `Bitmap` a `File(context.cacheDir, "camera_photo_<ts>.jpg")` y luego crea `Uri.fromFile(tempFile)`.
- Riesgo: `Uri.fromFile(...)` produce `file://` URIs que en algunas operaciones requieren `FileProvider` para ser compartidos con otros componentes; además `TakePicturePreview` devuelve `Bitmap` sin dar un `content://` Uri, lo que fuerza manejo manual.
- Posible excepción: `FileUriExposedException` cuando se intenta enviar `file://` fuera de la app.

4) Permisos de cámara
- Check: `ContextCompat.checkSelfPermission(context, CAMERA) == PERMISSION_GRANTED`
- Request: `permissionLauncher.launch(android.Manifest.permission.CAMERA)` (desde Compose). Validar que el contexto es el correcto y que el flujo de permiso ocurre en la Activity.

5) Upload
- Método involucrado: `viewModel.uploadFotoPerfil(psicologoId, uri, context)`
- Puntos de fallo: implementación del upload en el ViewModel/Repository podría esperar una `content Uri` o InputStream; pasar `file://` o una ruta de archivo puede fallar si no se convierte correctamente.

Hipótesis de causas raíz
------------------------
1. Cleartext HTTP bloqueado: `BASE_URL` usa `http://192.168.1.175:8080` — Android 9+ bloquea HTTP no seguro a menos que se permita explícitamente mediante `networkSecurityConfig` o `usesCleartextTraffic=true`.
2. Uso de `Uri.fromFile(...)` y no `FileProvider`: en Android 7+ es necesario usar `FileProvider` para compartir archivos externos o crear URIs seguros.
3. `AsyncImage` recibe a veces un `Int` (drawable) y otras un `String` (URL). Esto mezcla modelos y puede provocar cache inesperada o que `diskCacheKey` no sea consistente.
4. `uploadFotoPerfil` no maneja todos los tipos de URI (file vs content) o falla por permisos de lectura del archivo temporario.
5. Permisos faltantes o flujo de solicitud no gestionado antes de lanzar la cámara.

Pruebas y verificaciones rápidas
--------------------------------
- Verificar conectividad al `BASE_URL`: `curl http://192.168.1.175:8080/` desde máquina dev.
- Probar cargar la misma URL en un navegador del dispositivo/emulador.
- Añadir logs en `uploadFotoPerfil` para imprimir la Uri recibida y resultado HTTP.
- Probar `AsyncImage` con una URL absoluta `https://...` para descartar errores de Glide/Coil vs configuración de red.

Soluciones recomendadas (alta prioridad)
----------------------------------------
1) Habilitar cleartext para la IP de desarrollo o usar HTTPS
- Opción rápida (no recomendada en producción): en `AndroidManifest.xml` dentro de `<application>`:
```xml
android:usesCleartextTraffic="true"
```
- Opción mejor: agregar `network_security_config.xml` permitiendo el host local y referenciarlo en el Manifest.

Ejemplo `res/xml/network_security_config.xml`:
```xml
<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <domain-config cleartextTrafficPermitted="true">
        <domain includeSubdomains="true">192.168.1.175</domain>
    </domain-config>
</network-security-config>
```
Y en `AndroidManifest.xml`:
```xml
<application
    android:networkSecurityConfig="@xml/network_security_config"
    ...>
```

2) Usar `FileProvider` al guardar imagen de cámara y obtener `content://` Uri
- Añadir provider en `AndroidManifest.xml`:
```xml
<provider
    android:name="androidx.core.content.FileProvider"
    android:authorities="${applicationId}.fileprovider"
    android:exported="false"
    android:grantUriPermissions="true">
    <meta-data
        android:name="android.support.FILE_PROVIDER_PATHS"
        android:resource="@xml/file_paths" />
</provider>
```
- `res/xml/file_paths.xml`:
```xml
<?xml version="1.0" encoding="utf-8"?>
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <cache-path name="cache" path="." />
</paths>
```
- Obtener Uri con `FileProvider.getUriForFile(context, "${context.packageName}.fileprovider", tempFile)` y pasar ese `content://` Uri a `uploadFotoPerfil`.

3) Cambiar flujo de cámara a `ActivityResultContracts.TakePicture()` con Uri provisto por FileProvider
- Crear archivo temporal y su Uri `content://` antes de lanzar la intent, y usar `TakePicture()` que rellena directamente el archivo.

Snippet (sugerencia para `cameraLauncher`):
```kotlin
// Crear temp file
tempFile = File(context.cacheDir, "camera_photo_${System.currentTimeMillis()}.jpg")
val photoUri = FileProvider.getUriForFile(context, "${context.packageName}.fileprovider", tempFile)
// Lanzar TakePicture pasando photoUri
cameraLauncher.launch(photoUri)
```
Donde `cameraLauncher` está registrado con `ActivityResultContracts.TakePicture()`.

4) Normalizar el tipo pasado a `AsyncImage`
- En lugar de mezclar `Int` y `String` en `imageUrl`, crear siempre un `String` o usar dos rutas diferentes: si no hay URL usar `null` y dejar `placeholder`.

Ejemplo:
```kotlin
val imageData: Any? = if (fullImageUrl.isNotBlank()) "$fullImageUrl?t=$refreshTrigger" else null
AsyncImage(model = imageData, ...)
```

5) Ajustar `uploadFotoPerfil` para aceptar `content://` y `file://` y abrir InputStream vía `context.contentResolver.openInputStream(uri)` en vez de leer ruta directa.

Parches de ejemplo (no aplicados automáticamente)
------------------------------------------------
A continuación se muestran fragmentos que el equipo puede aplicar en `PsicologoProfileScreen.kt` y `AndroidManifest.xml`. Son ejemplos; ajustar imports y contextos.

- Reemplazar la escritura de `Bitmap` + `Uri.fromFile` por FileProvider Uri:
```kotlin
// after saving tempFile
val photoUri = FileProvider.getUriForFile(context, "${context.packageName}.fileprovider", tempFile)
onPhotoUpload(photoUri)
```

- En `uploadFotoPerfil` (ViewModel/Repository) abrir InputStream:
```kotlin
fun uploadFotoPerfil(psicologoId: Long, uri: Uri, context: Context) {
    val input = context.contentResolver.openInputStream(uri)
    // subir usando MultipartBody.Part.createFormData con RequestBody creado desde input
}
```

Plan de mitigación y pasos recomendados (ordenados)
--------------------------------------------------
1. Añadir logs en `uploadFotoPerfil` para capturar la Uri, tipo (scheme), tamaño y la respuesta HTTP.
2. Probar carga de la URL de la imagen directamente por curl y en el navegador del dispositivo.
3. Implementar `FileProvider` y flujo `TakePicture()` para cubrir casos de cámara en Android 7+.
4. Habilitar cleartext local durante desarrollo o mover backend a HTTPS.
5. Normalizar model para `AsyncImage` (usar `String?` o `null` para placeholder).
6. Añadir pruebas con `MockWebServer` para validar carga/descarga de imagen y respuestas 4xx/5xx.
7. Desplegar cambios a QA y verificar reproducibilidad.

Checklist de verificación (qué validar antes de cerrar issue)
-------------------------------------------------------------
- [ ] `AsyncImage` muestra la imagen real cuando existe la URL.
- [ ] Subida desde Galería y Cámara funciona y muestra Snackbar de éxito.
- [ ] No se producen excepciones FileUriExposed o permisos denegados en Android 7+.
- [ ] Test unitarios / integrados que reproducen flujo de carga/descarga pasan.
- [ ] Cleartext HTTP solucionado (o backend en HTTPS) en entornos de producción.

Anexos útiles
-------------
- Comando para capturar logs antes/después de reproducir:
```powershell
adb logcat -c; adb logcat -v time > logs_psicologo_profile.txt
# Reproducir fallo
# Ctrl+C cuando termine
```

- Comando para inspeccionar la Uri que se pasa a `uploadFotoPerfil` (añadir log en ViewModel):
```kotlin
Log.d("ProfileUpload", "Upload URI scheme=${uri.scheme} path=${uri.path}")
```

¿Quieres que cree un archivo con este reporte dentro del repositorio (`docs/ERROR_REPORT_PsicologoProfile.md`) y que además aplique un cambio de ejemplo (p. ej. pasar `Uri.fromFile` a `FileProvider.getUriForFile`) en `PsicologoProfileScreen.kt`? Si confirmas, puedo crear el archivo ahora y, si lo deseas, aplicar el parche en el código y ejecutar una comprobación básica de errores.

