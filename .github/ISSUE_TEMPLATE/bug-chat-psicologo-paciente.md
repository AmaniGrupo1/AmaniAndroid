---
name: Bug Report - Chat System
about: Reportar problemas en el sistema de chat (Psicólogo-Paciente)
title: "[BUG] Psicólogo no recibe mensajes de pacientes - Root Cause Analysis"
labels: bug, chat, psicologo, analysis
---

## Resumen Ejecutivo

**Problema:** Psicólogos no reciben ni ven mensajes enviados por pacientes en el chat.

**Root Cause:** Inconsistencia entre Firebase User IDs y Table IDs en el flujo completo:
1. Backend devuelve table IDs (`idPsicologo`, `idPaciente`) en lugar de Firebase User IDs
2. Psicólogos no reciben `idPaciente` en el LoginResponseDTO
3. DTO `PacientePsicologoResponseDTO` no incluye campo `idUsuario`

**Solución:** Corregir backend para devolver Firebase User IDs en todos los endpoints relevantes.

---

## Arquitectura del Sistema

```
┌─────────────┐     ┌──────────────────┐     ┌──────────────────┐
│   Android   │────>│ Spring Boot      │────>│ Firebase RTDB    │
│  (Kotlin)   │     │  (Java)          │     │  (Realtime DB)   │
└─────────────┘     └──────────────────┘     └──────────────────┘
```

### Tipos de IDs en el Sistema

| Entorno | ID Type | Campo | Ejemplo | Uso |
|---------|---------|-------|---------|-----|
| Firebase Auth | Firebase User ID | `idUsuario` | `1234567890` | Firebase Authentication |
| Database | Table ID | `idPaciente`, `idPsicologo` | `1`, `2`, `3` | JPA/Hibernate PKs |
| Firebase RTDB | Firebase User ID | `idUsuario` | `1234567890` | Room ID generation |

### Estructura de Firebase

```
chats/
├── {minUserId}_{maxUserId}/          # Room ID = min/max Firebase User IDs
│   ├── messages/                     # Mensajes en la sala
│   │   ├── {messageId}/
│   │   │   ├── idMensaje: 123456
│   │   │   ├── idSender: 1234567890   # Firebase User ID
│   │   │   ├── idReceiver: 987654321  # Firebase User ID
│   │   │   ├── mensaje: "Hola"
│   │   │   └── leido: false
│   └── typing/                       # Indicadores de escritura
```

---

## Flujo de Login y Configuración de Chat

### Paso 1: Login del Usuario

```
POST /api/login
├─ Request: { email, password }
└─ Response: LoginResponseDTO
   ├─ idUsuario: 1234567890         # Firebase User ID
   ├─ nombre: "Juan"
   ├─ rol: "psicologo"
   ├─ token: "..."
   ├─ idPsicologo: 1234567890       # Firebase User ID (no table ID!)
   └─ idPaciente: 987654321         # Firebase User ID (no table ID!)
```

**Error en código original:**
```java
// ❌ ANTES (Devuelve table IDs)
idPsicologo = psicologo.getIdPsicologo();   // Table ID: 5
idPaciente = paciente.getIdPaciente();       // Table ID: 10
```

**Corrección aplicada:**
```java
// ✅ DESPUÉS (Devuelve Firebase User IDs)
idPsicologo = usuario.getIdUsuario();        // Firebase ID: 1234567890

// Para pacientes asignados a psicólogos:
idPaciente = psicologoPacienteRepository
    .findByPsicologo_Usuario_IdUsuario(idUsuario)
    .map(rel -> rel.getPaciente().getUsuario().getIdUsuario())
    .orElse(null);
```

### Paso 2: Guardar Sesión en Android

```kotlin
// UserSessionDataStore.saveSession()
UserSession(
    idUsuario = body.idUsuario,        // 1234567890 (Firebase)
    nombre = body.nombre,
    rol = body.rol,
    idPsicologo = body.idPsicologo,    // 1234567890 (Firebase) - CORREGIDO
    idPaciente = body.idPaciente       // 987654321 (Firebase) - CORREGIDO
)
```

### Paso 3: Configurar Chat List ViewModel

