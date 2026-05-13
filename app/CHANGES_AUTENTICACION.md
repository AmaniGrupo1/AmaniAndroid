Resumen de cambios — Corrección de autenticación y carga de "situaciones"

Fecha: 2026-05-11
Autor: cambios automáticos aplicados por el asistente

Objetivo
--------
Resolver la condición en la que la app enviaba Authorization: null al backend (HTTP 401) y evitar que peticiones protegidas (ej. /api/situaciones, /api/admin/psicologos) se ejecuten antes de que exista una sesión/token en memoria.

Resumen de la solución
-----------------------
- Evitar el uso de lecturas bloqueantes de DataStore dentro de interceptores de red. En su lugar, usar un TokenHolder (cache en memoria) con métodos `getToken()` y `setToken(token)` para acceso rápido y no bloqueante desde `AuthInterceptor`.
- Después de guardar el token en DataStore (login), actualizar inmediatamente `TokenHolder.setToken(...)` para evitar la ventana de carrera entre guardar y la primera petición de red.
- Añadir HttpLoggingInterceptor (solo en DEBUG) al cliente OkHttp para inspeccionar peticiones y cabeceras (útil para depuración). Añadir la dependencia `com.squareup.okhttp3:logging-interceptor:4.11.0` en `app/build.gradle.kts`.
- Evitar que los ViewModels lancen llamadas protegidas hasta que exista sesión válida. Ejemplos actualizados: `ListarPacientesViewModel`, `ListarPsicologosAdminViewModel`, `SituacionViewModel`. Todos ahora usan `UserSessionDataStore.getSession()` o `sessionFlow` para esperar la sesión antes de llamar a los casos de uso.
- Manejar 401 globalmente en `TokenRefreshInterceptor` (sigue notificando evento Unauthorized) y evitar que repositorios propaguen HttpException(401) directamente al collector del UI; en varios repositorios se optó por emitir colecciones vacías y logear el fallo.

Archivos modificados
--------------------
(Campos: path -> descripción breve)

- `app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt`
  - Añadido `HttpLoggingInterceptor` en modo DEBUG al OkHttpClient para visualizar cabeceras (Authorization).

- `app/build.gradle.kts`
  - Añadida dependencia: `implementation("com.squareup.okhttp3:logging-interceptor:4.11.0")`.

- `app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt`
  - Actualizados bindings Koin para inyectar `UserSessionDataStore` en ViewModels: `ListarPacientesViewModel`, `ListarPsicologosAdminViewModel`, `SituacionViewModel`, etc.

- `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel.kt`
  - Ahora espera sesión antes de iniciar `listarPacientesUseCase()`.

- `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel.kt`
  - Ahora espera sesión antes de iniciar `listarPsicologoAdminUseCase()`.

- `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel.kt`
  - Ahora espera sesión antes de llamar a `useCase.getSituaciones()`.

- `app/src/main/java/org/ies/tierno/applicationamani/data/repositorio/SituacionRepositoty.kt`
  - Revisión: el repositorio ya devolvía `emptyList()` ante fallos; se mantuvo este comportamiento para seguridad (no explotar la UI) y se priorizó evitar llamadas tempranas desde la capa de presentación.

- Interceptores y token handling (ya presentes en el proyecto, revisados):
  - `AuthInterceptor` debe obtener token mediante `TokenHolder.getToken()` (no bloquear DataStore).
  - `TokenRefreshInterceptor` continúa notificando eventos Unauthorized.

Cómo verificar localmente
-------------------------
1) Compilar la app (módulo app):

```powershell
cd C:\AndroidStudio\ApplicationAmani
.\gradlew.bat :app:assembleDebug
```

2) Instalar en el emulador o dispositivo:

```powershell
.\gradlew.bat :app:installDebug
```

3) Abrir Logcat y filtrar por etiquetas útiles:

```powershell
adb logcat -s AuthInterceptor TokenRefreshInterceptor HttpLoggingInterceptor Timber
```

4) Flujo de prueba recomendado:
- Inicia la app.
- Haz login (asegúrate de usar la build DEBUG para ver los logs de HttpLoggingInterceptor).
- Tras login, navega a la pantalla que muestra "situaciones" o la creación de paciente que carga situaciones.
- En logcat deberías ver:
  - Timber indicando que el token fue guardado y cacheado (mensaje desde LoginViewModel/AuthRepository).
  - Mensaje HttpLoggingInterceptor con la petición a `/api/situaciones` que muestra la cabecera:
    Authorization: Bearer <tu_token>
  - En el backend ya no aparecerá "Auth header: null" para las peticiones realizadas después del login.

Qué hacer si aún no se ven situaciones
-------------------------------------
- Si `HttpLoggingInterceptor` muestra la petición SIN la cabecera Authorization, copia aquí esas líneas de log y lo analizo. Posibles causas:
  - La llamada se ejecutó antes de que `TokenHolder.setToken(...)` se llamara (revisa todos los flujos de login y guardado de token).
  - Existe más de un mecanismo de login olvidado que guarda token en DataStore pero no en `TokenHolder`.
- Si las peticiones muestran Authorization correcto pero el backend responde 401 o lista vacía, pega el body/estado de la respuesta y lo reviso.

Recomendaciones siguientes
-------------------------
- Propagar la comprobación de sesión (esperar `UserSession`) a otros ViewModels que realicen llamadas protegidas tempranas (puedo hacerlo automáticamente si lo deseas).
- Opcional: implementar un estado `AuthState` compartido que los ViewModels observen en vez de comprobar `UserSessionDataStore` individualmente.

Notas sobre diseño
-----------------
- El uso de un `TokenHolder` en memoria es una optimización para evitar condiciones de carrera entre guardar en DataStore (async) y la primera petición de red. El token persiste en DataStore; `TokenHolder` es un cache de proceso.
- Evitar `runBlocking` dentro de interceptores: bloquea hilos de red y provoca latencias y condiciones de carrera.
- Mantener `TokenRefreshInterceptor` como punto central para detección de 401 y notificación de logout/refresh.

Si quieres que haga un cambio adicional ahora (elige una):
- A: Propagar la espera de sesión a otros ViewModels automáticamente (aplico a los que hacen llamadas protegidas temprano).
- B: Añadir un spinner UI en pantallas que cargan situaciones mientras se espera sesión.
- C: Añadir pruebas unitarias/instrumentales para simular login + llamada inmediata y validar que el header siempre se envía.

---
Archivo generado automáticamente con el resumen y pasos de verificación. Pega logs si quieres que revise un fallo concreto.
