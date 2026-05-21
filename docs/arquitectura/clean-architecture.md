# Estructura de Clean Architecture

El proyecto AMANI implementa la famosa "Arquitectura Limpia" propuesta por Robert C. Martin. Su principio más sagrado es la **Regla de Dependencias**: las dependencias en el código fuente siempre deben apuntar hacia adentro, hacia el núcleo de dominio. Las capas internas ignoran absolutamente cualquier detalle tecnológico de las capas externas.

## Las Tres Capas Principales

1. **Capa de Dominio (Domain)**: Es el núcleo del negocio. No conoce absolutamente nada sobre bases de datos, redes, o Android. Está compuesta por modelos lógicos, interfaces de repositorios y los Casos de Uso (ej: `GetSessionsUseCase`).
2. **Capa de Datos (Data)**: Implementa los contratos definidos por el dominio. Contiene clientes de red, DataSources remotos (Retrofit, Firebase) y los mapeadores de transferencia de datos (DTOs).
3. **Capa de Presentación (Presentation / UI)**: La capa externa responsable de renderizar el estado del usuario. Consume los casos de uso mediante los ViewModels de Jetpack Compose.

## Árbol de Paquetes en AMANI

A nivel físico dentro del módulo `app/src/main/java`, la división de paquetes se ve reflejada de la siguiente manera:

```bash
org.ies.tierno.applicationamani
├── data/
│   ├── remote/        # APIs de Spring Boot y Firebase
│   ├── local/         # Preferencias
│   └── repositorio/   # Implementaciones reales (ej: PaymentRepository)
├── domain/
│   ├── models/        # Entidades puras de Kotlin
│   ├── repository/    # Contratos de interfaz
│   └── usecase/       # Reglas de negocio
├── ui/
│   ├── screens/       # Componentes de pantalla Compose
│   ├── viewmodels/    # Gestores de estado UI
│   └── components/    # Botones, barras, modales genéricos
└── di/                # Módulos del inyector Koin
```

## Ejemplo Concreto: Historial de Sesiones

Analicemos el flujo de "Cargar historial de sesiones de un paciente":

1. El usuario navega a la pantalla de sesiones. El componente visual de Compose solicita datos a su observador.
2. El `SessionViewModel` inicia una corrutina y ejecuta el caso de uso `GetSessionsUseCase`.
3. El caso de uso llama a la interfaz abstracta `SessionRepository`.
4. El inyector resuelve la interfaz usando la implementación real `SessionRepositoryImpl` alojada en la capa de datos.
5. El repositorio realiza una consulta REST mediante Retrofit, convierte el DTO remoto en una entidad de dominio puro, y lo devuelve al modelo de vista para ser pintado.

Este estricto canal de ida y vuelta garantiza una mantenibilidad máxima y protege el núcleo en caso de un futuro cambio de librería o servidor.
