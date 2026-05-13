# Guía de Diseño Oficial — AMANI Psicología (Material Design 3)

Este documento establece los estándares visuales, de interacción y de arquitectura de diseño para el ecosistema **AMANI**. Basado estrictamente en la especificación [Material Design 3 (M3)](https://m3.material.io), esta guía asegura una experiencia cohesiva, accesible y adaptable en todas las plataformas.

---

## Índice Navegable

1.  [Visión General](#1-visión-general)
2.  [Sistema de Color (Color System)](#2-sistema-de-color-color-system)
3.  [Tipografía (Type Scale)](#3-tipografía-type-scale)
4.  [Elevación y Sombras (Elevation)](#4-elevación-y-sombras-elevation)
5.  [Formas (Shape System)](#5-formas-shape-system)
6.  [Espaciado y Grid](#6-espaciado-y-grid)
7.  [Iconografía](#7-iconografía)
8.  [Componentes (Component Inventory)](#8-componentes-component-inventory)
9.  [Movimiento y Animación (Motion)](#9-movimiento-y-animación-motion)
10. [Accesibilidad](#10-accesibilidad)
11. [Tokens de Diseño (Design Tokens)](#11-tokens-de-diseño-design-tokens)
12. [Guía de Implementación](#12-guía-de-implementación)

---

## 1. Visión General

### Nombre del Proyecto
**AMANI Psicología y Bienestar**

### Descripción Breve
AMANI es una plataforma de salud mental diseñada para conectar a pacientes con psicólogos profesionales, facilitando la gestión de terapias, seguimiento emocional (diario) y comunicación fluida. El diseño busca transmitir calma, seguridad y profesionalismo.

### Principios de Diseño
Basados en la filosofía de Material Design 3:

*   **Expresividad:** Uso de color y tipografía para guiar al usuario emocionalmente. El "Lila Amani" es el núcleo de la identidad.
*   **Accesibilidad por Defecto:** Contraste garantizado y objetivos de toque optimizados para usuarios en estados de vulnerabilidad emocional o estrés.
*   **Adaptabilidad:** Interfaz que responde a diferentes tamaños de pantalla y configuraciones de usuario (modo oscuro, fuentes grandes, colores dinámicos).
*   **Familiaridad:** Uso de patrones estándar de Android y Web para reducir la carga cognitiva.

### Plataformas Objetivo
*   **Android:** Implementación nativa con Jetpack Compose (Referencia principal).
*   **Web:** Panel de administración y psicólogos (Material Web Components).
*   **iOS/Desktop:** Futuras expansiones mediante Kotlin Multiplatform.

---

## 2. Sistema de Color (Color System)

AMANI utiliza el sistema de color dinámico de M3, donde los colores se derivan de una "semilla" para generar una paleta tonal armónica.

> [!NOTE]
> La paleta de AMANI está diseñada para soportar **Dynamic Color** en Android 12+. Si el sistema lo permite, los colores se adaptarán al fondo de pantalla del usuario, manteniendo los roles semánticos.

### Roles de Color Principales

| Rol | Uso | Light (Hex) | Dark (Hex) |
| :--- | :--- | :--- | :--- |
| `primary` | Color principal de marca, botones clave. | `#CCC0E4` | `#9B8CBF` |
| `on-primary` | Texto/iconos sobre color primario. | `#1C1B1F` | `#FFFFFF` |
| `primary-container` | Fondos de elementos destacados. | `#CCC0E4` | `#9B8CBF` |
| `on-primary-container`| Texto sobre contenedores primarios. | `#1C1B1F` | `#FFFFFF` |

### Roles Secundarios y Terciarios

| Rol | Uso | Light (Hex) | Dark (Hex) |
| :--- | :--- | :--- | :--- |
| `secondary` | Acentos menos prominentes, chips. | `#9B8CBF` | `#CCC0E4` |
| `on-secondary` | Contraste sobre secundario. | `#FFFFFF` | `#1C1B1F` |
| `tertiary` | Acentos contrastantes (Bienestar/Fucsia). | `#7B5C9E` | `#EADDFF` |
| `tertiary-container` | Contenedores para consejos/frases. | `#EADDFF` | `#7B5C9E` |

### Roles de Superficie y Fondo

M3 introduce niveles de superficie para definir la jerarquía sin depender solo de sombras.

| Rol | Uso | Light (Hex) | Dark (Hex) |
| :--- | :--- | :--- | :--- |
| `surface` | Superficie base de la app. | `#FFFFFBFE` | `#1C1B1F` |
| `surface-container-low` | Fondos de Scaffold/Listas. | `#F7F2FA` | `#1A1A1F` |
| `surface-container` | Tarjetas estándar. | `#F3EDF7` | `#1E1E23` |
| `surface-container-high` | Diálogos y Menús. | `#EDE8F2` | `#29282E` |
| `outline` | Bordes de TextFields y separadores. | `#1C1B1F` | `#FFFFFF` |
| `outline-variant` | Bordes suaves, divisores. | `#1C1B1F60` | `#FFFFFF60` |

### Tokens CSS (Custom Properties)

```css
:root {
  --md-sys-color-primary: #CCC0E4;
  --md-sys-color-on-primary: #1C1B1F;
  --md-sys-color-primary-container: #CCC0E4;
  --md-sys-color-surface: #FFFBFE;
  --md-sys-color-surface-container: #F3EDF7;
  --md-sys-color-outline: #1C1B1F;
  /* ... resto de tokens */
}
```

---

## 3. Tipografía (Type Scale)

AMANI utiliza una combinación de tres familias tipográficas para diferenciar la marca, los encabezados y la lectura.

### Familias
*   **Nunito:** Para títulos de marca y pantallas principales (Expresiva).
*   **Barlow Condensed:** Para encabezados técnicos y listas (Estructurada).
*   **Roboto:** Para lectura general, formularios y etiquetas (Legibilidad).

### Escala M3 Completa

| Rol | Font Family | Weight | Size | Line Height | Tracking |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `Display Large` | Nunito | Normal | 57sp | 64sp | -0.25 |
| `Display Medium`| Nunito | Normal | 45sp | 52sp | 0 |
| `Headline Large`| Barlow | Normal | 32sp | 40sp | 0 |
| `Headline Small`| Roboto | Normal | 24sp | 32sp | 0 |
| `Title Large` | Nunito | Normal | 22sp | 28sp | 0 |
| `Title Medium` | Roboto | Medium | 16sp | 24sp | +0.15 |
| `Body Large` | Roboto | Normal | 16sp | 24sp | +0.5 |
| `Body Medium` | Roboto | Normal | 14sp | 20sp | +0.25 |
| `Label Large` | Roboto | Bold | 14sp | 20sp | +0.1 |

### Tokens CSS
```css
--md-sys-typescale-display-large-font: 'Nunito', sans-serif;
--md-sys-typescale-display-large-size: 57px;
--md-sys-typescale-body-medium-font: 'Roboto', sans-serif;
```

---

## 4. Elevación y Sombras (Elevation)

En M3, la elevación se representa principalmente mediante un **tinte de superficie** (`surface tint`) y, de forma secundaria, mediante sombras.

| Nivel | Elevación (dp) | Uso Recomendado | Tinte de Color |
| :--- | :--- | :--- | :--- |
| `Level 0` | 0dp | Fondo de pantalla plano. | 0% |
| `Level 1` | 1dp | Tarjetas (Card), Search bars. | 5% Primary |
| `Level 2` | 3dp | Tarjetas elevadas (Elevated Card). | 8% Primary |
| `Level 3` | 6dp | Top App Bar (en scroll), FAB. | 11% Primary |
| `Level 4` | 8dp | Menús desplegables. | 12% Primary |
| `Level 5` | 12dp | Diálogos de alerta. | 14% Primary |

> [!TIP]
> No uses sombras pesadas. Prefiere el cambio de color de superficie para indicar profundidad.

---

## 5. Formas (Shape System)

M3 utiliza formas muy redondeadas para transmitir amabilidad y modernidad.

| Familia | Radio (dp) | Componentes |
| :--- | :--- | :--- |
| `None` | 0dp | Bordes de pantalla (si aplica). |
| `Extra Small` | 4dp | Tooltips, Campos de texto (borde inf). |
| `Small` | 8dp | Chips, Menús pequeños. |
| `Medium` | 12dp | Tarjetas (Cards), Diálogos pequeños. |
| `Large` | 16dp | Navegación lateral (Drawer), FAB. |
| `Extra Large` | 28dp | Diálogos, Bottom Sheets. |
| `Full` | 50% / Circle | Botones (Pill shape), Avatares. |

---

## 6. Espaciado y Grid

### Grid Base: 4dp
Todo el espaciado debe ser múltiplo de 4dp. Los valores estándar son: `4, 8, 12, 16, 24, 32, 48, 64`.

### Layout Grid por Breakpoint

| Atributo | Compact (<600) | Medium (600-840) | Expanded (>840) |
| :--- | :--- | :--- | :--- |
| Columnas | 4 | 12 | 12 |
| Margen Lat. | 16dp | 24dp | 24dp |
| Gutter | 16dp | 24dp | 24dp |

---

## 7. Iconografía

### Estilo: Material Symbols
AMANI utiliza el estilo **Outlined** para estados inactivos y **Filled** para estados activos (especialmente en navegación).

*   **Optical Size:** 24px (predeterminado).
*   **Weight:** 400 (regular).
*   **Grade:** 0.
*   **Tamaños Permitidos:**
    *   `20dp`: Iconos dentro de botones pequeños.
    *   `24dp`: Barra de navegación, formularios.
    *   `48dp`: Iconos ilustrativos o estados vacíos.

---

## 8. Componentes (Component Inventory)

### Button
*   **Variantes:**
    *   `Filled`: Acción principal (Iniciar sesión). Forma: Pill (Full).
    *   `Tonal`: Acciones secundarias importantes.
    *   `Outlined`: Acciones de importancia media (Editar perfil).
    *   `Text`: Acciones terciarias (Olvidé mi contraseña).
*   **Estados:** Enabled, Hovered (10% overlay), Focused, Pressed (12% overlay), Disabled (38% opacity).

### TextField (Outlined)
*   **Uso:** Formularios de registro y diario.
*   **Geometría:** 4dp de radio superior en filled, o 4dp general en outlined (M3 default).
*   **Tokens:** `--md-sys-color-primary` para el foco.

### NavigationBar (Bottom Bar)
*   **Uso:** Navegación principal en móviles.
*   **Altura:** 80dp.
*   **Comportamiento:** 3-5 destinos. Mostrar siempre etiquetas.
*   **Selección:** Indicador en forma de píldora sobre el icono.

### Cards
*   **Elevated:** Para contenido dinámico (Citas próximas).
*   **Filled:** Para secciones informativas (Biografía).
*   **Outlined:** Para listas de selección de especialidades.

---

## 9. Movimiento y Animación (Motion)

El movimiento en AMANI debe sentirse natural y no intrusivo.

### Duraciones (Tokens M3)
*   `Short`: 50ms - 200ms (Feedbacks de toque, hover).
*   `Medium`: 250ms - 400ms (Apertura de menús, transiciones de iconos).
*   `Long`: 450ms - 600ms (Transiciones de pantalla completa).

### Curvas de Easing
*   **Emphasized:** (Default) Entrada rápida, salida lenta.
*   **Standard:** Movimiento predecible y suave.

---

## 10. Accesibilidad

### Ratios de Contraste
*   Texto normal: 4.5:1 mínimo.
*   Texto grande / Iconos: 3:1 mínimo.

### Objetivos de Toque
Mínimo **48x48dp** para cualquier elemento interactivo, incluso si el icono visual es de 24dp (usar padding interno).

### Semántica
*   Cada pantalla debe tener un encabezado único.
*   Los botones deben tener descripciones claras (no usar "clic aquí").

---

## 11. Design Tokens (Tabla Completa)

| Token | Valor Light | Valor Dark | Aplicación |
| :--- | :--- | :--- | :--- |
| `sys.color.primary` | `#CCC0E4` | `#9B8CBF` | Acciones principales |
| `sys.color.error` | `#BA1A1A` | `#FFDAD6` | Errores críticos |
| `sys.shape.corner.medium` | `12dp` | `12dp` | Cards |
| `sys.typescale.label.small` | `11sp` | `11sp` | Etiquetas de navegación |

---

## 12. Guía de Implementación

### Android (Jetpack Compose)
Implementación del `MaterialTheme` en AMANI:

```kotlin
MaterialTheme(
    colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme,
    typography = AmaniTypography,
    shapes = AmaniShapes,
    content = content
)
```

### Web (CSS Custom Properties)
```css
body {
  background-color: var(--md-sys-color-background);
  color: var(--md-sys-color-on-background);
  font-family: var(--md-sys-typescale-body-large-font);
}
```

> [!WARNING]
> Nunca uses colores HEX directamente en los componentes. Usa siempre los tokens del sistema para asegurar la compatibilidad con el modo oscuro.

---
*Referencia oficial: [Material Design 3 Spec](https://m3.material.io)*
