# Despliegue

El repositorio automatiza la compilación/distribución Android, pero no contiene un procedimiento documentado para desplegar el backend.

## APK de depuración

`build_debug_apk.yml` compila `assembleDebug` en GitHub Actions para push y pull request a `main`, `master` y `develop`. El APK se publica como artefacto temporal de Actions.

## APK de release

`release_signed_apk.yml` se inicia con tags `v*` o manualmente. Necesita la configuración Firebase y firma proporcionadas al workflow mediante GitHub Secrets, compila `assembleRelease` y crea o actualiza un GitHub Release con el APK.

No se incluyen aquí comandos para desplegar servicios de backend, publicar reglas Firebase ni acceder a infraestructura: este repositorio no define un workflow de despliegue de backend.

<!-- TODO: habilitar GitHub Pages para publicar desde GitHub Actions en la configuración del repositorio -->
<!-- TODO: confirmar el responsable y procedimiento operativo para publicar una versión de producción -->
<!-- TODO: documentar el despliegue del backend en su repositorio de origen -->

## Siguientes pasos

Consulta [configuración y secretos](referencia/configuracion.md) y [calidad/CI](calidad-y-testing.md).
