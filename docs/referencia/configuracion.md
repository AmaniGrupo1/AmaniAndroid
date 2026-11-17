# Build y configuración

Esta página documenta la configuración de compilación definida en [`build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/build.gradle.kts), [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts), [`gradle/libs.versions.toml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/gradle/libs.versions.toml) y [`app/proguard-rules.pro`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/proguard-rules.pro).

## Catálogo de versiones, SDK y compatibilidad

El proyecto centraliza sus dependencias en [`gradle/libs.versions.toml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/gradle/libs.versions.toml) y aplica los plugins de aplicación Android (`9.4.1`), Kotlin Compose (`2.2.10`), KSP (`2.3.6`), Dokka (`2.0.0`), Detekt (`1.23.8`), ktlint (`14.2.0`), Google Services (`4.4.4`), Crashlytics (`3.0.7`), Firebase Performance (`2.0.2`), Kover (`0.9.8`) y SonarQube (`7.2.3.7755`).

En [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) se habilita **Core Library Desugaring** (`desugar_jdk_libs = 2.1.5`) para permitir APIs de `java.time.*` desde `minSdk = 25`, y se configura el alineamiento de librerías JNI para dispositivos con páginas de memoria de 16 KB:

```kotlin title="app/build.gradle.kts"
packaging {
    jniLibs {
        useLegacyPackaging = false
    }
    resources {
        excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}
ndkVersion = "26.1.10909125"
```

## Build types, variantes y `BuildConfig`

El módulo `:app` no define `productFlavors`; cuenta con dos `buildTypes`:

| Build Type | Firma (`signingConfig`) | `isMinifyEnabled` (R8) | `crashlyticsCollectionEnabled` | Opciones específicas |
|---|---|---|---|---|
| **`debug`** | Keystore de depuración de Android | `false` | `false` | Activa `HttpLoggingInterceptor.Level.BODY`, `Timber.DebugTree()` y `NoOpCrashReporter`. |
| **`release`** | `signingConfigs.getByName("release")` | `false` | `true` | Sube mapping y símbolos nativos a Crashlytics (`mappingFileUploadEnabled = true`, `nativeSymbolUploadEnabled = true`) y carga `proguard-rules.pro`. |

```kotlin title="app/build.gradle.kts"
buildTypes {
    getByName("debug") {
        manifestPlaceholders["crashlyticsCollectionEnabled"] = false
    }
    release {
        signingConfig = signingConfigs.getByName("release")
        isMinifyEnabled = false
        proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        manifestPlaceholders["crashlyticsCollectionEnabled"] = true
    }
}
```

!!! note "Estado de R8 y reglas ProGuard"
    Aunque [`app/proguard-rules.pro`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/proguard-rules.pro) conserva `SourceFile,LineNumberTable` y las clases de `com.google.firebase.crashlytics.**`, la minificación con R8 está desactivada (`isMinifyEnabled = false`) en `release`.

## Variables de entorno, propiedades y secretos (sin valores)

| Nombre de propiedad / secreto | Dónde se lee | Propósito |
|---|---|---|
| `app/google-services.json` (`GOOGLE_SERVICES_JSON` en CI) | Plugin `com.google.gms.google-services` | Configuración del proyecto Firebase para `:app`. |
| `STRIPE_PUBLISHABLE_KEY` | `local.properties` → `BuildConfig.STRIPE_PUBLISHABLE_KEY` | Inicializa `PaymentConfiguration.init()` en [`AmaniApplication.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/AmaniApplication.kt). En CI se obtiene de Google Cloud Secret Manager. |
| `RELEASE_KEYSTORE_FILE` | `local.properties` (fallback `release.keystore`) | Archivo de almacén de claves para firmar `release` (en CI se decodifica desde `ANDROID_KEYSTORE_BASE64`). |
| `RELEASE_KEYSTORE_PASSWORD` | `local.properties` / GitHub Secrets | Contraseña del keystore (`storePassword`) y de la clave (`keyPassword`). |
| `RELEASE_KEYSTORE_ALIAS` | `local.properties` / GitHub Secrets | Alias de la clave de firma (`keyAlias`). |
| `SONAR_HOST_URL` y `SONAR_TOKEN` | Variables de entorno en [`build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/build.gradle.kts) | Servidor y token de autenticación para el análisis con SonarQube. |
| `GCP_SA_KEY` y `GCP_PROJECT_ID` | GitHub Secrets en workflows CI | Autenticación frente a Google Cloud (Secret Manager y Firebase Test Lab). |

!!! warning "Seguridad de archivos de configuración"
    Nunca publiques el contenido de `local.properties`, `google-services.json` ni `release.keystore`. Consulta [Seguridad y privacidad](../seguridad-y-alcance.md) para revisar las advertencias sobre archivos seguidos por Git.

<!-- TODO: confirmar cómo seleccionar un backend local o de staging mediante BuildConfig sin editar RetrofitModule.kt -->

## Siguientes pasos

- Revisa cómo se automatizan las compilaciones en [CI/CD y publicación](../despliegue.md).
- Consulta [Testing y calidad](../calidad-y-testing.md) para ver la configuración de Kover, Detekt y ktlint.

*[JNI]: Java Native Interface
*[NDK]: Native Development Kit
*[CI]: Continuous Integration (Integración continua)
*[GCP]: Google Cloud Platform
