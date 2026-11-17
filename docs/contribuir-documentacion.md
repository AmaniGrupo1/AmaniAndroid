# Contribuir a la documentación

Esta guía explica cómo ejecutar y validar localmente el sitio MkDocs definido en [`mkdocs.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/mkdocs.yml) y [`requirements-docs.txt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/requirements-docs.txt), así como su integración con Dokka ([`docs/dokka-init.gradle`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/docs/dokka-init.gradle)).

## Ejecutar y previsualizar en local

=== "Linux y macOS"

    ```bash title="terminal"
    python3 -m venv venv
    source venv/bin/activate
    python -m pip install -r requirements-docs.txt # (1)!
    ./gradlew -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml # (2)!
    mkdir -p docs/referencia/api-kotlin
    cp -R app/build/dokka/html/. docs/referencia/api-kotlin/
    mkdocs serve # (3)!
    ```

    1. Instala `mkdocs<2`, `mkdocs-material` y los plugins requeridos por [`DESIGN.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/DESIGN.md).
    2. Genera la referencia HTML de Kotlin mediante el script de inicialización de Dokka sin alterar `app/build.gradle.kts`.
    3. Inicia el servidor local con recarga en vivo en `http://127.0.0.1:8000`.

=== "Windows"

    ```powershell title="terminal"
    python -m venv venv
    .\venv\Scripts\activate
    python -m pip install -r requirements-docs.txt # (1)!
    .\gradlew.bat -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml # (2)!
    New-Item -ItemType Directory -Force -Path docs/referencia/api-kotlin
    Copy-Item -Path app/build/dokka/html/* -Destination docs/referencia/api-kotlin/ -Recurse -Force
    mkdocs serve # (3)!
    ```

    1. Instala las dependencias de MkDocs y Material en el entorno virtual.
    2. Ejecuta Dokka para generar la referencia HTML del código Kotlin.
    3. Levanta el servidor local de previsualización.

Para comprobar que la compilación del sitio no produce advertencias ni enlaces rotos:

```bash title="terminal"
mkdocs build --strict # (1)!
```

1. Falla si existen enlaces internos rotos, páginas huérfanas o avisos de configuración.

!!! tip "Carpeta generada por Dokka"
    El directorio `docs/referencia/api-kotlin/` se genera durante la compilación y está ignorado en [`docs/.gitignore`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/docs/.gitignore) para no versionar artefactos HTML derivados.

## Criterios de edición

- Contrasta siempre rutas, comandos y propiedades con el código fuente y los workflows vigentes en [`.github/workflows/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/.github/workflows).
- Escribe en español conservando los términos técnicos de Android en inglés (`ViewModel`, `Composable`, `StateFlow`, `Room`, `DataStore`).
- Mantén un único `# H1` por página, diagramas Mermaid de hasta 15 nodos, fragmentos reales de código de hasta 15 líneas y un máximo de dos admoniciones (`note`, `tip`, `warning`) por página.
- La marca del sitio está en [`DESIGN.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/DESIGN.md) y `docs/stylesheets/extra.css`: acento `#635A79` / `#CDC1E5`, Inter y JetBrains Mono. No sustituyas el logo de `docs/assets/logo.png` por un gráfico inventado.
- No publiques contraseñas, tokens JWT, datos personales, configuraciones reales de Firebase ni claves de firma.
- Registra cualquier dato que requiera validación externa con comentarios `<!-- TODO: confirmar ... -->`.

## Siguientes pasos

- Consulta [Mantener la documentación](desarrollo/mantener-documentacion.md) para ver el mapa "si cambias X, actualiza Y" y la lista de comprobación previa a cada PR.
- Revisa la [Arquitectura](arquitectura.md) y [Decisiones y roadmap](limitaciones-y-roadmap.md) para mantener el contexto técnico.

*[HTML]: HyperText Markup Language
*[JWT]: JSON Web Token
*[PR]: Pull Request
*[CI]: Continuous Integration (Integración continua)
