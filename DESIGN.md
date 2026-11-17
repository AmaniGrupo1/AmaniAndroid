# DESIGN.md: Guía de diseño visual de la documentación MkDocs

## 1. Objetivo y principios
Que la documentación parezca un producto moderno y cuidado, no la plantilla por defecto. Quien la revise debe entender el proyecto en menos de un minuto.

- **Espacio y jerarquía:** mucho aire, títulos claros, párrafos cortos.
- **Un solo color de acento** más neutros. Nada de arcoíris.
- **Tipografía limpia:** Inter para texto y JetBrains Mono para código.
- **Consistencia:** mismos radios, bordes y espaciados en todos los componentes.
- **Sobriedad:** pocos emojis, sin decoración que no aporte.
- **Modo claro y oscuro** igual de cuidados.
- **Móvil primero:** nada debe desbordar a 375 px de ancho.

## 2. Dependencias (`requirements-docs.txt`)
```text
mkdocs<2
mkdocs-material[imaging]>=9.7,<9.8
mkdocs-glightbox
mkdocs-minify-plugin
mkdocs-git-revision-date-localized-plugin
```
`mkdocs<2` es obligatorio: Material no es compatible con MkDocs 2.0.

## 3. mkdocs.yml (tema, plugins y extensiones)
```yaml
site_url: https://<usuario>.github.io/<repo>/   # obligatorio para navigation.instant

theme:
  name: material
  language: es
  font:
    text: Inter
    code: JetBrains Mono
  palette:
    - media: "(prefers-color-scheme: light)"
      scheme: default
      primary: custom
      accent: custom
      toggle:
        icon: material/weather-night
        name: Cambiar a modo oscuro
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      primary: custom
      accent: custom
      toggle:
        icon: material/weather-sunny
        name: Cambiar a modo claro
  icon:
    repo: fontawesome/brands/github
  features:
    - navigation.instant
    - navigation.instant.prefetch
    - navigation.instant.progress
    - navigation.tracking
    - navigation.tabs
    - navigation.tabs.sticky
    - navigation.sections
    - navigation.indexes
    - navigation.path
    - navigation.top
    - navigation.footer
    - toc.follow
    - search.suggest
    - search.highlight
    - search.share
    - content.code.copy
    - content.code.annotate
    - content.tabs.link
    - content.tooltips
    - content.action.edit

extra_css:
  - stylesheets/extra.css

plugins:
  - search
  - glightbox
  - minify:
      minify_html: true
  - git-revision-date-localized:
      enable_creation_date: false
      fallback_to_build_date: true
      enable_git_follow: false
  # Opcional: tarjetas para redes sociales. Necesita libcairo en el CI.
  # - social

markdown_extensions:
  - abbr
  - admonition
  - attr_list
  - def_list
  - footnotes
  - md_in_html
  - tables
  - toc:
      permalink: true
  - pymdownx.betterem
  - pymdownx.caret
  - pymdownx.details
  - pymdownx.emoji:
      emoji_index: !!python/name:material.extensions.emoji.twemoji
      emoji_generator: !!python/name:material.extensions.emoji.to_svg
  - pymdownx.highlight:
      anchor_linenums: true
      line_spans: __span
      pygments_lang_class: true
  - pymdownx.inlinehilite
  - pymdownx.keys
  - pymdownx.mark
  - pymdownx.snippets
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:pymdownx.superfences.fence_code_format
  - pymdownx.tabbed:
      alternate_style: true
  - pymdownx.tasklist:
      custom_checkbox: true
  - pymdownx.tilde
```
En el CI, `git-revision-date-localized` necesita `fetch-depth: 0` en `actions/checkout`.

