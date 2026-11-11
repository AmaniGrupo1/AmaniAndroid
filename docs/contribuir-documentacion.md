# Contribuir a la documentación

La documentación se mantiene en `docs/`, se configura en `mkdocs.yml` y usa las dependencias fijadas en `requirements-docs.txt`.

## Ejecutarla en local

Con Python 3 disponible:

```bash
python3 -m venv venv
source venv/bin/activate
python -m pip install -r requirements-docs.txt
./gradlew -I docs/dokka-init.gradle :app:dokkaGeneratePublicationHtml
test -s app/build/dokka/html/index.html
mkdir -p docs/referencia/api-kotlin
cp -R app/build/dokka/html/. docs/referencia/api-kotlin/
mkdocs serve
```

MkDocs muestra en la terminal la dirección local donde sirve el sitio. La carpeta de referencia Kotlin generada está ignorada por Git. Para comprobar el build estricto:

```bash
mkdocs build --strict
```

## Criterios de edición

- Contrasta rutas, comandos y configuración con el código/workflows vigentes.
- Usa español, títulos jerárquicos, un solo H1 y ejemplos con datos ficticios.
- No publiques contraseñas, tokens, datos personales, configuraciones Firebase ni claves de firma.
- Registra información que no puedas verificar con comentarios `<!-- TODO: confirmar ... -->`.
- Añade la página al `nav` si creas una nueva y verifica que todos los enlaces internos resuelvan.
- El workflow `docs.yml` valida en cada pull request y publica cuando hay un push a `main`.

## Siguientes pasos

Consulta la [arquitectura](arquitectura.md) y el [alcance conocido](limitaciones-y-roadmap.md) para mantener el contexto técnico.
