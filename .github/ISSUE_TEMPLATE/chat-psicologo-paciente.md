---
name: Chat Psicólogo-Paciente
about: Reportar problemas en el sistema de chat entre psicólogos y pacientes
title: "[CHAT] Psicólogo no recibe mensajes de pacientes"
labels: bug, chat, psicologo
---

## Contexto del Sistema

Este es un sistema distribuido que involucra:
- **Android (Kotlin)** - Cliente móvil
- **Spring Boot Backend** - API REST
- **Firebase Realtime Database** - Sincronización de mensajes en tiempo real

## Flujo de Mensajes

```
Android → Spring Boot → Firebase RTDB → Android (observer)
```

### Generación de Room ID

Los mensajes se almacenan en Firebase en la estructura: `chats/{roomId}/messages`

El `roomId` se genera usando: `min(userId1, userId2)_max(userId1, userId2)`

**CRITICAL:** Los `userId` deben ser **Firebase User IDs**, NO table IDs de la base de datos.

## Problema Reportado

### Comportamiento Actual

El psicólogo **NO recibe** ni **NO ve** los mensajes enviados por los pacientes en la pantalla de chat.

### Comportamiento Esperado

El psicólogo debe recibir y ver todos los mensajes enviados por sus pacientes asignados.

---

## Root Cause Analysis

### Fase 1: Identificación del Problema

#### Síntoma Obervado
- Psicólogos ven la pantalla de chat pero no reciben mensajes
- La lista muestra "No tienes pacientes asignados aún" incluso cuando sí existen asignaciones

#### Flujo Investigado

```
1. Login → AuthService.login()
   ↓
2. Devuelve LoginResponseDTO con idPsicologo y idPaciente
   ↓
3. Android guarda en UserSessionDataStore
   ↓
4. ChatListViewModel carga sesión y configura partnerId
   ↓
5. ChatFirebaseService usa partnerId para generar roomId
   ↓
6. Messages观察 en Firebase usando roomId
```

### Hallazgos Clave

#### Hallazgo #1: Backend devuelve Table IDs en lugar de Firebase User IDs

**Archivo:** `AuthService.java`

**Código problemático (antes del fix):**
```java
// Para psicólogos:
idPsicologo = psicologo.getIdPsicologo();  // ❌ Table ID

// Para pacientes:
idPaciente = paciente.getIdPaciente();  // ❌ Table ID
```

**Impacto:** Firebase usa Firebase User IDs para las colecciones de chats. Usar table IDs genera roomIds incorrectos.

**Solución aplicada:**
```java
// Para psicólogos:
idPsicologo = usuario.getIdUsuario();  // ✅ Firebase User ID

// Para pacientes:
idPaciente = usuario.getIdUsuario();  // ✅ Firebase User ID
```

#### Hallazgo #2: Psicólogos no reciben idPaciente en LoginResponseDTO

**Código problemático:**
```java
// En AuthService.login(), solo pacientes tienen idPaciente:
if (usuario.getRol() == RolUsuario.paciente) {
    idPaciente = pacienteRepository.findByUsuario_IdUsuario(...);
}
// Psicólogos: idPaciente permanece null ❌
```

**Impacto:** `ChatListViewModel` mostraba "No tienes pacientes asignados" porque `session.idPaciente == null`.

**Solución aplicada:**
```java
else if (usuario.getRol() == RolUsuario.psicologo) {
    idPaciente = psicologoPacienteRepository
        .findByPsicologo_Usuario_IdUsuario(usuario.getIdUsuario())
        .map(rel -> rel.getPaciente().getUsuario().getIdUsuario())
        .orElse(null);
}
```

#### Hallazgo #3: DTO `PacientePsicologoResponseDTO` no incluye idUsuario

**Archivo:** `PacientePsicologoResponseDTO.java`

**Código problemático:**
```java
// Falta el campo idUsuario:
private Long idPaciente;  // Table ID
// private Long idUsuario;  // ❌ Firebase User ID - FALTA
```

**Impacto:** `listarPacientesByPsicologo()` devolvía table IDs en lugar de Firebase User IDs.

**Solución aplicada:** Agregado campo `idUsuario` y actualizado `toResponse()` en el service.

---

## Cambios Realizados

### Backend (Spring Boot)

