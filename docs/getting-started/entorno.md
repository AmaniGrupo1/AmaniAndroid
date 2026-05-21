# Configuración del Entorno de Desarrollo

Preparar tu máquina local para compilar el proyecto **AMANI Android** requiere seguir una serie de pasos precisos. Esta guía te orientará en el clonado del repositorio, la configuración de variables sensibles y la ejecución en el emulador.

Asegúrate de haber cumplido previamente con todos los puntos indicados en la sección de [Requisitos previos](requisitos.md) antes de comenzar este proceso.

## Pasos de Instalación y Despliegue

### 1. Clonar el Repositorio de Código

El primer paso es descargar todo el árbol del proyecto hacia tu entorno local mediante tu terminal o línea de comandos. 

```bash
# Navega hacia tu directorio de proyectos preferido
cd ~/AndroidStudioProjects/

# Clona el repositorio desde GitHub
git clone https://github.com/AmaniGrupo1/AmaniAndroid.git

# Accede a la raíz del proyecto recién clonado
cd AmaniAndroid
```

### 2. Configurar las Credenciales de Firebase

Por directivas de seguridad, la clave central de los servicios de Google no forma parte del historial de Git. Ubica tu archivo y cópialo en el módulo correspondiente:

```bash
# Mueve el documento JSON descargado desde la consola hacia el módulo de la app
cp ~/Descargas/google-services.json app/
```

### 3. Crear el Archivo de Propiedades Locales

El gestor de dependencias Gradle se nutre del archivo `local.properties` para inicializar el SDK y cargar variables de entorno seguras que no deben estar en el repositorio. Crea este documento y añade la dirección de tu SDK local junto a las variables.

```bash
# Crea o edita el archivo en la raíz del proyecto
nano local.properties
```

*(Si desconoces las variables obligatorias que deben figurar en este documento, consulta exhaustivamente la [página de Variables de Entorno](variables.md)).*

### 4. Sincronizar el Proyecto (Gradle Sync)

Una vez que hayas modificado todos los archivos de configuración, abre la carpeta en Android Studio. El entorno detectará los archivos KTS (Kotlin Script) y te solicitará sincronizar. También puedes forzarlo de manera manual desde la terminal si deseas descargar las bibliotecas de antemano:

```bash
./gradlew build --refresh-dependencies
```

### 5. Ejecución del Proyecto

Finalmente, cuando la sincronización haya culminado sin reportar errores semánticos, puedes lanzar el aplicativo en tu emulador configurado o directamente en tu dispositivo físico Android.

```bash
# Ejecuta la tarea de instalación de la variante de desarrollo (Debug)
./gradlew installDebug
```

!!! tip "Emuladores Recomendados"
    Si planeas probar la aplicación AMANI mediante la máquina virtual de Android Studio (AVD), es altamente recomendable utilizar un emulador configurado con la imagen de **Google APIs (API 34)**, dado que ciertos servicios dependientes de Firebase y mapas requieren acceso completo a la librería de Google Play Services instalada en el dispositivo destino.
