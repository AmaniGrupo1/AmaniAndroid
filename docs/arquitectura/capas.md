# Módulos y Capas Prácticas

En esta sección desglosamos cada una de las capas de Clean Architecture especificando sus responsabilidades primordiales y enumerando las clases verdaderas que existen en el código fuente de AMANI.

## Tabla de Responsabilidades

| Capa Conceptual | Responsabilidad Exclusiva | Ejemplos Reales en el Código de AMANI |
| :--- | :--- | :--- |
| **Presentation (UI)** | Reaccionar a la entrada del usuario, sostener estado gráfico e inflar la vista. | `SessionScreen` <!-- TODO: verificar nombre real -->, `SessionViewModel` <!-- TODO: verificar nombre real --> |
| **Domain (Core)** | Contener la lógica central del negocio y determinar qué acciones pueden ocurrir. | `GetSessionsUseCase` <!-- TODO: verificar nombre real -->, `Session` (Entidad) |
| **Data (Repositories)** | Gestionar múltiples orígenes de datos (remoto, caché) y devolver un solo origen de verdad al dominio. | `SessionRepository` <!-- TODO: verificar nombre real -->, `DiarioEmocionalRepository` |
| **Data (DataSources)** | Implementar el cliente directo HTTP o el SDK de Base de Datos respectivo. | `AuthApiService`, `FirebaseChatDataSource` <!-- TODO: verificar nombre real --> |

## Interacción de Clases

Para visualizar la conexión entre estas clases en el día a día del desarrollador, veamos un caso estándar de desarrollo: añadir una nueva funcionalidad gráfica.

1. Se crea la pantalla (`SessionScreen`) usando el tema dinámico de Material 3.
2. Esta pantalla necesita un estado inmutable (`UiState`) y una forma de enviar eventos (`onSessionClick`). Ambos se alojan en `SessionViewModel`.
3. El modelo de vista nunca toca la base de datos de forma agresiva; delega toda esa presión al interactor `GetSessionsUseCase`.
4. Si necesitas agregar parámetros de búsqueda (por ejemplo, buscar sesiones solo del año en curso), se ajustan las firmas del contrato en la interfaz abstracta `SessionRepository` localizada dentro del dominio.
5. Finalmente, la implementación concreta en la capa de datos hace la llamada HTTP correspondiente hacia Spring Boot.

!!! warning "Validación de Nombres"
    Algunos de los nombres de los Casos de Uso descritos arriba podrían estar sujetos a cambios durante la refactorización final del proyecto o tener nombres alternativos en la base actual de código. Siempre verifica el explorador de paquetes de Android Studio bajo `org.ies.tierno.applicationamani.domain` para confirmar la nomenclatura exacta oficial.
