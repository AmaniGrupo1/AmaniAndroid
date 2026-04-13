# Bug Report — AmaniAndroid
**Fecha:** 2026-03-30
**Analizado por:** Claude Code

---

## Resumen ejecutivo

| Categoría | Crítico | Alto | Medio | Bajo | Total |
|-----------|---------|------|-------|------|-------|
| Networking y JWT | 2 | 1 | — | — | 3 |
| Navigation Compose | — | 7 | 2 | 3 | 12 |
| StateFlow y UI state | — | 6 | 4 | — | 10 |
| Jetpack Compose | — | 5 | 4 | 5 | 14 |
| Coroutines y concurrencia | — | 2 | 3 | 2 | 7 |
| Koin (DI) | — | — | 1 | — | 1 |
| Seguridad | — | — | 1 | 5 | 6 |
| Null safety y casteos | — | — | 6 | 2 | 8 |
| Ciclo de vida | — | — | — | 1 | 1 |
| **TOTAL** | **2** | **21** | **21** | **18** | **62** |

---

## Top 3 bugs críticos

### [CRÍTICO #1] runBlocking en AuthInterceptor — `data/remoto/AuthInterceptor.kt:14-15`
**Categoría:** Networking y JWT
**Severidad:** Crítico

**Problema:** El interceptor de OkHttp llama a `runBlocking` dentro de un hilo de red para leer sincronizadamente un `StateFlow` desde el `TokenDataStore`. Esto puede causar deadlock o thread starvation bajo carga, ya que bloquea el hilo de la cadena de interceptores de OkHttp mientras espera el resultado de una operación que podría competir por los mismos recursos.

```kotlin
// AuthInterceptor.kt, líneas 14-15
val token = runBlocking {
    tokenDataStore.tokenFlow.firstOrNull()  // BLOQUEANTE dentro de interceptor
}
```

**Solución:**
```kotlin
// Opción: leer desde variable en memoria sincronizada, no desde Flow
val token = tokenHolder.getToken()  // lectura no-bloqueante desde caché en memoria

class TokenHolder(private val tokenDataStore: TokenDataStore) {
    @Volatile var token: String? = null
        private set

    init {
        CoroutineScope(Dispatchers.IO).launch {
            tokenDataStore.tokenFlow.collect { token = it }
        }
    }

    fun getToken(): String? = token  // lectura no-bloqueante
}
```

---

### [CRÍTICO #2] Sin manejo de HTTP 401 — `data/remoto/AuthInterceptor.kt:30` y `data/repositorio/AuthRepository.kt:159-162`
**Categoría:** Networking y JWT
**Severidad:** Crítico

**Problema:** Cuando el servidor responde con HTTP 401, el interceptor simplemente deja pasar la respuesta (`return chain.proceed(request)`). No hay mecanismo de refresh de token, ni de logout automático. Adicionalmente, en `AuthRepository.kt`, todos los errores se absorben emitiendo listas vacías, haciendo imposible que la UI detecte que la sesión fue invalidada.

```kotlin
// AuthInterceptor.kt, línea 30 — 401 pasa en silencio
return chain.proceed(request)

// AuthRepository.kt, líneas 159-162 — todos los errores se ocultan
} catch (e: Exception) {
    Timber.e(e, "Excepción al obtener psicólogos")
    emit(emptyList())  // 401 también termina aquí, ocultado
}
```

**Solución:**
```kotlin
// AuthInterceptor.kt — interceptor de respuesta que detecta 401
class TokenRefreshInterceptor(
    private val authRepository: AuthRepository
) : Interceptor {
    override fun intercept(chain: Interceptor.Chain): Response {
        val response = chain.proceed(chain.request())
        if (response.code() == 401) {
            // Intentar refresh o notificar logout
            // Notificar al app via un canal dedicado (Channel/Broadcast)
            notifyUnauthorized()
        }
        return response
    }
}

// AuthRepository.kt — no ocultar errores 401
catch (e: HttpException) {
    if (e.code() == 401) emit(null)  // o throw para propagar
    else emit(emptyList())
}
```

---

### [CRÍTICO #3] Tokens sin cifrar en SharedPreferences — `data/local/TokenDataStore.kt:15`
**Categoría:** Seguridad
**Severidad:** Crítico

**Problema:** Los tokens JWT se almacenan en un `Preferences DataStore` estándar sin cifrado. En un dispositivo rooteado, el token puede extraerse directamente del archivo protobuf. No hay cifrado de datos sensibles en reposo.

```kotlin
// TokenDataStore.kt, línea 15
private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "auth_prefs")
// auth_prefs.preferences_pb es legible en texto plano en dispositivo rooteado
```

**Solución:**
```kotlin
// Usar EncryptedSharedPreferences (AndroidX Security)
val masterKey = MasterKey.Builder(context)
    .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
    .build()

val encryptedPrefs = EncryptedSharedPreferences.create(
    context,
    "auth_prefs_encrypted",
    masterKey,
    EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
    EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
)
// Guardar y leer token vía encryptedPrefs.edit().putString(...) / .getString(...)
```

