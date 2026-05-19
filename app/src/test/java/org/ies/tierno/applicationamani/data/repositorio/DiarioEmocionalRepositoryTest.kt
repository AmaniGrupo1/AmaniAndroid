package org.ies.tierno.applicationamani.data.repositorio

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.data.remoto.DiarioSyncManager
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class DiarioEmocionalRepositoryTest {
    private lateinit var dao: DiarioEmocionalDao
    private lateinit var syncManager: DiarioSyncManager
    private lateinit var repository: DiarioEmocionalRepository

    @Before
    fun setUp() {
        dao = mockk(relaxed = true)
        syncManager = mockk(relaxed = true)
        repository = DiarioEmocionalRepository(dao, syncManager)
    }

    @Test
    fun `observeEntradas should map entities to domain`() =
        runTest {
            val entity =
                EntradaDiarioEntity(
                    id = 1L,
                    titulo = "T",
                    contenido = "C",
                    emocion = "Feliz",
                    intensidad = 5,
                    createdAt = 1000L,
                    updatedAt = 1000L,
                )
            every { dao.observeEntradas() } returns flowOf(listOf(entity))

            repository.observeEntradas().test {
                val item = awaitItem()
                assertEquals(1, item.size)
                assertEquals("T", item[0].titulo)
                assertEquals("Feliz", item[0].emocion)
                awaitComplete()
            }
        }

    @Test
    fun `guardarEntrada should insert new entity when id is null`() =
        runTest {
            coEvery { dao.insertar(any()) } returns 1L

            repository.guardarEntrada(null, "T", "C", "Feliz", 5)

            coVerify { dao.insertar(any()) }
            coVerify { syncManager.enqueueImmediateSync() }
        }

    @Test
    fun `guardarEntrada should update existing entity when id is not null`() =
        runTest {
            val existing =
                EntradaDiarioEntity(
                    id = 1L,
                    titulo = "Old",
                    contenido = "Old",
                    emocion = "Triste",
                    intensidad = 3,
                    createdAt = 500L,
                    updatedAt = 500L,
                )
            coEvery { dao.getEntradaById(1L) } returns existing

            repository.guardarEntrada(1L, "T", "C", "Feliz", 5)

            coVerify { dao.actualizar(any()) }
            coVerify { syncManager.enqueueImmediateSync() }
        }

    @Test
    fun `eliminarEntrada should update sync status to PENDING_DELETE`() =
        runTest {
            val entrada =
                EntradaDiario(
                    id = 1L,
                    titulo = "T",
                    contenido = "C",
                    emocion = "Feliz",
                    intensidad = 5,
                    createdAt = 1000L,
                    updatedAt = 1000L,
                )

            repository.eliminarEntrada(entrada)

            coVerify { dao.updateSyncStatus(1L, SyncStatus.PENDING_DELETE, any()) }
            coVerify { syncManager.enqueueImmediateSync() }
        }

    @Test
    fun `syncNow should enqueue immediate sync`() {
        repository.syncNow()

        coVerify { syncManager.enqueueImmediateSync() }
    }
}
