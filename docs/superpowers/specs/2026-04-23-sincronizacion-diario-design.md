# Diseño: Sincronización Diario Emocional Android ↔ Spring Boot

## Fecha: 2026-04-23
## Estado: Aprobado

---

## 1. Resumen

El diario emocional actual opera **100% offline** (Room local). Este diseño añade sincronización **offline-first** con el backend Spring Boot via Retrofit + WorkManager.

---

## 2. Modelo de datos

### 2.1 Backend (Spring Boot) — cambios requeridos

Añadir campo `titulo` a:
- `DiarioEmocion` (JPA entity)
- `DiarioEmocionRequestDTO`
- `DiarioEmocionResponseDTO`

Mapeo final Android ↔ Backend:

| Android (Room) | Backend (JPA) | Tipo |
|---|---|---|
| `id` (local) | `idDiario` (remote) | Long |
| `titulo` | `titulo` *(nuevo)* | String |
| `contenido` | `nota` | String |
| `emocion` | `emocion` | String |
| `intensidad` | `intensidad` | Int |
| `createdAt` | `fecha` | Long (epoch ms) ↔ LocalDateTime |
| `updatedAt` | — | Long (epoch ms) |

### 2.2 Room Entity (v2)

```kotlin
@Entity(tableName = "entradas_diario_emocional")
data class EntradaDiarioEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0L,
    val remoteId: Long? = null,
    val titulo: String,
    val contenido: String,
    val emocion: String,
    val intensidad: Int,
    val createdAt: Long,
    val updatedAt: Long,
    val syncStatus: SyncStatus = SyncStatus.SYNCED,
    val lastSyncAttempt: Long? = null
)
```

```kotlin
enum class SyncStatus {
    SYNCED,
    PENDING_CREATE,
    PENDING_UPDATE,
    PENDING_DELETE
}
```

---

## 3. Arquitectura

### Componentes nuevos

| Componente | Rol |
|---|---|
| `DiarioApi` (Retrofit) | Interfaz CRUD contra `/api/diario-emocion` |
| `DiarioRemoteRepository` | Wrapper de `DiarioApi` con Result/error handling |
| `DiarioSyncManager` | Orquesta cola de sync, resuelve conflictos last-write-wins |
| `SyncDiarioWorker` (WorkManager) | Worker one-time (expedited) y periódico para push/pull |
| `DiarioRepository` (refactor) | Single source of truth via Room + delega sync |

### Flujo de dependencias

```
ViewModel → DiarioRepository (Room + sync)
                    ↓
         ┌──────────┴──────────┐
         ↓                     ↓
    DiarioEmocionalDao    DiarioSyncManager
         ↓                     ↓
      Room DB           SyncDiarioWorker
                               ↓
                         DiarioRemoteRepository
                               ↓
                            DiarioApi (Retrofit)
                               ↓
                          Spring Boot
```

---

## 4. Flujo de sincronización

### 4.1 Crear entrada (offline-first)

1. Usuario guarda → `DiarioRepository.insertLocal()` → Room con `PENDING_CREATE`, `remoteId = null`
2. Emite al UI via Flow inmediatamente
3. Encola `SyncDiarioWorker` (one-time, expedited)
4. Worker POST `/api/diario-emocion` → éxito → actualiza `remoteId` + `SYNCED`
5. Falla → WorkManager reintenta con backoff, mantiene `PENDING_CREATE`

### 4.2 Editar entrada

1. Actualiza Room con `syncStatus = PENDING_UPDATE` (o `PENDING_CREATE` si sin `remoteId`)
2. Encola Worker → PUT `/api/diario-emocion/{remoteId}`
3. Éxito → `SYNCED`

### 4.3 Eliminar entrada

1. Soft-delete: Room `syncStatus = PENDING_DELETE`
2. UI filtra deletes (no muestra entrada)
3. Worker → DELETE endpoint → elimina fila local definitivamente

### 4.4 Sync periódica (pull + push)

Worker ejecuta al abrir pantalla diario y cada 15 minutos (configurable):

1. **Push**: sube todos `PENDING_*` en orden (CREATE → UPDATE → DELETE)
2. **Pull**: GET `/api/diario-emocion` → compara `updatedAt` / `fecha`
   - Remoto más reciente → actualiza local, `SYNCED`
   - Local más reciente → marca `PENDING_UPDATE`, push inmediato
   - Conflicto: **remote gana** (last-write-wins)

---

## 5. Error handling y edge cases