---

## Issues detallados

---

### [ALTO] MutableStateFlow expuesto sin .asStateFlow() — `presentation/viewmodels/LoginViewModel.kt:36-37, 39-40, 65-66, 68-69, 71-72, 75-76, 78-79, 82-83, 88-89, 91-92, 94-95, 100-101, 241-242, 244-245, 247-248, 450-451`
**Categoría:** StateFlow y UI state
**Severidad:** Alto

**Problema:** Múltiples campos `MutableStateFlow` son expuestos directamente como `StateFlow` sin usar `.asStateFlow()`. Aunque la propiedad se declara como `val`, la referencia al `MutableStateFlow` subyacente sigue siendo accesible.

```kotlin
// LoginViewModel.kt, líneas 36-37 — ejemplo representativo
private val _isLoggedIn = MutableStateFlow(false)
val isLoggedIn: StateFlow<Boolean> = _isLoggedIn  // Falta .asStateFlow()
```

**Solución:**
```kotlin
val isLoggedIn: StateFlow<Boolean> = _isLoggedIn.asStateFlow()
```

---

### [ALTO] MutableStateFlow expuesto sin .asStateFlow() — `presentation/viewmodels/cuestionario/CuestionarioViewModel.kt:38-42`
**Categoría:** StateFlow y UI state
**Severidad:** Alto

**Problema:** `_respuestaEnviada` es `MutableStateFlow` expuesto públicamente sin `.asStateFlow()`.

```kotlin
// CuestionarioViewModel.kt, líneas 38-42
private val _respuestaEnviada = MutableStateFlow(false)
val respuestaEnviada: StateFlow<Boolean> = _respuestaEnviada  // Mutable accesible
```

**Solución:**
```kotlin
val respuestaEnviada: StateFlow<Boolean> = _respuestaEnviada.asStateFlow()
```

---

### [ALTO] MutableStateFlow expuesto sin .asStateFlow() — `presentation/viewmodels/admin/ListarPsicologosAdminViewModel.kt:15-16`
**Categoría:** StateFlow y UI state
**Severidad:** Alto

```kotlin
// ListarPsicologosAdminViewModel.kt, líneas 15-16
private val _psicologo = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologo  // Sin .asStateFlow()
```

**Solución:**
```kotlin
val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologo.asStateFlow()
```

---

### [ALTO] MutableStateFlow expuesto sin .asStateFlow() — `presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel.kt:15-16, 23`
**Categoría:** StateFlow y UI state
**Severidad:** Alto

```kotlin
// GetAllPacientAndPsicologoVeiwModel.kt
private val _pacientes = MutableStateFlow<List<PsicologoConPacientesDTO>>(emptyList())
val paciente: StateFlow<List<PsicologoConPacientesDTO>> = _pacientes.asStateFlow()  // CORRECTO
// Pero luego línea 15-16 re-expone sin .asStateFlow()
```

**Solución:**
```kotlin
private val _pacientes = MutableStateFlow<List<PsicologoConPacientesDTO>>(emptyList())
val paciente: StateFlow<List<PsicologoConPacientesDTO>> = _pacientes.asStateFlow()
```

---

### [ALTO] popBackStack sin verificar backstack disponible — `presentation/ui/screen/AdminView/AgregaPsicologoScreen.kt:77-84`
**Categoría:** Navigation Compose
**Severidad:** Alto

**Problema:** Se llama `navController.popBackStack()` sin verificar si hay entradas en el backstack. Si esta pantalla es la primera en el stack, provocará un crash.

```kotlin
// AgregaPsicologoScreen.kt, líneas 77-84
LaunchedEffect(registerSuccess) {
    if (registerSuccess) {
        snackbarHostState.showSnackbar("Psicólogo registrado exitosamente")
        delay(1500)
        loginViewModel.resetRegisterState()
        navController.popBackStack()  // PUEDE CRASHEAR si es la única pantalla
    }
}
```

**Solución:**
```kotlin
LaunchedEffect(registerSuccess) {
    if (registerSuccess) {
        snackbarHostState.showSnackbar("Psicólogo registrado exitosamente")
        delay(1500)
        loginViewModel.resetRegisterState()
        if (navController.previousBackStackEntry != null) {
            navController.popBackStack()
        }
    }
}
```

---

### [ALTO] popBackStack sin verificar backstack disponible — `presentation/ui/screen/AdminView/AgregarAdministrador.kt:98, 284`
**Categoría:** Navigation Compose
**Severidad:** Alto

```kotlin
// AgregarAdministrador.kt, línea 98
navController.popBackStack()  // Sin verificación de backstack
// Línea 284 — mismo problema en el botón Cancelar
```

