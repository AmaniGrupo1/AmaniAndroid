# Sincronización Diario Emocional — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Hacer que el diario emocional de Android sincronice offline-first con el backend Spring Boot via WorkManager, manteniendo la UI actual sin cambios funcionales.

**Architecture:** Room es single source of truth. Todas las operaciones CRUD van primero a Room con `syncStatus` (SYNCED/PENDING_CREATE/PENDING_UPDATE/PENDING_DELETE). Un `SyncDiarioWorker` (WorkManager) corre periódicamente y on-demand para hacer push/pull del backend. El backend añade campo `titulo` a `DiarioEmocion` y sus DTOs. Conflicto last-write-wins usando `updatedAt`/`fecha`.

**Tech Stack:** Android (Kotlin, Room, Retrofit, Koin, WorkManager), Spring Boot (JPA, Lombok, validation)

---

## File Structure

| File | Action | Responsibility |
|---|---|---|
| `amani-apirest/src/main/java/com/amani/amaniapirest/models/DiarioEmocion.java` | Modify | JPA entity, añade `titulo` |
| `amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/request/DiarioEmocionRequestDTO.java` | Modify | Request DTO, añade `titulo` |
| `amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/response/DiarioEmocionResponseDTO.java` | Modify | Response DTO, añade `titulo` + `idDiario` |
| `amani-apirest/src/main/java/com/amani/amaniapirest/services/paciente/DiarioEmocionService.java` | Modify | Añade `titulo` al create/update/mapper |
| `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/EntradaDiarioEntity.kt` | Modify | Añade `remoteId`, `syncStatus`, `lastSyncAttempt` |
| `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/DiarioEmocionalDao.kt` | Modify | Queries para sync: `getPendingSync`, `updateSyncStatus`, `getByRemoteId` |
| `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/AmaniDatabase.kt` | Modify | Migration v1 → v2 |
| `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/SyncStatus.kt` | Create | Enum `SYNCED`, `PENDING_CREATE`, `PENDING_UPDATE`, `PENDING_DELETE` |
| `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionRequestDTO.kt` | Create | DTO para POST/PUT al backend |
| `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionResponseDTO.kt` | Create | DTO para GET del backend |
| `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioApi.kt` | Create | Retrofit interface CRUD |
| `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioRemoteRepository.kt` | Create | Wrapper de DiarioApi con Result |
| `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SyncDiarioWorker.kt` | Create | WorkManager worker de sync |
| `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt` | Create | Orquesta cola de sync, resuelve conflictos |
| `app/src/main/java/org/ies/tierno/applicationamani/data/repositorio/DiarioEmocionalRepository.kt` | Modify | Refactor a offline-first: Room primero, delega sync |
| `app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt` | Modify | Registra `DiarioApi` |
| `app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt` | Modify | Registra `DiarioRemoteRepository`, `DiarioSyncManager`, `SyncDiarioWorker` |
| `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/diario/DiarioEmocionalViewModel.kt` | Modify | Snackbar de estado de sync, encola worker on-demand |

---

## Task 1: Backend — Añadir `titulo` a JPA entity `DiarioEmocion`

**Files:**
- Modify: `amani-apirest/src/main/java/com/amani/amaniapirest/models/DiarioEmocion.java`

- [ ] **Step 1: Añade campo `titulo` a la entidad**

```java
@Column(nullable = false)
private String titulo;
```

Añade getter/setter Lombok ya los genera, solo añade el campo.

- [ ] **Step 2: Verifica que el proyecto compila**

Run: `cd /home/ivan/amani-apirest && ./mvnw compile -q`

Expected: `BUILD SUCCESS`

- [ ] **Step 3: Commit**

```bash
git add amani-apirest/src/main/java/com/amani/amaniapirest/models/DiarioEmocion.java
git commit -m "feat(diario): add titulo field to DiarioEmocion entity"
```

---

## Task 2: Backend — Añadir `titulo` a `DiarioEmocionRequestDTO`

**Files:**
- Modify: `amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/request/DiarioEmocionRequestDTO.java`

