# Decisiones de diseño y arquitectura UI — Amani Android

Registro de decisiones tomadas ante ambigüedades o restricciones en conflicto durante la refactorización a Material Design 3.

---

## DEC-01 · Color de marca y rol de `#CCC0E4` frente a `#6B4E71`

- **Contexto:** `Color.kt` declara `AmaniPurple = #CCC0E4` como color de marca y lo asigna a `primary`, pero tiene un contraste de **1.68:1** sobre fondos claros. Por eso 6 pantallas definieron por su cuenta `Primary = #6B4E71` ("ciruela", 7.11:1).
- **Opciones:**
  1. Mantener `#CCC0E4` como `primary` → incumple WCAG AA en 149 usos de texto/icono/borde.
  2. Cambiar la semilla a `#6B4E71` → pierde el lila identificativo de Amani (H323 vs H300) y en esquema Fidelity genera un terciario oliva ajeno a la app.
  3. **Usar `#CCC0E4` como semilla con `SchemeContent`**: `primary = #635A79` (T40 del mismo matiz H300, 6.42:1 con blanco) y fijar `primaryContainer = #CCC0E4` con `onPrimaryContainer = #1F1732` (9.97:1).
- **Elegida:** **Opción 3** (pendiente de confirmación). Conserva el lila exacto en contenedores, chips seleccionados y cabeceras, y da un primario de acción que cumple AA holgadamente y queda a ΔE 6.9 del `#6B4E71` usado hoy.

---

## DEC-02 · Dynamic Color (Material You)

- **Contexto:** `ApplicationAmaniTheme` tiene `dynamicColor = true` y lo activa cuando `session?.tema == null`. Como `UserSession.tema` no es anulable, solo se activa durante los milisegundos de carga de DataStore (provocando un parpadeo de color en Android 12+) y rompe `isDarkTheme()`.
- **Opciones:**
  1. Arreglarlo y dejarlo activo por defecto en Android 12+.
  2. **Desactivarlo por defecto (`dynamicColor = false`)** para preservar la identidad de marca y la coherencia con los colores semánticos de citas.
- **Elegida:** **Opción 2**.

---

## DEC-03 · Familias tipográficas (máximo 2 vs 3 actuales)

- **Contexto:** `Type.kt` define **3 familias**: `Roboto` (body/label/titleMedium-Small/headlineSmall), `Nunito` (display* y titleLarge) y `BarlowCondensed` (solo `headlineLarge` y `headlineMedium`, más 2 usos directos en `ListadoPsicologosScreen`). La Fase 3 exige **máximo 2 familias**.
- **Opciones:**
  1. **Mantener `Nunito` (display, headline, titleLarge) + `Roboto` (titleMedium/Small, body, label)** y retirar `BarlowCondensed` (que es un peso Black condensado que choca con el tono calmado de salud mental).
  2. Mantener `BarlowCondensed` + `Roboto` y retirar `Nunito`.
  3. Usar solo `Roboto` en los 15 slots.
- **Elegida:** **Opción 1** (pendiente de confirmación).

---

## DEC-04 · Nombre del punto de entrada del tema (`AppTheme` vs `ApplicationAmaniTheme`)

- **Contexto:** El prompt pide `AppTheme(darkTheme, content)`. El proyecto usa `ApplicationAmaniTheme` en `MainActivity` y previews.
- **Opciones:**
  1. Renombrar a `AppTheme` y dejar `@Deprecated typealias` / wrapper `ApplicationAmaniTheme` por compatibilidad.
  2. Reemplazar todas las llamadas por `AppTheme`.
- **Elegida:** **Opción 2** con wrapper temporal durante la migración y eliminación en la limpieza final.

---

## DEC-05 · Colores semánticos de estado (citas, tickets, disponibilidad)

- **Contexto:** La restricción de paleta pide "como máximo 3 acentos en total", pero el dominio de citas distingue **5 estados** (libre, confirmada, pendiente, ocupada, cancelada) y soporte distingue 3 (abierto, en proceso, cerrado). Hoy se usan ~21 verdes/naranjas/rojos/azules distintos que fallan contraste.
- **Opciones:**
  1. Mapear todos los estados únicamente a `primary`, `secondary`, `tertiary`, `error` y `surfaceVariant` (cero colores extra).
  2. Añadir en `LocalAmaniExtendedColors` solo **2 familias semánticas armonizadas** con el primario (`success` `#006D43`/`#52DF9A` y `warning` `#994704`/`#FFB68C`, con sus pares `on*` y `*Container`), reservadas exclusivamente a indicadores de estado y **siempre acompañadas de icono + texto** (nunca color solo).
- **Elegida:** **Opción 2** (pendiente de confirmación; si prefieres estricto M3 sin `success`/`warning`, aplicamos Opción 1 mapeando confirmada/libre → `primary`/`secondary`, pendiente → `tertiary`, cancelada/ocupada → `error`).

---

## DEC-06 · Colores de Compose en la capa de dominio y `data` (`TicketSoporte.kt` y `SnakeView.kt`)