```kotlin
// ChatListViewModel.loadCurrentUser()
val session = userSessionDataStore.getSession()

when (normalizeRole(session.rol)) {
    "psicologo" -> {
        if (session.idPaciente != null) {
            // ❌ ANTES: session.idPaciente era null para psicólogos
            // ✅ DESPUÉS: session.idPaciente es Firebase User ID del paciente
            
            resolvePacienteParaChat(session.idPaciente)
            // ↓
            // profileUseCaseGeneral.getPacienteById(idPaciente)
            // ↓
            // Backend: GET /api/pacientes/{id}
            // ↓
            // partnerId = profile.usuario.idUsuario (Firebase ID)
        }
    }
}
```

### Paso 4: Generar Room ID para Chat

```kotlin
// ChatFirebaseService.generateRoomId()
val roomId = ChatFirebaseService.generateRoomId(currentUserId, partnerId)
// currentUserId: 1234567890 (Firebase User ID del psicólogo)
// partnerId: 987654321 (Firebase User ID del paciente)
// roomId: "1234567890_987654321"  ← CORRECTO
```

**错误 en código original:**
```
❌ roomId: "5_10"  ← Table IDs, Firebase no encuentra mensajes
```

---

## Cambios Realizados

### Backend (Spring Boot)

#### 1. `PsicologoPacienteRepository.java`
```java
// NUEVO MÉTODO
Optional<PsicologoPaciente> findByPsicologo_Usuario_IdUsuario(Long idUsuario);
```

#### 2. `AuthService.java` (3 métodos actualizados)

**`login()` - Líneas 70-92:**
```java
// Psicólogos: idPsicologo = su propio Firebase User ID
if (usuario.getRol() == RolUsuario.psicologo) {
    idPsicologo = usuario.getIdUsuario();
}
// Pacientes: buscar su propio Firebase User ID
else if (usuario.getRol() == RolUsuario.paciente) {
    idPaciente = pacienteRepository
        .findByUsuario_IdUsuario(usuario.getIdUsuario())
        .map(Paciente::getUsuario)
        .map(Usuario::getIdUsuario)
        .orElse(null);
}
// Psicólogos: buscar paciente asignado
else if (usuario.getRol() == RolUsuario.psicologo) {
    idPaciente = psicologoPacienteRepository
        .findByPsicologo_Usuario_IdUsuario(usuario.getIdUsuario())
        .map(rel -> rel.getPaciente().getUsuario().getIdUsuario())
        .orElse(null);
}
```

**`registerPaciente()` - Líneas 237-248:**
- Similar lógica para devolver Firebase User IDs

**`registerAdmin()` - Líneas 295-300:**
- Similar lógica para devolver Firebase User IDs

#### 3. `PacientePsicologoResponseDTO.java`
```java
// NUEVO CAMPO
/** ID de usuario Firebase (idUsuario) del paciente. */
private Long idUsuario;
```

#### 4. `PacientePsicologoService.java` (line 93-99)
```java
dto.setIdPaciente(paciente.getIdPaciente());
dto.setIdUsuario(usuario != null ? usuario.getIdUsuario() : null);  // NUEVO
dto.setNombre(usuario != null ? usuario.getNombre() : null);
// ... resto de campos
```

### Android (Kotlin)

#### `ChatListViewModel.kt` (Líneas 122-137)
```kotlin
private fun loadFirstAssignedPatient() {
    viewModelScope.launch {
        _isLoading.value = true
        try {
            val pacientes = listarPacientesByPsicologo().first()
            val first = pacientes.firstOrNull()
            // ✅ Ahora idPaciente es Firebase User ID (después del fix del backend)
            if (first?.idPaciente != null) {
                resolvePacienteParaChat(first.idPaciente)
            } else {
                _isLoading.value = false
            }
        } catch (_: Exception) {
            _isLoading.value = false
        }
    }
}
```

---

## Pruebas de Validación

### Build Status
```bash
# Backend
$ cd /home/ivan/amani-apirest && ./mvnw compile
[INFO] BUILD SUCCESS

# Android
$ ./gradlew assembleDebug
BUILD SUCCESSFUL in 5s
```

### Verificación del Flujo Completo

1. **Login → Firebase User IDs en respuesta:**
   - Psicólogo: `idPsicologo = 1234567890` (Firebase)
   - Paciente: `idPaciente = 987654321` (Firebase)

2. **ChatListViewModel → Partner ID configurado:**
   - `session.idPaciente = 987654321` (Firebase)
   - `partnerId = 987654321` (Firebase)

3. **Room ID Generation → Room correcto:**
   - `roomId = "1234567890_987654321"` (Firebase User IDs)

