# Testing y calidad

Esta página describe la estrategia de pruebas y aseguramiento de calidad del proyecto, abarcando las suites en [`app/src/test/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/test) y [`app/src/androidTest/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/androidTest), la cobertura con Kover (`0.9.8`) y el análisis estático con Detekt (`1.23.8`), ktlint (`14.2.0`) y SonarQube (`7.2.3.7755`).

## Estrategia y alcance de las pruebas

| Nivel | Ubicación | Archivos | Librerías empleadas | Qué se prueba |
|---|---|---|---|---|
| **Pruebas unitarias (JVM)** | [`app/src/test/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/test) | 84 | JUnit `4.13.2`, MockK `1.14.9`, Turbine `1.2.1`, `kotlinx-coroutines-test` `1.10.2`, MockWebServer `5.3.2` | 31 ViewModels (`LoginViewModelTest`, `PsicologoAgendaViewModelTest`, `DiarioEmocionalViewModelTest`, `PaymentViewModelTest`…), 26 casos de uso (`LoginUseCaseTest`, `SendMessageUseCaseTest`…), 10 repositorios y utilidades. |
| **Pruebas instrumentadas y UI** | [`app/src/androidTest/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/androidTest) | 5 | AndroidX JUnit `1.3.0`, Espresso `3.7.0`, UIAutomator `2.3.0`, Compose UI Test JUnit4, MockK Android | Flujos de interfaz en Compose (`LoginScreenTest`, `ChatScreenTest`, `EstadisticasPsicologoScreenTest`). |

En [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) se activa `unitTests.isReturnDefaultValues = true` dentro de `testOptions` para permitir que las pruebas JVM interactúen con llamadas auxiliares del SDK de Android sin lanzar excepciones `Method ... not mocked`.

## Ejecución de tests

=== "Linux y macOS"

    ```bash title="terminal"
    ./gradlew testDebugUnitTest # (1)!
    ./gradlew connectedDebugAndroidTest # (2)!
    ```

    1. Ejecuta las 84 clases de pruebas unitarias sobre la JVM local.
    2. Ejecuta las 5 clases de pruebas instrumentadas en un emulador o dispositivo conectado.

=== "Windows"

    ```powershell title="terminal"
    .\gradlew.bat testDebugUnitTest # (1)!
    .\gradlew.bat connectedDebugAndroidTest # (2)!
    ```

    1. Ejecuta las pruebas unitarias sobre la JVM local.
    2. Ejecuta las pruebas instrumentadas en un dispositivo o emulador activo.

## Cobertura con Kover y análisis estático

La configuración de Kover en [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) mide la cobertura de la variante `debug` excluyendo clases de infraestructura UI/DI/DTO y verifica un umbral mínimo (`minBound(7)`):

```kotlin title="app/build.gradle.kts"
kover {
    reports {
        variant("debug") {
            filters {
                excludes {
                    classes("*.di.*", "*.ui.*", "*Activity", "*Application", "*.dto.*", "*.models.*", "*.R", "*.R$*")
                }
            }
            verify {
                rule { minBound(7) }
            }
        }
    }
}
```

Por su parte, [`build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/build.gradle.kts) define la tarea agregada `qualityCheck`:

```bash title="terminal"
./gradlew detekt ktlintCheck # (1)!
./gradlew koverVerifyDebug # (2)!
./gradlew qualityCheck # (3)!
```

1. Ejecuta el análisis estático con [`config/detekt/detekt.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/config/detekt/detekt.yml) y la validación de estilo con ktlint (`ignoreFailures = true` en ambos).
2. Comprueba que la cobertura de código alcance al menos el 7 % configurado.
3. Ejecuta `:app:testDebugUnitTest`, `:app:detekt`, `:app:ktlintCheck`, `:app:lintDebug` y `:app:koverHtmlReportDebug`.

!!! note "Umbral configurado frente a cobertura medida"
    El valor `minBound(7)` representa la regla mínima configurada en Gradle; el informe detallado por paquete se genera localmente en `app/build/reports/kover/htmlDebug/index.html` al ejecutar `./gradlew koverHtmlReportDebug`.

## Siguientes pasos

- Consulta [CI/CD y publicación](despliegue.md) para ver cómo se ejecutan los tests Robo e instrumentados en Firebase Test Lab.
- Revisa [Decisiones y roadmap](limitaciones-y-roadmap.md) para ver los objetivos de incremento de cobertura.

*[JVM]: Java Virtual Machine
*[UI]: User Interface (Interfaz de usuario)
*[DI]: Dependency Injection (Inyección de dependencias)
*[DTO]: Data Transfer Object
*[SDK]: Software Development Kit
