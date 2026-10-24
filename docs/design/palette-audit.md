# Auditoría de paleta — Amani Android

> Fase 1 del refactor de UI. Documento generado a partir del código real (`app/src/main`) el 2026-10-24.
> Herramientas: grep/regex sobre todo el código Kotlin y XML, ΔE2000 y contraste WCAG 2.1 calculados por script,
> tokens M3 generados con **material-color-utilities** (port Python `materialyoucolor` 3.0.4, spec 2021 = la misma que usa Compose Material3 1.x).
> La librería solo se usó como herramienta externa de análisis; **no se ha añadido ninguna dependencia al proyecto**.

---

## 0. Fuentes de color actuales

| Fuente | Contenido | Observaciones |
|---|---|---|
| `ui/theme/Color.kt` | 31 constantes (`AmaniPurple #CCC0E4`, `AmaniPurpleDark #9B8CBF`, `AmaniBlack #1C1B1F`, citas, Snake…) | Bien centralizado, pero las pantallas lo ignoran mayoritariamente |
| `ui/theme/Theme.kt` | `LightColorScheme` / `DarkColorScheme` + `AmaniExtraColors` (17 roles extra) + helpers `getCardColors()`, `getScreenColors()`, `isDarkTheme()` | `primary = #CCC0E4` con `onPrimary` negro; `outline = AmaniBlack`; **dynamic color activado** |
| `ui/theme/AdminThemeUtils.kt` | `rememberAdminThemeTokens()` (deprecado) | Duplica `getCardColors/getScreenColors` |
| `res/values/colors.xml` | 9 colores (`amani_*`, `black`, `white`) | Sin uso en Compose; ningún tema XML los referencia |
| `res/values/themes.xml` | `Theme.ApplicationAmani` → `Theme.Material3.Light.NoActionBar` sin atributos | No hay `values-night/` → la ventana de arranque es siempre clara (destello blanco en dark) |
| `res/drawable/*.xml` | `ic_default_avatar #808080`, `ic_launcher_background #CCC0E4`, `ic_launcher_foreground #FFFFFF`, `ic_notificacion_amani #FFFFFF` | El icono de notificación debe ser blanco (requisito del sistema) — correcto |
| **Paletas locales en pantallas** | `HistorialClinicoColors`, `AgendaCitaDefaultColors`, `CitasScreenDefaultColors`, `AdminViewDefaultColors`, `private val Amani*` en `TerapiasScreen` y `SituacionAdminScreen`, `val Primary = Color(0xFF6B4E71)` en `ListadoPsicologosSimpleScreen` | **Origen principal de la fragmentación**: 6 mini-temas paralelos al `MaterialTheme` |
| `data/local/juego/SnakeView.kt` | `Color.parseColor("#CCC0E4")` ×5 | Vista Android clásica dentro del paquete `data` |
| `domain/models/soporte/TicketSoporte.kt` | Enum de estado con `Color(0xFF…)` ×6 (paleta Tailwind: `#DBEAFE`, `#1E40AF`, `#DCFCE7`, `#166534`…) | **Colores de Compose en la capa de dominio** |

### Totales (fuera de `ui/theme`)

| Métrica | Nº |
|---|---|
| `Color(0x…)` | **255** (41 archivos) |
| `Color.White/Black/Gray/LightGray/DarkGray/Red` | **323** |
| `Color.Transparent` / `Color.Unspecified` | 15 (no son colores de marca; se permiten) |
| `"#RRGGBB"` + `parseColor` | 6 |
| **Total colores hardcodeados** | **584** |
| Colores distintos | **~108 hex + 6 con nombre** |
| Overlays `.copy(alpha = …)` | 280 (18 valores distintos de alpha: 0.05…0.9) |
| Uso de `MaterialTheme.colorScheme.*` | 619 |
| Uso de `LocalAmaniColors` / helpers extra | 92 |

---

## 1. Tabla de colores encontrados

Ordenados por nº de usos. "Contraste vs #FFF" sirve de referencia rápida para saber si el color funciona como texto sobre blanco.