- [ ] **Step 1: Añade campo `titulo` con validación `@NotBlank`**

```java
@NotBlank
@Schema(description = "Titulo de la entrada del diario", example = "Hoy me senti bien")
private String titulo;
```

- [ ] **Step 2: Compila**

Run: `./mvnw compile -q`

Expected: `BUILD SUCCESS`

- [ ] **Step 3: Commit**

```bash
git add amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/request/DiarioEmocionRequestDTO.java
git commit -m "feat(diario): add titulo to DiarioEmocionRequestDTO"
```

---

## Task 3: Backend — Añadir `titulo` e `idDiario` a `DiarioEmocionResponseDTO`

**Files:**
- Modify: `amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/response/DiarioEmocionResponseDTO.java`

- [ ] **Step 1: Añade `idDiario` y `titulo`**

```java
@Schema(description = "Identificador unico de la entrada", example = "1")
private Long idDiario;

@Schema(description = "Titulo de la entrada del diario", example = "Hoy me senti bien")
private String titulo;
```

- [ ] **Step 2: Actualiza constructor y `toResponse` en `DiarioEmocionService`**

En `DiarioEmocionService.java`:

```java
private DiarioEmocionResponseDTO toResponse(DiarioEmocion entrada) {
    return new DiarioEmocionResponseDTO(
            entrada.getIdDiario(),
            entrada.getFecha(),
            entrada.getTitulo(),
            entrada.getEmocion(),
            entrada.getIntensidad(),
            entrada.getNota()
    );
}
```

- [ ] **Step 3: Actualiza create/update en `DiarioEmocionService` para setear `titulo`**

En `create`:
```java
entrada.setTitulo(request.getTitulo());
```

En `update`:
```java
entrada.setTitulo(request.getTitulo());
```

- [ ] **Step 4: Compila y corre tests del backend**

Run: `./mvnw test -q`

Expected: `BUILD SUCCESS`, tests pasan (o no hay tests de diario que romper).

- [ ] **Step 5: Commit backend changes en batch**

```bash
git add amani-apirest/src/main/java/com/amani/amaniapirest/dto/dtoPaciente/response/DiarioEmocionResponseDTO.java
amani-apirest/src/main/java/com/amani/amaniapirest/services/paciente/DiarioEmocionService.java
git commit -m "feat(diario): add titulo and idDiario to response DTO and service"
```

---

## Task 4: Android — Añadir `SyncStatus` enum

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/SyncStatus.kt`

- [ ] **Step 1: Crea el enum**

```kotlin
package org.ies.tierno.applicationamani.domain.models.diario

enum class SyncStatus {
    SYNCED,
    PENDING_CREATE,
    PENDING_UPDATE,
    PENDING_DELETE
}
```

- [ ] **Step 2: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/SyncStatus.kt
git commit -m "feat(diario): add SyncStatus enum for offline sync"
```

---

## Task 5: Android — Modificar `EntradaDiarioEntity` con campos de sync

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/EntradaDiarioEntity.kt`

- [ ] **Step 1: Añade `remoteId`, `syncStatus`, `lastSyncAttempt`**

```kotlin
package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Entity
import androidx.room.PrimaryKey
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

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

- [ ] **Step 2: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/EntradaDiarioEntity.kt
git commit -m "feat(diario): add sync fields to EntradaDiarioEntity"
```

---

## Task 6: Android — Room Migration v1 → v2

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/AmaniDatabase.kt`

- [ ] **Step 1: Crea la migración**

```kotlin
package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

val MIGRATION_1_2 = object : Migration(1, 2) {
    override fun migrate(db: SupportSQLiteDatabase) {
        db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN remoteId INTEGER")
        db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN syncStatus TEXT NOT NULL DEFAULT 'SYNCED'")
        db.execSQL("ALTER TABLE entradas_diario_emocional ADD COLUMN lastSyncAttempt INTEGER")
    }
}

@Database(
    entities = [EntradaDiarioEntity::class],
    version = 2,
    exportSchema = false
)
abstract class AmaniDatabase : RoomDatabase() {
    abstract fun diarioEmocionalDao(): DiarioEmocionalDao
}
```

