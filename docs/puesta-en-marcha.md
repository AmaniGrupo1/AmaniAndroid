# Puesta en marcha local

Esta guía explica cómo preparar el entorno de desarrollo, configurar los archivos locales requeridos por [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts), compilar el módulo `:app` y lanzar las pruebas.

## Requisitos del entorno

- **JDK:** versión `17` (configurada mediante `jvmToolchain(17)` y `JavaVersion.VERSION_17` en [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts)).
- **Android SDK:** `compileSdk = 36`, `targetSdk = 36` y `minSdk = 25` (Android 7.1+).
- **Android NDK:** versión `26.1.10909125` con filtros ABI `arm64-v8a`, `armeabi-v7a`, `x86` y `x86_64`.
- **Android Studio:** distribución compatible con Android Gradle Plugin `9.4.1` o uso directo del wrapper `./gradlew`.

<!-- TODO: confirmar versión mínima recomendada de Android Studio por el equipo -->

## Archivos de configuración y secretos locales

Antes de compilar o probar integraciones, revisa los dos archivos leídos por el sistema de build:

1. **`app/google-services.json`**: requerido por el plugin `com.google.gms.google-services` (`4.4.4`) para inicializar Firebase. En CI se genera a partir del secreto `GOOGLE_SERVICES_JSON`.
2. **`local.properties`** (en la raíz del proyecto): además de `sdk.dir`, el script [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) lee los siguientes nombres de propiedades:
   - `STRIPE_PUBLISHABLE_KEY`: clave pública inyectada en `BuildConfig.STRIPE_PUBLISHABLE_KEY` (si no se define, compila con cadena vacía `""`).
   - `RELEASE_KEYSTORE_FILE`, `RELEASE_KEYSTORE_PASSWORD` y `RELEASE_KEYSTORE_ALIAS`: requeridos únicamente para firmar la variante `release`.

```kotlin title="app/build.gradle.kts"
val localProperties = Properties().apply {
    val f = rootProject.file("local.properties")
    if (f.exists()) load(f.inputStream())
}
buildConfigField(
    "String",
    "STRIPE_PUBLISHABLE_KEY",
    "\"${localProperties.getProperty("STRIPE_PUBLISHABLE_KEY", "")}\""
)
```

<!-- TODO: confirmar el canal interno del equipo para solicitar app/google-services.json de desarrollo y STRIPE_PUBLISHABLE_KEY de test -->

## Clonar y compilar

=== "Linux y macOS"

    ```bash title="terminal"
    git clone https://github.com/AmaniGrupo1/AmaniAndroid.git
    cd AmaniAndroid
    ./gradlew assembleDebug # (1)!
    ```

    1. Compila la variante `debug` y genera `app/build/outputs/apk/debug/app-debug.apk`.

=== "Windows"

    ```powershell title="terminal"
    git clone https://github.com/AmaniGrupo1/AmaniAndroid.git
    cd AmaniAndroid
    .\gradlew.bat assembleDebug # (1)!
    ```

    1. Compila la variante `debug` en Windows usando `gradlew.bat`.

!!! note "Entornos containerizados o sandbox"
    Si tu entorno restringe el acceso a `~/.android/debug.keystore.lock`, exporta `ANDROID_USER_HOME` hacia un directorio con permisos de escritura antes de invocar `./gradlew assembleDebug` (véase `DEC-10` en [`DECISIONES.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/DECISIONES.md)).

## Ejecutar la aplicación y lanzar tests

1. Inicia un emulador (x86/x86_64 o ARM) con API 25+ o conecta un dispositivo físico por USB.
2. Ejecuta la configuración `app` desde Android Studio o instala el APK generado en `app/build/outputs/apk/debug/app-debug.apk`.
3. Para lanzar la suite de pruebas unitarias y las comprobaciones de calidad:

=== "Linux y macOS"

    ```bash title="terminal"
    ./gradlew testDebugUnitTest # (1)!
    ./gradlew qualityCheck # (2)!
    ```

    1. Ejecuta las 84 clases de test unitario en la JVM local.
    2. Ejecuta `testDebugUnitTest`, `detekt`, `ktlintCheck`, `lintDebug` y `koverHtmlReportDebug`.

=== "Windows"

    ```powershell title="terminal"
    .\gradlew.bat testDebugUnitTest # (1)!
    .\gradlew.bat qualityCheck # (2)!
    ```

    1. Ejecuta las pruebas unitarias en la JVM local.
    2. Ejecuta la tarea agrupada de verificación definida en el `build.gradle.kts` raíz.

!!! warning "URL del backend REST en `RetrofitModule.kt`"
    En [`di/RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt), el cliente apunta por defecto al servicio Cloud Run (`https://amani-api-560473593904.europe-west1.run.app/`), mientras que `.baseUrl("http://10.0.2.2:8080/")` está comentada.

<!-- TODO: confirmar cuentas ficticias de prueba para los roles paciente, psicologo y admin en el entorno de desarrollo -->

## Siguientes pasos

- Revisa las vistas previstas en [Demo y capturas](demo-y-capturas.md).
- Consulta [Build y configuración](referencia/configuracion.md) para ver el detalle de `buildTypes`, empaquetado y firma.
- Explora la [Arquitectura](arquitectura.md) para entender cómo se conectan las capas.

*[JDK]: Java Development Kit
*[SDK]: Software Development Kit
*[NDK]: Native Development Kit
*[ABI]: Application Binary Interface
*[APK]: Android Package Kit
*[JVM]: Java Virtual Machine
*[CI]: Continuous Integration (Integración continua)
*[REST]: Representational State Transfer