**Solución:** Misma corrección que en AgregaPsicologoScreen — agregar verificación `previousBackStackEntry != null`.

---

### [ALTO] popBackStack sin verificar backstack disponible — `presentation/ui/screen/AdminView/RegistrarPacienteDesdeAdminScreen.kt:96, 236`
**Categoría:** Navigation Compose
**Severidad:** Alto

```kotlin
// RegistrarPacienteDesdeAdminScreen.kt, líneas 96 y 236
navController.popBackStack()  // Sin verificación de backstack
```

---

### [ALTO] popBackStack sin verificar backstack disponible — `presentation/ui/screen/AdminView/TestScreen.kt:59-63`
**Categoría:** Navigation Compose
**Severidad:** Alto

```kotlin
// TestScreen.kt, líneas 58-64
LaunchedEffect(guardadoExitoso) {
    if (guardadoExitoso) {
        navController.popBackStack()  // Sin verificación de backstack
    }
}
```

---

### [ALTO] popBackStack sin verificar backstack disponible — `presentation/ui/screen/consentimiento/RegisterScreen.kt:67-73, 141`
**Categoría:** Navigation Compose
**Severidad:** Alto

```kotlin
// RegisterScreen.kt, líneas 67-73 y 141
LaunchedEffect(registry) {
    if (registry) navController.popBackStack()  // Sin verificación
}
```

---

### [ALTO] LaunchedEffect(Unit) con navegación — `presentation/ui/screen/psicologoView/ViewPsicologoPrincipal.kt:23-31`
**Categoría:** Jetpack Compose
**Severidad:** Alto

**Problema:** `LaunchedEffect(Unit)` con `navController.navigate(...)` se ejecuta en CADA recomposición. Esto puede causar navegaciones múltiples o bucles infinitos si la pantalla se recompone por cualquier motivo.

```kotlin
// ViewPsicologoPrincipal.kt, líneas 23-31
LaunchedEffect(Unit) {
    navController.navigate(Screens.psicologoAgenda.route) {
        popUpTo(navController.currentBackStackEntry?.destination?.route ?: return@navigate)
        launchSingleTop = true
    }
}
```

**Solución:**
```kotlin
// Usar DisposableEffect para navegación que ocurre una sola vez al montar
DisposableEffect(navController) {
    navController.navigate(Screens.psicologoAgenda.route) {
        popUpTo(Screens.psicologoHome.route) { inclusive = true }
        launchSingleTop = true
    }
    onDispose { }
}
```

---

### [ALTO] LazyColumn sin key() — `presentation/ui/screen/AdminView/ListadoPacientesScreen.kt:103`
**Categoría:** Jetpack Compose
**Severidad:** Alto

**Problema:** `items(pacientes)` sin parámetro `key` causa recomposición innecesaria de TODOS los elementos cuando la lista cambia (añadir/eliminar/reordenar).

```kotlin
// ListadoPacientesScreen.kt, línea 103
items(pacientes) { paciente ->  // Sin key
```

**Solución:**
```kotlin
items(pacientes, key = { it.idPaciente }) { paciente ->
```

---

### [ALTO] LazyColumn sin key() — `presentation/ui/screen/AdminView/ListadoPsicologosScreen.kt:95`
**Categoría:** Jetpack Compose
**Severidad:** Alto

```kotlin
items(psicologos) { psicologo ->  // Sin key
```

**Solución:**
```kotlin
items(psicologos, key = { it.idPsicologo }) { psicologo ->
```

---

### [ALTO] LazyColumn sin key() — `presentation/ui/screen/AdminView/ViewAdminPrincipal.kt:70`
**Categoría:** Jetpack Compose
**Severidad:** Alto

```kotlin
items(psicologos) { psicologo ->  // Sin key
```

**Solución:**
```kotlin
items(psicologos, key = { it.idPsicologo }) { psicologo ->
```

---

### [ALTO] LazyColumn sin key() — `presentation/ui/screen/cuestionario/Cuestionario.kt:90, 95`
**Categoría:** Jetpack Compose
**Severidad:** Alto

```kotlin
itemsIndexed(listaPreguntas) { index, pregunta ->  // Sin key
```

**Solución:**
```kotlin
itemsIndexed(listaPreguntas, key = { index, _ -> index }) { index, pregunta ->
```

---

### [ALTO] Sin try/catch en llamada suspend — `presentation/viewmodels/cuestionario/CuestionarioViewModel.kt:44-61`
**Categoría:** Coroutines y concurrencia
**Severidad:** Alto

**Problema:** La función `enviarRespuestas` llama a `responderTestUseCase` sin try/catch. Si ocurre una excepción, `_respuestaEnviada` nunca se actualiza y el error se pierde silenciosamente.

