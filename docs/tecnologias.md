# Tecnologías y Herramientas (Pila Tecnológica)

Amani Android utiliza un conjunto moderno, seguro y eficiente de bibliotecas y herramientas basadas primordialmente en el ecosistema del lenguaje de programación nativo. A continuación, se detallan las principales bibliotecas que potencian su funcionamiento técnico y garantizan su rendimiento en entornos de producción.

## Interfaz de Usuario y Gráficos
La capa visual está construida íntegramente con componentes declarativos, reemplazando completamente el antiguo sistema basado en etiquetas XML.
- **Framework Principal**: Uso intensivo para todo el árbol visual, animaciones y gestión de los componentes.
- **Sistema de Diseño**: Adopción de la especificación oficial para garantizar componentes accesibles, consistentes y adaptables al tema del sistema del usuario.
- **Gestión de Imágenes**: Utilización de bibliotecas asíncronas ligeras que se integran de manera nativa con el marco declarativo para evitar saturación en la memoria gráfica.
- **Componentes Gráficos**: Implementación de gráficos avanzados y analíticas visuales mediante motores dedicados para interfaces fluidas.
- **Navegación Interna**: Enrutamiento seguro y fuertemente tipado para las transiciones entre diferentes flujos de la aplicación.

## Lógica, Asincronía y Tareas
- **Concurrencia Nativa**: Manejo moderno de procesos en segundo plano y gestión de la reactividad a través de flujos asíncronos.
- **Gestor de Trabajos**: Ejecución garantizada de tareas diferidas, integrándose con el sistema operativo para optimizar el consumo de batería durante sincronizaciones nocturnas.

## Gestión de Datos y Red
El acceso a los recursos remotos y el almacenamiento local se coordinan desde los repositorios de datos de la arquitectura (por ejemplo, `DiarioEmocionalRepository` o `AdminRepository`).

- **Comunicaciones HTTP**: Estándar absoluto para la comunicación externa con interfaces de red. Cuenta con un interceptor de registros para asegurar una trazabilidad completa en el entorno de depuración.
- **Almacenamiento Local**: Base de datos reactiva utilizada como sistema primario fuera de línea.
- **Preferencias Reactivas**: Reemplazo moderno y asíncrono para el almacenamiento de preferencias de sesión pequeñas y configuraciones del usuario.

## Inyección de Dependencias
El ensamblaje de módulos, la resolución de instancias y la provisión de repositorios a nivel global se gestionan exclusivamente con **Koin**. Este inyector es el estándar adoptado por el proyecto gracias a su naturaleza ligera, sintaxis nativa y total integración con los modelos de vista.

## Servicios en la Nube y Hardware
- **Gestión Multimedia**: Motor de reproducción altamente personalizable para servir cualquier contenido de audio y video interno.
- **Cámara Nativa**: Capa superior sobre la interfaz de hardware del dispositivo para capturar evidencias y facilitar lecturas de manera compatible con dispositivos antiguos y modernos.
- **Procesamiento Documental**: Generador de archivos de documento portátil para facturación y reportes locales.

!!! warning "Credenciales de Servicios Externos"
    La aplicación interactúa fuertemente con la plataforma Firebase y el SDK de Stripe. El archivo de configuración `google-services.json` así como las claves secretas de pago son extremadamente sensibles. Nunca las almacenes en el repositorio de código, solicita acceso al administrador de infraestructura si necesitas probar flujos de pago.