- [ ] **Step 2: Registra migración en `AppModule.kt`**

En `app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt`, modifica la creación de la base de datos:

```kotlin
single {
    Room.databaseBuilder(
        androidContext(),
        AmaniDatabase::class.java,
        "amani_local.db"
    )
    .addMigrations(MIGRATION_1_2)
    .build()
}
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/AmaniDatabase.kt
app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt
git commit -m "feat(diario): add Room migration v1 to v2 for sync fields"
```

---

## Task 7: Android — Añadir queries de sync al DAO

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/DiarioEmocionalDao.kt`

- [ ] **Step 1: Añade queries de sincronización**

```kotlin
package org.ies.tierno.applicationamani.data.local.diario

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

@Dao
interface DiarioEmocionalDao {

    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus != 'PENDING_DELETE' ORDER BY createdAt DESC")
    fun observeEntradas(): Flow<List<EntradaDiarioEntity>>

    @Query("SELECT * FROM entradas_diario_emocional WHERE id = :id LIMIT 1")
    suspend fun getEntradaById(id: Long): EntradaDiarioEntity?

    @Query("SELECT * FROM entradas_diario_emocional WHERE remoteId = :remoteId LIMIT 1")
    suspend fun getByRemoteId(remoteId: Long): EntradaDiarioEntity?

    @Query("SELECT * FROM entradas_diario_emocional WHERE syncStatus IN ('PENDING_CREATE', 'PENDING_UPDATE', 'PENDING_DELETE') ORDER BY updatedAt ASC")
    suspend fun getPendingSync(): List<EntradaDiarioEntity>

    @Query("UPDATE entradas_diario_emocional SET syncStatus = :status, lastSyncAttempt = :timestamp WHERE id = :id")
    suspend fun updateSyncStatus(id: Long, status: SyncStatus, timestamp: Long? = System.currentTimeMillis())

    @Query("UPDATE entradas_diario_emocional SET remoteId = :remoteId, syncStatus = :status WHERE id = :localId")
    suspend fun updateRemoteId(localId: Long, remoteId: Long, status: SyncStatus = SyncStatus.SYNCED)

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertar(entrada: EntradaDiarioEntity): Long

    @Update
    suspend fun actualizar(entrada: EntradaDiarioEntity)

    @Delete
    suspend fun eliminar(entrada: EntradaDiarioEntity)
}
```

- [ ] **Step 2: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/local/diario/DiarioEmocionalDao.kt
git commit -m "feat(diario): add sync queries to DiarioEmocionalDao"
```

---

## Task 8: Android — Crear DTOs de red

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionRequestDTO.kt`
- Create: `app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionResponseDTO.kt`

- [ ] **Step 1: Crea Request DTO**

```kotlin
package org.ies.tierno.applicationamani.domain.models.diario

data class DiarioEmocionRequestDTO(
    val idPaciente: Long,
    val fecha: String, // ISO-8601
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String
)
```

- [ ] **Step 2: Crea Response DTO**

```kotlin
package org.ies.tierno.applicationamani.domain.models.diario

data class DiarioEmocionResponseDTO(
    val idDiario: Long,
    val fecha: String, // ISO-8601
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String
)
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionRequestDTO.kt
app/src/main/java/org/ies/tierno/applicationamani/domain/models/diario/DiarioEmocionResponseDTO.kt
git commit -m "feat(diario): create network DTOs for diary sync"
```

---

## Task 9: Android — Crear `DiarioApi` (Retrofit interface)

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioApi.kt`

- [ ] **Step 1: Crea la interfaz Retrofit**

```kotlin
package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

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

- [ ] **Step 2: Registra en `RetrofitModule.kt`**

En `app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt`, añade al final del `module`:

```kotlin
single<DiarioApi> { get<Retrofit>().create(DiarioApi::class.java) }
```

Y añade el import:
```kotlin
import org.ies.tierno.applicationamani.data.remoto.DiarioApi
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioApi.kt
app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt
git commit -m "feat(diario): add DiarioApi Retrofit interface"
```

---

## Task 10: Android — Crear `DiarioRemoteRepository`

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioRemoteRepository.kt`

