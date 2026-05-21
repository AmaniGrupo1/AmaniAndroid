# Gestión Global de Excepciones y Errores

El flujo lógico de una aplicación móvil robusta y orientada al uso clínico no puede darse el lujo de lanzar fallos nulos (*NullPointerExceptions*) y simplemente destruir silenciosamente la actividad visual (*crash* del sistema). En el proyecto AMANI, la mitigación de fallos está encapsulada estratégicamente y unificada directamente desde las orillas de la capa de datos.

## Envoltorio Seguro: NetworkResult

Para evitar manejar directamente bloques molestos y repetitivos de intercepción (`try / catch`) en todos y cada uno de los modelos de vista de Jetpack Compose, el equipo ha desarrollado un patrón envolvente genérico nativo. 

Todo repositorio (construido e inyectado con **Koin**) que se atreva a cruzar la frontera de la red HTTP utilizando el cliente Retrofit debe obligatoriamente retornar una clase jerárquica sellada en Kotlin, denominada `NetworkResult<T>`:

```kotlin
sealed class NetworkResult<out T> {
    data class Success<T>(val data: T) : NetworkResult<T>()
    data class Error(val message: String, val code: Int? = null) : NetworkResult<Nothing>()
    object Loading : NetworkResult<Nothing>()
}
```

Al utilizar esta abstracción, los ViewModels reciben las peticiones de manera reactiva e inmediatamente actualizan sus contenedores de estado inmutable (`UiState`), reaccionando visualmente mediante los componentes Compose compartidos sin exponer colapsos dolorosos al cliente.

## Solución de Problemas Comunes (Troubleshooting)

A continuación, una lista de las colisiones lógicas frecuentemente documentadas por el equipo de ingeniería en el ámbito del desarrollo local:

1. **`Permission denied` en nodos de Firebase**: Ocurre si la corrutina intenta consultar la rama del chat antes de que el proceso asíncrono `signInWithCustomToken` haya devuelto el indicador `Task.isSuccessful`. La solución es bloquear el avance a la `ChatScreen` hasta que este booleano se resuelva.
2. **Excepción `IllegalStateException` proveniente del FirebaseTokenFactory**: Un error netamente originado en el servidor Spring Boot. Suele denotar que el backend falló al parsear la cuenta de servicios (Service Account) para firmar un token válido, o que el reloj horario del entorno Linux difiere drásticamente de los servidores UTC globales.

!!! warning "Fugas de Información en el Error"
    A nivel de la capa de vista (`Presentation`), los mensajes de error arrojados genéricamente en las alertas (*Toast* o *Snackbars*) deben haber sido purificados por el bloqueador o envoltorio previo. Evita siempre pintar el `Exception.stackTraceToString()` directamente en los elementos gráficos del usuario para no divulgar rutas vulnerables del proyecto AMANI.
