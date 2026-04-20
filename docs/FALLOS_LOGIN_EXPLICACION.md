# Diagnóstico y Corrección del Login - Proyecto Amani

## Resumen Ejecutivo

Este documento explica los fallos identificados en el sistema de autenticación (login) y el registro de pacientes de la aplicación Android Amani, junto con las correcciones aplicadas tanto en el backend (Spring Boot) como en el frontend (Android/Kotlin).

---

## Fallo 1: Login no funciona

### El flujo normal de autenticación

```
Android (login) → Retrofit → HTTP POST /auth/login → Backend → JWT → Android → Navegación
```

### Qué estaba mal

#### 1.1 CORS bloqueaba las peticiones

Cuando el emulador Android (ubicación IP `10.0.2.2`) envía una petición al backend (`localhost:8080`), el sistema de red del emulador envía primero una "pregunta" al servidor llamada **preflight request**:

*"¿Me dejas hacer peticiones desde mi dirección?"*

El servidor Spring Boot tenía **CORS desactivado**, por lo que respondía:

- Encabezados: `Access-Control-Allow-Origin: (nulo)`
- Resultado: **Petición denegada**

Esto causaba que todas las peticiones desde la app Android fueran bloqueadas silenciosamente.

#### 1.2 Errores poco claros para el usuario

Cuando fallaba la conexión, el código solo mostraba un mensaje genérico:

```kotlin
// Antes
catch (e: Exception) {
    Result.failure(e)  // "Error de conexión" sin contexto
}
```

El usuario veía "Error de conexión" sin saber si:
- El servidor no estaba arrancado
- La contraseña era incorrecta
- Había un problema de red

---

## Fallo 2: Dropdown de situaciones no se abre

### El problema técnico

El componente `ExposedDropdownMenuBox` de Jetpack Compose necesita un ancla (`menuAnchor`) para saber dónde renderizar el menú desplegable.

```kotlin
// Código problemático
ExposedDropdownMenuBox(
    expanded = expandedSituacion,
    onExpandedChange = { expandedSituacion = it }
) {
    OutlinedTextField(
        ...
        .menuAnchor(MenuAnchorType.PrimaryNotEditable)  // ← Problema aquí
    )
}
```

El tipo de ancla `MenuAnchorType.PrimaryNotEditable` a veces no funciona correctamente en ciertas versiones de la librería Compose, causando que el menú no se abra al pulsarlo.

---

## Fallo 3: Duplicación de código

El código guardaba la sesión del usuario **dos veces**:

1. **Primera vez** - En `AuthRepository.kt` al recibir la respuesta exitosa del login (correcto)
2. **Segunda vez** - En `LoginScreen.kt` después del éxito (redundante)

```kotlin
// LoginScreen.kt - innecesario
userSessionDataStore.saveSession(
    UserSession(
        idUsuario = response.idUsuario,
        nombre = response.nombre,
        rol = response.rol,
        ...
    )
)
```

Esto no causaba error, pero era código innecesario que complicaba el mantenimiento.

---

## Flujo Visual del Login

