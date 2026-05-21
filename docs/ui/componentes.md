# Catálogo de Componentes Reutilizables

Para potenciar drásticamente el desarrollo y la reutilización visual a lo largo del código fuente del cliente de Android, la arquitectura de interfaz de Amani agrupa todos los elementos compartidos en el directorio `components/`. Esto no solo unifica el estilo gráfico en torno a Material 3 sino que también agiliza los tiempos lógicos de corrección y despliegue ante posibles anomalías en botones, barras o estados reactivos modales compartidos.

A continuación, se documentan los componentes visuales interactivos más relevantes, junto con sus propósitos básicos de funcionamiento y sus respectivas firmas programáticas de Kotlin:

## AmaniTopBar
**Propósito:** Barra superior estándar de la plataforma. Configurada nativamente para mostrar el botón de regreso hacia el grafo anterior e implementar el título de la vista actual, heredando correctamente los colores institucionales para no opacar el estado subyacente.

```kotlin
@Composable
fun AmaniTopBar(
    title: String,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
)
```

## AmaniButton
**Propósito:** Interactor base para la confirmación de formularios lógicos o envíos hacia el backend. Implementa automáticamente dos estados variantes visuales (`primary` y `secondary`) para diferenciar pesos en la atención de acciones y encapsular animaciones de retardo.

```kotlin
@Composable
fun AmaniButton(
    text: String,
    onClick: () -> Unit,
    isPrimary: Boolean = true,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
)
```

## EmotionChip
**Propósito:** Píldora gráfica miniatura y colorida diseñada para resumir rápidamente los estados de los ánimos guardados en las historias del repositorio. Sus colores derivan reactivamente de la intensidad del número asignado.

```kotlin
@Composable
fun EmotionChip(
    emotionValue: Int,
    emotionLabel: String,
    modifier: Modifier = Modifier
)
```

## SessionCard
**Propósito:** Bloque elevado (Tarjeta) para encapsular la información completa de una cita del paciente. Se emplea en su mayoría en las pantallas del historial cronológico y del calendario en el panel del psicólogo. Al pulsarlo expone callbacks configurables.

```kotlin
@Composable
fun SessionCard(
    sessionData: Session, // Entidad de dominio local
    onCardClick: (Long) -> Unit,
    modifier: Modifier = Modifier
)
```

## LoadingOverlay
**Propósito:** Capa superior semi-translúcida y absolutamente bloqueante empleada primordialmente mientras la red (Retrofit) espera latencias de los servidores de backend, imposibilitando los molestos "dobles clics" del usuario sobre un botón activo.

```kotlin
@Composable
fun LoadingOverlay(
    isVisible: Boolean,
    message: String? = null
)
```

!!! warning "Dependencias del Componente"
    Los componentes de interfaz descritos arriba son funcionalmente "tontos" o completamente "sin estado" (stateless). Jamás inyectes directamente un `ViewModel` usando **Koin** en su interior. Ellos simplemente reciben la información del estado ya digerida mediante sus propios parámetros y emiten las intenciones táctiles de vuelta al modelo usando cierres de comportamiento lógico (`lambdas`).
