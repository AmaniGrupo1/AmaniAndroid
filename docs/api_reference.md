# Referencia de la API (Dokka)

La documentación detallada a nivel de código (KDocs) ha sido generada por Dokka.

Como esta documentación se genera de forma externa a MkDocs (en formato HTML puro), puedes acceder a ella directamente abriendo el siguiente enlace:

👉 **[Abrir Documentación de la API (Dokka)](api/index.html){target="_blank"}**

---
*Nota para desarrolladores: Recuerda que cada vez que actualices los comentarios KDoc en el código, debes volver a generar Dokka y copiar los archivos.*
```bash
./gradlew dokkaGeneratePublicationHtml
cp -r app/build/dokka/html/* docs/api/
```