```
┌─────────────────────────────────────────────────────────────────┐
│                    FLUJO DE LOGIN                               │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   1. Usuario introduce email y password                        │
│       ↓                                                         │
│   2. Android valida formato de email                           │
│       ↓                                                         │
│   3. Retrofit envía POST a /auth/login                        │
│       ↓                                                         │
│   4. ⚠️ CORS Bloquea la petición (si no está configurado)     │
│       ↓                                                         │
│   5. Backend valida usuario/password en BD                    │
│       ↓                                                         │
│   6. JwtUtil genera token JWT con rol y ID                    │
│       ↓                                                         │
│   7. AuthRepository guarda token en DataStore                 │
│       ↓                                                         │
│   8. TokenHolder actualiza caché en memoria                   │
│       ↓                                                         │
│   9. AuthInterceptor añade token a siguientes peticiones    │
│       ↓                                                         │
│  10. Navegación según rol:                                     │
│      - ADMIN  → /adminHome                                     │
│      - PSICOLOGO → /psicologoHome                              │
│      - PACIENTE → /pacienteHome/{id}                          │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Componentes Involucrados

### Backend (Spring Boot)

| Archivo | Función |
|---------|---------|
| `SecurityConfig.java` | Configuración de seguridad HTTP y CORS |
| `AuthController.java` | Endpoints de autenticación (`/auth/login`, etc.) |
| `AuthService.java` | Lógica de login y generación de JWT |
| `JwtUtil.java` | Generación y validación de tokens JWT |
| `JwtAuthFilter.java` | Filtro que valida JWT en cada request |

### Android (Kotlin)

| Archivo | Función |
|---------|---------|
| `LoginViewModel.kt` | Lógica del login (valida, llama al use case) |
| `AuthRepository.kt` | Comunicación con API y guardado de sesión |
| `LoginScreen.kt` | UI del login |
| `RetrofitModule.kt` | Configuración de Retrofit con interceptores |
| `AuthInterceptor.kt` | Añade token JWT a las peticiones |
| `TokenDataStore.kt` | Almacena token en preferencia encriptada |
| `SituacionViewModel.kt` | Carga lista de situaciones para el registro |
| `RegisterScreen.kt` | UI del registro de pacientes |

---

## Configuración de Red

### Endpoints

- **Base URL**: `http://10.0.2.2:8080` (emulador Android → localhost)
- **Login**: `POST /auth/login`
- **Situaciones**: `GET /api/situaciones` (público)

### IP del emulador

| Dispositivo | IP | Uso |
|-------------|----|----|
| Emulador Android | `10.0.2.2` | Accede a localhost del host |
| Dispositivo físico | `192.168.x.x` | IP de la red local |

---

## Por qué fallaba desde tu perspectiva

Si ejecutabas la app y pulsabas "Iniciar sesión":

1. El emulador intentaba conectar al backend
2. El backend rechazaba por CORS (silenciosamente)
3. Android mostraba error genérico
4. **Tú veías "no funciona" sin saber por qué**

Las correcciones hacen que:
- El backend permita las peticiones del emulador
- Los errores sean más descriptivos
- El dropdown de situaciones funcione

---

## Cómo verificar que todo funciona

### 1. Arrancar el backend

```bash
cd /home/ivan/amani-apirest
mvn spring-boot:run
```

### 2. Probar el endpoint de login

```bash
curl -X POST http://localhost:8080/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"admin@test.com","password":"password123"}'
```

Debería devolver un JSON con:
```json
{
  "idUsuario": 1,
  "nombre": "Admin",
  "rol": "ADMIN",
  "token": "eyJhbGciOiJIUzI1...",
  "idPsicologo": null,
  "idPaciente": null
}
```

### 3. Probar el endpoint de situaciones

```bash
curl http://localhost:8080/api/situaciones
```

Debería devolver una lista de situaciones disponibles.

### 4. Probar desde la app Android

1. Ejecutar la app en el emulador
2. Introducir credenciales válidas
3. Pulsar "Iniciar sesión"
4. Verificar que navega a la pantalla correcta según el rol

---

## Notas Adicionales

###关于 CORS

CORS (Cross-Origin Resource Sharing) es un mecanismo de seguridad de los navegadores que limita qué páginas web pueden hacer peticiones a otros dominios.

En desarrollo local con emulador, necesitamos configurar:
- `10.0.2.2` - IP del emulador Android
- `localhost` y `127.0.0.1` - Para pruebas desde el navegador

### Sobre el Token JWT

El token se genera con:
- **Algoritmo**: HS256 (HMAC SHA-256)
- **Secreto**: Configurado en `application.properties` (`jwt.secret`)
- **Expiración**: 24 horas (`jwt.expiration = 86400000` ms)

El token contiene:
- `sub`: Email del usuario
- `rol`: Rol del usuario (ADMIN, PSICOLOGO, PACIENTE)
- `exp`: Fecha de expiración

---

*Documento creado para facilitar la comprensión del sistema de autenticación del proyecto Amani.*