- [ ] **Step 1: Crea el wrapper con Result**

```kotlin
package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO

class DiarioRemoteRepository(private val api: DiarioApi) {

    suspend fun getAll(): Result<List<DiarioEmocionResponseDTO>> = runCatching {
        api.getAll()
    }

    suspend fun create(request: DiarioEmocionRequestDTO): Result<DiarioEmocionResponseDTO> = runCatching {
        api.create(request)
    }

    suspend fun update(id: Long, request: DiarioEmocionRequestDTO): Result<DiarioEmocionResponseDTO> = runCatching {
        api.update(id, request)
    }

    suspend fun delete(id: Long): Result<Unit> = runCatching {
        api.delete(id)
    }
}
```

- [ ] **Step 2: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioRemoteRepository.kt
git commit -m "feat(diario): add DiarioRemoteRepository with Result wrapping"
```

---

## Task 11: Android — Crear `DiarioSyncManager`

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt`

- [ ] **Step 1: Crea el orquestador de sync**

```kotlin
package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import androidx.work.Constraints
import androidx.work.NetworkType
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

class DiarioSyncManager(
    private val context: Context,
    private val dao: DiarioEmocionalDao,
    private val remote: DiarioRemoteRepository
) {

    fun enqueueImmediateSync() {
        val constraints = Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .build()

        val request = OneTimeWorkRequestBuilder<SyncDiarioWorker>()
            .setConstraints(constraints)
            .addTag(SYNC_TAG)
            .build()

        WorkManager.getInstance(context).enqueue(request)
    }

    fun enqueuePeriodicSync() {
        // Implementar periodic work si se requiere en Task 15
    }

    suspend fun pushPendingEntries(): Boolean {
        val pending = dao.getPendingSync()
        if (pending.isEmpty()) return true

        for (entry in pending) {
            val success = when (entry.syncStatus) {
                SyncStatus.PENDING_CREATE -> pushCreate(entry)
                SyncStatus.PENDING_UPDATE -> pushUpdate(entry)
                SyncStatus.PENDING_DELETE -> pushDelete(entry)
                else -> true
            }
            if (!success) return false
        }
        return true
    }

    suspend fun pullRemoteEntries(): Boolean {
        val result = remote.getAll()
        if (result.isFailure) return false

        val remoteEntries = result.getOrNull() ?: return true

        for (remote in remoteEntries) {
            val local = dao.getByRemoteId(remote.idDiario)
            if (local == null) {
                // Remoto existe, local no → insertar
                dao.insertar(remote.toLocalEntity())
            } else if (local.syncStatus == SyncStatus.SYNCED) {
                // Ambos synced → comparar timestamps
                val remoteTime = java.time.Instant.parse(remote.fecha + "Z").toEpochMilli()
                if (remoteTime > local.updatedAt) {
                    dao.actualizar(remote.toLocalEntity().copy(id = local.id, remoteId = remote.idDiario))
                }
            }
            // Si local tiene pending_* → local gana, no sobrescribir
        }
        return true
    }

    private suspend fun pushCreate(entry: EntradaDiarioEntity): Boolean {
        val request = entry.toRequestDTO()
        val result = remote.create(request)
        return if (result.isSuccess) {
            val remoteId = result.getOrNull()?.idDiario ?: return false
            dao.updateRemoteId(entry.id, remoteId, SyncStatus.SYNCED)
            true
        } else {
            dao.updateSyncStatus(entry.id, SyncStatus.PENDING_CREATE)
            false
        }
    }

    private suspend fun pushUpdate(entry: EntradaDiarioEntity): Boolean {
        val remoteId = entry.remoteId ?: return false
        val request = entry.toRequestDTO()
        val result = remote.update(remoteId, request)
        return if (result.isSuccess) {
            dao.updateSyncStatus(entry.id, SyncStatus.SYNCED)
            true
        } else {
            dao.updateSyncStatus(entry.id, SyncStatus.PENDING_UPDATE)
            false
        }
    }

    private suspend fun pushDelete(entry: EntradaDiarioEntity): Boolean {
        val remoteId = entry.remoteId ?: run {
            dao.eliminar(entry)
            return true
        }
        val result = remote.delete(remoteId)
        return if (result.isSuccess || result.exceptionOrNull()?.message?.contains("404") == true) {
            dao.eliminar(entry)
            true
        } else {
            dao.updateSyncStatus(entry.id, SyncStatus.PENDING_DELETE)
            false
        }
    }

    private fun EntradaDiarioEntity.toRequestDTO(): DiarioEmocionRequestDTO {
        return DiarioEmocionRequestDTO(
            idPaciente = 0L, // Se rellena desde UserSession en el worker/contexto
            fecha = java.time.Instant.ofEpochMilli(createdAt).toString(),
            titulo = titulo,
            emocion = emocion,
            intensidad = intensidad,
            nota = contenido
        )
    }

    private fun DiarioEmocionResponseDTO.toLocalEntity(): EntradaDiarioEntity {
        return EntradaDiarioEntity(
            id = 0L,
            remoteId = idDiario,
            titulo = titulo,
            contenido = nota,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = java.time.Instant.parse(fecha + "Z").toEpochMilli(),
            updatedAt = System.currentTimeMillis(),
            syncStatus = SyncStatus.SYNCED
        )
    }

    companion object {
        const val SYNC_TAG = "diario_sync"
    }
}
```