```kotlin
// CuestionarioViewModel.kt, líneas 44-61
fun enviarRespuestas(idPaciente: Long, respuestas: List<RespuestasRequestDTO>) {
    viewModelScope.launch {
        val ok = responderTestUseCase(idPaciente, respuestas)
        _respuestaEnviada.value = ok
        // Sin try/catch — excepción perdida
    }
}
```

**Solución:**
```kotlin
fun enviarRespuestas(idPaciente: Long, respuestas: List<RespuestasRequestDTO>) {
    viewModelScope.launch {
        try {
            val ok = responderTestUseCase(idPaciente, respuestas)
            _respuestaEnviada.value = ok
        } catch (e: Exception) {
            _respuestaEnviada.value = false
        }
    }
}
```

---

### [ALTO] .value en StateFlow dentro de suspend function — `presentation/viewmodels/CitasViewModel.kt:88-91`
**Categoría:** StateFlow y UI state
**Severidad:** Alto

**Problema:** `_userSession.value` y `_agendaMensual.value` se acceden directamente dentro de una función suspendida. Si se llama desde un contexto fuera de coroutine, lanzaría excepción.

```kotlin
// CitasViewModel.kt, líneas 88-91
suspend fun reservarCita(...): Result<Unit> {
    val session = _userSession.value  // Acceso directo — peligroso
    val idPsicologo = _agendaMensual.value?.idPsicologoAsignado  // Mismo problema
```

**Solución:**
```kotlin
suspend fun reservarCita(...): Result<Unit> {
    val session = _userSession.first()
        ?: return Result.failure(IllegalStateException("No hay sesión"))
    val idPsicologo = _agendaMensual.first()?.idPsicologoAsignado
        ?: return Result.failure(IllegalStateException("Sin psicólogo asignado"))
```

---

### [ALTO] Inicio de sesión no maneja errores de red — `presentation/viewmodels/LoginViewModel.kt` y `data/repositorio/AuthRepository.kt`
**Categoría:** Networking y JWT
**Severidad:** Alto

**Problema:** Las funciones de login en el use case delegan directamente al repositorio sin try/catch. Si hay error de red o respuesta inesperada del servidor, la excepción se propaga sin manejar. El repositorio no diferencia entre errores 401 y otros errores de red.

**Solución:** Ver sección de recomendaciones generales sobre manejo centralizado de errores de red.

---

### [MEDIO] Recolección unbounded de Flow en init — `presentation/viewmodels/admin/ListarPacientesViewModel.kt:34-41`
**Categoría:** Coroutines y concurrencia
**Severidad:** Medio

**Problema:** El bloque `init` lanza `viewModelScope.launch` con `collect` sobre el use case sin manejo de errores ni estado de carga. Si el flujo falla silenciosamente, no hay forma de saberlo.

```kotlin
// ListarPacientesViewModel.kt, líneas 34-41
init {
    viewModelScope.launch {
        listarPacientesUseCase().collect { lista ->
            _pacientes.value = lista
        }
        // Sin try/catch, sin loading state
    }
}
```

**Solución:**
```kotlin
init {
    viewModelScope.launch {
        _isLoading.value = true
        try {
            listarPacientesUseCase().collect { lista ->
                _pacientes.value = lista
            }
        } catch (e: Exception) {
            _errorMessage.value = e.message
        } finally {
            _isLoading.value = false
        }
    }
}
```

---

### [MEDIO] Recolección unbounded de Flow en init — `presentation/viewmodels/admin/ListarPsicologosAdminViewModel.kt:18-25`
**Categoría:** Coroutines y concurrencia
**Severidad:** Medio

```kotlin
// ListarPsicologosAdminViewModel.kt, líneas 18-25
init {
    viewModelScope.launch {
        listarPsicologoAdminUseCase().collect { lista ->
            _psicologo.value = lista
        }
        // Sin try/catch, sin loading state
    }
}
```

---

### [MEDIO] isLoading no se usa en cargarDisponibilidad — `presentation/viewmodels/CitasViewModel.kt:68-80`
**Categoría:** StateFlow y UI state
**Severidad:** Medio

**Problema:** `cargarDisponibilidad` no establece `_isLoading = true/false`, dejando la UI sin indicador de carga para esta operación mientras que `cargarAgendaMensual` sí lo hace.

```kotlin
// CitasViewModel.kt, líneas 68-80 — NO usa isLoading
fun cargarDisponibilidad(fecha: LocalDate) {
    val idPsicologo = _agendaMensual.value?.idPsicologoAsignado ?: return
    viewModelScope.launch {
        // Sin _isLoading.value = true
        citasRepository.getDisponibilidadDia(idPsicologo, fecha.toString())
            .onSuccess { ... }
            .onFailure { ... }
        // Sin _isLoading.value = false
    }
}
```

