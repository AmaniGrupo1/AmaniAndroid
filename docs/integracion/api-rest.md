# Conexión REST (Retrofit)

El núcleo funcional de la sincronización de expedientes, generación de turnos, y persistencia de reportes entre el cliente Android de AMANI y el cerebro central escrito en Java (Spring Boot) se logra a través de peticiones HTTP. 

La biblioteca elegida como estándar de la industria es **Retrofit**, respaldada por el inyector nativo y el cliente de transporte estricto **OkHttp**.

## Infraestructura de Enrutamiento

Durante las fases iniciales de desarrollo local o pruebas pre-producción de este PFC, la dirección del backend suele ser inestable debido a que el servidor de la institución carece de IP pública expuesta directamente. Por ende, la URL central de Retrofit se inyecta utilizando **Cloudflare Tunnel**, lo que garantiza un flujo HTTPS encriptado hacia un servidor Spring Boot expuesto en `localhost:8080`.

Esta dirección está parametrizada dinámicamente mediante la variable `BASE_URL` en las propiedades ocultas locales (revisa el apartado de [Variables](../getting-started/variables.md)).

## Mapa de Endpoints Consumidos

La aplicación ataca un conjunto finito de puntos de acceso. A continuación se listan las rutas más críticas:

| Verbo HTTP | Ruta Completa (Endpoint) | Descripción / Casos de Uso Afectados | ¿Requiere Auth (JWT)? |
| :--- | :--- | :--- | :--- |
| `POST` | `/api/auth/login` | Iniciar sesión y retornar las semillas de seguridad (Tokens). | **No** |
| `POST` | `/api/auth/register` | Registrar paciente de manera nativa en PostgreSQL. | **No** |
| `GET` | `/api/sessions/history` | Recupera el historial paginado de sesiones emocionales o de citas previas. | **Sí** |
| `POST` | `/api/tickets/create` | Instancia y envía la queja o reporte de errores hacia el administrador del sistema. | **Sí** |

## Interceptores de Seguridad

Para no obligar al desarrollador a inyectar el identificador JWT de manera manual e iterativa en cada una de las firmas de los repositorios de datos remotos, se configura un *Interceptor* centralizado en OkHttp.

Al momento de ser orquestado por **Koin**, el módulo de red añade a Retrofit el interceptor de autorización. Este módulo observa el `DataStore` en búsqueda del último JWT válido y lo incrusta silenciosamente en el campo de cabecera `Authorization: Bearer <token>` justo antes de que la petición abandone el hardware físico del teléfono.

!!! warning "Reintentos y Red"
    El túnel de Cloudflare puede sufrir microcortes latentes. Retrofit está configurado para intentar reconexiones automáticas, pero la capa de presentación jamás debe congelarse. Siempre acompaña las consultas largas con tu componente visual `LoadingOverlay` para proveer retroalimentación visual al usuario en situaciones inestables.