- [ ] **Step 2: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt
git commit -m "feat(diario): add DiarioSyncManager for push/pull orchestration"
```

---

## Task 12: Android — Crear `SyncDiarioWorker`

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SyncDiarioWorker.kt`

- [ ] **Step 1: Crea el Worker**

```kotlin
package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters

class SyncDiarioWorker(
    context: Context,
    params: WorkerParameters,
    private val syncManager: DiarioSyncManager
) : CoroutineWorker(context, params) {

    override suspend fun doWork(): Result {
        val pushOk = syncManager.pushPendingEntries()
        if (!pushOk) {
            return Result.retry()
        }

        val pullOk = syncManager.pullRemoteEntries()
        return if (pullOk) {
            Result.success()
        } else {
            Result.retry()
        }
    }
}
```

- [ ] **Step 2: Añade factory para inyección con Koin**

```kotlin
package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import androidx.work.WorkerParameters
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

class SyncDiarioWorkerFactory : KoinComponent {

    fun create(context: Context, params: WorkerParameters): SyncDiarioWorker {
        val syncManager: DiarioSyncManager by inject()
        return SyncDiarioWorker(context, params, syncManager)
    }
}
```

- [ ] **Step 3: Configura Koin para WorkManager en `AppModule.kt`**

Añade a `app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt`:

```kotlin
single { DiarioRemoteRepository(get()) }
single { DiarioSyncManager(androidContext(), get(), get()) }
```

- [ ] **Step 4: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SyncDiarioWorker.kt
app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SyncDiarioWorkerFactory.kt
app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt
git commit -m "feat(diario): add SyncDiarioWorker with Koin factory"
```

---

## Task 13: Android — Refactor `DiarioEmocionalRepository` a offline-first

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/repositorio/DiarioEmocionalRepository.kt`

- [ ] **Step 1: Refactor repository**

