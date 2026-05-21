# Referencia de Variables de Entorno

La arquitectura de la aplicación **AMANI Android** está diseñada para inyectar todas las configuraciones críticas y credenciales sensibles al momento de la compilación utilizando el paradigma de los "Build Config Fields". 

Para prevenir fugas de secretos y garantizar que el código se comporte apropiadamente en tu entorno particular de desarrollo, todas estas claves maestras deben ser establecidas minuciosamente dentro de tu archivo `local.properties`, el cual se encuentra ignorado por diseño en el `.gitignore`.

## Tabla de Variables Necesarias

A continuación, se describen las variables principales que el compilador Gradle buscará dentro de tu documento de propiedades locales antes de armar y enlazar los módulos de la aplicación. Es crucial que completes todos estos registros, de lo contrario la aplicación simplemente no compilará o sufrirá colapsos de ejecución tempranos.

| Variable | Dónde se define | Descripción | Ejemplo de Valor |
| :--- | :--- | :--- | :--- |
| `sdk.dir` | `local.properties` | Ruta absoluta local a tu instalación nativa del Android SDK. Suele autogenerarse, pero es importante confirmarla. | `/Users/ivan/Library/Android/sdk` |
| `BASE_URL` | `local.properties` | La ruta principal del API REST desarrollada en Spring Boot. Puede ser la URL temporal del túnel o la dirección local del entorno de pruebas. | `"https://api.amani-project.es/"` |
| `FIREBASE_DATABASE_URL` | `local.properties` | URL del nodo europeo perteneciente a la Realtime Database utilizada para la orquestación del chat interno. | `"https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app/"` |
| `SENTRY_DSN` | `local.properties` | Identificador de origen de datos, entregado por la plataforma Sentry para direccionar los reportes de caídas (crashes). | `"https://ejemplo@o123.ingest.sentry.io/123"` |

## Excepciones Comunes

Si omites la creación de este archivo o cometes algún error tipográfico al momento de redactar las llaves de cada variable, la fase de sincronización te alertará con errores específicos.

!!! warning "Falta de Propiedad y Sintaxis"
    Presta mucha atención al escribir URLs, ya que los *Build Config Fields* de Gradle en Android exigen que los textos contengan comillas explícitas dentro del valor final. Si pones `BASE_URL=https://...` sin comillas, el compilador Kotlin lo interpretará erróneamente como código nativo y lanzará una dolorosa excepción de compilación de sintaxis en `BuildConfig.java`.

### Ejemplo completo de un archivo válido

Un archivo `local.properties` correctamente estructurado y sano para una máquina de desarrollo debería verse visualmente de la siguiente manera:

```properties
# Ruta automática del SDK
sdk.dir=/home/ivan/Android/Sdk

# Endpoints requeridos
BASE_URL="https://amani-backend.cloudflare.tunnel.com/"
FIREBASE_DATABASE_URL="https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app/"

# Tokens de reporte y seguimiento (Opcional en depuración, obligatorio en CI)
SENTRY_DSN="https://abcd1234efgh@o9999.ingest.us.sentry.io/8888"
```
