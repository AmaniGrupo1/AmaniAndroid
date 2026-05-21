# Material Design 3 y Theming Dinámico

Todo el esquema visual interactivo de la aplicación AMANI Android está construido bajo las guías estrictas de Material Design 3 (M3). Esto permite a la interfaz evolucionar según los parámetros estéticos y de accesibilidad integrados profundamente por Google dentro del sistema operativo, logrando una asimilación completamente natural con los dispositivos modernos.

## Esquema de Color Dinámico (Color Seed)

El equipo de diseño ha determinado usar el verde cerceta (**Teal**) como el cimiento central para generar automáticamente todos los sub-tonos de la interfaz gráfica. En lugar de diseñar e implementar exhaustiva y manualmente cientos de variables cromáticas para letras oscuras y cajas luminosas o viceversa, la capacidad del motor de *theming* dinámico extrae la semilla "teal" para generar dos abanicos matemáticamente armoniosos.

```kotlin
// Generación estructural del entorno
val LightColorScheme = lightColorScheme(
    primary = Teal40,
    secondary = TealGrey40,
    tertiary = Cyan40
)

val DarkColorScheme = darkColorScheme(
    primary = Teal80,
    secondary = TealGrey80,
    tertiary = Cyan80
)
```

## Arquitectura del AppTheme

Para aplicar consistentemente todos estos valores en cualquier pantalla declarativa y forzar soporte dual (Claro / Oscuro), el contenedor central `AmaniTheme` envuelve forzosamente el arranque base de la navegación en la capa de interfaz:

```kotlin
@Composable
fun AmaniTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        shapes = Shapes,
        content = content
    )
}
```

Las variables tipográficas se ajustan estrictamente al uso de proporciones estándar de "Title", "Body" y "Label", erradicando por completo los tamaños de fuente absolutos (sp fijos) que rompan la lectura adaptable de usuarios discapacitados visuales. Los radios de las tarjetas y los bordes limpios redondeados también están declarados globalmente bajo los "Shape tokens".

!!! warning "Prohibición Absoluta de Colores Directos"
    Dentro de las reglas inquebrantables del equipo de UI, jamás se debe escribir o quemar (*hardcodear*) una variable de color explícita como `Color(0xFF00FF00)` directamente en un modificador gráfico. Si necesitas rellenar un botón, siempre debes recuperar el tono del árbol local usando la sintaxis global `MaterialTheme.colorScheme.primary` para no colapsar la funcionalidad del "Modo Oscuro" o destrozar los contrastes lógicos del usuario.