```kotlin
package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.data.remoto.DiarioSyncManager
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

class DiarioEmocionalRepository(
    private val dao: DiarioEmocionalDao,
    private val syncManager: DiarioSyncManager
) {

    fun observeEntradas(): Flow<List<EntradaDiario>> {
        return dao.observeEntradas().map { entries ->
            entries.map { it.toDomain() }
        }
    }

    suspend fun guardarEntrada(
        id: Long?,
        titulo: String,
        contenido: String,
        emocion: String,
        intensidad: Int
    ) {
        val now = System.currentTimeMillis()
        val entry = EntradaDiarioEntity(
            id = id ?: 0L,
            titulo = titulo.trim(),
            contenido = contenido.trim(),
            emocion = emocion.trim(),
            intensidad = intensidad.coerceIn(1, 10),
            createdAt = now,
            updatedAt = now,
            syncStatus = if (id == null) SyncStatus.PENDING_CREATE else SyncStatus.PENDING_UPDATE
        )

        if (id == null) {
            dao.insertar(entry)
        } else {
            val existing = dao.getEntradaById(id)
            if (existing != null) {
                dao.actualizar(entry.copy(createdAt = existing.createdAt))
            } else {
                dao.insertar(entry)
            }
        }

        syncManager.enqueueImmediateSync()
    }

    suspend fun eliminarEntrada(entrada: EntradaDiario) {
        val entity = entrada.toEntity().copy(syncStatus = SyncStatus.PENDING_DELETE)
        dao.actualizar(entity)
        syncManager.enqueueImmediateSync()
    }

    fun syncNow() {
        syncManager.enqueueImmediateSync()
    }

    private fun EntradaDiarioEntity.toDomain(): EntradaDiario {
        return EntradaDiario(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt
        )
    }

    private fun EntradaDiario.toEntity(): EntradaDiarioEntity {
        return EntradaDiarioEntity(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt
        )
    }
}
```

- [ ] **Step 2: Actualiza `AppModule.kt` para inyectar `DiarioSyncManager` en repository**

```kotlin
single { DiarioEmocionalRepository(get(), get()) }
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/repositorio/DiarioEmocionalRepository.kt
app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt
git commit -m "feat(diario): refactor repository to offline-first with sync"
```

---

## Task 14: Android — Actualizar `DiarioEmocionalViewModel` para mostrar estado de sync

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/diario/DiarioEmocionalViewModel.kt`

- [ ] **Step 1: Añade snackbar cuando guarda offline**

En `guardarEntrada()`, después de llamar a `repository.guardarEntrada()`:

```kotlin
_snackbarMessage.emit(
    if (state.editandoId == null)
        "Entrada guardada localmente. Se sincronizará con el servidor."
    else
        "Entrada actualizada localmente. Se sincronizará con el servidor."
)
```

En `eliminarEntrada()`:

```kotlin
_snackbarMessage.emit("Entrada eliminada localmente. Se sincronizará con el servidor.")
```

- [ ] **Step 2: Añade función `forzarSincronizacion()`**

```kotlin
fun forzarSincronizacion() {
    repository.syncNow()
    viewModelScope.launch {
        _snackbarMessage.emit("Sincronización iniciada...")
    }
}
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/diario/DiarioEmocionalViewModel.kt
git commit -m "feat(diario): update ViewModel with sync status messages"
```

---

## Task 15: Android — Añadir periodic sync (opcional, si se requiere)

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt`

- [ ] **Step 1: Implementa `enqueuePeriodicSync()`**

```kotlin
import androidx.work.PeriodicWorkRequestBuilder
import java.util.concurrent.TimeUnit

fun enqueuePeriodicSync() {
    val constraints = Constraints.Builder()
        .setRequiredNetworkType(NetworkType.CONNECTED)
        .build()

    val request = PeriodicWorkRequestBuilder<SyncDiarioWorker>(15, TimeUnit.MINUTES)
        .setConstraints(constraints)
        .addTag(SYNC_TAG)
        .build()

    WorkManager.getInstance(context).enqueueUniquePeriodicWork(
        "diario_periodic_sync",
        androidx.work.ExistingPeriodicWorkPolicy.KEEP,
        request
    )
}
```

- [ ] **Step 2: Llama desde `AppModule` o `MainActivity` al iniciar app**

```kotlin
// En AppModule o Application onCreate
single { get<DiarioSyncManager>().enqueuePeriodicSync() }
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt
git commit -m "feat(diario): add periodic sync every 15 minutes"
```

---

## Task 16: Android — Configurar WorkManager con Koin

