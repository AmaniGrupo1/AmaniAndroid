# Mantener la documentación

Esta guía establece el protocolo de mantenimiento para que la documentación MkDocs de **Amani Android** permanezca sincronizada con el código fuente del módulo `:app` tras cada pull request.

## Mapa de sincronización: si cambias X, actualiza Y

| Si modificas en el código... | Debes revisar y actualizar en `docs/`... | Fuentes de verdad relacionadas |
|---|---|---|
| `Readme.md`, `res/values/strings.xml`, capacidades generales o versiones principales | [Visión general (`docs/index.md`)](../index.md) | [`gradle/libs.versions.toml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/gradle/libs.versions.toml), [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) |
| Requisitos de JDK/SDK, `local.properties` o comandos de arranque | [Puesta en marcha (`docs/puesta-en-marcha.md`)](../puesta-en-marcha.md) | [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts), [`di/RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt) |
| Capas, `BaseViewModel`, casos de uso en `domain/usecases/` o flujo UDF | [Arquitectura (`docs/arquitectura.md`)](../arquitectura.md) | Paquetes `presentation/`, `domain/`, `data/` |
| `settings.gradle.kts`, módulos o creación/renombrado de paquetes | [Estructura del proyecto (`docs/estructura-proyecto.md`)](../estructura-proyecto.md) | [`settings.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/settings.gradle.kts), `app/src/main/java/` |
| `ui/theme/*`, pantallas Compose en `presentation/ui/`, componentes o `UiState` | [Capa UI (`docs/capa-ui.md`)](../capa-ui.md) y [Demo y capturas (`docs/demo-y-capturas.md`)](../demo-y-capturas.md) | [`ui/theme/Theme.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt), `presentation/ui/` |
| `Screens.kt`, `NavGraph.kt`, `NavExtensions.kt` o `AmaniBottomBar.kt` | [Navegación (`docs/navegacion.md`)](../navegacion.md) | [`Screens.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/navigation/screen/Screens.kt), [`NavGraph.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraph.kt) |
| `data/local/*`, Room (`AmaniDatabase`, DAOs, migraciones), DataStore, `data/repositorio/*` o workers | [Capa de datos (`docs/referencia/datos-y-persistencia.md`)](../referencia/datos-y-persistencia.md) | [`AmaniDatabase.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/AmaniDatabase.kt), `data/repositorio/` |
| Interfaces Retrofit en `data/remoto/*` | [API y endpoints (`docs/referencia/api-endpoints.md`)](../referencia/api-endpoints.md) | [`data/remoto/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto) |
| Módulos Koin en `di/*` o `startKoin` en `AmaniApplication.kt` | [Inyección de dependencias (`docs/inyeccion-dependencias.md`)](../inyeccion-dependencias.md) | [`di/AppModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt), [`di/RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt), [`di/ChatModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/ChatModule.kt) |
| `gradle/libs.versions.toml`, `build.gradle.kts`, `app/build.gradle.kts` o `proguard-rules.pro` | [Build y configuración (`docs/referencia/configuracion.md`)](../referencia/configuracion.md) | [`gradle/libs.versions.toml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/gradle/libs.versions.toml), [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) |
| `app/src/main/AndroidManifest.xml`, `res/xml/*` o servicios en `services/` | [Manifest y permisos (`docs/manifest-y-permisos.md`)](../manifest-y-permisos.md) | [`AndroidManifest.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/AndroidManifest.xml) |
| Suites en `app/src/test/`, `app/src/androidTest/`, Kover, Detekt o ktlint | [Testing y calidad (`docs/calidad-y-testing.md`)](../calidad-y-testing.md) | [`build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/build.gradle.kts), `app/src/test/` |
| `.github/workflows/*.yml` | [CI/CD y publicación (`docs/despliegue.md`)](../despliegue.md) | [`.github/workflows/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/.github/workflows) |
| `.gitignore`, interceptores de token, reglas de Firebase o reglas de backup | [Seguridad y privacidad (`docs/seguridad-y-alcance.md`)](../seguridad-y-alcance.md) | [`.gitignore`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.gitignore), `firestore.rules`, `storage.rules` |
| `DECISIONES.md` o `PLAN-MEJORA.md` | [Decisiones y roadmap (`docs/limitaciones-y-roadmap.md`)](../limitaciones-y-roadmap.md) | [`DECISIONES.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/DECISIONES.md), [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md) |

## Cómo detectar cambios pendientes de documentar

Para comprobar qué archivos de código han cambiado desde la última actualización de `docs/` o `mkdocs.yml`, ejecuta:

```bash title="terminal"
BASE_HASH=$(git log -1 --format=%H -- docs mkdocs.yml) # (1)!
git diff --name-only "$BASE_HASH"..HEAD -- . ':!docs' # (2)!
```

1. Obtiene el hash del último commit que modificó la documentación.
2. Lista todos los archivos del repositorio modificados desde entonces, excluyendo `docs/`.

## Lista de comprobación antes de cada Pull Request

- [ ] He revisado la tabla superior y actualizado las páginas de `docs/` afectadas por mis cambios en el código.
- [ ] He verificado que las versiones citadas coinciden con `gradle/libs.versions.toml` y `app/build.gradle.kts`.
- [ ] Ningún fragmento o página incluye valores reales de `local.properties`, `google-services.json`, keystores ni tokens.
- [ ] Cada página modificada mantiene un único `# H1`, un máximo de 2 admoniciones y cierra con `## Siguientes pasos`.
- [ ] He ejecutado `mkdocs build --strict` sin errores ni advertencias de enlaces rotos.

!!! tip "Validación automática en CI"
    El job `docs` de [`.github/workflows/entrega.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/entrega.yml) ejecuta Dokka y `mkdocs build --strict` en cada pull request para impedir que se fusionen enlaces rotos.

## Siguientes pasos

- Consulta [Contribuir a la documentación](../contribuir-documentacion.md) para ver cómo levantar el entorno Python y ejecutar `mkdocs serve` en local.
- Revisa [Decisiones y roadmap](../limitaciones-y-roadmap.md) para conocer los pendientes técnicos del proyecto.

*[UDF]: Unidirectional Data Flow (Flujo de datos unidireccional)
*[DAO]: Data Access Object
*[PR]: Pull Request
*[CI]: Continuous Integration (Integración continua)
*[JDK]: Java Development Kit
*[SDK]: Software Development Kit