## 4. docs/stylesheets/extra.css
```css
/* ---------- Paleta ---------- */
[data-md-color-scheme="default"] {
  --md-primary-fg-color: #fdf8fb;          /* superficie Amani */
  --md-primary-bg-color: #1c1b1d;
  --md-primary-bg-color--light: #49454d;
  --md-accent-fg-color: #635a79;
  --md-typeset-a-color: #635a79;
  --md-code-bg-color: #f4eff4;
}
[data-md-color-scheme="slate"] {
  --md-default-bg-color: #141315;
  --md-primary-fg-color: #141315;
  --md-primary-bg-color: #e6e1e4;
  --md-primary-bg-color--light: #cac4cd;
  --md-accent-fg-color: #cdc1e5;
  --md-typeset-a-color: #cdc1e5;
  --md-code-bg-color: #111832;
}

/* ---------- Layout y tipografía ---------- */
.md-grid { max-width: 74rem; }
.md-typeset h1 { font-weight: 700; letter-spacing: -0.025em; }
.md-typeset h2 { font-weight: 650; letter-spacing: -0.015em; margin-top: 2.2em; }
.md-typeset h3 { font-weight: 600; }

/* ---------- Cabecera ---------- */
.md-header { box-shadow: none; }
.md-tabs { border-bottom: 1px solid var(--md-default-fg-color--lightest); }

/* ---------- Código ---------- */
.md-typeset .highlight {
  border: 1px solid var(--md-default-fg-color--lightest);
  border-radius: 0.6rem;
  overflow: hidden;
}
.md-typeset code { border-radius: 0.3rem; }

/* ---------- Admoniciones ---------- */
.md-typeset .admonition,
.md-typeset details { border-radius: 0.6rem; box-shadow: none; }

/* ---------- Tarjetas ---------- */
.md-typeset .grid.cards > ul > li {
  border: 1px solid var(--md-default-fg-color--lightest);
  border-radius: 0.6rem;
  box-shadow: none;
  transition: border-color 0.15s;
}
.md-typeset .grid.cards > ul > li:hover {
  border-color: var(--md-accent-fg-color);
}

/* ---------- Botones ---------- */
.md-typeset .md-button { border-radius: 0.5rem; font-weight: 600; }
.md-typeset .md-button--primary {
  background: var(--md-accent-fg-color);
  border-color: var(--md-accent-fg-color);
  color: #fff;
}

/* ---------- Hero de la portada ---------- */
.hero { padding: 3.5rem 0 2.5rem; text-align: center; }
.hero h1 { font-size: 2.6rem; line-height: 1.1; margin: 0 0 0.8rem; }
.hero p {
  font-size: 1.05rem;
  color: var(--md-default-fg-color--light);
  max-width: 40rem;
  margin: 0 auto 1.5rem;
}
.hero .md-button { margin: 0.25rem; }
@media (max-width: 44.9375em) { .hero h1 { font-size: 2rem; } }

/* ---------- Accesibilidad ---------- */
@media (prefers-reduced-motion: reduce) {
  * { transition: none !important; animation: none !important; }
}
```

## 5. Portada (`docs/index.md`)
```markdown
---
title: Inicio
hide:
  - navigation
  - toc
---

<div class="hero" markdown>

# Nombre del proyecto

Una frase que diga qué resuelve y para quién.

[Empezar :material-arrow-right:](primeros-pasos/index.md){ .md-button .md-button--primary }
[Ver en GitHub :fontawesome-brands-github:](https://github.com/usuario/repo){ .md-button }

</div>

<div class="grid cards" markdown>

-   :material-rocket-launch:{ .lg .middle } **Puesta en marcha**

    ---

    El proyecto funcionando en local en pocos comandos.

    [:octicons-arrow-right-24: Primeros pasos](primeros-pasos/index.md)

-   :material-sitemap:{ .lg .middle } **Arquitectura**

    ---

    Componentes, flujo de datos y decisiones técnicas.

    [:octicons-arrow-right-24: Ver arquitectura](arquitectura/index.md)

-   :material-api:{ .lg .middle } **Referencia**

    ---

    Endpoints, modelo de datos y configuración.

    [:octicons-arrow-right-24: Ver referencia](referencia/index.md)

</div>
```
La portada incluye: hero, tres a seis tarjetas, una captura o demo y una fila con el stack. Nada más.

## 6. Patrones de contenido
- **Varios sistemas operativos o lenguajes:** pestañas de contenido (`=== "Linux"`), no párrafos repetidos.
- **Comandos:** bloque de código con lenguaje y título (`title="terminal"`). Usar anotaciones `(1)` para explicar líneas.
- **Avisos:** `note`, `tip` y `warning`. Máximo dos por página.
- **Capturas:** con glightbox, ancho máximo del contenido y texto alternativo. Para versión clara y oscura: `![Alt](img-light.png#only-light)` y `![Alt](img-dark.png#only-dark)`.
- **Diagramas:** Mermaid, sin colores forzados (Material los adapta al modo claro/oscuro).
- **Términos técnicos:** abreviaturas con tooltip (`*[API]: Application Programming Interface`).
- **Iconos:** solo los de Material o FontAwesome (`:material-...:`), con sentido y no como adorno.

## 7. Navegación
- Máximo 6 pestañas superiores, con nombres de una o dos palabras.
- Máximo 3 niveles de profundidad. Cada sección tiene su `index.md`.
- Orden de las pestañas: Inicio, Primeros pasos, Arquitectura, Guías, Referencia, Desarrollo.
- Cada página termina con enlaces a las siguientes lecturas.

## 8. Accesibilidad y rendimiento
- Contraste mínimo WCAG AA en ambos modos.
- Imágenes en WebP o PNG optimizado, con `alt` descriptivo.
- Un solo H1 por página.
- Objetivo: puntuación de Lighthouse por encima de 90 en rendimiento y accesibilidad.

## 9. Reglas y verificación
- No usar `overrides/` ni plantillas propias salvo que sea imprescindible.
- No usar `!important` (salvo en `prefers-reduced-motion`).
- No inventar logo ni capturas. Wordmark: `docs/assets/logo.png`. Icono de cabecera y favicon: `docs/assets/favicon.png` (flor y mano del mismo original). Las capturas de pantalla siguen pendientes.
- Comprobar antes de cerrar: `mkdocs build --strict` sin avisos, sin scroll horizontal a 375 px, modo claro y oscuro revisados, portada con hero y tarjetas, navegación coherente.
- Si no puedes renderizar la web, lista en el resumen final qué debe revisar el usuario visualmente.