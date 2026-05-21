# Glosario Técnico de AMANI

A lo largo del código fuente del repositorio y a través de toda esta enciclopedia técnica, se emplean acrónimos, terminologías o conceptos exclusivos propios del universo de desarrollo en Android y las tecnologías conexas seleccionadas para nuestra arquitectura.

Para garantizar un entendimiento global y agilizar la inclusión rápida de ingenieros y estudiantes emergentes a este Proyecto Final de Ciclo (PFC), esta tabla alfabetizada resume las definiciones en su estricto y riguroso contexto práctico.

| Término | Definición de Entorno Práctico |
| :--- | :--- |
| **Clean Architecture** | Filosofía que segrega estructuralmente la lógia de negocio, protegiéndola rotundamente ante cambios en bases de datos o interfaces visuales (UI). |
| **Composable** | Nodo fundamental o función de interfaz nativa construida bajo el marco Jetpack Compose para dibujar vistas visuales dependientes estrictamente de su estado reactivo local. |
| **Coroutine** | Elemento de subprocesamiento asíncrono liviano integrado por defecto en Kotlin, ejecutando demoras lógicas (ej. consultas de red HTTP) sin anular transacciones del hilo frontal gráfico. |
| **Custom Token Firebase** | Cadena alfanumérica criptográficamente forjada internamente en los dominios de nuestro propio backend con Spring Boot que brinda al cliente pases inmediatos hacia los nodos de la Realtime Database. |
| **DataSource** | Contrato de abstracción que delimita rígidamente una única vía de adquisición de datos crudos. Puede interactuar con elementos remotos (Retrofit/API) o conectores locales persistentes (DataStore). |
| **Flow** | Cauce o tubería asíncrona de datos en frío. Su propósito funcional es diseminar iterativamente las actualizaciones constantes arrojadas desde Firebase hacia la presentación visual en Android. |
| **Grafana** | Salpicadero unificado (*Dashboard*) que recopila y tabula registros centralizados del flujo proveniente del servidor de backend. |
| **JWT** | (JSON Web Token). Identificador seguro blindado devuelto tras el login exitoso, incrustado imperativamente mediante Interceptor en los cabezales HTTP. |
| **Koin** | Inyector modular liviano y declarativo, enteramente desprovisto de reflexiones dañinas o generadores pesados, preferido ampliamente sobre la alternativa rígida de Hilt. |
| **Loki** | Base de datos de logs crudos para la ingesta rápida generada por el entorno de desarrollo y monitorizado por Grafana. |
| **MVVM** | (Model-View-ViewModel). Sistema rector utilizado que separa implícitamente las intenciones visuales (botones táctiles) del procesamiento funcional retenido permanentemente por un modelo subyacente central. |
| **n8n** | Servidor autohospedado que actúa como orquestador automatizado y motor central de reacciones Webhook, conectando Sentry y la cuenta del desarrollador. |
| **Promtail** | Agente intermedio recolector, arrastrando las salidas continuas del backend central Spring Boot para empujarlas directamente hacia las cavernas de Loki. |
| **Repository** | Módulo intermedio y punto único de acceso, capaz de seleccionar entre múltiples orígenes dispersos (`DataSources`) para agrupar un ente único digerible. |
| **Retrofit** | Interfaz o cliente HTTP maestro oficial encargado de mapear y despachar rutas REST hacia las fronteras del puente de Cloudflare Tunnel. |
| **Sentry** | Analizador inteligente receptor de colisiones y caídas del aplicativo de cara al usuario. Notifica al webhook interconectado e inicia el registro sistemático remoto. |
| **StateFlow** | Variación explícita del flujo observable original, enfocada rigurosamente en poseer y despachar un estado visual inmutable global llamado `UiState` a las interfaces de Compose. |
| **UiState** | Contenedor encapsulador de variables informativas (*data class*) cuyo contenido dicta irrevocablemente el dibujado o renderizado gráfico definitivo de un componente. |
| **UseCase** | Clase interactora transaccional e inyectable que custodia lógicas del dominio de forma unitaria (ej: `GetSessionsUseCase`), bloqueando abusos e imprecisiones de los repositorios. |

!!! warning "Actualización del Glosario"
    Este diccionario debe evolucionar de la mano con las integraciones técnicas del código principal. Si se descarta un paradigma (por ejemplo, reemplazar el formato de base de datos) retira explícitamente su descripción de esta sección y reubica la entrada al changelog oficial.
