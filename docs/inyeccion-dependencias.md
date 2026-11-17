# Inyección de dependencias

Esta página explica cómo se configura y utiliza **Koin (`4.1.1`)** para la inyección de dependencias en el módulo `:app`, cubriendo el arranque en [`AmaniApplication.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/AmaniApplication.kt) y los 5 módulos declarados en [`app/src/main/java/org/ies/tierno/applicationamani/di/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/di).

## Inicialización en `AmaniApplication`

Al arrancar el proceso Android, [`AmaniApplication.onCreate()`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/AmaniApplication.kt) inicia el contenedor global de Koin registrando el contexto de aplicación, la factoría de `WorkManager` (`workManagerFactory()`) y los 5 módulos del proyecto:

```kotlin title="app/src/main/java/org/ies/tierno/applicationamani/AmaniApplication.kt"
startKoin {
    androidContext(this@AmaniApplication)
    workManagerFactory()
    modules(
        appModule,
        retrofitModule,
        crashModule,
        chatModule,
        gameModule
    )
}
```

!!! note "Integración con WorkManager"
    Para que `workManagerFactory()` de Koin pueda instanciar [`SyncDiarioWorker`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SyncDiarioWorker.kt) con dependencias inyectadas por constructor, [`AndroidManifest.xml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/AndroidManifest.xml) elimina el inicializador automático `androidx.work.WorkManagerInitializer` mediante `tools:node="remove"`.

## Mapa de módulos y scopes de Koin

| Módulo | Archivo | Scopes utilizados | Qué provee |
|---|---|---|---|
| `appModule` | [`di/AppModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt) | `single`, `factory`, `viewModel`, `worker` | `TokenDataStore`, `TokenHolder`, `AuthEventChannel`, `UserSessionDataStore`, `AmaniDatabase` (Room) y `DiarioEmocionalDao`, `FirebaseFirestore`, `FirebaseDatabase`, 17 repositorios (`single`), 25 casos de uso (`factory`), 36 ViewModels (`viewModel`) y `SyncDiarioWorker` (`worker`). |
| `retrofitModule` | [`di/RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt) | `single` | `AuthInterceptor`, `TokenRefreshInterceptor`, `CrashlyticsInterceptor`, `OkHttpClient` (con timeouts de 60 s y logging en debug), `coil.ImageLoader`, instancia `Retrofit` con adaptadores Gson para `java.time.*` y `Rol`, y las 16 interfaces API. |
| `chatModule` | [`di/ChatModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/ChatModule.kt) | `single`, `viewModel` | `FirebaseStorage`, `ChatRepository` (`ChatRepositoryImpl` como `single` para evitar listeners duplicados) y `ChatViewModelV2` con parámetros dinámicos de navegación. |
| `crashModule` | [`di/CrashModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/CrashModule.kt) | `single` | Implementación de [`CrashReporter`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/core/crash/CrashReporter.kt): `NoOpCrashReporter` en builds `DEBUG` y `FirebaseCrashReporter` en `release`. |
| `gameModule` | [`di/gameModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/gameModule.kt) | `viewModel` | `SnakeViewModel` para el minijuego de entretenimiento. |

## Ejemplo real: Inyección con parámetros de runtime en `ChatModule`

Mientras que la mayoría de los ViewModels reciben únicamente dependencias fijas del grafo, [`ChatViewModelV2`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModelV2.kt) combina singletons del contenedor (`Application`, `ChatRepository`) con tres parámetros dinámicos que provienen de la ruta de navegación (`chatId`, `currentUserId`, `otherUserId`):

```kotlin title="app/src/main/java/org/ies/tierno/applicationamani/di/ChatModule.kt"
val chatModule = module {
    single { FirebaseStorage.getInstance() }
    single<ChatRepository> {
        ChatRepositoryImpl(database = get(), storage = get())
    }
    viewModel { params ->
        ChatViewModelV2(
            appContext = get(),
            repo = get(),
            chatId = params[0],
            currentUserId = params[1],
            otherUserId = params[2],
        )
    }
}
```

Desde [`NavGraph.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraph.kt), el composable resuelve el ViewModel pasando los argumentos de la ruta mediante `parametersOf`:

```kotlin title="app/src/main/java/org/ies/tierno/applicationamani/presentation/navigation/navGraph/NavGraph.kt"
val viewModel: ChatViewModelV2 = koinViewModel(
    parameters = {
        parametersOf(
            chatId,
            currentUserId.toString(),
            otherUserId.toString(),
        )
    },
)
```

## Siguientes pasos

- Consulta [Capa de datos](referencia/datos-y-persistencia.md) para ver cómo se configuran Room, DataStore y los repositorios inyectados.
- Revisa [Manifest y permisos](manifest-y-permisos.md) para ver la configuración de `AmaniApplication` y `InitializationProvider`.

*[DI]: Dependency Injection (Inyección de dependencias)
*[API]: Application Programming Interface
