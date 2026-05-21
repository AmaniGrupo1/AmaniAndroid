# Visualización del Estado Emocional

El seguimiento constante de las emociones registradas por el paciente es una de las propuestas de valor más distintivas de AMANI. Para lograr que los psicólogos comprendan visualmente de un vistazo el progreso anímico de sus pacientes a lo largo del tiempo cronológico, el cliente Android implementa gráficas estadísticas bidimensionales interactivas en la pantalla dedicada `EmotionChartScreen` <!-- TODO: verificar nombre real -->.

## Alternativa Utilizada: Biblioteca Vico

Tras evaluar múltiples alternativas históricas como MPAndroidChart (ampliamente extendida pero muy arraigada al obsoleto sistema de vistas XML), el equipo decidió integrar **Vico**. 

Vico es un motor moderno de trazado de gráficas diseñado específicamente, desde sus cimientos, para ser completamente compatible de forma nativa con **Jetpack Compose**. Sus ventajas directas incluyen:
- Menor sobrecarga de recursos de memoria RAM.
- Animaciones declarativas de componentes vectoriales extremadamente fluidas.
- Sin adaptadores ni *wrappers* oscuros entre XML y el ecosistema declarativo nuevo.

## Integración de Datos Dinámicos

La gráfica `LineChart` generada por Vico requiere de un flujo de coordenadas numéricas que se alimenta gracias al gestor de estado subyacente. El repositorio encargado (por ejemplo, `DiarioEmocionalRepository`) obtiene las entradas históricas (fechas cronológicas y nivel de humor numerado del 1 al 5) y las transporta hacia el `EmotionChartViewModel` a través de un flujo.

Este ViewModel las procesa matemáticamente para ajustarlas al dominio visual de la gráfica y expone finalmente el bloque de datos limpio hacia el componente Compose.

### Implementación Gráfica (Jetpack Compose)

Un ejemplo simplificado del uso de la biblioteca en tu código luciría así:

```kotlin
@Composable
fun ChartSection(emotionData: List<FloatEntry>) {
    // Convertimos los puntos de datos puros en el modelo de trazado que exige Vico
    val chartEntryModel = entryModelOf(emotionData)

    Chart(
        chart = lineChart(),
        model = chartEntryModel,
        startAxis = rememberStartAxis(),
        bottomAxis = rememberBottomAxis()
    )
}
```

!!! tip "Interactividad"
    La biblioteca Vico permite a los usuarios hacer desplazamientos horizontales suaves y aplicar gestos táctiles nativos para inspeccionar valores específicos. Asegúrate de configurar correctamente los marcadores personalizados para enriquecer el contexto al pulsar un punto de la gráfica de salud.
