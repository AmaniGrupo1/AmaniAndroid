# Demo y capturas

Esta página registra el estado de las capturas de interfaz y demostraciones visuales de la aplicación, siguiendo las pautas de privacidad del proyecto y el inventario de pantallas en [`presentation/ui/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui).

## Capturas pendientes por flujo

El wordmark oficial está en `docs/assets/logo.png` (fondo transparente a partir de `app/src/main/res/drawable/logo.png`). El favicon y el icono de cabecera usan `docs/assets/favicon.png` (flor y mano del mismo archivo). El repositorio no incluye aún capturas ni vídeos de pantallas. Cuando se generen con cuentas ficticias, se almacenarán en `docs/assets/` con estos nombres:

<!-- TODO: captura de pantalla de bienvenida e inicio de sesión (docs/assets/login-screen.webp) -->
<!-- TODO: captura de panel principal de paciente y reserva de citas (docs/assets/paciente-home-citas.webp) -->
<!-- TODO: captura de diario emocional y estado de sincronización (docs/assets/diario-emocional.webp) -->
<!-- TODO: captura de chat en tiempo real con burbujas de audio e imagen (docs/assets/chat-screen-v2.webp) -->
<!-- TODO: captura de agenda del psicólogo y estadísticas con gráficas Vico (docs/assets/psicologo-agenda-estadisticas.webp) -->
<!-- TODO: captura de panel de administración y gestión de roles (docs/assets/admin-home-roles.webp) -->

| Rol / Flujo | Composable en código | Archivo sugerido |
|---|---|---|
| **Inicio de sesión** | [`LoginScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/LoginScreen.kt) | `docs/assets/login-screen.webp` |
| **Paciente (Inicio y citas)** | [`ViewPacientePrincipalScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreen.kt), [`CitasScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreen.kt) | `docs/assets/paciente-home-citas.webp` |
| **Diario emocional** | [`DiarioEmocionalScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/diario/DiarioEmocionalScreen.kt) | `docs/assets/diario-emocional.webp` |
| **Chat en tiempo real** | [`ChatScreenV2.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenV2.kt) | `docs/assets/chat-screen-v2.webp` |
| **Psicólogo (Agenda y métricas)** | [`PsicologoAgendaScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreen.kt), [`EstadisticasPsicologoScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/EstadisticasPsicologoScreen.kt) | `docs/assets/psicologo-agenda-estadisticas.webp` |
| **Administración** | [`ViewAdminPrincipal.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ViewAdminPrincipal.kt), [`AdminUserManagementScreen.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/AdminView/role/AdminUserManagementScreen.kt) | `docs/assets/admin-home-roles.webp` |

!!! warning "Datos ficticios y protección de datos"
    No publiques capturas con nombres reales de pacientes o psicólogos, correos personales, historiales clínicos reales ni tokens de sesión. Usa siempre datos sintéticos generados en un entorno de pruebas.

!!! tip "Formato y soporte de modo claro/oscuro"
    Exporta las imágenes en WebP o PNG optimizado con texto alternativo descriptivo y usa los sufijos `#only-light` y `#only-dark` para que `glightbox` y Material conmuten la imagen según el tema activo.

## Demo ejecutable

Para explorar la interfaz de forma interactiva, compila e instala el APK de depuración siguiendo [Puesta en marcha](puesta-en-marcha.md). También puedes inspeccionar los composables mediante las funciones `@Preview` configuradas con [`AppTheme`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt) en Android Studio.

<!-- TODO: confirmar enlace a vídeo de demostración si el equipo graba un recorrido con cuentas ficticias -->

## Siguientes pasos

- Consulta la [Capa UI](capa-ui.md) para ver cómo están construidas las pantallas y el tema Material 3.
- Revisa [Navegación](navegacion.md) para conocer todas las rutas entre pantallas.

*[APK]: Android Package Kit
*[UI]: User Interface (Interfaz de usuario)
