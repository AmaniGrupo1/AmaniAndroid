# CI/CD y publicación

Esta página documenta los dos flujos de trabajo de **GitHub Actions** definidos en [`.github/workflows/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/.github/workflows): uno de verificación (tests, compilación y Firebase Test Lab) y otro de entrega (documentación y APK firmado).

## Resumen de pipelines

| Workflow | Archivo | Disparadores | Jobs y resultado |
|---|---|---|---|
| **CI** | [`ci.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/ci.yml) | `push` y `pull_request` a `master`, `main`, `develop`; `workflow_dispatch` | **`build`**: ejecuta `./gradlew testDebugUnitTest`, compila `assembleDebug` y `assembleDebugAndroidTest` y sube los APK como artefactos (7 días) junto con el informe de tests. **`test-lab`** (necesita `build`, se omite en PR desde forks): lanza un **Robo Test** (5 min) y un **test de instrumentación** (10 min) sobre esos mismos APK en un `panther` (Pixel 7), API 33, locale `es`. |
| **Entrega** | [`entrega.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/entrega.yml) | `pull_request`, `push` a `master`, etiqueta `v*` y `workflow_dispatch` (con `tag` opcional) | **`docs`**: Dokka + `mkdocs build --strict`, y `mkdocs gh-deploy` en `master`. **`release`** (etiqueta `v*` o `tag` indicado): decodifica `ANDROID_KEYSTORE_BASE64`, compila `assembleRelease` y publica `amani-<version>.apk` en GitHub Releases. |

!!! note "Android SDK en el runner"
    `ubuntu-latest` ya incluye el Android SDK. Los workflows solo aceptan las licencias con `sdkmanager --licenses`; el paso `android-actions/setup-android@v3` se retiró porque fallaba (`Failed to find package 'tools'`) antes de compilar.

## Caché y tiempos de CI

- **Gradle:** `gradle/actions/setup-gradle@v4` cachea dependencias, wrapper y build cache (`org.gradle.caching=true` en `gradle.properties`). Solo `master` escribe la caché; las demás ramas y los PR la leen.
- **NDK:** `actions/cache` conserva `ndk/26.1.10909125`, la versión fijada en `app/build.gradle.kts` que el runner no incluye.
- **Una sola invocación de Gradle** por job (`testDebugUnitTest assembleDebug assembleDebugAndroidTest`) y `paths-ignore` para no compilar en cambios solo de documentación.
- **Release sin credenciales:** `release` solo se firma si hay keystore y credenciales completas (`RELEASE_KEYSTORE_FILE/PASSWORD/ALIAS` en `local.properties` o en variables de entorno), siguiendo la guía de Android Developers [«Sign your app»](https://developer.android.com/studio/publish/app-signing). Sin ellas (PR, CodeQL, builds locales) `assemble` genera un APK sin firmar en lugar de fallar en `validateSigningRelease`. El keystore **no se versiona** (`*.keystore`, `*.jks` están en `.gitignore`); el job `release` de `entrega.yml` lo escribe en la raíz y falla si no encuentra `app-release.apk`, de modo que nunca publica un release sin firmar.
- **Versiones de actions:** `checkout@v6`, `setup-java@v5`, `setup-gradle@v6`, `cache@v5`, `upload-artifact@v6`, `download-artifact@v7`, `google-github-actions/auth@v3` y `setup-gcloud@v3` (runtime Node 24; los `@v4`/`@v2` anteriores generaban avisos de Node 20 obsoleto).

## Firebase Test Lab

El job `test-lab` de `ci.yml` solo se ejecuta si la variable del repositorio `TEST_LAB_ENABLED` vale `true` (Ajustes → Secrets and variables → Actions → Variables). Requisitos en Google Cloud, según la documentación de Firebase Test Lab para CI:

1. Habilitar las APIs **Cloud Testing** y **Cloud Tool Results**.
2. Cuenta de servicio (`GCP_SA_KEY`) con `roles/editor` sobre el proyecto para usar el bucket por defecto, **o** un bucket propio indicado en la variable `TEST_LAB_RESULTS_BUCKET` (el workflow añade `--results-bucket` y un `--results-dir` único por ejecución) con la cuenta de servicio como `roles/storage.objectAdmin` sobre ese bucket y un rol de Test Lab (`roles/cloudtestservice.testAdmin`).
3. Sin esto, la subida del APK falla con `403 storage.objects.create`.

!!! warning "Test Lab queda obsoleto"
    Según Google, Firebase Test Lab se retira el 30 de septiembre de 2027; está pendiente migrar a Gradle Managed Devices o a la Developer Device Platform (ver `PLAN-MEJORA.md`).

## Generación del APK de release firmado

El job `release` de [`entrega.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/entrega.yml) reconstruye el almacén de claves en tiempo de ejecución a partir de los secretos del repositorio y publica el artefacto con GitHub CLI (`gh release`):

```yaml title=".github/workflows/entrega.yml (job release)"
printf '%s' "$ANDROID_KEYSTORE_BASE64" | base64 --decode > release.keystore
chmod 600 release.keystore
{
  echo "RELEASE_KEYSTORE_FILE=release.keystore"
  echo "RELEASE_KEYSTORE_PASSWORD=$RELEASE_KEYSTORE_PASSWORD"
  echo "RELEASE_KEYSTORE_ALIAS=$RELEASE_KEYSTORE_ALIAS"
} > local.properties
```

!!! note "Formato de distribución actual (APK vs AAB)"
    Los workflows generan paquetes `.apk` (`assembleDebug` y `assembleRelease`); no hay una tarea `bundleRelease` (`.aab`) ni integración con Fastlane o Google Play Console configurada en el repositorio.

<!-- TODO: habilitar GitHub Pages en la configuración del repositorio si aún no apunta a la rama gh-pages -->
<!-- TODO: confirmar el procedimiento de despliegue del backend REST en su repositorio correspondiente -->

## Siguientes pasos

- Consulta [Build y configuración](referencia/configuracion.md) para ver los detalles de `signingConfigs` y `BuildConfig`.
- Revisa [Testing y calidad](calidad-y-testing.md) para las pruebas ejecutadas en local y en Firebase Test Lab.

*[CI]: Continuous Integration (Integración continua)
*[CD]: Continuous Deployment (Entrega continua)
*[APK]: Android Package Kit
*[AAB]: Android App Bundle
*[REST]: Representational State Transfer