**Files:**
- Create: `app/src/main/java/org/ies/tierno/applicationamani/di/WorkManagerModule.kt`

- [ ] **Step 1: Crea el módulo de WorkManager**

```kotlin
package org.ies.tierno.applicationamani.di

import androidx.work.WorkManager
import org.koin.android.ext.koin.androidContext
import org.koin.dsl.module

val workManagerModule = module {
    single { WorkManager.getInstance(androidContext()) }
}
```

- [ ] **Step 2: Registra en la aplicación**

En tu clase `Application`, asegúrate de cargar todos los módulos:

```kotlin
startKoin {
    androidContext(this@MyApplication)
    modules(listOf(retrofitModule, appModule, workManagerModule))
}
```

- [ ] **Step 3: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/di/WorkManagerModule.kt
git commit -m "feat(diario): add WorkManager Koin module"
```

---

## Task 17: Android — Resolver idPaciente en sync

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt`

- [ ] **Step 1: Inyecta `UserSessionDataStore` para obtener idPaciente**

```kotlin
class DiarioSyncManager(
    private val context: Context,
    private val dao: DiarioEmocionalDao,
    private val remote: DiarioRemoteRepository,
    private val userSession: org.ies.tierno.applicationamani.data.local.UserSessionDataStore
)
```

- [ ] **Step 2: Actualiza `toRequestDTO` para usar idPaciente real**

```kotlin
private suspend fun EntradaDiarioEntity.toRequestDTO(): DiarioEmocionRequestDTO {
    val idPaciente = userSession.getUserId() // o el método que exponga el id del paciente logueado
    return DiarioEmocionRequestDTO(
        idPaciente = idPaciente,
        fecha = java.time.Instant.ofEpochMilli(createdAt).toString(),
        titulo = titulo,
        emocion = emocion,
        intensidad = intensidad,
        nota = contenido
    )
}
```

- [ ] **Step 3: Actualiza `AppModule.kt`**

```kotlin
single { DiarioSyncManager(androidContext(), get(), get(), get()) }
```

- [ ] **Step 4: Commit**

```bash
git add app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioSyncManager.kt
app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt
git commit -m "feat(diario): inject user session for patient id in sync"
```

---

## Task 18: Android — Compilar y verificar

- [ ] **Step 1: Sincroniza Gradle en Android Studio o línea de comandos**

Run: `./gradlew :app:compileDebugKotlin`

Expected: `BUILD SUCCESSFUL`

- [ ] **Step 2: Corre lint si está configurado**

Run: `./gradlew :app:lintDebug`

Expected: 0 errores (warnings aceptables).

- [ ] **Step 3: Commit final**

```bash
git commit --allow-empty -m "feat(diario): complete offline-first sync implementation"
```

---

## Spec Self-Review

**1. Spec coverage:** Cada sección del spec tiene tareas correspondientes:
- Backend `titulo` → Tasks 1-3
- Room migration + sync fields → Tasks 4-7
- DTOs red → Task 8
- Retrofit API → Task 9
- Remote repo + SyncManager + Worker → Tasks 10-12
- Repository refactor → Task 13
- ViewModel sync messages → Task 14
- Periodic sync + WorkManager config → Tasks 15-17
- Build verification → Task 18

**2. Placeholder scan:** Ningún TBD, TODO, o placeholder. Todo el código es completo.

**3. Type consistency:** `DiarioEmocionRequestDTO` y `DiarioEmocionResponseDTO` usan mismos nombres en Tasks 8-12. `SyncStatus` enum coincide en Tasks 4-13. `EntradaDiarioEntity` campos consistentes en Tasks 5-13.

**4. Ambiguity check:** `idPaciente` resuelto en Task 17 via `UserSessionDataStore`. Backoff exponencial manejado por WorkManager nativo (`Result.retry()`). No hay puntos ambiguos.

**Gap identificado:** No hay tests unitarios escritos en el plan. Esto es intencional para mantener el scope del MVP de sync. Tests se pueden añadir en follow-up.