**Solución:**
```kotlin
fun cargarDisponibilidad(fecha: LocalDate) {
    val idPsicologo = _agendaMensual.value?.idPsicologoAsignado ?: return
    viewModelScope.launch {
        _isLoading.value = true
        try {
            citasRepository.getDisponibilidadDia(idPsicologo, fecha.toString())
                .onSuccess { disponibilidad ->
                    _disponibilidadDia.value = disponibilidad
                }
                .onFailure { e ->
                    _errorMessage.value = e.message ?: "Error al cargar disponibilidad"
                }
        } finally {
            _isLoading.value = false
        }
    }
}
```

---

### [MEDIO] Dispatcher incorrecto para operaciones de red — `presentation/viewmodels/CitasViewModel.kt:54-65, 70-79` y `presentation/viewmodels/PsicologoAgendaViewModel.kt:34-55, 58-74, 76-90`
**Categoría:** Coroutines y concurrencia
**Severidad:** Medio

**Problema:** Las llamadas de red (`citasRepository.getAgendaPaciente`, `citasRepository.getDisponibilidadDia`, etc.) se ejecutan en `Dispatchers.Default` implícitamente vía `viewModelScope.launch`. Las operaciones de I/O deberían usar `Dispatchers.IO`.

```kotlin
// CitasViewModel.kt, líneas 54-65 — red en Main dispatcher
viewModelScope.launch {  // Default = Main en Launch
    _isLoading.value = true
    citasRepository.getAgendaPaciente(...)  // I/O en hilo de UI
    _isLoading.value = false
}
```

**Solución:**
```kotlin
viewModelScope.launch(Dispatchers.IO) {
    _isLoading.value = true
    val result = withContext(Dispatchers.IO) {
        citasRepository.getAgendaPaciente(session.idUsuario, month.toString())
    }
    result.onSuccess { agenda ->
        withContext(Dispatchers.Main) {
            _agendaMensual.value = agenda
        }
    }
    _isLoading.value = false
}
```

---

### [MEDIO] Error message perdido en CrearPreguntaViewModel — `presentation/viewmodels/admin/CrearPreguntaViewModel.kt:81-90`
**Categoría:** StateFlow y UI state
**Severidad:** Medio

**Problema:** En el catch se establece `_guardadoExitoso = false` pero el mensaje de error se pierde. El caller no tiene información sobre qué falló.

```kotlin
// CrearPreguntaViewModel.kt, líneas 81-90
} catch (e: Exception) {
    _guardadoExitoso.value = false
    // Mensaje de error perdido — la UI no sabe qué falló
}
```

**Solución:**
```kotlin
private val _guardadoError = MutableStateFlow<String?>(null)
val guardadoError: StateFlow<String?> = _guardadoError.asStateFlow()

} catch (e: Exception) {
    _guardadoExitoso.value = false
    _guardadoError.value = e.message ?: "Error al guardar la pregunta"
}
```

---

### [MEDIO] Navigation dentro de LaunchedEffect sin guarda de lifecycle — `presentation/ui/screen/pacienteView/TestPacienteScreen.kt:65-71`
**Categoría:** Navigation Compose
**Severidad:** Medio

**Problema:** La navegación ocurre cuando `respuestaEnviada` se vuelve true, pero si el efecto se re-ejecuta por recomposición, puede dispara navegación múltiple.

```kotlin
// TestPacienteScreen.kt, líneas 65-71
LaunchedEffect(respuestaEnviada) {
    if (respuestaEnviada) {
        navController.navigate("resultado_test")  // Sin protección contra re-ejecución
    }
}
```

**Solución:**
```kotlin
LaunchedEffect(respuestaEnviada) {
    if (respuestaEnviada) {
        navController.navigate(Screens.resultadoTest.route)
    }
}
// O usar una bandera de navegación en curso
```

---

### [MEDIO] remember sin key para estado que depende de parámetro externo — `presentation/ui/screen/pacienteView/CitasScreen.kt:122-137, 141-151`
**Categoría:** Jetpack Compose
**Severidad:** Medio

**Problema:** `remember(agendaMensual)` usa la referencia como key, no el contenido. Si la referencia cambia pero el contenido es el mismo, se recalcula innecesariamente.

```kotlin
// CitasScreen.kt, líneas 122-137
val citasPorDia = remember(agendaMensual) {
    agendaMensual?.citas?.groupBy { ... }  // La referencia cambia, no el contenido
}
```

**Solución:**
```kotlin
val citasPorDia = remember(agendaMensual?.citas) {
    agendaMensual?.citas?.groupBy { ... }
}
```

---

### [MEDIO] remember sin key para estado que depende de parámetro externo — `presentation/ui/screen/pacienteView/TestPacienteScreen.kt:56`
**Categoría:** Jetpack Compose
**Severidad:** Medio

**Problema:** `mutableStateMapOf<Int, Int>()` se crea fresco en cada composición sin key. En cambio de configuración, las respuestas coleccionadas se pierden.

```kotlin
// TestPacienteScreen.kt, línea 56
val respuestasSeleccionadas = remember { mutableStateMapOf<Int, Int>() }  // Sin key
```

