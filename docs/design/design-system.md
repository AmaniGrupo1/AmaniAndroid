# Sistema de Diseño Material 3 — Amani Android

Guía de referencia del sistema de diseño de **Amani**. Todo componente o pantalla de la aplicación debe consumir exclusivamente los tokens definidos en `org.ies.tierno.applicationamani.ui.theme`.

---

## 1. Punto de entrada único

```kotlin
@Composable
fun AppTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit,
)
```

- Envuelve `MaterialTheme(colorScheme, typography, shapes, content)` y provee `LocalAmaniColors` (`AmaniTheme.colors`).
- **Dynamic Color está desactivado** (ver `DEC-02` en `DECISIONES.md`) para preservar la identidad visual de Amani y asegurar que todos los pares de texto y estado mantienen contraste WCAG 2.1 AA en cualquier dispositivo.
- En modo preview (`LocalInspectionMode.current == true`), `AppTheme(darkTheme = ...)` respeta directamente el parámetro `darkTheme` sin consultar DataStore ni Koin.

---

## 2. Tokens de Color

Generados a partir del color de marca **`#CCC0E4`** (`H300 C22 T80`) con `SchemeContent` (Material Color Utilities).

### 2.1 Esquema Material 3 (`MaterialTheme.colorScheme`)

| Token | Light | Dark | Cuándo usarlo |
|---|---|---|---|
| `primary` | `#635A79` | `#CDC1E5` | Botones primarios (`Button`), FAB principal, enlaces activos, indicadores seleccionados, iconos de acción principal |
| `onPrimary` | `#FFFFFF` | `#342C48` | Texto e iconos sobre `primary` |
| `primaryContainer` | `#CCC0E4` | `#4B4260` | Cabeceras destacadas de marca, avatares con iniciales, chips seleccionados, contenedor de bienvenida |
| `onPrimaryContainer` | `#1F1732` | `#E9DDFF` | Texto e iconos sobre `primaryContainer` (contraste 9.97:1 L / 7.23:1 D) |
| `secondary` | `#615C6A` | `#CBC4D4` | Acciones secundarias, filtros, metadatos enfatizados |
| `onSecondary` | `#FFFFFF` | `#322E3B` | Contenido sobre `secondary` |
| `secondaryContainer` | `#E7DFF0` | `#494552` | Indicador activo de `NavigationBar`, `FilledTonalButton`, chips informativos |
| `onSecondaryContainer` | `#1D1A25` | `#E7DFF0` | Texto e iconos sobre `secondaryContainer` |
| `tertiary` | `#785465` | `#E8BACE` | Acento cálido: diario emocional, bienestar, etiquetas de rol o categoría especial |
| `onTertiary` | `#FFFFFF` | `#462736` | Contenido sobre `tertiary` |
| `tertiaryContainer` | `#FFD8E8` | `#5E3D4D` | Contenedor cálido para tarjetas de consejo o estado en curso |
| `onTertiaryContainer` | `#2E1221` | `#FFD8E8` | Contenido sobre `tertiaryContainer` |
| `error` | `#BA1A1A` | `#FFB4AB` | Errores de validación, acciones destructivas (cancelar cita, dar de baja, eliminar) |
| `onError` | `#FFFFFF` | `#690005` | Contenido sobre `error` |
| `errorContainer` | `#FFDAD6` | `#93000A` | Banner de error, badge de cita cancelada o franja ocupada |
| `onErrorContainer` | `#410002` | `#FFDAD6` | Texto e icono sobre `errorContainer` |
| `background` / `surface` | `#FDF8FB` | `#141315` | Fondo base de `Scaffold` y pantallas |
| `onBackground` / `onSurface` | `#1C1B1D` | `#E6E1E4` | Texto principal y títulos |
| `surfaceVariant` | `#E7E0EA` | `#49454D` | Fondos de bloques secundarios, pistas de sliders/barras |
| `onSurfaceVariant` | `#49454D` | `#CAC4CD` | Subtítulos, etiquetas secundarias, iconos no seleccionados, placeholders |
| `surfaceContainerLowest` | `#FFFFFF` | `#0F0E10` | Superficie de máximo contraste respecto al fondo (tarjetas en modo claro) |
| `surfaceContainerLow` | `#F7F2F5` | `#1C1B1D` | Tarjetas estándar (`Card`) y bloques agrupados |
| `surfaceContainer` | `#F1ECEF` | `#201F21` | Contenedores de navegación (`NavigationBar`, `TopAppBar` con scroll) |
| `surfaceContainerHigh` | `#ECE7EA` | `#2B292C` | Diálogos, menús desplegables, tarjetas elevadas |
| `surfaceContainerHighest` | `#E6E1E4` | `#363437` | Campos de texto rellenos, chips no seleccionados, burbujas de mensaje entrante |
| `outline` | `#7A757E` | `#948F97` | Bordes de `OutlinedTextField`, `OutlinedButton` y controles interactivos (≥ 3:1) |
| `outlineVariant` | `#CAC4CD` | `#49454D` | Divisores (`HorizontalDivider`) y bordes de `OutlinedCard` (decorativo) |
| `inverseSurface` / `inverseOnSurface` | `#313032` / `#F4EFF2` | `#E6E1E4` / `#313032` | `Snackbar` |

