# 🧠 Amani — Aplicación de Gestión de Consultas Psicológicas

<p align="center">
  <img src="https://img.shields.io/badge/Android-24+-green?logo=android" />
  <img src="https://img.shields.io/badge/Kotlin-2.2-purple?logo=kotlin" />
  <img src="https://img.shields.io/badge/Jetpack_Compose-Material3-blue?logo=jetpackcompose" />
  <img src="https://img.shields.io/badge/Gradle-9.3.1-grey?logo=gradle" />
</p>

**Amani** es una aplicación Android nativa para la gestión integral de consultas psicológicas. Conecta a **administradores**, **psicólogos** y **pacientes** a través de una interfaz moderna construida con Jetpack Compose y un backend REST.

---

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Arquitectura](#-arquitectura)
- [Stack Tecnológico](#-stack-tecnológico)
- [Estructura del Proyecto](#-estructura-del-proyecto)
- [Requisitos Previos](#-requisitos-previos)
- [Instalación y Configuración](#-instalación-y-configuración)
- [Roles y Funcionalidades](#-roles-y-funcionalidades)
- [Endpoints de la API](#-endpoints-de-la-api)
- [Navegación](#-navegación)
- [Capturas de Pantalla](#-capturas-de-pantalla)
- [Roadmap](#-roadmap)
- [Autores](#-autores)
- [Licencia](#-licencia)

---

## ✨ Características

- 🔐 **Autenticación JWT** — Login seguro con token persistido localmente vía DataStore.
- 👨‍⚕️ **Panel de Administración** — CRUD completo de pacientes, psicólogos y cuestionarios.
- 📝 **Cuestionarios psicológicos** — Creación de preguntas con opciones múltiples y respuestas con valor numérico.
- 🤝 **Asignación paciente-psicólogo** — El admin asigna pacientes a psicólogos disponibles.
- ✅ **Consentimiento informado** — Flujo de registro con aceptación de consentimiento (vídeo y comunicación).
- 🎨 **Material 3 + Dynamic Color** — Tema adaptativo con soporte para dark mode y colores dinámicos (Android 12+).
- 💉 **Inyección de dependencias** — Módulos Koin para desacoplamiento total entre capas.

---

## 🏗 Arquitectura

El proyecto sigue **Clean Architecture** con separación clara en capas:

```
┌─────────────────────────────────────────────────────┐
│                   PRESENTATION                       │
│  Screens (Compose) ← ViewModels ← StateFlow/Flow   │
├─────────────────────────────────────────────────────┤
│                      DOMAIN                          │
│         UseCases ← Models / DTOs                    │
├─────────────────────────────────────────────────────┤
│                       DATA                           │
│   Repositories ← Retrofit APIs ← Backend REST       │
│                 ← DataStore (local)                  │
└─────────────────────────────────────────────────────┘
```

**Flujo de datos:**

```
UI (Compose) → ViewModel → UseCase → Repository → Retrofit API → Backend (:8080)
                                         ↕
                                  TokenDataStore (JWT)
```

---

## 🛠 Stack Tecnológico

| Categoría | Tecnología | Versión |
|---|---|---|
| **Lenguaje** | Kotlin | 2.2.10 |
| **UI** | Jetpack Compose + Material 3 | BOM 2024.09.00 |
| **Navegación** | Navigation Compose | 2.9.6 |
| **Networking** | Retrofit + OkHttp + Gson | 3.0.0 |
| **Inyección de dependencias** | Koin | 4.1.1 |
| **Persistencia local** | DataStore Preferences | 1.2.1 |
| **Coroutines** | Kotlinx Coroutines | 1.10.2 |
| **Build system** | Gradle (Kotlin DSL) | 9.3.1 |
| **AGP** | Android Gradle Plugin | 9.0.1 |
| **Min SDK** | Android 7.0 (API 24) | — |
| **Target SDK** | Android 14 (API 34) | — |
| **Compile SDK** | API 36 | — |

---

## 📁 Estructura del Proyecto

```
app/src/main/java/org/ies/tierno/applicationamani/
│
├── MainActivity.kt                  # Activity principal, punto de entrada
├── MyLibraryApplication.kt          # Application class, inicializa Koin
│
├── data/                            # 🟦 CAPA DE DATOS
│   ├── local/
│   │   └── TokenDataStore.kt        # Persistencia JWT con DataStore
│   ├── remoto/
│   │   ├── AuthApi.kt               # Endpoints de autenticación y admin
│   │   ├── TestApi.kt               # Endpoints de cuestionarios
│   │   ├── AuthInterceptor.kt       # Interceptor OkHttp (inyecta Bearer token)
│   │   └── CustomerClient.kt        # (Legacy, no usado)
│   └── repositorio/
│       ├── AuthRepository.kt        # Repositorio principal (auth + admin)
│       ├── TestRepositoryApi.kt     # Repositorio de tests/cuestionarios
│       ├── CustomerRepository.kt    # Utilidad de polling genérico
│       ├── PreguntasRepository.kt   # (Comentado, legacy Firebase)
│       └── RespuestaRepository.kt   # (Comentado, legacy Firebase)
│
├── domain/                          # 🟩 CAPA DE DOMINIO
│   ├── models/
│   │   ├── User.kt                  # Modelo genérico de usuario
│   │   ├── login/                   # LoginRequestDTO, LoginResponseDTO, RegistryPacienteDTO
│   │   ├── admin/                   # RegistrarPsicologoAdminDTO, PsicologoSelfResponseDTO...
│   │   ├── psicologo/               # CitaPsicologo, PacienteAsignado (en desarrollo)
│   │   └── test/                    # PreguntaConOpciones, Opcion, Respuesta, RespuestasRequestDTO
│   └── usecases/
│       ├── login/
│       │   └── LoginUseCase.kt      # Login, registro paciente/admin/psicólogo
│       ├── adminUseCase/
│       │   ├── GetAllClientAndPsicologoUseCase.kt
│       │   ├── CrearPreguntaUseCase.kt
│       │   ├── DarBajaPacienteUseCase.kt
│       │   ├── TodosLosPacientesUseCase.kt
│       │   ├── ListarPsicologoAdminUseCase.kt
│       │   └── AsignarPacienteAlPsicologoUseCase.kt
│       └── pacienteUseCase/
│           ├── ListarPreguntasUseCase.kt
│           └── ResponderTestUseCase.kt
│
├── dto/                             # 🟨 DTOs DE TRANSFERENCIA
│   ├── login/                       # PsicologoConPacientesDTO, PacientesAsignadoDTO
│   ├── opcionAdminDTO/              # OpcionAdminDTO, PreguntaRequest
│   └── requestPaciente/             # PacienteRequest, UsuarioRequest, CitaRequest...
│
├── presentation/                    # 🟧 CAPA DE PRESENTACIÓN
│   ├── navigation/
│   │   ├── screen/Screens.kt        # 16 rutas (sealed class)
│   │   └── navGraph/NavGraph.kt     # Configuración NavHost
│   ├── viewmodels/
│   │   ├── LoginViewModel.kt        # ViewModel principal (auth + registro)
│   │   ├── PrincipalClienteViewModel.kt
│   │   ├── SettingsClienteViewModel.kt
│   │   ├── admin/                   # CrearPreguntaVM, ListarPacientesVM...
│   │   └── cuestionario/            # CuestionarioViewModel
│   ├── components/
│   │   └── BottomBar.kt             # Barra de navegación inferior
│   └── ui/
│       ├── componente/              # MenuAdministrador, MenuPrincipal, BottomBar
│       └── screen/
│           ├── LoginScreen.kt
│           ├── Principal.kt
│           ├── PrincipalClienteScreen.kt
│           ├── SettingsClienteScreen.kt
│           ├── AdminView/           # 7 pantallas de administración
│           ├── psicologoView/       # ViewPsicologoPrincipal (en desarrollo)
│           ├── pacienteView/        # ViewPacientePrincipal, TestPacienteScreen
│           ├── cuestionario/        # Cuestionario.kt
│           └── consentimiento/      # ConsentimientoScreen, RegisterScreen...
│
├── di/                              # 🟪 INYECCIÓN DE DEPENDENCIAS
│   ├── AppModule.kt                 # Repositorios, UseCases, ViewModels
│   └── RetrofitModule.kt            # Retrofit, OkHttp, APIs, TokenDataStore
│
└── ui/theme/                        # 🎨 TEMA
    ├── Color.kt                     # Paleta púrpura/rosa
    ├── Theme.kt                     # Material 3 + Dynamic Color
    └── Type.kt                      # Tipografía
```

---

## 📋 Requisitos Previos

- **Android Studio** Ladybug (2024.3+) o superior
- **JDK 11** o superior
- **Android SDK** con API 36 instalada
- **Backend REST** corriendo en `http://localhost:8080` (Spring Boot)
- **Emulador Android** o dispositivo físico (API 24+)

---

## 🚀 Instalación y Configuración

### 1. Clonar el repositorio

```bash
git clone <url-del-repositorio>
cd AmaniAndroid
```

### 2. Configurar el backend

La app espera un backend REST en `http://10.0.2.2:8080` (dirección del host desde el emulador Android).

Si usas un **dispositivo físico**, modifica la URL base en `app/.../di/RetrofitModule.kt`:

```kotlin
.baseUrl("http://<TU_IP_LOCAL>:8080")
```

### 3. Compilar y ejecutar

```bash
# Desde terminal
./gradlew assembleDebug

# O abrir directamente en Android Studio y pulsar ▶ Run
```

### 4. Permisos requeridos

| Permiso | Uso |
|---|---|
| `INTERNET` | Comunicación con el backend REST |

---

## 👥 Roles y Funcionalidades

### 🔑 Administrador

| Funcionalidad | Pantalla |
|---|---|
| Vista principal del panel | `ViewAdminPrincipal` |
| Registrar nuevo psicólogo | `AgregaPsicologoScreen` |
| Registrar nuevo administrador | `AgregarAdministrador` |
| Registrar paciente desde admin | `RegistrarPacienteDesdeAdminScreen` |
| Listar todos los pacientes | `ListadoPacientesScreen` |
| Listar todos los psicólogos | `ListadoPsicologosScreen` |
| Asignar paciente a psicólogo | `ListadoPsicologosScreen` (selección) |
| Dar de baja pacientes | `ListadoPacientesScreen` (acción) |
| Crear preguntas de test | `TestScreen` |

### 👨‍⚕️ Psicólogo

| Funcionalidad | Pantalla |
|---|---|
| Vista principal | `ViewPsicologoPrincipal` |
| _Ver pacientes asignados_ | 🚧 En desarrollo |
| _Gestión de citas_ | 🚧 En desarrollo |
| _Gestión de horarios_ | 🚧 En desarrollo |

### 🧑‍🤝‍🧑 Paciente

| Funcionalidad | Pantalla |
|---|---|
| Registro con consentimiento informado | `ConsentimientoScreen` → `RegisterScreen` → `RegistroExitosoScreen` |
| Vista principal | `ViewPacientePrincipal` |
| Responder cuestionarios psicológicos | `TestPacienteScreen` |
| Ajustes de perfil | `SettingsClienteScreen` |
| Vista de especialidades | `PrincipalClienteScreen` |

---

## 🌐 Endpoints de la API

### Autenticación

| Método | Ruta | Descripción |
|---|---|---|
| `POST` | `/auth/login` | Login (devuelve JWT + rol) |
| `POST` | `/auth/register-paciente` | Registro de paciente |
| `POST` | `/auth/registry/pacienteAdmin` | Registro de paciente (desde admin) |
| `POST` | `/auth/register-admin` | Registro de administrador |
| `PUT` | `/auth/pacientes/{id}/baja` | Dar de baja a un paciente |

### Administración

| Método | Ruta | Descripción |
|---|---|---|
| `GET` | `/api/admin/psicologos/pacientes` | Psicólogos con sus pacientes asignados |
| `GET` | `/api/admin/psicologos` | Listar todos los psicólogos |
| `POST` | `/api/admin/psicologos/create` | Crear psicólogo |
| `POST` | `/api/admin/psicologos/asignar-psicologo` | Asignar paciente a psicólogo |
| `GET` | `/api/pacientes/admin` | Listar todos los pacientes |

### Cuestionarios

| Método | Ruta | Descripción |
|---|---|---|
| `POST` | `/api/admin/preguntas` | Crear pregunta |
| `GET` | `/api/paciente/preguntas` | Obtener preguntas del test |
| `POST` | `/api/paciente/preguntas/responder/{idPaciente}` | Enviar respuestas del test |

---

## 🧭 Navegación

La app tiene **16 rutas** gestionadas por Navigation Compose:

```
principal (inicio)
├── login
├── registro → consentimiento → registroConsentimiento
│
├── adminHome
│   ├── agregarPsicologo
│   ├── agregarPsicologoAdmin
│   ├── agregarAdmin
│   ├── pacientes
│   ├── agregarPacienteAdmin
│   ├── asignarPsicologo/{pacienteId}
│   ├── listaPsicologos
│   ├── test
│   └── cuestionario
│
├── psicologoHome
│
├── pacienteHome
│   ├── testPaciente/{pacienteId}
│   ├── vistaPrincipalPaciente
│   └── settings
```

**Flujo de login según rol:**

```
Login → LoginResponseDTO.rol →
    ├── "admin"     → adminHome
    ├── "psicologo" → psicologoHome
    └── "paciente"  → pacienteHome
```

---

## 📸 Capturas de Pantalla

> _Próximamente: añade capturas en una carpeta `screenshots/` y referéncialas aquí._

| Pantalla | Descripción |
|---|---|
| <!-- ![Principal](screenshots/principal.png) --> | Pantalla de bienvenida |
| <!-- ![Login](screenshots/login.png) --> | Inicio de sesión |
| <!-- ![Admin](screenshots/admin.png) --> | Panel de administración |
| <!-- ![Test](screenshots/test.png) --> | Cuestionario psicológico |

---

## 🗺 Roadmap

- [x] Autenticación JWT con persistencia local
- [x] Panel de administración completo
- [x] Registro de paciente con consentimiento informado
- [x] Cuestionarios psicológicos (crear y responder)
- [x] Asignación de pacientes a psicólogos
- [x] Dar de baja pacientes
- [x] Listado de psicólogos desde admin
- [x] Registro de administradores desde admin
- [ ] 🚧 Vista completa del psicólogo (pacientes asignados, citas)
- [ ] 🚧 Gestión de horarios del psicólogo
- [ ] 🚧 Notificaciones push locales
- [ ] 🚧 Integración con calendario del sistema
- [ ] 🚧 Chat entre paciente y psicólogo
- [ ] 🚧 Diario del paciente
- [ ] 🚧 Ajustes de perfil con persistencia real (backend)
- [ ] 🚧 Tests unitarios y de integración

---

## 🔧 Configuración Avanzada

### Cambiar URL del backend

Edita `RetrofitModule.kt`:

```kotlin
// Para emulador Android (por defecto)
.baseUrl("http://10.0.2.2:8080")

// Para dispositivo físico en la misma red
.baseUrl("http://192.168.1.XXX:8080")

// Para servidor remoto
.baseUrl("https://tu-dominio.com/api/")
```

### Timeouts de red

Los timeouts están configurados en `RetrofitModule.kt`:

```kotlin
OkHttpClient.Builder()
    .addInterceptor(get<AuthInterceptor>())
    .connectTimeout(30, TimeUnit.SECONDS)
    .readTimeout(30, TimeUnit.SECONDS)
    .build()
```

### Módulos Koin

La app carga dos módulos en `MyLibraryApplication.kt`:

| Módulo | Contenido |
|---|---|
| `retrofitModule` | TokenDataStore, AuthInterceptor, OkHttpClient, Retrofit, AuthApi, TestApi |
| `appModule` | AuthRepository, TestRepositoryApi, 9 UseCases, 8 ViewModels |

---

## 👥 Autores

- **IES José Luis Sampedro (Tierno)** — Proyecto educativo

---

## 📄 Licencia

Este proyecto es de uso educativo y fue desarrollado como parte del currículo del IES José Luis Sampedro.

---

<p align="center">
  Hecho con ❤️ y Kotlin
</p>