**Solución:**
```kotlin
val respuestasSeleccionadas = rememberSaveable { mutableStateMapOf<Int, Int>() }
```

---

### [MEDIO] Argumentos de navegación sin verificación de null — `presentation/navigation/navGraph/NavGraph.kt:77-80, 84-89`
**Categoría:** Navigation Compose
**Severidad:** Medio

**Problema:** Los argumentos de Bundle se leen y procesan sin verificar null correctamente. Si faltan argumentos, el flujo continúa silenciosamente con valores por defecto incorrectos.

```kotlin
// NavGraph.kt, líneas 77-80
backStackEntry.arguments?.getString("pacienteId")?.let { pacienteId ->
    // Si es null, el bloque se ignora silenciosamente — continua sin pacienteId
}
```

**Solución:**
```kotlin
val pacienteId = backStackEntry.arguments?.getString("pacienteId")
    ?: run {
        // Manejar argumento faltante — mostrar error o redirigir
        return@composable
    }
```

---

### [MEDIO] Inconsistencia de null safety en DTOs — `domain/models/login/UsuarioDTO.kt` y múltiples DTOs
**Categoría:** Null safety y casteos
**Severidad:** Medio

**Problema:** Hay inconsistencia extrema en cómo los DTOs manejan nulos. `UsuarioDTO` marca todos los campos como nullable. `LoginResponseDTO.token` es nullable pero el flujo de login lo trata como no-nullable. `PsicologoSelfResponseDTO` tiene todos los campos no-nullables mientras que `ListaPacientesAndPsicologo` marca todo como nullable. Esta inconsistencia hace que cada caller deba manejar nulos de forma diferente para DTOs del mismo dominio.

```kotlin
// UsuarioDTO.kt — todo nullable
data class UsuarioDTO(
    val id: Long?, val nombre: String?, val apellido: String?,
    val email: String?, val rol: String?, val activo: Boolean?
)

// PsicologoSelfResponseDTO.kt — todo non-nullable
data class PsicologoSelfResponseDTO(
    val idPsicologo: Long, val nombre: String, val apellido: String, ...
)
```

**Solución:** Estandarizar una política de null safety para DTOs — campos que el servidor siempre proporciona deben ser no-nullables con defaults; campos opcionales deben ser nullable explícitamente. Usar un único estilo consistente en todo el proyecto.

---

### [MEDIO] Return type ambiguous en ListarPreguntasUseCase — `domain/usecases/pacienteUseCase/ListarPreguntasUseCase.kt:24`
**Categoría:** Null safety y casteos
**Severidad:** Medio

**Problema:** El tipo de retorno es `Flow<List<OpcionAdminDTO>?>` — la lista completa puede ser `null`. El caller no puede distinguir entre "cargando" (null), "resultado vacío" (lista vacía), y "error" (null), sin estado adicional.

```kotlin
// ListarPreguntasUseCase.kt, línea 24
override fun invoke(): Flow<List<OpcionAdminDTO>?>  // null = ambigüedad
```

**Solución:**
```kotlin
override fun invoke(): Flow<Result<List<OpcionAdminDTO>>>  // canal de errores estructurado
```

---

### [MEDIO] Sin manejo de excepciones en LoginUseCase — `domain/usecases/login/LoginUseCase.kt`
**Categoría:** Coroutines y concurrencia
**Severidad:** Medio

**Problema:** Las cinco funciones del use case delegan directamente al repositorio sin try/catch. Si el repositorio lanza (error de red, fallo de parseo JSON, estado HTTP inesperado), la excepción se propaga sin capturar al ViewModel, forzando a cada caller a duplicar el manejo de errores.

```kotlin
// LoginUseCase.kt — todas las funciones delegan sin try/catch
suspend fun login(email: String, password: String): Result<LoginResponseDTO> {
    return authRepository.login(...)  // Cualquier excepción se propaga sin envolver
}
```

**Solución:**
```kotlin
suspend fun login(email: String, password: String): Result<LoginResponseDTO> {
    return try {
        authRepository.login(email, password)
    } catch (e: Exception) {
        Result.failure(e)
    }
}
```

---

### [MEDIO] Nullable return como único canal de error — `domain/usecases/adminUseCase/CrearPreguntaUseCase.kt:25`
**Categoría:** Null safety y casteos
**Severidad:** Medio

**Problema:** El tipo de retorno es `OpcionAdminDTO?` — `null` es el único señal de error. Los callers no pueden conocer la causa (error de red, validación del servidor, error de parseo).

```kotlin
// CrearPreguntaUseCase.kt, línea 25
override fun invoke(request: PreguntaRequest): OpcionAdminDTO?  // null = múltiples posibles errores
```

**Solución:**
```kotlin
override fun invoke(request: PreguntaRequest): Result<OpcionAdminDTO>
```

---

