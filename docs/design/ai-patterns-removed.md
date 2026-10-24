# Patrones genéricos "IA" eliminados — Amani Android

Registro estructurado (**Antes / Después**) de los patrones visuales genéricos eliminados durante la refactorización de la interfaz hacia el sistema de diseño Material 3 de Amani.

---

## Resumen por categorías

| Patrón eliminado | Ocurrencias iniciales | Solución aplicada en el sistema M3 |
|---|---|---|
| Gradientes decorativos (`Brush.*Gradient`) en fondos, cabeceras, botones y avatares | 26 (en 16 pantallas) | Superficies planas M3 (`surface`, `surfaceContainerLow`, `primaryContainer`) y botones `Button` con `colorScheme.primary` |
| Sombras difusas manuales (`.shadow(4.dp..24.dp)`) y bordes grises/negros de 1dp | 15 `.shadow` + bordes manuales | Elevación tonal de `Card` / `ElevatedCard` (`Elevation.level0..level2`) y `OutlinedCard` con `outlineVariant` |
| Iconos metafóricos de IA (`Icons.*.Psychology`, `Lightbulb`) | 19 | Iconos Material Symbols con significado concreto (`MedicalServices`, `SelfImprovement`, `SportsEsports`, `SupportAgent`, `Info`) |
| Emojis usados como iconos de UI (botones, chips, títulos, estados) | 282 en `.kt` + 97 en `strings.xml` | Iconos vectoriales `Icons.Outlined.*` / `Icons.Filled.*` y texto limpio en `strings.xml` |
| Radios de esquina excesivos o arbitrarios (`20.dp`, `24.dp`, `26.dp`, `28.dp`, `14.dp`, `10.dp`, `50.dp`) | 285 `RoundedCornerShape` | Escala `MaterialTheme.shapes` (`extraSmall = 4.dp`, `small = 8.dp`, `medium = 12.dp`, `large = 16.dp`, `extraLarge = 28.dp`) y `CircleShape` |
| Tarjetas anidadas (Card dentro de Card) | Múltiples (`ViewPacientePrincipalScreen`, `PsicologoAgendaScreen`, `CitasScreen`, `Settings*`) | Una sola `Card` por bloque con `ListItem` o filas separadas por `HorizontalDivider(color = outlineVariant)` |
| Badges, chips e iconos con colores aleatorios (>3 acentos en una pantalla) | `SettingsAdminScreen`, `SettingsPsychologistScreen`, `BottomSheetCambiarRol`, `TicketScreen`, `DiarioEmocionalScreen` | Tokens M3 (`primary`, `secondaryContainer`, `tertiaryContainer`, `errorContainer`) y los 2 semánticos armonizados (`successContainer`, `warningContainer`) |
| Espaciados y tamaños mágicos (`6.dp`, `10.dp`, `13.sp`, `14.dp`, `15.sp`, `18.dp`, `20.dp`, `22.dp`…) | 2280 `.dp` + 346 `.sp` + 444 `fontFamily = roboto` | Escala única `Spacing` (`xxs..xxl`), `Dimensions` y `MaterialTheme.typography` |
| Texto gris de bajo contraste (`Color.Gray`, `Color.LightGray`, `#999999`) | 60+ | `MaterialTheme.colorScheme.onSurfaceVariant` (contraste 8.92:1 L / 10.84:1 D) |

---

## Registro detallado Antes / Después por componente y pantalla

### 1. Componentes compartidos (`presentation/ui/componente/` y `ui/components/`)

#### `AmaniBottomBar.kt`
- **Antes:** usaba `Icons.Filled.Psychology` / `Icons.Outlined.Psychology` tanto para la pestaña de Entretenimiento/Juegos del paciente como para la pestaña de Psicólogos del administrador.
- **Después:** usa iconos concretos según la función: `Icons.Filled.SportsEsports` / `Icons.Outlined.SportsEsports` para Entretenimiento y `Icons.Filled.MedicalServices` / `Icons.Outlined.MedicalServices` para Psicólogos, además de previews en light/dark y `fontScale = 1.5f`.