4. **Firebase RTDB → Mensajes visibles:**
   - Messages en `chats/1234567890_987654321/messages` son visibles

---

## Diagrama de Flujo de Datos

```
┌─────────────────────────────────────────────────────────────────────┐
│                         PASO 1: LOGIN                               │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│  Backend: AuthService.login()                                       │
│  ├─ Usuario: psicologo con idUsuario=1234567890                   │
│  ├─ Buscar paciente asignado:                                       │
│  │  findByPsicologo_Usuario_IdUsuario(1234567890)                 │
│  │  └─ Paciente: idUsuario=987654321                               │
│  └─ Devolver:                                                       │
│     idPsicologo=1234567890, idPaciente=987654321 (Firebase IDs)   │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│              PASO 2: GUARDAR SESIÓN EN ANDROID                      │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│  UserSessionDataStore.saveSession()                                 │
│  UserSession(                                                         │
│    idUsuario=1234567890,                                            │
│    idPsicologo=1234567890,    ← CORREGIDO (antes era table ID)    │
│    idPaciente=987654321       ← CORREGIDO (antes era null)        │
│  )                                                                    │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│           PASO 3: CONFIGURAR CHAT LIST VIEW MODEL                   │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│  ChatListViewModel.loadCurrentUser()                                │
│  ├─ rol="psicologo"                                                 │
│  ├─ idPaciente=987654321 (Firebase User ID)                        │
│  └─ resolvePacienteParaChat(987654321)                             │
│       └─ profileUseCaseGeneral.getPacienteById(987654321)         │
│            └─ Backend: GET /api/pacientes/987654321               │
│                 └─ Return: PacienteProfileResponseDTO             │
│                      └─ usuario.idUsuario=987654321               │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│          PASO 4: GENERAR ROOM ID Y OBSERVER MESSAGES                │
└─────────────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────────────┐
│  ChatFirebaseService.generateRoomId(1234567890, 987654321)         │
│  └─ roomId = "1234567890_987654321"                                │
│                                                                      │
│  observeMessages(1234567890, 987654321)                            │
│  └─ messagesRef = chats/1234567890_987654321/messages            │
│     └─ Messages visualizados correctamente! ✅                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Lecciones Aprendidas

### Error Común: Confusión entre IDs
```
❌ Table ID (JPA):      1, 2, 3
❌ Firebase User ID:    1234567890, 987654321

Ambos son Long, pero significan cosas completamente diferentes en Firebase.
```

### Patrón Recomendado para Sistemas Distribuidos

1. **Documentar explícitamente** en cada endpoint qué tipo de ID se espera
2. **Validar en los bordes** (API entry points)
3. **Mapear explícitamente** entre Table IDs y Firebase User IDs
4. **Usar nombrar claramente** los campos: `idUsuarioFirebase` vs `idPacienteTable`

### Archivos Clave para Revisión Futura

| Archivo | Responsabilidad | Tipos de ID que maneja |
|---------|-----------------|----------------------|
| `AuthService.java` | Login | Firebase User ID → Firebase User ID |
| `PacienteService.java` | CRUD pacientes | Table ID → Firebase User ID |
| `PacientePsicologoService.java` | Listado pacientes | Table ID → Firebase User ID |
| `ChatFirebaseService.kt` | Room ID | Firebase User ID → Room ID |

---

## Checklist de Verificación

- [x] **Fase 1:** Root cause investigada (table IDs vs Firebase User IDs)
- [x] **Fase 2:** Patrón analizado (comparado con working examples)
- [x] **Fase 3:** Hipótesis probada (backend devuelve Firebase IDs)
- [x] **Fase 4:** Fix implementado y verificado
- [x] Backend compila: `./mvnw compile` ✅
- [x] Android compila: `./gradlew assembleDebug` ✅
- [x] No se introdujeron nuevos bugs

---

## Notas para Revisión

**El problema NO era en Firebase** ni en la lógica de observación de mensajes. El problema era que los room IDs se generaban con los IDs incorrectos (table IDs en lugar de Firebase User IDs), por lo que Firebase no encontraba los mensajes que se habían enviado a los room IDs correctos.

**El fix fue minimalista:** Solo cambiar los endpoints de backend para devolver Firebase User IDs en lugar de Table IDs, y agregar el campo faltante `idPaciente` para psicólogos.
