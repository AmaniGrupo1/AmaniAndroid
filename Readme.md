# 🧠 Amani — Aplicación de Gestión de Consultas Psicológicas

<p align="center">
  <img src="https://img.shields.io/badge/Android-24+-3DDC84?style=for-the-badge&logo=android&logoColor=white" />
  <img src="https://img.shields.io/badge/Kotlin-2.2-7F52FF?style=for-the-badge&logo=kotlin&logoColor=white" />
  <img src="https://img.shields.io/badge/Jetpack_Compose-Material3-4285F4?style=for-the-badge&logo=jetpackcompose&logoColor=white" />
  <img src="https://img.shields.io/badge/Gradle-9.3.1-02303A?style=for-the-badge&logo=gradle&logoColor=white" />
  <img src="https://img.shields.io/badge/Licencia-Educativa-orange?style=for-the-badge" />
</p>

<p align="center">
  <strong>Amani</strong> es una aplicación Android nativa para la gestión integral de consultas psicológicas.<br/>
  Conecta a <strong>administradores</strong>, <strong>psicólogos</strong> y <strong>pacientes</strong> a través de una interfaz moderna construida con Jetpack Compose y un backend REST.
</p>

---

## 📋 Tabla de Contenidos

- [✨ Características](#-características)
- [🏗 Arquitectura](#-arquitectura)
- [🛠 Stack Tecnológico](#-stack-tecnológico)
- [📁 Requisitos Previos](#-requisitos-previos)
- [🚀 Instalación y Configuración](#-instalación-y-configuración)
- [👥 Roles y Funcionalidades](#-roles-y-funcionalidades)
- [🌐 Endpoints de la API](#-endpoints-de-la-api)
- [🧭 Navegación](#-navegación)
- [📸 Capturas de Pantalla](#-capturas-de-pantalla)
- [🗺 Roadmap](#-roadmap)
- [🔧 Configuración Avanzada](#-configuración-avanzada)
- [👤 Contribuidores](#-contribuidores)
- [📄 Licencia](#-licencia)

---

## ✨ Características

|  | Funcionalidad | Descripción |
|---|---|---|
| 🔐 | **Autenticación JWT** | Login seguro con token persistido localmente vía DataStore |
| 👨‍⚕️ | **Panel de Administración** | CRUD completo de pacientes, psicólogos y cuestionarios |
| 📝 | **Cuestionarios psicológicos** | Preguntas con opciones múltiples y valores numéricos |
| 🤝 | **Asignación paciente-psicólogo** | El administrador asigna pacientes a psicólogos disponibles |
| ✅ | **Consentimiento informado** | Flujo de registro con aceptación de consentimiento (vídeo y comunicación) |
| 🎨 | **Material 3 + Dynamic Color** | Tema adaptativo con dark mode y colores dinámicos (Android 12+) |
| 💉 | **Inyección de dependencias** | Módulos Koin para desacoplamiento total entre capas |

---

## 🏗 Arquitectura

El proyecto sigue **Clean Architecture + MVVM** con separación clara en tres capas:

```
┌─────────────────────────────────────────────��───────────────┐
│                      PRESENTATION                            │
│        Screens (Compose)  ←  ViewModels  ←  StateFlow       │
├─────────────────────────────────────────────────────────────┤
│                         DOMAIN                               │
│              UseCases  ←  Models / DTOs                      │
├─────────────────────────────────────────────────────────────┤
│                          DATA                                │
│   Repositories  ←  Retrofit APIs  ←  Backend REST (:8080)   │
│                 ←  DataStore (JWT local)                     │
└─────────────────────────────────────────────────────────────┘
```

**Flujo de datos:**

```
UI (Compose) ──► ViewModel ──► UseCase ──► Repository ──► Retrofit ──► Backend
                                               │
                                        TokenDataStore (JWT)
```

| Capa | Color | Responsabilidad |
|---|---|---|
| **Data** | 🟦 | APIs Retrofit, DataStore, implementación de repositorios |
| **Domain** | 🟩 | Modelos de negocio, casos de uso |
| **Presentation** | 🟧 | UI con Jetpack Compose, ViewModels |
| **DI** | 🟪 | Inyección de dependencias con Koin |

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
| **Android Gradle Plugin** | AGP | 9.0.1 |
| **Min SDK** | Android 7.0 | API 24 |
| **Target SDK** | Android 14 | API 34 |
| **Compile SDK** | — | API 36 |

---

## 📁 Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

- ✅ **Android Studio** Ladybug (2024.3) o superior
- ✅ **JDK 11** o superior
- ✅ **Android SDK** con API 36
- ✅ **Backend REST** (Spring Boot) corriendo en `http://localhost:8080`
- ✅ **Emulador** Android o dispositivo físico con API 24+

---

## 🚀 Instalación y Configuración

### 1. Clonar el repositorio

```bash
git clone https://github.com/AmaniGrupo1/AmaniAndroid.git
cd AmaniAndroid
```

### 2. Configurar la URL del backend

La app apunta por defecto a `http://10.0.2.2:8080` (host desde el emulador de Android).

Si usas un **dispositivo físico**, edita `app/.../di/RetrofitModule.kt`:

```kotlin
// Emulador (por defecto)
.baseUrl("http://10.0.2.2:8080")

// Dispositivo físico en la misma red
.baseUrl("http://192.168.1.XXX:8080")

// Servidor remoto
.baseUrl("https://tu-dominio.com/api/")
```

### 3. Compilar y ejecutar

```bash
# Compilar APK de debug
./gradlew assembleDebug
```

> También puedes abrir el proyecto en **Android Studio** y pulsar ▶️ **Run**.

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
| Dar de baja un paciente | `ListadoPacientesScreen` (acción) |
| Crear preguntas de test | `TestScreen` |

### 👨‍⚕️ Psicólogo

| Funcionalidad | Estado |
|---|---|
| Vista principal | ✅ Disponible (`ViewPsicologoPrincipal`) |
| Ver pacientes asignados | 🚧 En desarrollo |
| Gestión de citas | 🚧 En desarrollo |
| Gestión de horarios | 🚧 En desarrollo |

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

### 🔓 Autenticación

| Método | Ruta | Descripción |
|---|---|---|
| `POST` | `/auth/login` | Login (devuelve JWT + rol) |
| `POST` | `/auth/register-paciente` | Registro de paciente |
| `POST` | `/auth/registry/pacienteAdmin` | Registro de paciente desde admin |
| `POST` | `/auth/register-admin` | Registro de administrador |
| `PUT` | `/auth/pacientes/{id}/baja` | Dar de baja a un paciente |

### 🔒 Administración *(requiere JWT)*

| Método | Ruta | Descripción |
|---|---|---|
| `GET` | `/api/admin/psicologos/pacientes` | Psicólogos con sus pacientes asignados |
| `GET` | `/api/admin/psicologos` | Listar todos los psicólogos |
| `POST` | `/api/admin/psicologos/create` | Crear psicólogo |
| `POST` | `/api/admin/psicologos/asignar-psicologo` | Asignar paciente a psicólogo |
| `GET` | `/api/pacientes/admin` | Listar todos los pacientes |

### 📋 Cuestionarios *(requiere JWT)*

| Método | Ruta | Descripción |
|---|---|---|
| `POST` | `/api/admin/preguntas` | Crear pregunta |
| `GET` | `/api/paciente/preguntas` | Obtener preguntas del test |
| `POST` | `/api/paciente/preguntas/responder/{idPaciente}` | Enviar respuestas del test |

---

## 🧭 Navegación

La app gestiona **16 rutas** con Navigation Compose. El flujo de login redirige según el rol recibido en el `LoginResponseDTO`:

```
Login ──► rol →
            ├── "admin"     ──► adminHome
            ├── "psicologo" ──► psicologoHome
            └── "paciente"  ──► pacienteHome
```

**Árbol completo de rutas:**

```
principal (inicio)
├── login
├── registro
│   └── consentimiento
│       └── registroConsentimiento
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
└── pacienteHome
    ├── testPaciente/{pacienteId}
    ├── vistaPrincipalPaciente
    └── settings
```

---

## 📸 Capturas de Pantalla

> 📌 *Próximamente — añade las capturas en una carpeta `screenshots/` y referéncialas aquí.*

| Pantalla | Vista previa |
|---|---|
| 🏠 Bienvenida | `screenshots/principal.png` |
| 🔑 Login | `screenshots/login.png` |
| 🛠 Panel Admin | `screenshots/admin.png` |
| 📝 Cuestionario | `screenshots/test.png` |

---

## 🗺 Roadmap

#### ✅ Completado

- [x] Autenticación JWT con persistencia local
- [x] Panel de administración completo
- [x] Registro de paciente con consentimiento informado
- [x] Cuestionarios psicológicos (crear y responder)
- [x] Asignación de pacientes a psicólogos
- [x] Dar de baja pacientes
- [x] Listado de psicólogos desde admin
- [x] Registro de administradores desde admin

#### 🚧 En desarrollo / Planificado

- [ ] Vista completa del psicólogo (pacientes asignados, citas)
- [ ] Gestión de horarios del psicólogo
- [ ] Notificaciones push locales
- [ ] Integración con calendario del sistema
- [ ] Chat entre paciente y psicólogo
- [ ] Diario del paciente
- [ ] Ajustes de perfil con persistencia en backend
- [ ] Tests unitarios y de integración

---

## 🔧 Configuración Avanzada

### Timeouts de red

Configurados en `RetrofitModule.kt`:

```kotlin
OkHttpClient.Builder()
    .addInterceptor(get<AuthInterceptor>())
    .connectTimeout(30, TimeUnit.SECONDS)
    .readTimeout(30, TimeUnit.SECONDS)
    .build()
```

### Módulos Koin

La aplicación inicializa dos módulos en `MyLibraryApplication.kt`:

| Módulo | Contenido |
|---|---|
| `retrofitModule` | `TokenDataStore`, `AuthInterceptor`, `OkHttpClient`, `Retrofit`, `AuthApi`, `TestApi` |
| `appModule` | `AuthRepository`, `TestRepositoryApi`, 9 UseCases, 8 ViewModels |

---

## 👤 Contribuidores

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/irilopa">
        <img src="https://github.com/irilopa.png" width="80px" style="border-radius:50%" /><br/>
        <sub><b>Ivan Lopez Rilopa</b></sub>
      </a><br/>
      <sub>Backend / Arquitectura</sub>
    </td>
    <td align="center">
      <a href="https://github.com/FelixPatricio29">
        <img src="https://github.com/FelixPatricio29.png" width="80px" style="border-radius:50%" /><br/>
        <sub><b>Felix Patricio Peñafel Burgos</b></sub>
      </a><br/>
      <sub>Backend / Lógica</sub>
    </td>
    <td align="center">
      <a href="https://github.com/AlexGarKan">
        <img src="https://github.com/AlexGarKan.png" width="80px" style="border-radius:50%" /><br/>
        <sub><b>Alejandro Garcia Kanouka</b></sub>
      </a><br/>
      <sub>Frontend / UI</sub>
    </td>
  </tr>
</table>

---

## 📄 Licencia

Este proyecto es de **uso educativo** y fue desarrollado como parte del currículo del **IES Enrique Tierno Galván**.

---

<p align="center">
  Hecho con ❤️ y Kotlin por el equipo <strong>Amani</strong>
</p>