| # | Color | Hex | Usos | Archivos | Principales archivos | Rol aparente | Contraste vs #FFF |
|---|---|---|---|---|---|---|---|
| 1 | `Color.White` | `#FFFFFF` | 199 | 28 | ViewPacientePrincipalScreen.kt (44), AgendaCitaScreen.kt (16), CrearHistorialClinicoScreen.kt (15), CitasScreen.kt (14) +24 | Superficie de cards/campos, texto sobre primario, fondo de avatar | 1.00 |
| 2 | `Color.Black` | `#000000` | 56 | 20 | CrearHistorialClinicoScreen.kt (8), ViewPacientePrincipalScreen.kt (8), AgendaCitaScreen.kt (6), CitasScreen.kt (6) +16 | Texto, bordes de botón/campo, scrim | 21.00 |
| 3 | `Color.Gray` | `#888888` | 42 | 10 | EditProfilePsicologoScreen.kt (9), ViewPacientePrincipalScreen.kt (9), TicketScreen.kt (9), SettingsPsychologistScreen.kt (4) +6 | Texto secundario, iconos inactivos | 3.54 |
| 4 | `#FF6B4E71` | `#6B4E71` | 26 | 9 | SettingsPsychologistScreen.kt (7), SettingsAdminScreen.kt (7), TicketScreen.kt (6), CrearHistorialClinicoScreen.kt (1) +5 | Acción primaria hardcodeada (botones, FAB, top bar, progress) — 'ciruela' | 7.11 |
| 5 | `#FF4CAF50` | `#4CAF50` | 17 | 12 | EstadisticasPsicologoScreen.kt (3), SettingsPsychologistScreen.kt (2), HistorialCitasScreen.kt (2), SettingsAdminScreen.kt (2) +8 | Éxito / franja libre / activo | 2.78 |
| 6 | `Color.LightGray` | `#CCCCCC` | 16 | 3 | TicketScreen.kt (10), SettingsPsychologistScreen.kt (3), SettingsAdminScreen.kt (3) | Texto secundario en dark, divisores | 1.61 |
| 7 | `#FFE57373` | `#E57373` | 13 | 10 | EditarCitaScreen.kt (4), Color.kt (1), CrearHistorialClinicoScreen.kt (1), RegistrarPacientePsicologoScreen.kt (1) +6 | Error / ocupado (rojo suave) | 2.99 |
| 8 | `#FFF5F5F5` | `#F5F5F5` | 12 | 7 | ViewPacientePrincipalScreen.kt (3), TicketScreen.kt (3), ListadoPsicologosBajaScreen.kt (2), SettingsPsychologistScreen.kt (1) +3 | Fondo de pantalla/chip neutro | 1.09 |
| 9 | `#FFFFFFFF` | `#FFFFFF` | 11 | 9 | Color.kt (3), Theme.kt (1), SettingsPsychologistScreen.kt (1), CrearHistorialClinicoScreen.kt (1) +5 | Superficie (paletas locales) | 1.00 |
| 10 | `Color.DarkGray` | `#444444` | 10 | 7 | AgendaCitaScreen.kt (2), CitasScreen.kt (2), EditarCitaScreen.kt (2), SettingsPsychologistScreen.kt (1) +3 | Texto secundario | 9.74 |
| 11 | `#FF2D1B30` | `#2D1B30` | 9 | 8 | EditarCitaScreen.kt (2), SettingsPsychologistScreen.kt (1), CrearHistorialClinicoScreen.kt (1), HistorialCitasScreen.kt (1) +4 | Texto primario (paletas locales) | 16.02 |
| 12 | `#FFFF9800` | `#FF9800` | 9 | 6 | HistorialCitasScreen.kt (2), AgendaCitaScreen.kt (2), EditarCitaScreen.kt (2), PsicologoAgendaScreen.kt (1) +2 | Pendiente / aviso | 2.16 |
| 13 | `#FFFDF8F9` | `#FDF8F9` | 8 | 8 | SettingsPsychologistScreen.kt (1), CrearHistorialClinicoScreen.kt (1), HistorialCitasScreen.kt (1), AgendaCitaScreen.kt (1) +4 | Fondo de pantalla (paletas locales) | 1.05 |
| 14 | `#FF7A6B7E` | `#7A6B7E` | 8 | 8 | SettingsPsychologistScreen.kt (1), CrearHistorialClinicoScreen.kt (1), HistorialCitasScreen.kt (1), AgendaCitaScreen.kt (1) +4 | Texto secundario (paletas locales) | 4.96 |
| 15 | `#FF81C784` | `#81C784` | 8 | 7 | TicketScreen.kt (2), CrearHistorialClinicoScreen.kt (1), RegistrarPacientePsicologoScreen.kt (1), AgendaCitaScreen.kt (1) +3 | Éxito (paletas locales) | 2.01 |
| 16 | `#FFECF0F1` | `#ECF0F1` | 8 | 1 | EditarPsicologoAdminScreen.kt (8) | Fondo campos (EditarPsicologoAdmin) | 1.15 |
| 17 | `#FFCCC0E4` | `#CCC0E4` | 7 | 5 | SnakeView.kt (2), Color.kt (2), EditProfilePsicologoScreen.kt (1), TestScreen.kt (1) +1 | Marca: primary del tema, fondo login, icono launcher | 1.72 |
| 18 | `#FF2E7D32` | `#2E7D32` | 7 | 3 | TicketScreen.kt (4), ViewPacientePrincipalScreen.kt (2), Color.kt (1) | Confirmada / éxito oscuro | 5.13 |
| 19 | `#FFF44336` | `#F44336` | 7 | 4 | SettingsPsychologistScreen.kt (2), HistorialCitasScreen.kt (2), SettingsAdminScreen.kt (2), DiarioEmocionalScreen.kt (1) | Inactivo / error | 3.68 |
| 20 | `#FF2D2D2D` | `#2D2D2D` | 6 | 1 | ViewPacientePrincipalScreen.kt (6) | Superficie dark hardcodeada | 13.77 |
| 21 | `#FFE53935` | `#E53935` | 5 | 4 | BottomSheetCambiarRol.kt (2), SettingsPsychologistScreen.kt (1), HistorialCitasScreen.kt (1), SettingsAdminScreen.kt (1) | Error / eliminar | 4.23 |
| 22 | `#FF9B7E9F` | `#9B7E9F` | 5 | 5 | CrearHistorialClinicoScreen.kt (1), AgendaCitaScreen.kt (1), CitasScreen.kt (1), EditarCitaScreen.kt (1) +1 | PrimaryLight (paletas locales) | 3.57 |
| 23 | `#FF4A2B50` | `#4A2B50` | 4 | 4 | CrearHistorialClinicoScreen.kt (1), AgendaCitaScreen.kt (1), CitasScreen.kt (1), ListadoPsicologosSimpleScreen.kt (1) | PrimaryDark (paletas locales) | 11.98 |
| 24 | `#FFE8B4B8` | `#E8B4B8` | 4 | 4 | CrearHistorialClinicoScreen.kt (1), AgendaCitaScreen.kt (1), CitasScreen.kt (1), ListadoPsicologosSimpleScreen.kt (1) | Secondary rosa (paletas locales) | 1.80 |
| 25 | `#FFF5E6E8` | `#F5E6E8` | 4 | 4 | CrearHistorialClinicoScreen.kt (1), AgendaCitaScreen.kt (1), CitasScreen.kt (1), ListadoPsicologosSimpleScreen.kt (1) | Accent rosa pálido (fondos de chip/header) | 1.21 |
| 26 | `#FF1C1B1F` | `#1C1B1F` | 3 | 2 | Color.kt (2), Theme.kt (1) | Puntual / decorativo | 17.13 |
| 27 | `#FFE65100` | `#E65100` | 3 | 2 | TicketScreen.kt (2), Color.kt (1) | Pendiente (naranja oscuro) | 3.79 |
| 28 | `#FF3498DB` | `#3498DB` | 3 | 2 | SettingsAdminScreen.kt (2), SettingsPsychologistScreen.kt (1) | Icono decorativo azul (ajustes) | 3.15 |
| 29 | `#FF1E1E1E` | `#1E1E1E` | 3 | 3 | SettingsPsychologistScreen.kt (1), ViewPacientePrincipalScreen.kt (1), SettingsAdminScreen.kt (1) | Superficie dark hardcodeada | 16.67 |
| 30 | `#FFE8F5E9` | `#E8F5E9` | 3 | 2 | TicketScreen.kt (2), ViewPacientePrincipalScreen.kt (1) | Fondo chip éxito | 1.12 |
| 31 | `#FF333333` | `#333333` | 3 | 1 | TicketScreen.kt (3) | Texto | 12.63 |
| 32 | `#FF6C63FF` | `#6C63FF` | 3 | 3 | ListadoPsicologosBajaScreen.kt (1), EditarPsicologoAdminScreen.kt (1), ListadoPsicologosScreen.kt (1) | Primary 'índigo' (Admin psicólogos) — ajeno a la marca | 4.32 |
| 33 | `#FF9B8CBF` | `#9B8CBF` | 2 | 2 | SnakeView.kt (1), Color.kt (1) | Marca variante oscura (secondary L / primary D) | 3.04 |
| 34 | `#FFBA1A1A` | `#BA1A1A` | 2 | 2 | SnakeView.kt (1), Color.kt (1) | Error M3 | 6.46 |
| 35 | `#FF1A1A1A` | `#1A1A1A` | 2 | 2 | SnakeView.kt (1), Color.kt (1) | Fondo Snake | 17.40 |
| 36 | `#FFE3F2FD` | `#E3F2FD` | 2 | 2 | BottomSheetCambiarRol.kt (1), TicketScreen.kt (1) | Fondo chip info azul | 1.14 |
| 37 | `#FF43A047` | `#43A047` | 2 | 1 | BottomSheetCambiarRol.kt (2) | Rol activo (BottomSheet rol) | 3.30 |
| 38 | `#FF1E88E5` | `#1E88E5` | 2 | 1 | BottomSheetCambiarRol.kt (2) | Rol (BottomSheet rol) | 3.68 |
| 39 | `#FFE67E22` | `#E67E22` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Icono decorativo naranja (ajustes) | 2.85 |
| 40 | `#FF27AE60` | `#27AE60` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Icono decorativo verde (ajustes) | 2.87 |
| 41 | `#FF9B59B6` | `#9B59B6` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Icono decorativo morado (ajustes) | 4.67 |
| 42 | `#FF444444` | `#444444` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Fondo chip dark | 9.74 |
| 43 | `#FF999999` | `#999999` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Texto deshabilitado | 2.85 |
| 44 | `#FF666666` | `#666666` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Texto secundario | 5.74 |
| 45 | `#FFEF9A9A` | `#EF9A9A` | 2 | 2 | SettingsPsychologistScreen.kt (1), SettingsAdminScreen.kt (1) | Error en dark | 2.15 |
| 46 | `#FFD32F2F` | `#D32F2F` | 2 | 2 | EditProfilePsicologoScreen.kt (1), ListadoPsicologosScreen.kt (1) | Error / eliminar | 4.98 |
| 47 | `#FF9C27B0` | `#9C27B0` | 2 | 2 | HistorialCitasScreen.kt (1), DiarioEmocionalScreen.kt (1) | Emoción (diario) / estado | 6.30 |
| 48 | `#FFE0E0E0` | `#E0E0E0` | 2 | 2 | ViewPacientePrincipalScreen.kt (1), TicketScreen.kt (1) | Divisor | 1.32 |
| 49 | `#FFFFF3E0` | `#FFF3E0` | 2 | 1 | TicketScreen.kt (2) | Fondo chip aviso | 1.10 |
| 50 | `#FF6B6B6B` | `#6B6B6B` | 2 | 2 | ListadoPsicologosBajaScreen.kt (1), ListadoPsicologosScreen.kt (1) | Texto secundario | 5.33 |
| 51 | `Color.Red` | `#FF0000` | 2 | 1 | ListadoPsicologosBajaScreen.kt (2) | Error / baja | 4.00 |
| 52 | `#FFF8F9FA` | `#F8F9FA` | 2 | 1 | EditarPsicologoAdminScreen.kt (2) | Gradiente de fondo | 1.05 |
| 53 | `#FFF7F7F7` | `#F7F7F7` | 2 | 1 | TestScreen.kt (2) | Fondo campo (TestScreen) | 1.07 |
| 54 | `#FFFDF8FF` | `#FDF8FF` | 2 | 2 | TerapiasScreen.kt (1), SituacionAdminScreen.kt (1) | Fondo pantalla (Terapias/Situaciones) | 1.05 |
| 55 | `#FF2D2D35` | `#2D2D35` | 2 | 2 | TerapiasScreen.kt (1), SituacionAdminScreen.kt (1) | Texto primario (Terapias/Situaciones) | 13.65 |
| 56 | `#FF6B6B7A` | `#6B6B7A` | 2 | 2 | TerapiasScreen.kt (1), SituacionAdminScreen.kt (1) | Texto secundario (Terapias/Situaciones) | 5.24 |
| 57 | `#FFE8E2F3` | `#E8E2F3` | 2 | 2 | TerapiasScreen.kt (1), SituacionAdminScreen.kt (1) | Divisor (Terapias/Situaciones) | 1.26 |
| 58 | `#FFFFFBFE` | `#FFFBFE` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 1.03 |
| 59 | `#FFFCE4EC` | `#FCE4EC` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 1.20 |
| 60 | `#FFC62828` | `#C62828` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 5.62 |
| 61 | `#FFF5F0FF` | `#F5F0FF` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 1.12 |
| 62 | `#FF7B5C9E` | `#7B5C9E` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 5.43 |
| 63 | `#FFEADDFF` | `#EADDFF` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 1.29 |
| 64 | `#FF21005D` | `#21005D` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 17.17 |
| 65 | `#FFFFDAD6` | `#FFDAD6` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 1.29 |
| 66 | `#FF410002` | `#410002` | 1 | 1 | Color.kt (1) | Puntual / decorativo | 17.13 |
| 67 | `#FFF7F2FA` | `#F7F2FA` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 1.10 |
| 68 | `#FFF3EDF7` | `#F3EDF7` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 1.15 |
| 69 | `#FFEDE8F2` | `#EDE8F2` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 1.21 |
| 70 | `#FFE7E2EC` | `#E7E2EC` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 1.27 |
| 71 | `#FF49454F` | `#49454F` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 9.34 |
| 72 | `#FF0E0E12` | `#0E0E12` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 19.26 |
| 73 | `#FF1A1A1F` | `#1A1A1F` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 17.33 |
| 74 | `#FF1E1E23` | `#1E1E23` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 16.60 |
| 75 | `#FF29282E` | `#29282E` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 14.61 |
| 76 | `#FF343339` | `#343339` | 1 | 1 | Theme.kt (1) | Puntual / decorativo | 12.51 |
| 77 | `#FFDBEAFE` | `#DBEAFE` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 1.22 |
| 78 | `#FF1E40AF` | `#1E40AF` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 8.72 |
| 79 | `#FFDCFCE7` | `#DCFCE7` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 1.10 |
| 80 | `#FF166534` | `#166534` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 7.13 |
| 81 | `#FFF3F4F6` | `#F3F4F6` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 1.10 |
| 82 | `#FF6B7280` | `#6B7280` | 1 | 1 | TicketSoporte.kt (1) | Puntual / decorativo | 4.83 |
| 83 | `#FF7B68EE` | `#7B68EE` | 1 | 1 | EditProfilePsicologoScreen.kt (1) | Puntual / decorativo | 4.15 |
| 84 | `#FF252525` | `#252525` | 1 | 1 | ViewPacientePrincipalScreen.kt (1) | Puntual / decorativo | 15.33 |
| 85 | `#FFF0F0F0` | `#F0F0F0` | 1 | 1 | ViewPacientePrincipalScreen.kt (1) | Puntual / decorativo | 1.14 |
| 86 | `#FF3D3D3D` | `#3D3D3D` | 1 | 1 | ViewPacientePrincipalScreen.kt (1) | Puntual / decorativo | 10.86 |
| 87 | `#FFF2A104` | `#F2A104` | 1 | 1 | ViewPacientePrincipalScreen.kt (1) | Puntual / decorativo | 2.13 |
| 88 | `#FFFEF2F2` | `#FEF2F2` | 1 | 1 | MisTicketsScreen.kt (1) | Puntual / decorativo | 1.09 |
| 89 | `#FF991B1B` | `#991B1B` | 1 | 1 | MisTicketsScreen.kt (1) | Puntual / decorativo | 8.31 |
| 90 | `#FFFFEB3B` | `#FFEB3B` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 1.22 |
| 91 | `#FF8BC34A` | `#8BC34A` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 2.10 |
| 92 | `#FF2196F3` | `#2196F3` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 3.12 |
| 93 | `#FF00BCD4` | `#00BCD4` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 2.30 |
| 94 | `#FFFFA726` | `#FFA726` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 1.94 |
| 95 | `#FF42A5F5` | `#42A5F5` | 1 | 1 | DiarioEmocionalScreen.kt (1) | Puntual / decorativo | 2.65 |
| 96 | `#FFF3F1F8` | `#F3F1F8` | 1 | 1 | Cuestionario.kt (1) | Puntual / decorativo | 1.12 |
| 97 | `#FF5E35B1` | `#5E35B1` | 1 | 1 | Cuestionario.kt (1) | Puntual / decorativo | 8.02 |
| 98 | `#FF212121` | `#212121` | 1 | 1 | TicketScreen.kt (1) | Puntual / decorativo | 16.10 |
| 99 | `#FF1565C0` | `#1565C0` | 1 | 1 | TicketScreen.kt (1) | Puntual / decorativo | 5.75 |
| 100 | `#FF616161` | `#616161` | 1 | 1 | TicketScreen.kt (1) | Puntual / decorativo | 6.19 |
| 101 | `#FF2C3E50` | `#2C3E50` | 1 | 1 | EditarPsicologoAdminScreen.kt (1) | Puntual / decorativo | 10.98 |
| 102 | `#FF7F8C8D` | `#7F8C8D` | 1 | 1 | EditarPsicologoAdminScreen.kt (1) | Puntual / decorativo | 3.48 |
| 103 | `#FFF0F2F5` | `#F0F2F5` | 1 | 1 | EditarPsicologoAdminScreen.kt (1) | Puntual / decorativo | 1.12 |
| 104 | `#FFEF5350` | `#EF5350` | 1 | 1 | ListadoPsicologosScreen.kt (1) | Puntual / decorativo | 3.49 |
| 105 | `#FF7E69D6` | `#7E69D6` | 1 | 1 | TerapiasScreen.kt (1) | Puntual / decorativo | 4.30 |
| 106 | `#FF9B87F5` | `#9B87F5` | 1 | 1 | SituacionAdminScreen.kt (1) | Puntual / decorativo | 2.93 |