#### `BottomSheetCambiarRol.kt`
- **Antes:** tarjeta con `Color.White` hardcodeado, `RoundedCornerShape(16.dp)`, `Color.Gray` para el email, `Surface(color = Color(0xFFE3F2FD))` y chips con emojis y colores aleatorios (`"👑 Administrador"` en `#E53935`, `"🧠 Psicólogo"` en `#43A047`, `"👤 Paciente"` en `#1E88E5`).
- **Después:** diálogo Material 3 con `MaterialTheme.shapes.extraLarge`, superficies `surfaceContainerHigh` / `secondaryContainer`, iconos vectoriales `Icons.Outlined.AdminPanelSettings`, `Icons.Outlined.MedicalServices` y `Icons.Outlined.Person`, tipografía `MaterialTheme.typography` y `Spacing.*`.

#### `MenuAdministrador.kt` y `DarAltaPsicologo.kt`
- **Antes:** `Modifier.shadow(elevation = 4.dp / 8.dp)`, `Icons.Default.Psychology` repetido en 4 opciones distintas del menú, `fontSize = 20.sp` / `14.sp` / `10.sp` sueltos y `color = colors.onPrimary` sobre `containerColor = colors.surface` (provocando texto blanco invisible sobre barra blanca en modo claro).
- **Después:** `TopAppBar` sin `.shadow` manual, texto e iconos con `onSurface` sobre `surface` (16.34:1), iconos específicos por acción (`PersonAdd`, `MedicalServices`, `Group`, `AdminPanelSettings`, `Event`, `CalendarMonth`) y tokens de `Spacing` y `Dimensions`.

---

### 2. Flujo público, Autenticación, Registro y Pagos (`presentation/ui/screen/`)

#### `Principal.kt`
- **Antes:** fondo con `Brush.verticalGradient`, `letterSpacing = 4.sp`, emojis `"🔄"` y `"⏱️"` como iconos clicables y valores mágicos de `dp`.
- **Después:** superficie plana `MaterialTheme.colorScheme.background`, tarjeta `surfaceContainerLow`, iconos vectoriales `Icons.Default.Refresh` y `Icons.Default.Schedule`, componente stateless `PrincipalContent` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `LoginScreen.kt`
- **Antes:** usaba `collectAsState()` sin ciclo de vida, fondo `Brush.verticalGradient`, tarjeta con `.shadow(12.dp, shapes.extraLarge)` + `defaultElevation = 0.dp`, `fontSize = 20.sp` y `letterSpacing = 4.sp` sueltos, y emoji `"❌ "` concatenado en errores.
- **Después:** `collectAsStateWithLifecycle()`, superficie plana `background`, tarjeta `surfaceContainerLow` con `Elevation.level2` y `shapes.large`, tipografía M3 limpia y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `RegisterScreen.kt`, `ConsentimientoScreen.kt`, `OpcionPagoScreen.kt`, `RegistroExitosoScreen.kt`
- **Antes:** `Color(0xFFCCC0E4)` hardcodeado como `containerColor` en `RegistroExitosoScreen.kt`, `letterSpacing = 1.sp`, textos literales hardcodeados en `RegisterScreen.kt` (géneros, parentescos, errores de mayoría de edad), emoji `"❌ "` concatenado y paddings mágicos (`20.dp`).
- **Después:** tokens `MaterialTheme.colorScheme.*`, textos extraídos a `strings.xml` (ES/EN/CA), escala `Spacing` / `Dimensions` / `Elevation` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `PaymentScreen.kt`, `QuestionnaireScreen.kt`, `PrincipalClienteScreen.kt`, `Cuestionario.kt`
- **Antes:** textos interpolados hardcodeados (`"Psicólogo: ..."`, `"Fecha: ..."`, `"Importe: ..."`, `"Error: ..."`), espaciados `15.dp` y `20.dp`, y código muerto comentado con `Color(0xFFF3F1F8)`, `Color(0xFF5E35B1)`, `Color.White`, `Color.Black`, `Color.Gray` y `FontFamily` local en `Cuestionario.kt`.
- **Después:** componentes stateless (`PaymentScreenContent`, `QuestionnaireScreenContent`, `PrincipalClienteScreenContent`), textos formateados en `strings.xml`, escala `Spacing` / `Dimensions` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

