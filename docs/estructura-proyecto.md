# Estructura del proyecto

Esta página documenta la organización de carpetas y paquetes del repositorio **ApplicationAmani**, cubriendo la configuración de módulos en [`settings.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/settings.gradle.kts) y el árbol de código fuente bajo [`app/src/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src).

## Configuración del proyecto y módulos

El proyecto es **monomódulo** (`:app`), definido en [`settings.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/settings.gradle.kts) con nombre raíz `ApplicationAmani` y resolución de repositorios desde Google, Maven Central y el repositorio Maven de Jitsi:

```kotlin title="settings.gradle.kts"
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        maven {
            url = uri("https://github.com/jitsi/jitsi-maven-repository/raw/master/releases")
        }
    }
}
rootProject.name = "ApplicationAmani"
include(":app")
```

## Árbol comentado del repositorio

```text title="Estructura raíz y módulo :app"
AmaniAndroid/
├── .github/workflows/          # Pipelines CI/CD (ci.yml: tests, build y Test Lab; entrega.yml: docs y release)
├── config/detekt/detekt.yml    # Reglas de análisis estático Detekt
├── database/rules.json         # Reglas de Firebase Realtime Database
├── firestore.rules             # Reglas de seguridad de Cloud Firestore
├── storage.rules               # Reglas de seguridad de Firebase Storage
├── gradle/libs.versions.toml   # Catálogo centralizado de versiones y plugins
├── docs/                       # Documentación MkDocs y script dokka-init.gradle
└── app/                        # Único módulo de aplicación Android
    ├── build.gradle.kts        # Configuración Android, firma, Dokka, Detekt, ktlint y Kover
    ├── proguard-rules.pro      # Reglas de retención para Crashlytics y trazas
    └── src/
        ├── main/               # Código de producción, AndroidManifest.xml y recursos
        ├── test/               # 84 archivos de pruebas unitarias JVM
        └── androidTest/        # 5 archivos de pruebas instrumentadas / Compose UI
```

## Paquetes bajo `org.ies.tierno.applicationamani`

Dentro de [`app/src/main/java/org/ies/tierno/applicationamani/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani), el código se distribuye en 9 paquetes de primer nivel:

```text title="app/src/main/java/org/ies/tierno/applicationamani/"
org.ies.tierno.applicationamani/
├── AmaniApplication.kt         # Inicialización de Koin, Firebase, Stripe, Timber y canales
├── MainActivity.kt             # Única Activity: aplica Locale, edge-to-edge, AppTheme y NavGraph
├── core/
│   ├── crash/                  # CrashReporter, FirebaseCrashReporter y NoOpCrashReporter
│   └── viewmodel/              # BaseViewModel con CoroutineExceptionHandler integrado
├── data/
│   ├── local/                  # TokenDataStore, UserSessionDataStore, TokenHolder, LanguageManager
│   │   ├── diario/             # Room: AmaniDatabase (v2), EntradaDiarioEntity y DiarioEmocionalDao
│   │   └── juego/              # Motor y vista del minijuego Snake (SnakeGameEngine, SnakeView)
│   ├── remoto/                 # 16 interfaces Retrofit, interceptores OkHttp y SyncDiarioWorker
│   ├── repositorio/            # Implementaciones principales de repositorios por dominio
│   └── repository/             # ChatRepositoryImpl (implementación inyectada en ChatModule)
├── di/                         # 5 módulos Koin: AppModule, RetrofitModule, ChatModule, CrashModule, gameModule
├── domain/
│   ├── events/                 # Eventos de dominio
│   ├── models/                 # Modelos de negocio y enums (Rol, EstadoCita, SyncStatus, TicketSoporte)
│   ├── repository/             # Contrato ChatRepository
│   └── usecases/               # 25 casos de uso agrupados por feature
├── dto/                        # Objetos de transferencia de datos (peticiones y respuestas REST)
├── presentation/
│   ├── components/             # Componentes heredados (BottomBar)
│   ├── navigation/             # Screens (sealed class con 43 rutas), NavGraph y NavExtensions
│   ├── screens/profile/        # Pantallas de perfil (PacienteProfileScreen, PsicologoProfileScreen)
│   ├── ui/                     # Pantallas por rol (AdminView, pacienteView, psicologoView, chat, diario...)
│   └── viewmodels/             # 38 ViewModels organizados por feature
├── services/                   # AmaniFirebaseMessagingService (notificaciones push FCM)
├── ui/theme/                   # Sistema de diseño Material 3: Theme.kt, Color.kt, Type.kt, Shape.kt, Spacing.kt
└── utils/                      # CitaNotificationWorker, FileLoggingTree, PdfGenerator y helpers
```

!!! note "Convenciones de paquetes y deuda técnica registrada"
    Como documenta [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md), coexisten temporalmente paquetes con nombres en español e inglés (`data/repositorio` y `data/repository`, `presentation/ui/componente` y `presentation/ui/components`, `presentation/ui/screen` y `presentation/ui/screens`). El módulo [`ChatModule`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/ChatModule.kt) inyecta `data.repository.ChatRepositoryImpl`.

## Siguientes pasos

- Consulta la [Arquitectura](arquitectura.md) para entender cómo se comunican estas capas.
- Revisa la [Capa UI](capa-ui.md) y la [Capa de datos](referencia/datos-y-persistencia.md) para ver el detalle de cada paquete.

*[CI]: Continuous Integration (Integración continua)
*[CD]: Continuous Deployment (Entrega continua)
*[DTO]: Data Transfer Object
*[FCM]: Firebase Cloud Messaging
*[JVM]: Java Virtual Machine
