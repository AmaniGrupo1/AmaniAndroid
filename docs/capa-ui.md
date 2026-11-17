# Capa UI y Sistema de Diseño

Esta página describe la capa de interfaz de usuario construida íntegramente con **Jetpack Compose** y **Material Design 3**, abarcando el sistema de diseño en [`ui/theme/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme), los componentes reutilizables y la gestión de estados reactivos en [`presentation/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/presentation).

## Sistema de diseño Material 3 (`ui/theme/`)

El punto de entrada visual de la aplicación es el composable [`AppTheme`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt), invocado desde [`MainActivity.onCreate()`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/MainActivity.kt):

| Archivo | Responsabilidad |
|---|---|
| [`Theme.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt) | Define `AmaniLightColorScheme`, `AmaniDarkColorScheme`, los tokens semánticos `AmaniExtraColors` (`LocalAmaniColors`) y el punto de entrada `AppTheme` (con alias `ApplicationAmaniTheme`). |
| [`Color.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Color.kt) | Declara los tokens de color de marca (`LightPrimary = #635A79`, `LightPrimaryContainer = #CCC0E4`) y pares semánticos `success`/`warning` verificados con contraste WCAG 2.1 AA (`DEC-01`, `DEC-05`). |
| [`Type.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Type.kt) | Configura la escala tipográfica `Typography` combinando **Nunito** (display, headline, titleLarge) y **Roboto** (body, label, titleMedium/Small) según `DEC-03`. |
| [`Shape.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Shape.kt) y [`Spacing.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Spacing.kt) | Centralizan los radios de esquina (`AmaniShapes`) y espaciados consistentes. |

```kotlin title="app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt"
CompositionLocalProvider(
    LocalAmaniColors provides extraColors,
) {
    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        shapes = AmaniShapes,
        content = content,
    )
}
```

!!! note "Preferencia de tema y Dynamic Color"
    `AppTheme` observa `UserSessionDataStore.sessionFlow` en tiempo real: si el usuario ha elegido modo claro u oscuro (`session.tema`), prevalece sobre el ajuste del sistema. Dynamic Color está desactivado (`DEC-02`) para preservar la identidad visual de Amani y los colores de estado de las citas.

## Pantallas por rol y componentes reutilizables

Las pantallas se agrupan según el rol o dominio funcional dentro de [`presentation/ui/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui):