---

## 2. Agrupación de colores casi idénticos (ΔE2000 < 6)

| Grupo (color canónico primero) | Miembros (usos, ΔE) | ¿Accidental? |
|---|---|---|
| **Blancos / fondos claros** | `#FFFFFF` (210) · `#F5F5F5` (12, 2.0) · `#FDF8F9` (8, 2.8) · `#ECF0F1` (8, 3.7) · `#F8F9FA` (2) · `#F7F7F7` (2) · `#FDF8FF` (2) · `#FFFBFE` (1) · `#F7F2FA` · `#F3F4F6` · `#F0F0F0` · `#FEF2F2` · `#F3F1F8` · `#F0F2F5` | **Sí** — 14 variantes de "fondo claro"; deben ser `surface` / `surfaceContainer*` |
| Negros | `#000000` (56) · `#1A1A1A` · `#0E0E12` | Sí → `onSurface` / `scrim` |
| Grises medios | `#888888` (42) · `#999999` (2) | Sí → `onSurfaceVariant` |
| Grises claros | `#CCCCCC` (16) · `#E0E0E0` (2) | Sí → `outlineVariant` |
| Grises oscuros | `#444444` (12) · `#333333` (3) · `#3D3D3D` | Sí |
| Grises "texto secundario" | `#666666` · `#6B6B6B` · `#616161` · `#6B6B7A` · `#6B7280` · `#7A6B7E` | Sí → `onSurfaceVariant` |
| Superficies oscuras | `#2D2D2D` (6) · `#1E1E1E` (3) · `#2D2D35` · `#1E1E23` · `#29282E` · `#343339` · `#252525` · `#212121` | Sí → `surfaceContainer*` dark |
| **Verdes "éxito"** | `#4CAF50` (17) · `#43A047` · `#27AE60` (+ `#81C784`, `#2E7D32`, `#166534` más lejanos) | Sí — 6 verdes para el mismo significado |
| **Naranjas "pendiente"** | `#FF9800` (9) · `#F2A104` · `#FFA726` (+ `#E65100`, `#E67E22`) | Sí — 5 naranjas |
| **Rojos "error"** | `#F44336` (7) · `#E53935` (5) · `#EF5350` (+ `#E57373` 13, `#D32F2F`, `#C62828`, `#BA1A1A`, `Color.Red`, `#991B1B`) | Sí — 10 rojos para error/cancelado/baja |
| Azules | `#3498DB` · `#2196F3` · `#42A5F5` (+ `#1E88E5`, `#1565C0`, `#1E40AF`) | Sí — decorativos sin rol |
| Índigos fuera de marca | `#6C63FF` · `#7B68EE` (+ `#9B87F5`, `#7E69D6`, `#5E35B1`) | Sí — morados "genéricos" que no son la marca |
| Rosas pálidos | `#F5E6E8` · `#FCE4EC` · `#F3EDF7` · `#EDE8F2` · `#E7E2EC` | Parcial: los 3 últimos son surfaceContainers del tema |
| Lilas pálidos | `#E8E2F3` · `#F5F0FF` | Sí |
| `#1C1B1F` ≈ `#1A1A1F` | ΔE 0.9 | Sí (Theme.kt) |
| `#BA1A1A` ≈ `#C62828` | ΔE 3.7 | Sí |

