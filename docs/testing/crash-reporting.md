# Reporte de Accidentes (Crash Reporting)

Cuando la aplicación Amani cruza el umbral de la fase local e inicia las primeras compilaciones liberables, atrapar los errores silenciosos que provocan el cierre repentino (*crash*) de la pantalla del usuario remoto es un asunto fundamental para mejorar gradualmente el código fuente.

El equipo desarrolló un flujo externo de capturas valiéndose del recolector internacional **Sentry SDK** y un orquestador robótico de respuestas autohospedado llamado **n8n**.

## Diagrama de Flujo del Accidente

```mermaid
flowchart TD
    A[Dispositivo Remoto\nExcepción no atrapada] -->|POST Telemetría| S(Sentry.io)
    S -->|Webhook Push| N{n8n Server\n(n8n.ivanrilopa.com)}
    N -->|Acción 1: Crea Issue| G[GitHub\nAmaniAndroid Repo]
    N -->|Acción 2: Envia Email| M[Gmail\nEquipo de Desarrollo]
```

## Inicialización del SDK de Sentry

La inicialización del registrador de estado se incrusta profundamente en el método primario `onCreate` dentro del ciclo de vida general del aplicativo, permitiendo monitorear las caídas severas desde el arranque:

```kotlin
SentryAndroid.init(this) { options ->
    // El DSN debe ser proveído de forma segura desde el local.properties
    options.dsn = BuildConfig.SENTRY_DSN
    // Porcentaje de trazas puras para métricas de rendimiento
    options.tracesSampleRate = 1.0 
}
```

También es posible forzar capturas preventivas manuales mediante el código para observar los comportamientos de las advertencias lógicas sin reventar la actividad: `Sentry.captureException(IllegalArgumentException("Fallo parcial en gráfico Vico"))`.

## Interconexión con Flujo Webhook

El servidor privado autohospedado (**`n8n.ivanrilopa.com`**) está programado para estar a la escucha de cualquier actividad originada por Sentry. En cuanto la plataforma intercepta una colisión en producción, Sentry invoca rápidamente la ruta asignada al Webhook. 

El robot lee la pila técnica del error (*StackTrace*) y ejecuta inmediatamente dos flujos condicionales:
1. Contacta la API de GitHub para abrir silenciosamente un *Issue* descriptivo en el repositorio Android de Amani.
2. Despacha simultáneamente una alerta de correo usando el módulo *Gmail* para despertar la atención del equipo de desarrollo.

!!! tip "Simulación Práctica del Flujo"
    Para verificar que tu token local está sano y que tu orquestador reacciona correctamente a los envíos, puedes emular deliberadamente un error masivo creando un botón ficticio dentro del `HomeScreen` con la única función: `throw RuntimeException("Prueba de estrés para pipeline Sentry/n8n")`.