---

### 3. Pantallas de Paciente, Citas, Diario Emocional y Juegos (`pacienteView/`, `diario/`, `juegos/`)

#### `SnakeView.kt`, `SnakeScreen.kt` y `EntretenimientoScreen.kt`
- **Antes:** `Color.parseColor("#FAF0E6")`, `Color.parseColor("#FF7F50")`, `Color.parseColor("#4CAF50")` y `Color.BLACK` hardcodeados en `SnakeView.kt`, `Color.Black.copy(alpha = 0.5f)` y `Color.White` en `SnakeScreen.kt`, emojis `"🐍"` y `"❌"` como iconos de UI y espaciados `10.dp`, `20.dp`, `22.sp`.
- **Después:** constantes centralizadas en `ui/theme/Color.kt` (`SNAKE_BG_COLOR_INT`, `SNAKE_FOOD_COLOR_INT`, `SNAKE_BODY_COLOR_INT`, `SNAKE_BORDER_COLOR_INT`), `scrim` y `surfaceContainerHigh` en el overlay de inicio de partida, iconos vectoriales M3 (`SportsEsports`, `Refresh`, `ArrowBack`), textos en `strings.xml` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `TestPacienteScreen.kt`
- **Antes:** 7 colores hexadecimales hardcodeados (`0xFFF2ECF9`, `0xFFCCC0E4`, `0xFF212121`, `0xFF7B61FF`, `0xFFEAE2F8`, `0xFFF5F5F5`, `0xFF555555`), `Icons.Default.Psychology` como icono de resultado, radios `20.dp` / `28.dp` y `fontSize = 15.sp..22.sp` sueltos.
- **Después:** tokens `MaterialTheme.colorScheme.*`, `Icons.Default.SelfImprovement`, `MaterialTheme.shapes.large`, tipografía M3 (`headlineSmall`, `titleMedium`, `bodyLarge`, `labelLarge`) y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `DiarioEmocionalScreen.kt`
- **Antes:** 20+ colores hexadecimales sueltos en el archivo (`0xFFFDE68A`, `0xFF4CAF50`, `0xFF2196F3`, `0xFFE53935`, `0xFFFFCA28`, `0xFFAB47BC`, `0xFF5C6BC0`, `0xFFEF5350`, `0xFFFF7043`, `0xFFF48FB1`, `0xFF26A69A` y `Color(0xFF424242)` / `Color.White` en el `Canvas`), `RoundedCornerShape(10.dp..20.dp)` y tamaños `10.sp..22.sp` con `fontFamily = roboto`.
- **Después:** paleta cromática de la Rueda de Plutchik centralizada y documentada en `ui/theme/Color.kt` (`PlutchikJoy`, `PlutchikTrust`, `PlutchikFear`, `PlutchikSurprise`, `PlutchikSadness`, `PlutchikDisgust`, `PlutchikAnger`, `PlutchikAnticipation`, `PlutchikWheelStroke`, `PlutchikWheelLabelDark`), resto de la pantalla con tokens M3 (`colorScheme`, `typography`, `shapes`, `Spacing`) y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `SettingsClienteScreen.kt` y `SettingsOptionPaciente.kt`
- **Antes:** `Brush.verticalGradient` en el fondo de la pantalla, `Color.Gray`, `Color.Red`, `Color.White`, `Color.Transparent`, `RoundedCornerShape(20.dp / 24.dp)`, textos literales en las etiquetas de edición y sin `collectAsStateWithLifecycle()`.
- **Después:** superficie plana `MaterialTheme.colorScheme.background`, `AmaniTopBar`, `collectAsStateWithLifecycle()`, tokens M3 (`error`, `onSurfaceVariant`, `surfaceContainerLow`), textos en `strings.xml` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `HistorialCitasScreen.kt`, `HistorialClinicoScreen.kt` y `PacienteProfileScreen.kt`
- **Antes:** fondos `Brush.verticalGradient`, tarjetas con `.shadow(4.dp, RoundedCornerShape(20.dp))`, `Color.Black`, `Color.Gray`, `Color.Red`, `Color.White`, `Icons.Default.Psychology` para el psicólogo asignado, emojis `"❌ "` en errores y `collectAsState()` sin ciclo de vida.
- **Después:** `collectAsStateWithLifecycle()`, superficies planas M3, `Card` con `Elevation.level1` y `MaterialTheme.shapes.large`, `Icons.Default.MedicalServices`, chips semánticos (`AmaniTheme.colors.successContainer` / `warningContainer` / `errorContainer`) y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `ViewPacientePrincipalScreen.kt`
- **Antes:** cabeceras con `Brush.horizontalGradient` y `Brush.verticalGradient`, 15+ colores hardcodeados (`0xFFFF9800`, `0xFFE65100`, `0xFFFFB74D`, `0xFFFFF3E0`, `0xFF4CAF50`, `0xFF2196F3`, `0xFF9E9E9E`), `Icons.Default.Psychology` en la tarjeta del copiloto y en el banner de bienestar, microcopy hype (`"Asistente IA • RAG"`, `"Copiloto Clínico IA"`), tarjetas anidadas y `collectAsState()`.
- **Después:** superficies planas M3 (`primaryContainer`, `secondaryContainer`, `surfaceContainerLow`), tokens semánticos `AmaniTheme.colors.warning*` y `success*` para el seguimiento de incidencias, iconos concretos (`SupportAgent`, `SelfImprovement`, `MedicalServices`), microcopy sobrio y directo (`"Asistente de consultas"`), `collectAsStateWithLifecycle()` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `EditarCitaScreen.kt`, `AgendaCitaScreen.kt` y `CitasScreen.kt`
- **Antes:** `Color(0xFF4CAF50)`, `Color(0xFFFF9800)`, `Color(0xFFF44336)`, `Color(0xFF2196F3)`, `Color(0xFFE8F5E9)`, `Color(0xFF2E7D32)` hardcodeados para estados de cita, pagos y calendario, cabeceras con `Brush.horizontalGradient`, `.shadow(4.dp / 6.dp)`, `Icons.Default.Psychology` para el psicólogo y la terapia, y decenas de literales hardcodeados.
- **Después:** funciones `@Composable` con tokens `AmaniTheme.colors.success*`, `warning*`, `error*` y `MaterialTheme.colorScheme.*`, superficies planas sin gradientes ni `.shadow` manuales, iconos concretos (`MedicalServices`, `Person`), textos en `strings.xml` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