**Conclusión:** de ~114 colores distintos, unos **90 son variantes accidentales** de ~12 roles reales.

---

## 3. Color de marca real

Hay **dos candidatos** que compiten:

| | `#CCC0E4` "lila Amani" | `#6B4E71` "ciruela" |
|---|---|---|
| HCT | H300 C22 **T80** | H323 C27 **T37** |
| Dónde | `primary` del tema → **149 refs** a `colorScheme.primary`; fondo de login/registro (`screenBackground`); fondo del icono del launcher; Snake | Hardcodeado **26 veces** + familia (`#9B7E9F`, `#4A2B50`) en 6 paletas locales: botones, FAB, top bars y progress de Citas, Agenda, Ajustes, Tickets, Historial |
| Declarado como marca | Sí (`/** Color marca principal de Amani */`) | No (aparece como `Primary` en paletas locales "Amani") |
| Contraste como acción sobre blanco | **1.68:1 ❌** (falla incluso 3:1 de UI) | 7.11:1 ✅ |

**Veredicto:** la marca es **`#CCC0E4`** (identidad: icono, login, tema, declaración explícita). El `#6B4E71` es, en la práctica, el *parche* que cada pantalla inventó para obtener un color de acción con contraste suficiente — es decir, la necesidad de un primary oscuro ya existía.

