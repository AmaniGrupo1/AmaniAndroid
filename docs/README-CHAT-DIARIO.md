# 💬 Chat & 📓 Diario Emocional — Documentación Técnica

> **Proyecto:** AmaniAndroid  
> **Stack:** Kotlin · Jetpack Compose · Firebase RTDB · Firebase Storage · Room · WorkManager · Retrofit  
> **Arquitectura:** Clean Architecture (Data · Domain · Presentation)

---

## Índice

- [Chat en tiempo real](#-chat-en-tiempo-real)
  - [Arquitectura del Chat](#arquitectura-del-chat)
  - [Clases clave](#clases-clave--chat)
  - [Flujo de envío de mensajes](#flujo-de-envío-de-mensajes)
  - [Flujo de recepción (tiempo real)](#flujo-de-recepción-tiempo-real)
  - [Tipos de mensaje](#tipos-de-mensaje)
  - [Funcionalidades de audio](#funcionalidades-de-audio)
  - [Lista de conversaciones (por rol)](#lista-de-conversaciones-por-rol)
  - [Estructura Firebase RTDB](#estructura-firebase-rtdb)
  - [Servicios externos — Chat](#servicios-externos--chat)
- [Diario Emocional](#-diario-emocional)
  - [Arquitectura del Diario](#arquitectura-del-diario)
  - [Clases clave](#clases-clave--diario-emocional)
  - [Modelo de datos](#modelo-de-datos-room)
  - [Flujo de creación/edición](#flujo-de-creaciónedición)
  - [Flujo de sincronización](#flujo-de-sincronización)
  - [API REST — Endpoints](#api-rest--endpoints)
  - [Interfaz de usuario](#interfaz-de-usuario--pantalla-diario)
  - [Servicios externos — Diario](#servicios-externos--diario)
- [Decisiones de diseño relevantes](#-decisiones-de-diseño-relevantes)

---

## 💬 Chat en tiempo real

### Arquitectura del Chat

```
┌──────────────────────────────────────────────┐
│             Presentation Layer                │
│  ChatListScreen  ─►  ChatListViewModel        │
│  ChatScreen      ─►  ChatViewModel            │
│    ├── ChatInputBar  (texto/mic/adjunto)       │
│    ├── MessageBubble (todos los tipos)        │
│    ├── AudioBubble   (reproductor)            │
│    └── ImageMessage  (Coil async)             │
├──────────────────────────────────────────────┤
│              Domain Layer                     │
│  ChatUser · SendMessageUseCase                │
│  GetMessagesUseCase                           │
├──────────────────────────────────────────────┤
│               Data Layer                      │
│  ChatRepositoryImpl                           │
│    ├── ChatFirebaseService  (RTDB)            │
│    └── ChatApi              (REST Retrofit)   │
└──────────────────────────────────────────────┘
          │                    │
   Firebase RTDB        REST API backend
   Firebase Storage     (POST /api/chats/messages)
```

El Chat usa **dos servicios de red simultáneamente**:
- **Firebase Realtime Database** → mensajería en tiempo real, typing, presencia
- **API REST (Retrofit)** → persistencia permanente en el backend

---

### Clases clave — Chat

| Clase | Capa | Responsabilidad |
|---|---|---|
| `ChatApi` | Data/Remoto | Interfaz Retrofit — `POST /api/chats/messages` |
| `ChatFirebaseService` | Data/Remoto | Todas las operaciones Firebase RTDB |
| `ChatRepository` | Data | Contrato (interfaz) de operaciones de chat |
| `ChatRepositoryImpl` | Data | Implementación: delega en Firebase + REST |
| `ChatViewModel` | Presentation | Lógica de mensajes, typing, presencia, audio |
| `ChatListViewModel` | Presentation | Carga interlocutores según rol de usuario |
| `ChatScreen` | UI | Pantalla principal de chat (Compose) |
| `ChatListScreen` | UI | Lista de conversaciones disponibles |
| `ChatInputBar` | UI | Barra inferior: texto / micrófono / adjunto |
| `MessageBubble` | UI | Renderiza todos los tipos de mensaje |
| `AudioBubble` | UI | Controles de reproducción de audio |
| `AudioHandler` | UI | Grabación de audio (OGG/Opus o M4A/AAC) |
| `ImageMessage` | UI | Carga asíncrona de imágenes con Coil |
| `ChatUiModel` | UI | `buildChatItems()`: agrupa y separa por fecha |
| `ChatUiState` | UI | Sealed class: `Loading` · `Success` · `Error` |
| `ChatUser` | Domain | Modelo de usuario: id, nombre, rol |

---

### Flujo de envío de mensajes

```
Usuario escribe texto
       │
       ▼
ChatInputBar.onValueChange()
       │
       ▼
ChatViewModel.onInputChanged()
   └─► startTyping() ──► Firebase RTDB: typing/{roomId}/{userId} = true
       │
  [Usuario pulsa Enviar]
       │
       ▼
ChatViewModel.sendMessage()
       │
       ├── [Solo texto]
       │       └─► SendMessageUseCase
       │               └─► ChatRepositoryImpl.sendMessage()
       │                       └─► HTTP POST /api/chats/messages (REST)
       │
       ├── [Con adjunto (imagen/doc)]
       │       ├─► FileStorageService.uploadFile(uri, conversationId)
       │       │       └─► Firebase Storage upload
       │       └─► SendMessageUseCase con {attachmentUrl, attachmentType, attachmentName}
       │               └─► HTTP POST /api/chats/messages
       │                       └─► ChatFirebaseService.updateMessageAttachment()
       │                               (reintenta hasta 6 veces)
       │
       └── [Nota de voz]
               ├─► AudioHandler.stopRecording()  ──► archivo local OGG/M4A
               ├─► FileStorageService.uploadVoiceNote()  ──► Firebase Storage
               └─► SendMessageUseCase con tipo AUDIO
                       └─► HTTP POST /api/chats/messages

stopTyping() ──► Firebase RTDB: typing/{roomId}/{userId} = false
```

---

### Flujo de recepción (tiempo real)

```
ChatViewModel.init
       │
       ▼
authRepository.ensureFirebaseAuthenticated()
       │
       ▼
GetMessagesUseCase(currentUserId, otherUserId)
       │
       ▼
ChatFirebaseService.observeMessages()
   roomId = "${min(id1,id2)}_${max(id1,id2)}"
       │
       ▼
ChildEventListener en "chats/{roomId}/messages"
   onChildAdded / onChildChanged
       │
       ▼
parseMessage() ──► emite lista actualizada (callbackFlow)
       │
       ▼
ChatViewModel._messages actualiza
       │
       ▼
uiState (combine de 8 flows) ──► ChatScreen recompone
       │
       ▼
markMessagesAsRead() + markMessagesAsDelivered()  [automático]
```

> **Room ID determinístico:** `"${min(id1,id2)}_${max(id1,id2)}"` — garantiza una única sala de chat independientemente de quién inicia la conversación.

---

### Tipos de mensaje

`MessageBubble` usa `Message.toUiContent()` para despachar a distintos composables:

| Tipo | Composable | Detalles |
|---|---|---|
| `TEXT` | Texto inline | Burbujas con "cola" (`isFirstInGroup`, `isLastInGroup`) |
| `IMAGE` | `ImageMessage` (Coil) | AsyncImage con reintentos |
| `AUDIO` | `AudioBubble` + ExoPlayer | Barra de progreso redondeada, tiempo transcurrido/total |
| `DOCUMENT` | Enlace clicable | Abre con `Intent.ACTION_VIEW` + MIME type |
| `ATTACHMENT_PLACEHOLDER` | Indicador de carga | Mostrado mientras sube el adjunto |
| `UNKNOWN` | Fallback genérico | Tipo no reconocido |

**Agrupación visual** (`buildChatItems`):
1. Ordena mensajes por timestamp ascendente
2. Agrupa mensajes consecutivos del mismo remitente → `isFirstInGroup`/`isLastInGroup`
3. Inserta `DateSeparator` entre días distintos
4. Invierte la lista para `reverseLayout = true` en `LazyColumn`

---

### Funcionalidades de audio

#### Grabación (`AudioHandler`)
```
API >= 26 (Oreo+)  →  OGG / Opus @ 48 kHz / 64 kbps
API < 26            →  M4A / AAC  @ 44.1 kHz / 128 kbps
```
- `StateFlow<Int>` cuenta los segundos de grabación vía una corutina timer
- `RecordingBar` animado en `ChatInputBar` mientras graba

#### Reproducción (ExoPlayer / Media3)
- `ChatViewModel.toggleAudioPlayback(url)` carga `MediaItem` desde URL remota
- Job periódico cada **300 ms** actualiza `positionMs` / `durationMs` en `AudioPlaybackUiState`
- `AudioBubble` muestra: botón play/pausa · `RoundedAudioProgressBar` · tiempo `mm:ss / mm:ss`

---

### Lista de conversaciones (por rol)

`ChatListViewModel` lee la sesión de `UserSessionDataStore`:

```
Rol PACIENTE
  ├── idPsicologo en sesión  →  getPsicologoById()
  └── sin idPsicologo        →  obtenerPsicologoAsignado(idPaciente)

Rol PSICÓLOGO
  └── listarPacientesByPsicologo()
          └── para cada paciente: resolveAndAddPaciente()  →  lista ChatPartner
```

Cada `ChatPartner` se muestra como tarjeta en `ChatListScreen`. Al tocarla navega a `ChatScreen` con parámetros: `currentId`, `partnerId`, `partnerName`.

---

### Estructura Firebase RTDB

| Dato | Ruta | Dirección |
|---|---|---|
| Mensajes | `chats/{roomId}/messages` | Bidireccional |
| Indicador de escritura | `typing/{roomId}/{userId}` | Push bool |
| Estado online | `users/{userId}/isOnline` | Push + `onDisconnect().setValue(false)` |
| Última conexión | `users/{userId}/lastSeen` | Push timestamp |

> **Limpieza automática:** `onDisconnect().setValue(false)` para `isOnline` y `onDisconnect().removeValue()` para `typing` garantizan que Firebase limpie el estado si la app se cierra inesperadamente.

---

### Servicios externos — Chat

| Servicio | Uso |
|---|---|
| **Firebase Realtime Database** | Mensajes en tiempo real, typing, presencia |
| **Firebase Storage** | Subida de archivos, imágenes y audios |
| **REST API (Retrofit)** | `POST /api/chats/messages` — persistencia permanente |
| **Coil** | Carga y caché de imágenes (`ImageMessage`, preview adjunto) |
| **ExoPlayer (Media3)** | Reproducción de audios remotos |
| **Android MediaRecorder** | Grabación de audio del micrófono |

---

---

## 📓 Diario Emocional

### Arquitectura del Diario

```
┌──────────────────────────────────────────────────┐
│              Presentation Layer                   │
│  DiarioEmocionalScreen                           │
│    ├── Step 0: EmotionWheel + SubEmotionChips    │
│    ├── Step 1: Intensity Slider (1-10)           │
│    └── Step 2: Context TextField + Save button   │
│  DiarioEmocionalViewModel                        │
├──────────────────────────────────────────────────┤
│               Domain Layer                        │
│  EntradaDiario · SyncStatus                      │
│  DiarioEmocionRequestDTO · DiarioEmocionResponseDTO│
├──────────────────────────────────────────────────┤
│                Data Layer                         │
│  DiarioEmocionalRepository  (Fachada)            │
│    ├── AmaniDatabase / DiarioEmocionalDao  (Room)│
│    └── DiarioRemoteRepository / DiarioApi (REST) │
│  DiarioSyncManager                               │
│  SyncDiarioWorker  (WorkManager)                 │
└──────────────────────────────────────────────────┘
           │                     │
      Room / SQLite          REST API backend
    (fuente de verdad)    /api/diario-emocion
```

**Estrategia: Offline-First** — Room es siempre la fuente de verdad. La red solo sincroniza en segundo plano.

---

### Clases clave — Diario Emocional

| Clase | Capa | Responsabilidad |
|---|---|---|
| `AmaniDatabase` | Data/Local | Base de datos Room (versión 2) |
| `EntradaDiarioEntity` | Data/Local | Entidad Room — tabla `entradas_diario_emocional` |
| `DiarioEmocionalDao` | Data/Local | DAO: CRUD + `Flow` reactivo + sync status |
| `DiarioApi` | Data/Remoto | Interfaz Retrofit — CRUD `/api/diario-emocion` |
| `DiarioRemoteRepository` | Data/Remoto | Envuelve llamadas API en `runCatching → Result<T>` |
| `DiarioSyncManager` | Data | Programa jobs WorkManager, lógica push/pull |
| `SyncDiarioWorker` | Data | `CoroutineWorker` — push → pull, reintentos |
| `DiarioEmocionalRepository` | Data | Fachada: DAO + trigger sync, mapeo entidad↔dominio |
| `EntradaDiario` | Domain | Modelo de dominio (sin metadatos de sync) |
| `SyncStatus` | Domain | Enum: `SYNCED` · `PENDING_CREATE` · `PENDING_UPDATE` · `PENDING_DELETE` |
| `DiarioEmocionalViewModel` | Presentation | Estado UI, control de pasos del wizard |
| `DiarioEmocionalScreen` | UI | UI completa: rueda emocional, wizard, historial |

---

### Modelo de datos (Room)

**Tabla:** `entradas_diario_emocional`

| Campo | Tipo | Descripción |
|---|---|---|
| `id` | Long (PK autoGenerate) | ID local |
| `titulo` | String | Título de la entrada |
| `contenido` | String | Texto libre (contexto) |
| `emocion` | String | Emoción seleccionada (Plutchik) |
| `intensidad` | Int (1–10) | Nivel de intensidad |
| `createdAt` | Long | Timestamp de creación (epoch ms) |
| `updatedAt` | Long | Timestamp de última actualización (epoch ms) |
| `remoteId` | Long? | ID del backend (null hasta primera sync) |
| `syncStatus` | SyncStatus | Estado de sincronización |
| `lastSyncAttempt` | Long? | Timestamp del último intento de sync |

> **Migración 1→2:** Añade `remoteId`, `syncStatus` (default `SYNCED`), `lastSyncAttempt`.

---

### Flujo de creación/edición

```
Usuario completa wizard (3 pasos)
       │
       ▼
DiarioEmocionalViewModel.guardarEntrada()
   [valida: título + contenido no vacíos]
       │
       ▼
DiarioEmocionalRepository.guardarEntrada(id?, titulo, contenido, emocion, intensidad)
       │
       ├── [Nueva entrada]
       │       └─► dao.insertar()  con  syncStatus = PENDING_CREATE
       │
       ├── [Edición con remoteId]
       │       └─► dao.actualizar()  con  syncStatus = PENDING_UPDATE
       │
       └── [Edición sin remoteId aún]
               └─► dao.actualizar()  con  syncStatus = PENDING_CREATE
       │
       ▼
syncManager.enqueueImmediateSync()
   └─► OneTimeWorkRequest<SyncDiarioWorker>
           con restricción: NetworkType.CONNECTED
```

**Eliminación (soft delete):**
```
DiarioEmocionalViewModel.eliminarEntrada()
       │
       ▼
dao.setSyncStatus(id, PENDING_DELETE)   ← no borra de BD
       │
       ▼
observeEntradas() filtra PENDING_DELETE  ← desaparece de la UI inmediatamente
       │
       ▼
enqueueImmediateSync()  ← se borrará del servidor cuando haya red
```

---

### Flujo de sincronización

#### Push (local → remoto)

```
DiarioSyncManager.pushPendingEntries()
       │
       ▼
dao.getPendingSync()
   [syncStatus != SYNCED, ordenado: CREATE(0) → UPDATE(1) → DELETE(2)]
       │
       ├── PENDING_CREATE
       │       └─► remoteRepository.create(toRequestDTO())
       │               ├── OK → dao.updateRemoteId(localId, response.idDiario, SYNCED)
       │               └── ERROR → mantiene PENDING_CREATE + guarda timestamp
       │
       ├── PENDING_UPDATE
       │       └─► remoteRepository.update(remoteId, ...)
       │               ├── OK → marca SYNCED
       │               └── ERROR → mantiene PENDING_UPDATE
       │
       └── PENDING_DELETE
               ├── sin remoteId → dao.eliminar() directamente
               └── con remoteId → remoteRepository.delete(remoteId)
                       ├── OK → dao.eliminar()
                       └── ERROR → mantiene PENDING_DELETE
```

#### Pull (remoto → local)

```
DiarioSyncManager.pullRemoteEntries()
       │
       ▼
remoteRepository.getAll()  [todas las entradas del servidor]
       │
       ├── Sin coincidencia local por remoteId
       │       └─► dao.insertar(toLocalEntity().copy(syncStatus = SYNCED))
       │
       ├── Coincidencia local con syncStatus = SYNCED
       │       └─► compara timestamps:
       │               remoteTimestamp > local.updatedAt  →  dao.actualizar()  [servidor gana]
       │               remoteTimestamp <= local.updatedAt →  sin cambios
       │
       └── Coincidencia local con PENDING_*
               └─► sin overwrite  [local gana siempre]
```

#### Sync periódica
`DiarioSyncManager.enqueuePeriodicSync()` programa un `PeriodicWorkRequest<SyncDiarioWorker>` cada **15 minutos** con restricción de red, nombrado `"diario_periodic_sync"` (política `KEEP`).

---

### API REST — Endpoints

| Método | Endpoint | Descripción |
|---|---|---|
| `GET` | `/api/diario-emocion` | Obtener todas las entradas |
| `GET` | `/api/diario-emocion/{id}` | Obtener por ID |
| `GET` | `/api/diario-emocion/paciente/{idPaciente}` | Obtener por paciente |
| `POST` | `/api/diario-emocion` | Crear entrada |
| `PUT` | `/api/diario-emocion/{id}` | Actualizar entrada |
| `DELETE` | `/api/diario-emocion/{id}` | Eliminar entrada |

**Request DTO:** `idPaciente` · `fecha` (ISO string) · `titulo` · `emocion` · `intensidad` · `nota`  
**Response DTO:** `idDiario` · `fecha` · `titulo` · `emocion` · `intensidad` · `nota`

> **Nota de parsing de fechas:** El backend envía `LocalDateTime` sin sufijo `Z`. `DiarioSyncManager.parseIsoToEpoch()` intenta: `Instant.parse()` → `LocalDateTime.parse(UTC)` → añade `Z` como fallback.

---

### Interfaz de usuario — Pantalla Diario

La pantalla usa un `HorizontalPager` de 3 pasos sincronizado con `DiarioEmocionalViewModel.currentStep`:

#### Paso 0 — Emoción (`StepEmocion`)
- `OutlinedTextField` para el título
- **`EmotionWheel`** — Canvas personalizado con la rueda de Plutchik (8 emociones):
  - `detectTapGestures` calcula el ángulo polar → índice de emoción
  - Colores: Cálido (naranja), Frío (azul), Neutro (sin tinte)
  - Sector seleccionado: trazo blanco destacado + emoji + etiqueta
- **`SubEmotionChips`** — fila horizontal de `FilterChip` con 3 variantes de intensidad
  (ej: "Éxtasis / Alegría / Serenidad")

**Las 8 emociones de Plutchik:** Alegría · Confianza · Ira · Tristeza · Asco · Miedo · Sorpresa · Anticipación

#### Paso 1 — Intensidad (`StepIntensidad`)
- Número grande circular mostrando el valor (1–10)
- `Slider` de 1f a 10f con 8 pasos
- Etiquetas: "Leve / Moderado / Extremo"

#### Paso 2 — Contexto (`StepContexto`)
- `OutlinedTextField` multilínea (mín. 5 líneas, máx. 500 caracteres) con contador
- Botón "Guardar entrada" / "Actualizar" (con icono según modo)
- Botón "Cancelar" (solo en modo edición)

#### Historial (`HistoryEntryCard`)
Lista reactiva bajo el pager, ordenada por `createdAt DESC`:
- Muestra: título · emoji+etiqueta de emoción · intensidad · fecha `dd/MM/yyyy HH:mm`
- Icono editar → rellena el wizard con los datos de la entrada, vuelve al paso 0
- Icono eliminar → soft delete inmediato

**Barra superior:** botón de sync → `forzarSincronizacion()` → WorkManager inmediato. Snackbars confirman cada acción.

---

### Servicios externos — Diario

| Servicio | Uso |
|---|---|
| **Room (SQLite)** | Almacenamiento local-first, queries reactivas con `Flow` |
| **WorkManager** | Sync en background: inmediata (OneTime) + periódica (15 min) |
| **REST API (Retrofit)** | CRUD completo en `/api/diario-emocion` |
| **Koin** | Inyección de dependencias (`DiarioSyncManager` → `SyncDiarioWorker`) |
| **Timber** | Logging estructurado en operaciones de sync |

---

---

## 🏗️ Decisiones de diseño relevantes

| # | Decisión | Detalle |
|---|---|---|
| 1 | **Offline-first (Diario)** | Todas las escrituras van primero a Room con `PENDING_*`. La UI es siempre reactiva a datos locales. Un fallo de red solo retrasa la sync, nunca bloquea al usuario. |
| 2 | **Resolución de conflictos (Diario)** | El servidor gana en entradas `SYNCED` (comparación de timestamps). El local siempre gana en entradas `PENDING_*`. |
| 3 | **Escritura dual (Chat)** | Envía vía REST (persistencia/notificaciones backend) y el listener de Firebase RTDB lo muestra en tiempo real. El `idMensaje` de la respuesta REST se usa para actualizar el nodo Firebase con metadatos del adjunto. |
| 4 | **Room ID determinístico (Chat)** | `"${min(id1,id2)}_${max(id1,id2)}"` garantiza una única sala de chat independientemente de quién inicia. |
| 5 | **Limpieza de presencia (Chat)** | `onDisconnect().setValue(false)` para `isOnline` y `onDisconnect().removeValue()` para `typing` — Firebase limpia automáticamente si la app se cierra inesperadamente. |
| 6 | **Reintentos de adjunto (Chat)** | `ChatFirebaseService.updateMessageAttachment()` reintenta hasta **6 veces** para actualizar el nodo Firebase con la URL del archivo subido a Storage. |
| 7 | **Recibos de lectura (Chat)** | `markMessageDelivered` y `markMessageAsRead` individuales son stubs pendientes. La marcación masiva de leídos (`markMessagesAsRead`) sí es funcional: query Firebase `orderByChild("leido").equalTo(false)`. |

---

*Documentación generada a partir del análisis del código fuente — AmaniAndroid.*