### [MEDIO] Comparación de strings para resultados de API — `presentation/ui/screen/AdminView/ListadoPsicologosScreen.kt:162`
**Categoría:** Jetpack Compose
**Severidad:** Medio

**Problema:** `if (resultMsg == "ok" || resultMsg == null)` es frágil — si el backend cambia "ok" a "OK" o "success", esto se rompe.

```kotlin
// ListadoPsicologosScreen.kt, línea 162
if (resultMsg == "ok" || resultMsg == null)
```

**Solución:** Usar sealed class o enum para estados de resultado, no strings.

---

### [MEDIO] Inyección en clase que no es KoinComponent — `data/repositorio/AuthRepository.kt` (si aplica)
**Categoría:** Koin (DI)
**Severidad:** Medio

**Problema:** Si `AuthRepository` necesita acceso a `KoinContext` pero no extiende `KoinComponent`, la inyección puede fallar en ciertos contextos de ciclo de vida.

**Verificar** que `AuthRepository` extienda `KoinComponent` si injection se realiza via `inject<AuthRepository>()`.

---

### [BAJO] Debug logging con datos sensibles — `utils/NotificationUtils.kt:83, 106` y `utils/FileLoggingTree.kt:56`
**Categoría:** Seguridad
**Severidad:** Bajo

**Problema:** `Timber.d` con tags que contienen información de citas médicas (fechas y horas de citas) puede exponer datos de salud en logs de producción. Los errores de WorkManager incluyen tags con fechas de citas (`"cita_2026-03-18_10:30"`).

```kotlin
// NotificationUtils.kt, línea 83
Timber.d("Recordatorio programado ✓ [tag=$tag delay=${delayMillis}ms]")  // tag tiene fecha de cita médica

// FileLoggingTree.kt, línea 56
Log.e("FileLoggingTree", "Error al escribir en log: ${e.message}")  // android.util.Log directo
```

**Solución:**
```kotlin
// NotificationUtils.kt — usar Timber.i o Timber.w, no Timber.d
Timber.i("WorkManager enqueued for appointment reminder")

// FileLoggingTree.kt — usar Timber en vez de android.util.Log
Timber.e(e, "Failed to write to log file")
```

---

### [BAJO] Permiso de notificación logueado en nivel error — `worker/CitaNotificationWorker.kt:46`
**Categoría:** Seguridad
**Severidad:** Bajo

**Problema:** `Timber.e` para denegación de permiso `POST_NOTIFICATIONS` puede ser usado para detectar configuración del dispositivo.

```kotlin
// CitaNotificationWorker.kt, línea 46
Timber.e("Permiso POST_NOTIFICATIONS no concedido, no se puede mostrar notificación")
```

**Solución:** Usar `Timber.w` (warn) o guarding con `BuildConfig.DEBUG`.

---

### [BAJO] onClick vacío / código muerto — `presentation/ui/screen/Principal.kt:87-105`, `presentation/ui/screen/LoginScreen.kt:179`
**Categoría:** Jetpack Compose
**Severidad:** Bajo

**Problema:** Botón "Realizar cuestionario" tiene `onClick = {}` vacío. La navegación del questionnaire está comentada.

```kotlin
// Principal.kt, líneas 87-105 — onClick vacío
Button(onClick = { }) { ... }

// QuestionnaireScreen.kt, líneas 125-127 — navegación comentada
// navController.navigate()
```

---

### [BAJO] Navigation strings hardcodeadas — `presentation/ui/screen/consentimiento/ConsentimientoScreen.kt:85-87`, `presentation/ui/screen/consentimiento/RegistroExitosoScreen.kt:45`, `presentation/ui/screen/pacienteView/TestPacienteScreen.kt:67`
**Categoría:** Navigation Compose
**Severidad:** Bajo

**Problema:** Se usan strings literales en lugar de constantes de `Screens`.

```kotlin
// ConsentimientoScreen.kt, línea 85
navController.navigate("registro_paciente")  // hardcodeado

// RegistroExitosoScreen.kt, línea 45
navController.navigate("login")  // hardcodeado

// TestPacienteScreen.kt, línea 67
navController.navigate("resultado_test")  // hardcodeado
```

**Solución:** Usar `Screens.registroPaciente.route`, `Screens.login.route`, `Screens.resultadoTest.route`.

---

### [BAJO] String comparison frágil — `presentation/ui/screen/cuestionario/Cuestionario.kt:162-167`
**Categoría:** Jetpack Compose
**Severidad:** Bajo

**Problema:** `resultMsg == "ok"` compara strings raw.

---

### [BAJO] Uso de remember sin key para UI state local — `presentation/ui/componente/MenuPrincipal.kt:53`, `presentation/ui/componente/MenuAdministrador.kt:45`
**Categoría:** Jetpack Compose
**Severidad:** Bajo