**Ajuste mínimo:** manteniendo matiz y croma de `#CCC0E4` (H300 C22):
- Mínimo para 3:1 (UI): T60 → `#968BAD`.
- Mínimo para 4.5:1 (texto/acción): T48 → `#776D8D`.
- **Propuesto:** tono estándar M3 **T40 → `#635A79`** (6.12:1 sobre surface, 6.42:1 con texto blanco). Está a ΔE 6.9 del ciruela `#6B4E71`, así que las pantallas que hoy usan ciruela apenas cambian visualmente, y el lila exacto `#CCC0E4` se conserva como `primaryContainer`.

---

## 4. Verificación de contraste WCAG 2.1 — estado actual

Umbrales: texto normal ≥ 4.5:1; texto grande (≥ 24sp, o ≥ 18.66sp en negrita) y componentes UI ≥ 3:1.

### Tema actual (cuando no hay dynamic color)

| Par | Ratio | Resultado |
|---|---|---|
| L · `onPrimary #1C1B1F` / `primary #CCC0E4` | 9.97 | ✅ |
| L · `primary #CCC0E4` como texto/icono/borde sobre surface | **1.68** | ❌ (se usa así en 149 sitios: iconos, `TextButton`, indicadores, bordes de foco) |
| L · `secondary #9B8CBF` texto sobre surface | **2.97** | ❌ |
| L · texto blanco sobre `secondary #9B8CBF` | 3.04 | ⚠️ solo texto grande |
| L · `tertiary #7B5C9E` / surface | 5.30 | ✅ |
| L · `error #BA1A1A` / surface | 6.30 | ✅ |
| L · `outlineVariant` (negro 38%) / surface | 2.35 | decorativo |
| D · texto blanco sobre `primary #9B8CBF` (botones dark) | **3.04** | ❌ texto normal |
| D · `primary #9B8CBF` / surface `#1C1B1F` | 5.63 | ✅ |
| D · `onSurface` / `surface` | 17.13 | ✅ |
| D · `onError #410002` / `error #FFDAD6` | 13.26 | ✅ (pero roles invertidos respecto a M3) |
| Launcher · blanco sobre `#CCC0E4` | **1.72** | ❌ (gráfico; ver deuda) |

