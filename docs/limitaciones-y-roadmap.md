# Decisiones, limitaciones y roadmap

Esta página resume las decisiones de arquitectura e interfaz registradas en [`DECISIONES.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/DECISIONES.md), las limitaciones técnicas actuales del código y la hoja de ruta priorizada en [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md).

## Registro de decisiones (ADRs en `DECISIONES.md`)

| ID | Tema | Decisión adoptada |
|---|---|---|
| **DEC-01** | Color primario y contraste | Usar `#CCC0E4` como semilla (`primaryContainer`) y `#635A79` como `primary` en modo claro (contraste 6.42:1 con blanco, cumpliendo WCAG AA). |
| **DEC-02** | Dynamic Color (Material You) | Desactivar Dynamic Color por defecto (`dynamicColor = false`) para mantener la identidad de marca y la coherencia semántica de citas. |
| **DEC-03** | Familias tipográficas | Conservar **Nunito** (display, headline, titleLarge) y **Roboto** (body, label, titleMedium/Small) en [`Type.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Type.kt). |
| **DEC-04** | Punto de entrada del tema | Estandarizar [`AppTheme`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/ui/theme/Theme.kt) manteniendo `ApplicationAmaniTheme` como wrapper de compatibilidad. |
| **DEC-05** | Colores semánticos de estado | Exponer `AmaniExtraColors` (`LocalAmaniColors`) con pares `success` y `warning` armonizados para estados de citas y tickets. |
| **DEC-06** | Colores en dominio y datos | Desacoplar literales de color de `TicketSoporte.kt` y `SnakeView.kt` hacia la capa de presentación (`ui/theme`). |
| **DEC-07** | Pantallas huérfanas | Mantener temporalmente los 11 archivos de pantalla no conectados a `NavGraph` (`ChatScreen.kt`, `SettingsClienteScreen.kt`, `ConsentimientoScreen.kt`, etc.) refactorizados con tokens M3 hasta autorizar su borrado. |
| **DEC-08** | Emojis en interfaz | Sustituir emojis decorativos de controles UI por iconos vectoriales de Material (`Icons.Outlined.*` / `Icons.Filled.*`). |
| **DEC-09** | Adaptabilidad de pantalla | Aplicar restricciones `widthIn(max = 600.dp)` sin añadir la dependencia `material3-window-size-class`. |
| **DEC-10** | Keystore en entornos sandbox | Permitir definir `ANDROID_USER_HOME` cuando `~/.android/debug.keystore.lock` no sea accesible en contenedores. |

## Limitaciones conocidas y deuda técnica verificada

- **URLs base múltiples:** [`RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt) apunta a Cloud Run, pero `PsicologoProfileScreen.kt`, `ViewPacientePrincipalScreen.kt` y `PacienteProfileScreen.kt` declaran constantes locales `BASE_URL` para construir rutas de imágenes.
- **Dependencia duplicada de Jitsi Meet:** [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) incluye tanto `org.jitsi.react:jitsi-meet-sdk:8.2.2` (línea 115) como `8.6.0` (línea 153).
- **Linters en modo permisivo:** Detekt y ktlint tienen `ignoreFailures = true` y los workflows de PR (`build_debug_apk.yml`) compilan el APK pero no ejecutan `./gradlew qualityCheck`.
- **Duplicidad de paquetes:** coexisten `data/repositorio` y `data/repository` (ambos con una clase `ChatRepositoryImpl`), así como `presentation/ui/componente` y `presentation/ui/components`.
- **Desajustes en `Readme.md`:** el README de la raíz menciona valores antiguos (`minSdk 24`, `targetSdk 34`, `AGP 9.0.1`, `16 rutas`), superados por la configuración real (`minSdk 25`, `targetSdk 36`, `AGP 9.4.1`, `43 rutas`).

## Hoja de ruta (`PLAN-MEJORA.md`)

1. **Fase 1 — Seguridad y configuración (Semana 1):** unificar `BASE_URL` en `BuildConfig`, restringir `usesCleartextTraffic` mediante `network_security_config`, excluir DataStore/Room de backups, activar R8 en release y limpiar `app/google-services.json` y `app/release.keystore` del historial Git.
2. **Fase 2 — Calidad y deuda técnica (Semanas 2–3):** eliminar el paquete duplicado `data/repository`, dividir pantallas de más de 20 KB en composables modulares y pasar `ignoreFailures` a `false` en Detekt/ktlint.
3. **Fase 3 — Testing (Semanas 4–6):** elevar el umbral de Kover del 7 % al 30 % y posteriormente al 50 %, añadiendo tests con `MockWebServer` para interceptores y tests para `SyncDiarioWorker`.
4. **Fase 4 — Arquitectura y rendimiento (Semanas 7–9):** dividir `AppModule.kt` por feature, migrar a rutas tipadas con `@Serializable` en Navigation Compose y añadir test de verificación de grafo Koin.
5. **Fases 5 y 6 — Accesibilidad, i18n y DevOps (Semanas 10–12):** completar revisión TalkBack, internacionalización completa ES/EN y ejecución de `qualityCheck` en cada PR.

!!! note "Estado de ejecución"
    [`PLAN-MEJORA.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/PLAN-MEJORA.md) constituye la hoja de ruta técnica de referencia; consulta el historial de commits e issues antes de asumir que una fase está cerrada.

<!-- TODO: confirmar qué puntos de PLAN-MEJORA.md están asignados para la siguiente iteración del equipo -->
<!-- TODO: confirmar la licencia aplicable al proyecto antes de su distribución pública -->

## Siguientes pasos

- Consulta [Seguridad y privacidad](seguridad-y-alcance.md) para el detalle de los puntos de la Fase 1.
- Revisa [Mantener la documentación](desarrollo/mantener-documentacion.md) para mantener este sitio sincronizado con cada cambio de código.

*[ADR]: Architecture Decision Record (Registro de decisión de arquitectura)
*[WCAG]: Web Content Accessibility Guidelines
*[PR]: Pull Request
*[UI]: User Interface (Interfaz de usuario)