#### 1. `PsicologoPacienteRepository.java`
```java
// NUEVO MÉTODO
Optional<PsicologoPaciente> findByPsicologo_Usuario_IdUsuario(Long idUsuario);
```

#### 2. `AuthService.java`
- Actualizado `login()` para devolver Firebase User IDs
- Actualizado `registerPaciente()` para devolver Firebase User IDs
- Actualizado `registerAdmin()` para devolver Firebase User IDs
- Agregado lógica para devolver `idPaciente` de psicólogos

#### 3. `PacientePsicologoResponseDTO.java`
- Agregado campo `idUsuario`

#### 4. `PacientePsicologoService.java`
- Actualizado `toResponse()` para setear `idUsuario`

### Android (Kotlin)

#### 1. `ChatListViewModel.kt`
- Simplificado `loadFirstAssignedPatient()` para usar directamente `first.idPaciente`
- `resolvePacienteParaChat()` usa `getPacienteById()` con Firebase User IDs

#### 2. `ProfileRepository.kt`
- Restaurado a versión más simple (sin `getPacienteByFirebaseUserId`)

#### 3. `ProfileUseCaseGeneral.kt`
- Restaurado a versión más simple (sin `getPacienteByFirebaseUserId`)

#### 4. `ProfileApi.kt`
- Restaurado a versión más simple (sin endpoint `getPacienteByFirebaseUserId`)

---

## Pruebas de Validación

### Build Status
- ✅ Backend: `./mvnw compile` - SUCCESS
- ✅ Android: `./gradlew assembleDebug` - SUCCESS

### Verificación de Flujo Completo

1. **Login Flow:**
   ```
   Psicólogo login → Backend devuelve idUsuario (Firebase) + idPaciente (Firebase)
   Android guarda UserSession con Firebase User IDs
   ```

2. **Chat List Flow:**
   ```
   ChatListViewModel.cargar → session.idPaciente != null
   → resolvePacienteParaChat(idPaciente)
   → profileUseCaseGeneral.getPacienteById(idPaciente)
   → backend API /api/pacientes/{id} (espera table ID pero ahora recibe Firebase ID)
   ```

3. **Room ID Generation:**
   ```
   ChatFirebaseService.generateRoomId(currentUserId, partnerId)
   → min(currentUserId, partnerId)_max(currentUserId, partnerId)
   → roomId correcto usando Firebase User IDs
   ```

---

## Referencias de Código

### Backend - AuthService.java (Líneas clave)
- Login: lines 70-92
- RegisterPaciente: lines 237-248
- RegisterAdmin: lines 295-300

### Backend - PacientePsicologoService.java
- toResponse: lines 88-129

### Android - ChatListViewModel.kt
- loadFirstAssignedPatient: lines 122-137
- resolvePacienteParaChat: lines 93-119

### Android - ChatFirebaseService.kt
- generateRoomId: lines 19-23
- sendMessage: lines 93-115

---

## Notas Adicionales

### Arquitectura de IDs en el Sistema

| Contexto | ID Type | Ejemplo |
|----------|---------|---------|
| Firebase Auth | `idUsuario` | 1234567890 |
| Database Table | `idPaciente`, `idPsicologo` | 1, 2, 3 |
| Firebase RTDB | Debe usar `idUsuario` | `chats/1234567890_987654321/messages` |

### Lecciones Aprendidas

1. **Nunca asumir** que un ID de base de datos es igual a un ID de Firebase
2. **Documentar explícitamente** en cada capa qué tipo de ID se espera
3. **Validar en los bordes** (API entry points) que los IDs sean del tipo correcto
4. **Mapeo de IDs** debe ser explícito y consistentemente manejado

### Posibles Regresiones Futuras

- Si se agrega un nuevo endpoint que recibe un paciente ID, verificar si debe ser table ID o Firebase User ID
- Si se cambia la lógica de asignación de pacientes a psicólogos, actualizar `AuthService` para reflejar el nuevo `idPaciente`

---

## Checklist de Verificación

- [x] Root cause identificada (backend devuelve table IDs en lugar de Firebase User IDs)
- [x] Backend compilado exitosamente
- [x] Android compilado exitosamente
- [x] Cambios mínimos (solo lo necesario para corregir el flujo)
- [x] Sin refactorizaciones no necesarias
