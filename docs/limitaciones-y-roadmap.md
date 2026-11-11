# Limitaciones y roadmap

## Limitaciones conocidas

- Este repositorio contiene el cliente Android, no el backend REST ni una especificación OpenAPI.
- No se encontraron capturas de producto ni una demo pública versionada.
- La puesta en marcha compila la aplicación; validar flujos de datos requiere servicios y una cuenta de prueba que no se distribuyen en esta documentación.
- El README contiene algunos valores de configuración que difieren del build vigente. Esta documentación usa `app/build.gradle.kts` y los workflows como referencia.
- Detekt y ktlint toleran fallos; el umbral Kover configurado es del 7 %, pero no equivale a cobertura medida.
- `DECISIONES.md` contiene decisiones marcadas como pendientes de confirmación.

## Roadmap documentado

`PLAN-MEJORA.md` enumera propuestas de trabajo en seguridad/configuración, calidad, tests, arquitectura, accesibilidad/diseño y DevOps/documentación. Es un documento de planificación, no un compromiso ni un estado actualizado de ejecución. Entre sus propuestas se encuentran reforzar los tests de sincronización y ViewModels, revisar reglas de Firebase y reducir fallos ignorados por los linters.

<!-- TODO: confirmar qué propuestas de PLAN-MEJORA.md siguen vigentes y cuáles ya se completaron -->
<!-- TODO: añadir capturas de las pantallas funcionales que el equipo autorice publicar -->
<!-- TODO: enlazar el contrato OpenAPI del backend si está disponible fuera de este repositorio -->

## Pendientes de confirmación

- Entorno backend de desarrollo, cuenta de prueba ficticia y forma de seleccionar el backend.
- Especificación OpenAPI y modelo de datos remoto mantenidos por el equipo backend.
- Capturas o demo con información ficticia.
- Motivos históricos para elegir Koin, Retrofit y Firebase, si están documentados fuera del repositorio.
- Estado actual del roadmap y política de contribución, ramas y commits.
- Procedimiento seguro de configuración local y política para archivos de configuración Firebase y firma versionados.
- Revisión de permisos de backend/Firebase, privacidad, retención y tratamiento de datos.
- Activación de GitHub Pages, responsables del release y procedimiento de despliegue del backend.
- Licencia aplicable al proyecto.

## Siguientes pasos

Consulta [calidad y testing](calidad-y-testing.md), la [configuración](referencia/configuracion.md) o el [despliegue](despliegue.md).
