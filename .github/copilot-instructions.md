# Copilot instructions — Amani Android

Single-module Android app (`:app`, package `org.ies.tierno.applicationamani`) for managing psychological consultations. Roles: admin, psicólogo, paciente. Kotlin + Jetpack Compose (Material 3), Spanish-language code/docs/UI.

## Build, test, lint

```bash
./gradlew assembleDebug                      # debug APK (CI: JDK 17)
./gradlew testDebugUnitTest                  # JVM unit tests (app/src/test)
./gradlew testDebugUnitTest --tests "org.ies.tierno.applicationamani.data.AuthRepositoryTest"   # single class (add .method for one test)
./gradlew connectedDebugAndroidTest          # instrumented/Compose UI tests (app/src/androidTest); needs device/emulator
./gradlew detekt ktlintCheck                 # lint (config: config/detekt/detekt.yml)
./gradlew ktlintFormat                       # auto-format
./gradlew koverVerifyDebug                   # coverage gate (min 7%; excludes di, ui, dto, models, Activity/Application)
```

- Detekt and ktlint are configured with `ignoreFailures = true`, so they report but don't fail the build.
- `just distribute-pr "msg"` / `just distribute-release "msg"` build and upload to Firebase App Distribution. `scripts/run_firebase_tests.sh` runs Firebase Test Lab.
- Requires `google-services.json` (Firebase) and a local backend; the Jitsi Maven repo is declared in `settings.gradle.kts` (repositories are `FAIL_ON_PROJECT_REPOS`, so add new repos there, not in module build files).
- Dependencies come from the version catalog (`gradle/libs.versions.toml`).

## Architecture

Clean Architecture + MVVM: `presentation (Compose screens → ViewModels/StateFlow) → domain (usecases, models, repository interfaces) → data (Retrofit APIs, repositories, DataStore, Firebase, Room)`.

- **DI is Koin, not Hilt** (despite the Hilt skill listed in `CLAUDE.md`). Modules live in `di/` (`appModule`, `retrofitModule`, `crashModule`, `chatModule`, `gameModule`) and are registered in `AmaniApplication.startKoin`. A new module must be added to that list.
- **Networking** (`di/RetrofitModule.kt`): one OkHttp client with `AuthInterceptor` (JWT from `TokenDataStore`/`TokenHolder`), `TokenRefreshInterceptor`, and `CrashlyticsInterceptor`; Gson with custom adapters for `LocalDate`/`LocalDateTime`/`LocalTime` and `Rol`. Each REST area has an `*Api` interface in `data/remoto/`; the backend (Spring Boot) defaults to `http://10.0.2.2:8080`.
- **Auth/session**: JWT and `UserSession` (including theme/language) persisted via DataStore (`data/local/`); `AuthEventChannel` signals auth events (e.g. forced logout) to the UI.
- **Other backends**: Firebase Auth/Firestore/Realtime DB/Storage for chat (`ChatFirebaseService`, `ChatRepositoryImpl`), FCM (`services/AmaniFirebaseMessagingService`), Crashlytics/Perf; Room + WorkManager for offline diary sync (`data/local/diario`, `SyncDiarioWorker`, `DiarioSyncManager`); Jitsi for video calls. Firebase rules live at repo root (`firestore.rules`, `storage.rules`, `firebase-database-rules.json`).
- **Navigation**: Navigation Compose under `presentation/navigation` (`navGraph/` per role + `screen/` route definitions).
- ViewModels are grouped by feature under `presentation/viewmodels/<feature>`; shared base in `core/viewmodel`.
- DTOs are in the top-level `dto/<feature>` package (not under `data`).

## Conventions

- Package/folder names are Spanish and partly inconsistent: use `data/remoto` (APIs) and `data/repositorio` (repository classes). `data/repository` holds only a stray `ChatRepositoryImpl` — don't add new code there; domain repository interfaces are in `domain/repository`.
- Code comments/KDoc are written in Spanish; keep that style (KDoc on public classes, as in `AmaniApplication`/`RetrofitModule`).
- UI design decisions are recorded in `DECISIONES.md` (DEC-xx) and `docs/design.md`; follow them: brand lilac `#CCC0E4` used as container/seed color with WCAG AA-compliant primary, dynamic color off by default, max 2 font families (Nunito + Roboto), semantic status colors only with icon + text, no Compose `Color` in domain/data layers. Theme entry point is `ApplicationAmaniTheme` (`ui/theme`).
- Detekt/ktlint use `android.set(true)` style; imports are sorted lexicographically.
- CI (`.github/workflows`): debug APK build on push/PR to `main`/`master`/`develop`, Firebase Test Lab, and signed release APK.