### 2.2 Tokens semánticos extendidos (`AmaniTheme.colors`)

Reservados exclusivamente a **estados de dominio** (citas, disponibilidad, tickets). Nunca se usan como decoración general, y **siempre** se acompañan de texto e icono descriptivo:

| Token | Light | Dark | Uso |
|---|---|---|---|
| `success` / `onSuccess` | `#006D43` / `#FFFFFF` | `#52DF9A` / `#003921` | Icono/indicador de cita confirmada, franja libre, psicólogo activo, ticket resuelto |
| `successContainer` / `onSuccessContainer` | `#72FCB4` / `#002111` | `#005232` / `#72FCB4` | Fondo y texto de chip/badge de éxito o disponibilidad |
| `warning` / `onWarning` | `#994704` / `#FFFFFF` | `#FFB68C` / `#532200` | Icono/indicador de cita pendiente de confirmación o pago pendiente |
| `warningContainer` / `onWarningContainer` | `#FFDBC9` / `#321200` | `#753400` / `#FFDBC9` | Fondo y texto de chip/badge de estado pendiente |

---

## 3. Tipografía (`MaterialTheme.typography`)

Solo se permiten **2 familias** en toda la aplicación:
1. **`Nunito`** (`SemiBold`): identidad de marca y títulos principales (`displayLarge..Small`, `headlineLarge..Small`, `titleLarge`).
2. **`Roboto`** (`Normal` y `Medium`): lectura, subtítulos y controles (`titleMedium..Small`, `bodyLarge..Small`, `labelLarge..Small`).

| Estilo | Familia | Peso | Tamaño / Línea | Uso |
|---|---|---|---|---|
| `displayLarge..Small` | Nunito | SemiBold | 57 / 45 / 36.sp | Portada / marca ("AMANI") |
| `headlineLarge..Small` | Nunito | SemiBold | 32 / 28 / 24.sp | Encabezados principales de pantalla y cifras clave de estadísticas |
| `titleLarge` | Nunito | SemiBold | 22.sp / 28.sp | Título de `TopAppBar` y cabeceras de diálogo |
| `titleMedium` | Roboto | Medium | 16.sp / 24.sp | Títulos de tarjeta, nombre de paciente/psicólogo en listas |
| `titleSmall` | Roboto | Medium | 14.sp / 20.sp | Subsecciones, cabeceras de bloque en formularios |
| `bodyLarge` | Roboto | Normal | 16.sp / 24.sp | Texto de lectura principal, mensajes de chat, documentos legales |
| `bodyMedium` | Roboto | Normal | 14.sp / 20.sp | Descripciones en tarjetas y listas |
| `bodySmall` | Roboto | Normal | 12.sp / 16.sp | Metadatos secundarios, fechas, contadores |
| `labelLarge` | Roboto | Medium | 14.sp / 20.sp | Texto de botones (`Button`, `TextButton`) y pestañas |
| `labelMedium` | Roboto | Medium | 12.sp / 16.sp | Chips, badges de estado, etiquetas de navegación |
| `labelSmall` | Roboto | Medium | 11.sp / 16.sp | Marcas de hora en burbujas de chat y notas al pie |

---

## 4. Formas (`MaterialTheme.shapes`)