- **Contexto:**
  - `domain/models/soporte/TicketSoporte.kt` importa `androidx.compose.ui.graphics.Color` y define 6 `Color(0xFF…)` en el enum `EstadoTicket`.
  - `data/local/juego/SnakeView.kt` es un `android.view.View` ubicado dentro del paquete `data` que usa `Color.parseColor(...)` ×5.
  - La restricción dice: *"No cambies la lógica de negocio, los repositorios, los casos de uso ni la capa de datos. Solo toca lo necesario para el estado de UI"* y el criterio de aceptación exige *"Cero colores hardcodeados fuera de ui/theme"*.
- **Opciones:**
  1. Mover el mapeo de color de `EstadoTicket` a una extensión `@Composable fun EstadoTicket.toContainerColor()` en `presentation/ui/screen/soporte/`, y hacer que `SnakeView` reciba los colores desde `SnakeScreen` (que los lee de `ui/theme`), eliminando los literales hex de ambos archivos sin alterar su lógica.
  2. No tocar `TicketSoporte.kt` ni `SnakeView.kt` y documentarlos como excepción por estar en `domain/` y `data/`.
- **Elegida:** **Opción 1** (pendiente de confirmación), porque los colores en `EstadoTicket` y `SnakeView` son puramente estado/presentación de UI mal ubicados.

---

## DEC-07 · Pantallas huérfanas / duplicadas detectadas en el inventario

- **Contexto:** Hay 11 archivos de pantalla que no están conectados a `NavGraph` ni son llamados desde otra pantalla activa:
  - `ChatScreen.kt` y `AudioBubble.kt` (reemplazados por `ChatScreenV2` y `AudioBubbleV2`, aunque `MessageBubbleTest` testea `MessageBubble`).
  - `SettingsClienteScreen.kt` y `SettingsPsicologoScreen.kt` (reemplazados por `SettingsOptionPaciente.kt` y `SettingsPsychologistScreen.kt`).
  - `ConsentimientoScreen.kt`, `OpcionPagoScreen.kt`, `RegistroExitosoScreen.kt`, `Cuestionario.kt`, `TestPacienteScreen.kt`, `HistorialCitasScreen.kt`, `EditarPsicologoAdminScreen.kt`, `GestionDocumentosScreen.kt`.
  - Componentes sin uso: `BarraNavegationInferiorAdmin.kt`, `MenuPrincipal.kt`, `MenuSetting.kt`, `VistaDiariaHoras.kt`, `presentation/components/BottomBar.kt`.
- **Opciones:**
  1. Refactorizar sus tokens igualmente para cumplir el criterio de `grep` = 0 en todo `src/main`, sin borrarlos.
  2. Eliminar el código muerto (salvo lo cubierto por tests).
- **Elegida:** **Opción 1** por defecto para no introducir regresiones inesperadas; los listamos como deuda técnica para borrado si lo autorizas.

---

## DEC-08 · Emojis en `strings.xml` y en logs de ViewModels/repositorios

- **Contexto:** Hay 282 emojis en `.kt` (de los cuales ~75 están en `Log.d` / mensajes de ViewModel y el resto en UI) y 97 cadenas con emoji en `res/values/strings.xml` (muchas son títulos de UI como `📋 Información Detallada`, `💾 GUARDAR`, `✅ Contraseña válida`, y otras son frases del diario/bienestar).
- **Decisión:**
  - En **composables y strings de controles/títulos/estados de UI**: se eliminan todos los emojis y se sustituyen por iconos `Icons.Outlined.*` / `Icons.Filled.*` semánticos.
  - En **repositorios/casos de uso**: no se tocan (restricción de no tocar capa de datos/dominio).
  - En **ViewModels**: solo se limpian los emojis que viajan al `UiState` visible por el usuario (ej. mensajes de validación/estado en `PsicologoAgendaViewModel` y `AdminUserViewModel`).

---

## DEC-09 · `WindowSizeClass` (adaptabilidad)

- **Contexto:** La Fase 4 indica: *"si la app se usa en tablet o plegables, usa WindowSizeClass; si no, no lo añadas"*, y añadir `material3-window-size-class` requeriría una dependencia nueva.
- **Decisión:** No añadir dependencia nueva salvo que confirmes que la app tiene soporte oficial de tablet/plegables; usamos layouts responsivos con restricciones de ancho máximo (`widthIn(max = 600.dp)`) centrados en pantallas grandes.

---

## DEC-10 · Configuración de keystore de debug en entorno containerizado (`ANDROID_USER_HOME`)

- **Contexto:** Al compilar la tarea `validateSigningDebug` en entornos sandbox o CLI containerizados con Snap, `/home/ivan/.android/debug.keystore.lock` arroja `AccessDeniedException` por permisos del host.
- **Decisión:** Exportar `ANDROID_USER_HOME=/home/ivan/snap/antigravity-cli/common/.android`, garantizando generación y acceso sin fallos al keystore de depuración estándar de Android.

