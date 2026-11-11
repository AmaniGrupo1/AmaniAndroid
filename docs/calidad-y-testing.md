# Testing y calidad

## Pruebas existentes

En el repositorio hay 84 archivos Kotlin bajo `app/src/test` y 5 bajo `app/src/androidTest`. Los tests unitarios cubren, entre otros, repositorios, casos de uso, ViewModels y componentes; los instrumentados incluyen flujos Compose.

Ejecuta los tests JVM:

```bash
./gradlew testDebugUnitTest
```

Los tests instrumentados requieren emulador/dispositivo conectado:

```bash
./gradlew connectedDebugAndroidTest
```

El workflow `firebase_test_lab.yml` compila APK debug y Android Test y ejecuta pruebas Robo e instrumentadas en Firebase Test Lab.

## Cobertura y análisis estático

- Kover configura un umbral mínimo del 7 % para la verificación de la variante debug (`koverVerifyDebug`).
- Detekt y ktlint están configurados con `ignoreFailures = true`; sus hallazgos no bloquean por sí solos el build.
- El task `qualityCheck` agrupa tests unitarios, Detekt, ktlint, lint Android y generación del informe HTML de Kover. La configuración actual no incluye `koverVerifyDebug` en ese task.
- SonarQube está configurado en el build raíz y lee `SONAR_HOST_URL` y `SONAR_TOKEN`.

Comandos de validación:

```bash
./gradlew detekt ktlintCheck
./gradlew koverVerifyDebug
./gradlew qualityCheck
```

No se afirma un porcentaje de cobertura alcanzado: el porcentaje configurado es un límite, no un resultado ejecutado.

## CI

| Workflow | Cuándo | Resultado principal |
|---|---|---|
| `build_debug_apk.yml` | Push/PR a `main`, `master` o `develop` | Compila un APK debug y lo publica como artefacto de Actions. |
| `firebase_test_lab.yml` | Push/PR a `master` o `develop` | Ejecuta tests Robo e instrumentados en Firebase Test Lab. |
| `release_signed_apk.yml` | Tag `v*` o ejecución manual | Compila un APK firmado y lo adjunta a un GitHub Release. |
| `docs.yml` | Cada PR; publicación al hacer push a `main` | Genera Dokka, valida MkDocs y publica GitHub Pages. |

La configuración varía entre workflows; consulta los archivos en `.github/workflows/` antes de cambiar sus disparadores o requisitos.

## Siguientes pasos

Para contribuir al contenido de este sitio, sigue [Contribuir a la documentación](contribuir-documentacion.md).