| Situación | Handling |
|---|---|
| Sin red al guardar | UI no bloquea. Snackbar: "Guardado localmente. Se sincronizará cuando haya conexión." Worker reintenta con backoff. |
| Auth 401 en sync | `AuthInterceptor` refresca token. Si falla, Worker se reintenta más tarde. |
| Entrada eliminada en server | Pull no la encuentra → marca local `PENDING_DELETE` → Worker borra fila. |
| Edición concurrente local | Mutex por `id` en `DiarioSyncManager`. Cambio acumula en siguiente ciclo. |
| Backend 404 en PUT/DELETE | Entrada ya no existe remoto → marca local `SYNCED` para evitar loop infinito. |
| Rate limit / 503 | Backoff exponencial WorkManager: 10s, 20s, 40s… máx 5 reintentos. |
| Migración Room v1 → v2 | Migration automática: `remoteId` default `0`, `syncStatus` default `SYNCED`, `lastSyncAttempt` default `null`. |

---

## 6. API contract (Retrofit)

```kotlin
interface DiarioApi {
    @GET("/api/diario-emocion")
    suspend fun getAll(): List<DiarioEmocionResponseDTO>

    @GET("/api/diario-emocion/{id}")
    suspend fun getById(@Path("id") id: Long): DiarioEmocionResponseDTO

    @POST("/api/diario-emocion")
    suspend fun create(@Body request: DiarioEmocionRequestDTO): DiarioEmocionResponseDTO

    @PUT("/api/diario-emocion/{id}")
    suspend fun update(
        @Path("id") id: Long,
        @Body request: DiarioEmocionRequestDTO
    ): DiarioEmocionResponseDTO

    @DELETE("/api/diario-emocion/{id}")
    suspend fun delete(@Path("id") id: Long)
}
```

### DTOs Android

```kotlin
data class DiarioEmocionRequestDTO(
    val idPaciente: Long,
    val fecha: String,       // ISO-8601
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String
)

data class DiarioEmocionResponseDTO(
    val idDiario: Long,
    val fecha: String,       // ISO-8601
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String
)
```

---

## 7. Cambios en capas existentes

| Archivo | Cambio |
|---|---|
| `EntradaDiarioEntity` | Añade `remoteId`, `syncStatus`, `lastSyncAttempt` |
| `DiarioEmocionalDao` | Nuevas queries: `getPendingSync()`, `updateSyncStatus()`, `getByRemoteId()` |
| `DiarioEmocionalRepository` | Refactor a offline-first: todas las operaciones pasan por Room primero, delegan sync |
| `DiarioEmocionalViewModel` | Sin cambios funcionales. Posible snackbar de estado de sync. |
| `DiarioEmocionalScreen` | Sin cambios. Sync es transparente para UI. |
| `AmaniDatabase` | Migration v1 → v2 |
| `AppModule` (Koin) | Registra `DiarioApi`, `DiarioRemoteRepository`, `DiarioSyncManager`, `SyncDiarioWorker` |
| `RetrofitModule` | Añade `single<DiarioApi> { get<Retrofit>().create(DiarioEmocionApi::class.java) }` |

---

## 8. Backend — cambios necesarios

| Archivo | Cambio |
|---|---|
| `DiarioEmocion.java` | Añade campo `private String titulo;` |
| `DiarioEmocionRequestDTO.java` | Añade `private String titulo;` + `@NotBlank` |
| `DiarioEmocionResponseDTO.java` | Añade `private String titulo;` + `private Long idDiario;` |
| `DiarioEmocionService.java` | Ajusta mapeo para incluir `titulo` |

**Nota:** migración de base de datos JPA para añadir columna `titulo`.

---

## 9. Testing

### Unit tests
- `DiarioSyncManager`: cola de sync, resolución de conflictos, mutex
- `DiarioRepository`: operaciones CRUD local, emisión de Flow, syncStatus correcto
- `SyncDiarioWorker`: push/pull, manejo de errores, backoff

### Integration tests
- Worker con backend mockeado (MockWebServer)
- Flujo completo: guardar offline → activar red → verificar sync

---

## 10. Decisiones clave

1. **Offline-first**: Room es single source of truth. Backend es replicación.
2. **Remote gana en conflicto**: última escritura en servidor tiene prioridad. Simplifica lógica.
3. **WorkManager**: sync periódico + expedited on-demand. Soporta Doze/App Standby.
4. **Soft delete local**: `PENDING_DELETE` hasta confirmar eliminación remota. UI filtra.

---

## Aprobado por: Ivan
## Fecha aprobación: 2026-04-23
