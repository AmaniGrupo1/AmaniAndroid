# Module Amani Android

Aplicación Android de la plataforma **Amani** de salud mental.

Conecta pacientes con psicólogos ofreciendo gestión de citas,
cuestionarios de bienestar emocional y un panel de administración.

## Arquitectura

El proyecto sigue **Clean Architecture** con las siguientes capas:

| Capa | Paquete | Responsabilidad |
|------|---------|-----------------|
| **Data** | `data.remoto`, `data.repositorio` | Comunicación HTTP con el backend vía Retrofit |
| **Domain** | `domain.models`, `domain.usecases` | Modelos de negocio y casos de uso |
| **DTO** | `dto.opcionAdminDTO`, `dto.requestPaciente` | Objetos de transferencia de datos |
| **DI** | `di` | Módulos de inyección de dependencias con Koin |
| **Presentation** | `presentation.viewmodels`, `presentation.ui` | ViewModels (MVVM) y pantallas Compose |
| **Navigation** | `presentation.navigation` | Grafo de navegación y rutas |
| **Theme** | `ui.theme` | Colores, tipografías y tema Material 3 |

## Stack tecnológico

- Jetpack Compose + Material 3
- Kotlin Coroutines & StateFlow
- Retrofit 3 + Gson
- Koin (inyección de dependencias)
- Navigation Compose