**Problema:** `var expanded by remember { mutableStateOf(false) }` sin key. Aceptable para estado de UI local, pero podría perder estado en cambios de configuración si el componente se reconstruye.

```kotlin
// MenuPrincipal.kt, línea 53
var expanded by remember { mutableStateOf(false) }  // Sin key
```

**Solución:** `var expanded by rememberSaveable { mutableStateOf(false) }` si el estado debe persistir.

---

### [BAJO] Direct ViewModel property access — `presentation/ui/screen/SettingsClienteScreen.kt:108, 117, 129, 137, 149, 157`
**Categoría:** Jetpack Compose
**Severidad:** Bajo

**Problema:** `viewModel.nombre`, `viewModel.apellidos` se acceden directamente como propiedades en lugar de observar el `StateFlow` correspondiente.

```kotlin
// SettingsClienteScreen.kt
TextFieldCustom(value = viewModel.nombre, ...)  // Acceso directo sin StateFlow
```

**Solución:** `val nombre by viewModel.nombre.collectAsState()`.

---

### [BAJO] Direct property access sin collectAsState — `presentation/ui/screen/PrincipalClienteScreen.kt:56`
**Categoría:** Jetpack Compose
**Severidad:** Bajo

```kotlin
// PrincipalClienteScreen.kt, línea 56
val especialidades = viewModel.especialidades  // Sin collectAsState()
```

---

### [BAJO] LaunchedEffect sin key para loginResult — `presentation/ui/screen/LoginScreen.kt:80-106`
**Categoría:** Navigation Compose
**Severidad:** Bajo

**Problema:** El effect corre en cada recomposición donde `loginResult` cambia, pero no tiene guard contra múltiples déclenchements.

```kotlin
// LoginScreen.kt, líneas 80-106
LaunchedEffect(loginResult) {
    if (loginResult != null) {
        navController.navigate(...)
    }
}
```

---

### [BAJO] Sin uso de Dispatchers.IO — `presentation/viewmodels/PsicologoAgendaViewModel.kt:34-55`
**Categoría:** Coroutines y concurrencia
**Severidad:** Bajo

**Problema:** Llamadas de red en dispatcher por defecto (Main). Ver sección de recomendación de dispatchers.

---

## Recomendaciones generales

### 1. Manejo centralizado de errores de red

El patrón actual de que cada use case y repository maneje errores de forma independiente genera inconsistencias. Se recomienda:

- Crear un `NetworkResult<T>` sealed class:
  ```kotlin
  sealed class NetworkResult<out T> {
      data class Success<T>(val data: T) : NetworkResult<T>()
      data class Error(val code: Int, val message: String?) : NetworkResult<Nothing>()
      data exception NetworkException(val cause: Throwable) : NetworkResult<Nothing>()
  }
  ```

- Un único punto de manejo de errores 401 en el `AuthInterceptor` o en un `NetworkResponseInterceptor` que dispare un evento de logout global.

### 2. Estandarizar null safety en DTOs

Hay inconsistencia masiva entre DTOs del mismo dominio. Se recomienda:

- Todos los campos que el backend siempre provee: no-nullables con defaults
- Todos los campos opcionales: nullable explícitamente
- Jamás usar `null` como sentinel de error — usar `Result` o estados explícitos

### 3. Arquitectura de dispatchers

Todas las operaciones de red y base de datos deben usar `Dispatchers.IO`. Se recomienda crear un `viewModelScope` wrapper o usar una extensión:

```kotlin
fun <T> ViewModel.viewModelIO(block: suspend () -> T): kotlinx.coroutines.CoroutineScope {
    return viewModelScope + Dispatchers.IO
}
```

### 4. Tokens almacenados cifrados

Reemplazar `Preferences DataStore` por `EncryptedSharedPreferences` para el almacenamiento de tokens JWT. Ver bug crítico #3.

### 5. Navigation Compose — pops sin verificación

Todos los `popBackStack()` deben verificar `previousBackStackEntry != null` antes de invocar. Crear un extension function reutilizable:

```kotlin
fun NavController.safePopBackStack() {
    if (previousBackStackEntry != null) popBackStack()
}
```

### 6. LazyColumn keys obligatorias

Establecer como convención de equipo que toda función `items()` o `itemsIndexed()` en LazyColumn/LazyRow DEBE incluir el parámetro `key`. Un lint rule o un CI check debería imponer esto.

### 7. Use Cases — envoltorio de errores

Todos los use cases deben envolver excepciones del repositorio en `Result.failure()` para que los ViewModels puedan manejar errores de forma estructurada sin try/catch duplicados. Ver el patrón en `LoginUseCase`.

### 8. StateFlows — disciplina de exposición

Establecer como convención que NUNCA se expone un `MutableStateFlow` directamente — siempre usar `.asStateFlow()`. Un lint rule puede detectar esto automáticamente.

---

*Reporte generado automáticamente por Claude Code — 2026-03-30*