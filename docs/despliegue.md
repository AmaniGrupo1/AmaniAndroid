# CI/CD y publicación

Esta página documenta los cuatro flujos de trabajo de **GitHub Actions** definidos en [`.github/workflows/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/.github/workflows) para compilar paquetes APK, ejecutar pruebas en Firebase Test Lab y publicar la documentación en GitHub Pages.

## Resumen de pipelines

| Workflow | Archivo | Disparadores | Resultado principal |
|---|---|---|---|
| **Build Debug APK** | [`build_debug_apk.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/build_debug_apk.yml) | `push` y `pull_request` a `master`, `main`, `develop`; `workflow_dispatch` | Inyecta `google-services.json` y `STRIPE_PUBLISHABLE_KEY`, ejecuta `./gradlew assembleDebug` y sube el artefacto `amani-debug-<rama>-build<n>-<fecha>.apk` (retención de 7 días). |
| **Firebase Test Lab** | [`firebase_test_lab.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/firebase_test_lab.yml) | `push` y `pull_request` a `master`, `develop` | Compila `assembleDebug` y `assembleDebugAndroidTest` y lanza un **Robo Test** (5 min) y un **Test de instrumentación** (10 min) en un dispositivo `panther` (Pixel 7) con API 33 y locale `es`. |
| **Release Signed APK** | [`release_signed_apk.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/release_signed_apk.yml) | Push de etiqueta `v*` o `workflow_dispatch` | Decodifica `ANDROID_KEYSTORE_BASE64`, escribe `local.properties`, compila `./gradlew assembleRelease` y publica `amani-<version>.apk` en GitHub Releases. |
| **Documentación** | [`docs.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/docs.yml) | `pull_request`, `push` a `master` y `workflow_dispatch` | Genera la referencia HTML con Dokka (`dokkaGeneratePublicationHtml`), valida con `mkdocs build --strict` y despliega en la rama `gh-pages` al hacer push a `master`. |

## Generación del APK de release firmado

El pipeline [`release_signed_apk.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/release_signed_apk.yml) reconstruye el almacén de claves en tiempo de ejecución a partir de los secretos del repositorio y publica el artefacto con GitHub CLI (`gh release`):

```yaml title=".github/workflows/release_signed_apk.yml"
printf '%s' "$ANDROID_KEYSTORE_BASE64" | base64 --decode > release.keystore
chmod 600 release.keystore
{
  echo "RELEASE_KEYSTORE_FILE=release.keystore"
  echo "RELEASE_KEYSTORE_PASSWORD=$RELEASE_KEYSTORE_PASSWORD"
  echo "RELEASE_KEYSTORE_ALIAS=$RELEASE_KEYSTORE_ALIAS"
} > local.properties
```

!!! note "Formato de distribución actual (APK vs AAB)"
    Los workflows actuales generan paquetes `.apk` (`assembleDebug` y `assembleRelease`); no hay una tarea `bundleRelease` (`.aab`) ni integración con Fastlane o Google Play Console configurada en el repositorio.

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