### Colores hardcodeados en pantallas

| Par | Ratio | Resultado |
|---|---|---|
| `#6B4E71` texto / blanco · blanco / `#6B4E71` | 7.11 | ✅ |
| `#7A6B7E` / `#FDF8F9` (texto secundario Citas) | 4.72 | ✅ (justo) |
| `#9B87F5` / `#FDF8FF` (primary Situaciones) | **2.79** | ❌ |
| blanco / `#9B87F5` (botones Situaciones) | **2.93** | ❌ |
| `#6C63FF` / `#F5F5F5` (Admin psicólogos) | 3.96 | ⚠️ |
| `Color.Gray` / blanco | 3.54 | ⚠️ (se usa como texto normal) |
| `Color.LightGray` / blanco | **1.61** | ❌ |
| `#999999` / blanco | **2.85** | ❌ |
| `#4CAF50` (libre / éxito) texto / blanco | **2.78** | ❌ |
| `#81C784` (éxito) / blanco | **2.01** | ❌ |
| `#FF9800` (pendiente) / blanco | **2.16** | ❌ |
| `#E57373` (error / ocupado) / blanco | **2.99** | ❌ |
| `#E65100` (pendiente) / blanco | 3.79 | ⚠️ |
| `#E67E22` icono / blanco | **2.85** | ❌ UI |
| `#2E7D32` (confirmada) / blanco | 5.13 | ✅ |
| onSurface 50% / surface claro | 3.29 | ⚠️ |
| onSurface 50% / surface oscuro | 5.19 | ✅ |

