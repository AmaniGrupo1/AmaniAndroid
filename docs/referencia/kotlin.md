# Referencia Kotlin

El proyecto aplica Dokka 2.0.0. Debido a que el módulo Android no expone automáticamente un source set a Dokka, `dokka-init.gradle` registra explícitamente `app/src/main/java` y `app/MODULE.md` sin modificar la configuración de la aplicación.

La documentación HTML del código se genera con:

```bash
./gradlew -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml
```

La salida local observada por Gradle es `app/build/dokka/html/`. El workflow de documentación copia esa salida a `docs/referencia/api-kotlin/` para publicarla dentro del sitio.

[Abrir la referencia de API Kotlin generada](api-kotlin/index.html). La página aparece después de generar y copiar la salida de Dokka; consulta los comandos en [Contribuir a la documentación](../contribuir-documentacion.md).

## Siguientes pasos

Consulta la [referencia de endpoints](api-endpoints.md) para la API REST del cliente.