---

### Lote 5 — Psicólogo y Estadísticas

#### `CrearHistorialClinicoScreen.kt`
- **Antes:** objeto local `HistorialClinicoColors` con 10 colores hardcodeados (`Color(0xFFDFD5F5)`, `Color(0xFFFAF8FF)`, `Color(0xFFFFFFFF)`, `Color(0xFF1F1F1F)`, `Color(0xFF7B6C8F)`, `Color(0xFFCCC0E4)`, `Color(0xFF9B7EC4)`, `Color(0xFFE8E2F5)`, `Color(0xFFF5F3FA)`), fondo con `Brush.verticalGradient`, `.shadow(8.dp, RoundedCornerShape(24.dp))` y `collectAsState()`.
- **Después:** eliminación completa de `HistorialClinicoColors` y del gradiente vertical; uso de `MaterialTheme.colorScheme.*`, `MaterialTheme.shapes.large`, `Elevation.level1`, `Spacing.*`, `Dimensions.*`, `collectAsStateWithLifecycle()` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `EstadisticasPsicologoScreen.kt`
- **Antes:** colores hardcodeados para las métricas y niveles emocionales (`Color(0xFF4CAF50)`, `Color(0xFFF44336)`, `Color(0xFFFF9800)`, `Color(0xFF8BC34A)`), tamaños de fuente `12.sp`, `14.sp`, `16.sp`, `18.sp`, `20.sp`, `22.sp`, `26.sp`, radios de esquina uniformes de `16.dp`–`24.dp` y `collectAsState()`.
- **Después:** tokens semánticos `AmaniTheme.colors.success`, `warning`, `MaterialTheme.colorScheme.error`, `primary` y `tertiary`; escala tipográfica M3 (`MaterialTheme.typography.*`), `Spacing.*`, `Dimensions.chartCardHeight`, `collectAsStateWithLifecycle()`, preservando íntegramente los `testTag` y contratos de `EstadisticasPsicologoScreenTest`, y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `ViewPsicologoPrincipal.kt`, `PsicologoProfileScreen.kt` y `EditProfilePsicologoScreen.kt`
- **Antes:** fondos `Brush.verticalGradient`, tarjetas con `.shadow(6.dp / 8.dp, RoundedCornerShape(20.dp / 24.dp))`, `Color.Black`, `Color.White`, `Color.Gray`, `Color.Red`, `Color(0xFF4CAF50)`, `Color(0xFFFF9800)`, `Icons.Default.Psychology` para especialidades y `collectAsState()`.
- **Después:** superficies M3 planas y elevación tonal (`Elevation.level1`), `Icons.Default.MedicalServices`, tokens `AmaniTheme.colors.success*` y `warning*`, `collectAsStateWithLifecycle()` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `SettingsPsicologoScreen.kt`, `SettingsPsychologistScreen.kt` y `RegistrarPacientePsicologoScreen.kt`
- **Antes:** `Color.Gray`, `Color.Red`, `Color.White`, `Color.Transparent`, `Color(0xFF4CAF50)`, fondos con `Brush.verticalGradient`, `Icons.Default.Psychology` en la gestión de especialidades, literales de diálogo ("En desarrollo") hardcodeados en composables y valores mágicos de `dp`/`sp`.
- **Después:** `MaterialTheme.colorScheme.*`, `AmaniTheme.colors.success`, `Icons.Default.MedicalServices`, textos extraídos a `strings.xml` (es/en/ca), `Spacing.*`, `Dimensions.*`, `collectAsStateWithLifecycle()` y `@Preview` en Light, Dark y `fontScale = 1.5f`.

#### `PsicologoAgendaScreen.kt`
- **Antes:** extensiones `ColorScheme.success = Color(0xFF4CAF50)` y `ColorScheme.warning = Color(0xFFFF9800)`, `Color.Black.copy(alpha = 0.4f)`, `.shadow(4.dp / 8.dp, RoundedCornerShape(16.dp / 24.dp))`, `RoundedCornerShape(28.dp)` manual en diálogos y 15+ emojis como iconos de UI (`📅`, `⏳`, `✅`, `🏁`, `❌`, `🚫`, `✏️`, `🏢`, `📞`, `💳`, `💰`, `💾`, `🗑️`).
- **Después:** tokens `AmaniTheme.colors.success` y `warning`, `colors.scrim.copy(alpha = 0.4f)`, `CardDefaults.cardElevation(defaultElevation = Elevation.level1 / level2)`, `MaterialTheme.shapes.*`, eliminación de todos los emojis de UI en favor de iconos Material y textos limpios en `strings.xml`, y `@Preview` en Light, Dark y `fontScale = 1.5f`.