**Resumen:** 15 pares fallan AA para su uso real. Los colores de **estado de citas** (verde/naranja/rojo) son los peores, y además transmiten significado solo con color.

---

## 5. Paleta propuesta (reducida)

| Rol | Color | Justificación |
|---|---|---|
| **Primario (marca)** | `#635A79` (T40 del lila) · container = **`#CCC0E4`** exacto | Conserva la identidad; acción con 6.4:1 |
| **Secundario** | `#615C6A` (lila grisáceo, baja croma) | Rol claro: chips de filtro, indicador de `NavigationBar`, toggles. Casi neutro → no cuenta como acento "ruidoso" |
| **Terciario** | `#785465` (rosa empolvado) | Ya existe intención en el código: `Secondary #E8B4B8` y `Accent #F5E6E8` en las paletas locales de Citas/Historial. Rol: acentos de contenido (diario emocional, destacados, "nuevo") |
| **Neutros** | Escala N del seed (H300 C4): `#FDF8FB` → `#E6E1E4` light; `#0F0E10` → `#363437` dark | Superficies con un tinte lila apenas perceptible, coherente con la marca |
| **Error** | `#BA1A1A` (rojo M3 estándar) | Sin motivo para cambiarlo |
| Semánticos de estado (ver decisión abierta) | success `#006D43`, warning `#994704` (armonizados hacia primary) | Sustituyen a 6 verdes y 5 naranjas; solo para estados (citas, tickets, activo/inactivo), siempre acompañados de icono/texto |

**Acentos con croma alta: 3** (primary, tertiary, error). Secundario y neutros son de baja croma. Los semánticos success/warning se limitan a indicadores de estado.

> Descartado como semilla `#6B4E71` + esquema Fidelity: genera un terciario **oliva** (`#3D4418`) sin relación con la app. El esquema *Content* con `#CCC0E4` da un terciario rosa coherente con lo que ya hay.

---

## 6. Tokens M3 completos

Generados con `SchemeContent(seed = #CCC0E4)` (paletas tonales) y mapeo estándar de tonos M3. Única desviación del generador: `primaryContainer` light fijado al lila exacto `#CCC0E4` (T80) con `onPrimaryContainer` = T10 (9.97:1), para que la marca aparezca tal cual en contenedores, chips seleccionados, cabeceras y login.

| Token | Light | Dark |
|---|---|---|
| `primary` | `#635A79` | `#CDC1E5` |
| `onPrimary` | `#FFFFFF` | `#342C48` |
| `primaryContainer` | `#CCC0E4` | `#4B4260` |
| `onPrimaryContainer` | `#1F1732` | `#E9DDFF` |
| `inversePrimary` | `#CDC1E5` | `#635A79` |
| `secondary` | `#615C6A` | `#CBC4D4` |
| `onSecondary` | `#FFFFFF` | `#322E3B` |
| `secondaryContainer` | `#E7DFF0` | `#494552` |
| `onSecondaryContainer` | `#1D1A25` | `#E7DFF0` |
| `tertiary` | `#785465` | `#E8BACE` |
| `onTertiary` | `#FFFFFF` | `#462736` |
| `tertiaryContainer` | `#FFD8E8` | `#5E3D4D` |
| `onTertiaryContainer` | `#2E1221` | `#FFD8E8` |
| `error` | `#BA1A1A` | `#FFB4AB` |
| `onError` | `#FFFFFF` | `#690005` |
| `errorContainer` | `#FFDAD6` | `#93000A` |
| `onErrorContainer` | `#410002` | `#FFDAD6` |
| `background` | `#FDF8FB` | `#141315` |
| `onBackground` | `#1C1B1D` | `#E6E1E4` |
| `surface` | `#FDF8FB` | `#141315` |
| `onSurface` | `#1C1B1D` | `#E6E1E4` |
| `surfaceVariant` | `#E7E0EA` | `#49454D` |
| `onSurfaceVariant` | `#49454D` | `#CAC4CD` |
| `surfaceContainerLowest` | `#FFFFFF` | `#0F0E10` |
| `surfaceContainerLow` | `#F7F2F5` | `#1C1B1D` |
| `surfaceContainer` | `#F1ECEF` | `#201F21` |
| `surfaceContainerHigh` | `#ECE7EA` | `#2B292C` |
| `surfaceContainerHighest` | `#E6E1E4` | `#363437` |
| `surfaceDim` | `#DDD9DC` | `#141315` |
| `surfaceBright` | `#FDF8FB` | `#3A393B` |
| `outline` | `#7A757E` | `#948F97` |
| `outlineVariant` | `#CAC4CD` | `#49454D` |
| `inverseSurface` | `#313032` | `#E6E1E4` |
| `inverseOnSurface` | `#F4EFF2` | `#313032` |
| `scrim` | `#000000` | `#000000` |
| `surfaceTint` | `#635A79` | `#CDC1E5` |
| *ext* `success` | `#006D43` | `#52DF9A` |
| *ext* `onSuccess` | `#FFFFFF` | `#003921` |
| *ext* `successContainer` | `#72FCB4` | `#005232` |
| *ext* `onSuccessContainer` | `#002111` | `#72FCB4` |
| *ext* `warning` | `#994704` | `#FFB68C` |
| *ext* `onWarning` | `#FFFFFF` | `#532200` |
| *ext* `warningContainer` | `#FFDBC9` | `#753400` |
| *ext* `onWarningContainer` | `#321200` | `#FFDBC9` |

