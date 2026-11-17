# Referencia Kotlin (KDoc / Dokka)

Esta página enlaza la documentación de API generada automáticamente con **Dokka (`2.0.0`)** a partir de los comentarios KDoc de [`app/src/main/java/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java) y la descripción de módulo en [`app/MODULE.md`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/MODULE.md).

## Configuración en el proyecto

Tanto [`app/build.gradle.kts`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/build.gradle.kts) como el script auxiliar [`docs/dokka-init.gradle`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/docs/dokka-init.gradle) registran el directorio `src/main/java` y `MODULE.md` para la tarea `:app:dokkaGeneratePublicationHtml`:

```kotlin title="app/build.gradle.kts"
dokka {
    moduleName.set("Amani Android")
    dokkaSourceSets.configureEach {
        sourceRoots.from(file("src/main/java"))
        includes.from("MODULE.md")
    }
}
```

## Generar la referencia en local

=== "Linux y macOS"

    ```bash title="terminal"
    ./gradlew -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml # (1)!
    mkdir -p docs/referencia/api-kotlin
    cp -R app/build/dokka/html/. docs/referencia/api-kotlin/ # (2)!
    ```

    1. Ejecuta Dokka generando la salida HTML en `app/build/dokka/html/`.
    2. Copia la documentación generada dentro de la ruta servida por MkDocs.

=== "Windows"

    ```powershell title="terminal"
    .\gradlew.bat -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml # (1)!
    New-Item -ItemType Directory -Force -Path docs/referencia/api-kotlin
    Copy-Item -Path app/build/dokka/html/* -Destination docs/referencia/api-kotlin/ -Recurse -Force # (2)!
    ```

    1. Genera la publicación HTML de Dokka desde PowerShell.
    2. Copia el árbol HTML al directorio `docs/referencia/api-kotlin/`.

[Abrir la referencia KDoc generada :material-open-in-new:](api-kotlin/index.html){ .md-button .md-button--primary }

!!! note "Disponibilidad en entorno local y CI"
    El enlace superior apunta a `docs/referencia/api-kotlin/index.html`, que el workflow [`.github/workflows/docs.yml`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/.github/workflows/docs.yml) construye y copia automáticamente antes de ejecutar `mkdocs build --strict`.

## Siguientes pasos

- Consulta [API y endpoints](api-endpoints.md) para ver las rutas HTTP declaradas en Retrofit.
- Revisa [Estructura del proyecto](../estructura-proyecto.md) para recorrer los paquetes documentados.

*[API]: Application Programming Interface
*[HTML]: HyperText Markup Language
*[CI]: Continuous Integration (Integración continua)