| Token | Radio | Uso |
|---|---|---|
| `extraSmall` | `4.dp` | Barras de progreso, indicadores compactos |
| `small` | `8.dp` | Badges de estado, chips, contenedores auxiliares |
| `medium` | `12.dp` | Tarjetas estándar (`Card`, `OutlinedCard`), `OutlinedTextField`, botones |
| `large` | `16.dp` | Tarjetas destacadas, burbujas de chat, bloques de formulario |
| `extraLarge` | `28.dp` | Diálogos y hojas modales (`ModalBottomSheet`) |
| `CircleShape` | 50% | Avatares e indicadores circulares |

---

## 5. Espaciado y Dimensiones (`Spacing` y `Dimensions`)

- **Escala `Spacing`:** `none = 0.dp`, `xxs = 2.dp`, `xs = 4.dp`, `s = 8.dp`, `sm = 12.dp`, `m = 16.dp`, `l = 24.dp`, `xl = 32.dp`, `xxl = 48.dp`.
- **Escala `Elevation`:** `level0 = 0.dp`, `level1 = 1.dp`, `level2 = 3.dp`, `level3 = 6.dp`, `level4 = 8.dp`, `level5 = 12.dp`.
- **Escala `Dimensions`:** iconos (`iconSmall = 16.dp`, `iconMedium = 20.dp`, `iconDefault = 24.dp`, `iconLarge = 32.dp`, `iconExtraLarge = 48.dp`, `iconHero = 64.dp`), avatares (`avatarSmall = 36.dp`, `avatarMedium = 48.dp`, `avatarLarge = 72.dp`, `avatarProfile = 96.dp`, `avatarHero = 120.dp`), objetivos táctiles (`touchTarget = 48.dp`, `buttonHeight = 48.dp`, `buttonHeightLarge = 56.dp`).

---

## 6. Cuándo usar cada componente Material 3

- **`Scaffold` + `TopAppBar` / `CenterAlignedTopAppBar`:** estructura obligatoria de pantalla. Consume siempre `innerPadding` para respetar `enableEdgeToEdge()`.
- **`NavigationBar`:** barra inferior con 3–5 destinos principales, usando `Icons.Outlined.*` para no seleccionado e `Icons.Filled.*` para seleccionado.
- **`Card` vs `OutlinedCard` vs `ElevatedCard`:**
  - `Card` (`surfaceContainerLow`, sin borde ni sombra dura): contenedor por defecto para elementos de lista y secciones.
  - `OutlinedCard` (`surface` + borde `outlineVariant`): agrupación de campos o bloques informativos sobre fondo de igual tono.
  - `ElevatedCard` (`surfaceContainerLow` + `Elevation.level1`): solo cuando un elemento necesita destacar sobre una lista desplazable.
  - **Nunca** anidar una `Card` con elevación dentro de otra `Card`. Dentro de una tarjeta se usan `ListItem` o filas separadas por `HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant)`.

---

## 7. Ejemplos de Hacer / No hacer

### Colores y superficies
```kotlin
// NO HACER: colores hardcodeados, gradientes decorativos ni sombras manuales
Box(
    modifier = Modifier
        .shadow(12.dp, RoundedCornerShape(24.dp))
        .background(
            Brush.verticalGradient(listOf(Color(0xFF6B4E71), Color(0xFF9B7E9F)))
        )
) {
    Text("Confirmada", color = Color(0xFF4CAF50), fontSize = 13.sp, fontWeight = FontWeight.Bold)
}

// HACER: tokens semánticos M3, formas y tipografía del tema
Surface(
    color = AmaniTheme.colors.successContainer,
    contentColor = AmaniTheme.colors.onSuccessContainer,
    shape = MaterialTheme.shapes.small,
) {
    Text(
        text = stringResource(R.string.estado_confirmada),
        style = MaterialTheme.typography.labelMedium,
        modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
    )
}
```

### Tipografía e iconos
```kotlin
// NO HACER: redeclarar FontFamily ni usar emojis o iconos metafóricos de IA
val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
Icon(Icons.Default.Psychology, contentDescription = null)
Text("📋 Historial Clínico", fontFamily = roboto, fontSize = 18.sp, fontWeight = FontWeight.Bold)

// HACER: usar MaterialTheme.typography, recursos en strings.xml e iconos concretos
Icon(Icons.Outlined.MedicalServices, contentDescription = null)
Text(
    text = stringResource(R.string.historial_clinico_titulo),
    style = MaterialTheme.typography.titleLarge,
)
```
