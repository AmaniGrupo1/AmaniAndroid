# Firma e Identificación de Producción (Release)

Llegado el momento en el que el cliente de AMANI Android requiera cruzar los confines de la depuración y alcanzar los dispositivos reales ajenos o el catálogo de Google Play Store, es imperativo generar un objeto de compilación sellado con certificado inmutable y cifrado criptográficamente, comúnmente denominado *Release APK* o archivo maestro *App Bundle (AAB)*.

## Gestión de la Bóveda de Certificados (Keystore)

El certificado garante de autenticidad en Android se denomina `keystore`. Por políticas lógicas de extrema precaución de las identidades informáticas:

1. El archivo físico sellado del Keystore debe ser inyectado sutilmente mediante variables de entorno dinámicas provenientes de **GitHub Actions** hacia tu directorio temporal de ejecución del flujo lógico de Gradle.
2. Si un atacante secuestrase directamente las llaves maestras dentro del historial público o del volcado físico de tu repositorio, obtendría instantáneamente los permisos oficiales necesarios para forjar compilaciones piratas y lanzarlas reemplazando las aplicaciones genuinas de tus usuarios sin generar sospechas de sistema.

## Parámetros Ocultos Requeridos

Cuando prepares un contenedor en GitHub Actions para compilar el archivo maestro de Android oficial, asegúrate indiscutiblemente de declarar de manera ofuscada y privada las variables siguientes bajo la sección de "Secrets" del repositorio principal:

- `KEYSTORE_FILE`: Cadena de bytes ofuscada (en formato Base64) proveniente del propio archivo binario `keystore`.
- `KEY_ALIAS`: Apodo identificativo específico seleccionado manualmente al momento del forjado primario de la clave asimétrica.
- `KEY_PASSWORD`: Clave textual particular correspondiente a la identificación de firma del Alias descrito anteriormente.
- `STORE_PASSWORD`: Contraseña guardiana y global maestra perteneciente al contenedor externo completo (Keystore).

## Generación Manual en Modo Local

Para los escenarios lógicos donde el pipeline central remoto falle de manera inestable y requieras forzosamente extraer temporalmente un APK firmado limpio desde las entrañas de tu máquina particular de desarrollo:

1. Ubica tu documento criptográfico `keystore` en un directorio local sumamente fiable (lejos de tu control de versiones actual).
2. Interviene la inicialización o añade las cuatro directivas a las profundidades de tu documento general ignorado `local.properties`.
3. Fuerza y despacha la directiva general emitiendo orden compilatoria mediante el administrador nativo de línea de comando:

```bash
# Empaquetar un APK
./gradlew assembleRelease

# Ensamblar el formato moderno exigido (App Bundle)
./gradlew bundleRelease
```

!!! warning "Protección Extrema de Identidades de Publicación"
    Jamás compartas capturas fotográficas de pantalla, fragmentos lógicos explícitos ni transcripciones documentales que revelen tus variables exactas o contraseñas maestras correspondientes a la capa del Keystore. La revelación de la llave global conlleva invariablemente la pérdida automática y definitiva de control oficial de tu cuenta en la consola de Google Play Store.
