# Inyección de Dependencias con Koin

La gestión del árbol de dependencias es un pilar crítico en Android. Para este proyecto, el equipo arquitectónico ha decidido **descartar Hilt por completo** en favor de **Koin**.

## ADR-001: ¿Por qué Koin en lugar de Hilt?

Para un proyecto académico de estas dimensiones y exigencias temporales, Hilt añade un exceso considerable de código redundante (*boilerplate*). Hilt se apoya en `kapt` o `KSP` para generar código Java durante el tiempo de compilación. Esto incrementa de manera dolorosa los tiempos de construcción de Gradle y añade complejidad innecesaria para el aprendizaje del equipo.

Koin, en cambio, se comporta como un localizador de servicios puro escrito al 100% en Kotlin (Kotlin-first), resolviendo las dependencias en tiempo de ejecución. Su sintaxis declarativa y su excelente compatibilidad inmediata con las bibliotecas modernas (como WorkManager y Jetpack Compose) lo hacen el ganador definitivo para AMANI.

## Estructura de Módulos

La inyección en Amani Android está fragmentada lógicamente dentro de la carpeta `di/` en diferentes módulos semánticos:

1. `networkModule`: Provee las instancias de Retrofit, OkHttp y configuraciones del cliente API.
2. `repositoryModule`: Construye e inyecta instancias abstractas como el `DiarioEmocionalRepository` o el `PaymentRepository`.
3. `viewModelModule`: Define los constructores reactivos que sobrevivirán al ciclo de vida del UI.

### Ejemplo Práctico de Declaración

En tu archivo de declaración de módulos de Koin (`appModule.kt`), registrarías un modelo de vista y su caso de uso de la siguiente manera:

```kotlin
val viewModelModule = module {
    // Declaración de un caso de uso (Singleton)
    single { GetSessionsUseCase(get()) }
    
    // Declaración del ViewModel
    viewModel { SessionViewModel(get()) }
}
```

### Inyección desde Jetpack Compose

Una vez declarado en el módulo, en tu pantalla Compose simplemente lo obtienes llamando a la función de extensión nativa:

```kotlin
@Composable
fun SessionScreen(
    viewModel: SessionViewModel = koinViewModel()
) {
    // El ViewModel ya tiene inyectadas todas sus dependencias internamente
    val uiState by viewModel.state.collectAsState()
}
```

## Inicialización del Grafo

Todo el grafo de dependencias de Koin cobra vida cuando la aplicación arranca por primera vez. Esto ocurre dentro de la clase principal `AmaniApplication`, en el bloque de inicio:

```kotlin
class AmaniApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        
        startKoin {
            androidLogger()
            androidContext(this@AmaniApplication)
            modules(networkModule, repositoryModule, viewModelModule)
        }
    }
}
```