### Verificación de contraste de la paleta propuesta

| Par (fg / bg) | Tipo | Light | Dark |
|---|---|---|---|
| `onPrimary` / `primary` | texto | 6.42 ✅ | 7.72 ✅ |
| `onPrimaryContainer` / `primaryContainer` | texto | 9.97 ✅ | 7.23 ✅ |
| `onSecondary` / `secondary` | texto | 6.47 ✅ | 7.79 ✅ |
| `onSecondaryContainer` / `secondaryContainer` | texto | 13.22 ✅ | 7.18 ✅ |
| `onTertiary` / `tertiary` | texto | 6.45 ✅ | 7.70 ✅ |
| `onTertiaryContainer` / `tertiaryContainer` | texto | 13.26 ✅ | 7.22 ✅ |
| `onError` / `error` | texto | 6.46 ✅ | 7.72 ✅ |
| `onErrorContainer` / `errorContainer` | texto | 13.26 ✅ | 7.24 ✅ |
| `onBackground` / `background` | texto | 16.34 ✅ | 14.34 ✅ |
| `onSurface` / `surface` | texto | 16.34 ✅ | 14.34 ✅ |
| `onSurface` / `surfaceContainerHighest` | texto | 13.28 ✅ | 9.54 ✅ |
| `onSurfaceVariant` / `surface` | texto | 8.92 ✅ | 10.84 ✅ |
| `onSurfaceVariant` / `surfaceVariant` | texto | 7.25 ✅ | 5.48 ✅ |
| `onSurfaceVariant` / `surfaceContainerHighest` | texto | 7.25 ✅ | 7.22 ✅ |
| `primary` / `surface` | texto | 6.12 ✅ | 10.90 ✅ |
| `primary` / `surfaceContainerHigh` | texto | 5.26 ✅ | 8.48 ✅ |
| `secondary` / `surface` | texto | 6.16 ✅ | 10.93 ✅ |
| `tertiary` / `surface` | texto | 6.14 ✅ | 10.89 ✅ |
| `error` / `surface` | texto | 6.15 ✅ | 10.91 ✅ |
| `inverseOnSurface` / `inverseSurface` | texto | 11.55 ✅ | 10.16 ✅ |
| `inversePrimary` / `inverseSurface` | texto | 7.72 ✅ | 4.97 ✅ |
| `success` / `surface` | texto | 6.12 ✅ | 10.92 ✅ |
| `onSuccess` / `success` | texto | 6.42 ✅ | 7.70 ✅ |
| `onSuccessContainer` / `successContainer` | texto | 13.30 ✅ | 7.23 ✅ |
| `warning` / `surface` | texto | 6.14 ✅ | 10.87 ✅ |
| `onWarning` / `warning` | texto | 6.45 ✅ | 7.72 ✅ |
| `onWarningContainer` / `warningContainer` | texto | 13.28 ✅ | 7.22 ✅ |
| `outline` / `surface` | UI | 4.28 ✅ | 5.85 ✅ |
| `outlineVariant` / `surface` | decorativo | 1.63 | 1.98 |

`outlineVariant` no alcanza 3:1 por diseño de M3: solo se usará en divisores decorativos, nunca como único indicador de un control (WCAG 1.4.11 no aplica a elementos decorativos).

---

## 7. Dynamic Color (Material You)

**Decisión propuesta: desactivarlo.**

1. Amani es una app de salud mental con una identidad de marca explícita (icono lila, login lila). Que la app cambie de color según el fondo de pantalla del usuario resta reconocimiento y confianza.
2. Hoy, en la práctica, **no funciona como se pretende**: `UserSession.tema` es `Boolean` no nulo (por defecto `false`), así que `useDynamicColor = session?.tema == null` solo es verdadero mientras la sesión carga → en Android 12+ se ve un **destello de colores del fondo de pantalla** y después el tema Amani.
3. `isDarkTheme()` detecta el modo oscuro comparando `background` con `#1C1B1F`; con dynamic color esa comparación falla y las pantallas que dependen de ella (20 usos) pintan colores de modo claro sobre fondo oscuro.
4. Los colores semánticos (estados de cita) no se armonizarían con una paleta dinámica.

Si en el futuro se quiere ofrecer, debería ser una opción explícita en Ajustes ("Usar colores del sistema"), no el comportamiento por defecto.
