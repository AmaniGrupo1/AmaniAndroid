# Requisitos Previos

Antes de poder descargar, compilar y ejecutar el cliente Android de la plataforma **AMANI** en tu entorno de desarrollo local, es indispensable asegurar que tu sistema cumpla con una serie de dependencias técnicas de software y configuraciones externas. 

Ignorar cualquiera de estos requisitos podría resultar en errores de compilación durante la etapa de construcción de Gradle o en una inicialización fallida al momento de lanzar la aplicación en tu dispositivo.

## Herramientas de Desarrollo

- **Entorno de Desarrollo Integrado (IDE)**: Es obligatorio contar con **Android Studio Hedgehog** (o cualquier versión superior estable). Versiones más antiguas carecen del soporte necesario para las últimas iteraciones de los plugins de Gradle o las vistas dinámicas de Jetpack Compose requeridas por la aplicación.
- **Java Development Kit (JDK)**: El proyecto debe compilarse forzosamente utilizando **JDK 17**. El uso de JDK 11 ocasionará fallos en los analizadores estáticos y el uso de versiones más modernas podría no ser totalmente compatible con la versión de Koin utilizada.

## SDK y Nivel de API

- **API Mínima Soportada**: El proyecto tiene configurado su nivel mínimo en Android SDK API 26 (Android 8.0 Oreo). Las características de compatibilidad en red y manejo de fecha y hora nativa (Java Time) dependen profundamente de este límite.
- **API Objetivo**: El `targetSdk` del proyecto es la API 34 (Android 14), asegurando total cumplimiento con las recientes políticas de la tienda de aplicaciones.

## Servicios en la Nube y Autenticación

El ecosistema AMANI depende de varios servicios administrados. Para conectarse y compilar correctamente, necesitas:

1. **Cuenta Activa de Firebase**: Tu correo electrónico de desarrollador debe ser invitado y contar con acceso formal al proyecto de Firebase `amani-160bf`.
2. **Archivo de Configuración de Google**: Necesitarás descargar obligatoriamente el archivo `google-services.json` correspondiente al cliente Android desde la consola de Firebase. Por estrictos motivos de seguridad de la información, este documento jamás debe ser subido al repositorio principal de código fuente de GitHub.

!!! warning "Seguridad de Servicios"
    El documento `google-services.json` contiene la llave privada de la base de datos de Firebase. Si lo filtras accidentalmente en una rama pública, expondrás las reglas de lectura de la Realtime Database.

## Infraestructura Backend

Dado que el motor principal de AMANI (Spring Boot) se hospeda remotamente, existen dos métodos principales para que el cliente Android alcance la red backend en etapas tempranas de desarrollo o depuración local:

- **Acceso mediante VPN**: Configurando la red privada virtual que te proporciona el túnel directo hacia el entorno de desarrollo seguro del instituto.
- **Cloudflare Tunnel**: Utilizando el túnel reverso temporal para enrutar el puerto `8080` de forma cifrada cuando desarrollas fuera de la red local del laboratorio.
