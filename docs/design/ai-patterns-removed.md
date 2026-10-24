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

