# Pruebas Unitarias de Componentes

La ejecución veloz y repetitiva de comprobaciones en la lógica del sistema es lo que permite al equipo construir componentes complejos con confianza. Amani utiliza **JUnit** como motor fundacional y descarta el clásico pero vetusto "Mockito" en favor de la modernidad nativa de **MockK**.

## Herramientas de Ejecución Rápida

- **MockK**: Permite fingir de manera intuitiva comportamientos abstractos o simular el éxito y el fracaso rotundo de los repositorios sin ensuciar la base de datos real.
- **Corrutinas de Prueba**: Un módulo especializado que intercepta las acciones temporales de suspensión asíncrona, obligando al sistema a ejecutarlas en línea recta, ignorando esperas de milisegundos (`TestCoroutineDispatcher`).

## Ejemplo de Prueba Real en Compose

Para verificar cómo reacciona un gestor de estados visual al fallar la red y recibir una clase envolvente `NetworkResult.Error`, escribiríamos algo muy similar a esto en el módulo local de pruebas:

```kotlin
@OptIn(ExperimentalCoroutinesApi::class)
class SessionViewModelTest {

    // Fingimos (Mock) el repositorio dependiente que inyectaría Koin
    private val fakeRepository = mockk<SessionRepository>()
    private lateinit var viewModel: SessionViewModel

    @Before
    fun setup() {
        // Enjaulamos las operaciones asíncronas para forzarlas inmediatamente
        Dispatchers.setMain(StandardTestDispatcher())
        viewModel = SessionViewModel(fakeRepository)
    }

    @Test
    fun `al fallar la red el estado visual pasa a mensaje de error`() = runTest {
        // Configuramos la trampa o mentira (Mock)
        val errorAns = NetworkResult.Error("Fallo de DNS")
        coEvery { fakeRepository.fetchSessions() } returns errorAns

        // Actuar: Forzamos la llamada del ViewModel
        viewModel.loadSessions()
        
        // Adelantar el tiempo asíncrono
        advanceUntilIdle()

        // Afirmar: Comprobamos el contenedor de Compose final
        assertEquals("Fallo de DNS", viewModel.uiState.value.errorMessage)
    }
}
```

### Ejecución a través del Pipeline

Para disparar esta batería exhaustiva de comprobaciones en todo el directorio raíz del proyecto local, usa la sintaxis estándar de Android:

```bash
# Lanza todas las comprobaciones lógicas ignorando la UI
./gradlew testDebugUnitTest
```

!!! warning "Dependencias del Hilo de la Interfaz"
    Una clase `ViewModel` está estrechamente acoplada a las interacciones del hilo principal del teléfono móvil (Main Thread). Es completamente obligatorio invocar e inyectar `Dispatchers.setMain(...)` antes de probarlo en un ordenador genérico de desarrollo, de lo contrario la aserción colapsará ruidosamente al no localizar el enrutador gráfico real de Android.