- **Acceso y onboarding:** [`Principal.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/Principal.kt), [`LoginScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/LoginScreen.kt), [`RegisterScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/RegisterScreen.kt), [`QuestionnaireScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/QuestionnaireScreen.kt).
- **Paciente (`pacienteView/`):** [`ViewPacientePrincipalScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreen.kt), [`CitasScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreen.kt), [`AgendaCitaScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/AgendaCitaScreen.kt), [`EditarCitaScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/EditarCitaScreen.kt), [`HistorialClinicoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/HistorialClinicoScreen.kt), [`SettingsOptionPaciente.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/SettingsOptionPaciente.kt).
- **Psicólogo (`psicologoView/`):** [`ViewPsicologoPrincipal.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/ViewPsicologoPrincipal.kt), [`PsicologoAgendaScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreen.kt), [`CrearHistorialClinicoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/CrearHistorialClinicoScreen.kt), [`EstadisticasPsicologoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/EstadisticasPsicologoScreen.kt), [`SettingsPsychologistScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/SettingsPsychologistScreen.kt).
- **Administrador (`AdminView/`):** [`ViewAdminPrincipal.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ViewAdminPrincipal.kt), [`ListadoPacientesScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPacientesScreen.kt), [`ListadoPsicologosScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreen.kt), [`AgregaPsicologoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/AgregaPsicologoScreen.kt), [`AdminUserManagementScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/role/AdminUserManagementScreen.kt), [`TerapiasScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/TerapiasScreen.kt).
- **Módulos transversales:** [`ChatListScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreen.kt), [`ChatScreenV2.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenV2.kt), [`DiarioEmocionalScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/diario/DiarioEmocionalScreen.kt), [`PaymentScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/payment/PaymentScreen.kt), [`MisTicketsScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/soporte/MisTicketsScreen.kt), [`SnakeScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/juegos/SnakeScreen.kt).
- **Componentes reutilizables:** [`AmaniBottomBar`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBar.kt) (barra inferior adaptada a `BottomBarConfig.Paciente`, `Admin` y `Psicologo`), [`ThemeModeSelector`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/components/ThemeModeSelector.kt), [`AmaniEmptyState`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/components/AmaniEmptyState.kt), [`AmaniPersonRow`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/components/AmaniPersonRow.kt), [`BottomSheetCambiarRol`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/componente/BottomSheetCambiarRol.kt) y [`AudioBubbleV2`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleV2.kt).

## Playbook visual de pantallas activas

Las rutas de `NavGraph` siguen Material 3 (con HIG de Apple solo como apoyo): listas con `ListItem` / [`AmaniPersonRow`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/components/AmaniPersonRow.kt), vacíos con [`AmaniEmptyState`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/components/AmaniEmptyState.kt) (`titleLarge` + `bodyMedium` + icono `onSurfaceVariant`), lectura en `bodyLarge`, barras en `titleLarge`, metadatos sin alfa extra, objetivos táctiles ≥ 48 dp y copy en *sentence case*. Los ajustes no usan chevron de iOS; los calendarios conservan `ChevronLeft`/`ChevronRight` para cambiar de mes.

## Tratamiento visual del chat

La lista ([`ChatListScreen`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreen.kt)) usa `ListItem` de Material 3 (avatar, titular y texto de apoyo, objetivo táctil ≥ 48 dp, sin chevron de iOS). La sala ([`ChatScreenV2`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenV2.kt)) aplica `titleLarge` en la barra, `bodyLarge` en el mensaje, burbujas `primaryContainer` / `surfaceContainerHighest` y fechas con rol de encabezado. El compositor (`ChatInputBar`) mantiene 48 dp, copy en *sentence case* y respeta «reducir movimiento» en el pulso de grabación.

## Gestión de `UiState`, eventos y ejemplo de flujo completo

Los ViewModels modelan los estados de carga, éxito y error mediante clases selladas (`sealed class`) o `data class` inmutables emitidas por `StateFlow`. Un ejemplo representativo es el flujo de pagos con Stripe:

1. **Estado sellado ([`PaymentUiState.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/payment/PaymentUiState.kt)):** modela explícitamente los estados `Idle`, `Loading`, `PaymentReady`, `Success` y `Error`.

```kotlin title="app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/payment/PaymentUiState.kt"
sealed class PaymentUiState {
    data object Idle : PaymentUiState()
    data object Loading : PaymentUiState()
    data class PaymentReady(
        val clientSecret: String,
        val paymentIntentId: String,
        val amount: java.math.BigDecimal,
        val currency: String,
    ) : PaymentUiState()
    data class Success(val paymentIntentId: String) : PaymentUiState()
    data class Error(val message: String) : PaymentUiState()
}
```

2. **Pantalla → ViewModel → Caso de uso → Repositorio → API:** [`PaymentScreen`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/payment/PaymentScreen.kt) observa `viewModel.uiState`, solicita crear el intento de pago a [`PaymentViewModel`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/payment/PaymentViewModel.kt), que invoca [`CreatePaymentIntentUseCase`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/domain/usecases/payment/CreatePaymentIntentUseCase.kt) → [`PaymentRepository`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/repositorio/PaymentRepository.kt) → [`PaymentApiService`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/PaymentApiService.kt) (`POST /api/payments/create-intent`), y al completarse actualiza el estado de la cita mediante `CitasViewModel.marcarCitaComoPagada(citaId)`.

## Siguientes pasos

- Revisa [Navegación](navegacion.md) para ver cómo se conectan las pantallas en `NavGraph`.
- Consulta [Decisiones y roadmap](limitaciones-y-roadmap.md) para ver el listado de pantallas huérfanas (`DEC-07`) y criterios de accesibilidad (`DEC-01` a `DEC-09`).

*[UI]: User Interface (Interfaz de usuario)
*[WCAG]: Web Content Accessibility Guidelines
*[PDF]: Portable Document Format
