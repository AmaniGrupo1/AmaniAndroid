package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import java.io.IOException

class ListarCitasUseCaseTest {

    private lateinit var repository: CitasRepository
    private lateinit var useCase: ListarCitasUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarCitasUseCase(repository)
    }

    @Test
    fun `invoke should return list from repository`() = runTest {
        val list = listOf(
            CitaPacienteViewResponseDTO(idCita = 1L, fecha = "2025-06-01", horaInicio = "10:00", horaFin = "11:00", durationMinutes = 60, estado = "pendiente", modalidad = "ONLINE", motivo = "Consulta", tipoTerapia = null, minutosRestantes = null, esProxima = null)
        )
        coEvery { repository.getMisCitas() } returns list

        val result = useCase()

        assertEquals(list, result)
    }

    @Test
    fun `invoke should return empty list when no citas`() = runTest {
        coEvery { repository.getMisCitas() } returns emptyList()

        val result = useCase()

        assertEquals(emptyList<CitaPacienteViewResponseDTO>(), result)
    }

    @Test
    fun `invoke should throw when repository throws IOException`() = runTest {
        coEvery { repository.getMisCitas() } throws IOException("Network error")

        try {
            useCase()
            assert(false) { "Should have thrown" }
        } catch (e: IOException) {
            assertEquals("Network error", e.message)
        }
    }

    @Test
    fun `invoke should throw when repository throws generic exception`() = runTest {
        coEvery { repository.getMisCitas() } throws RuntimeException("Server error")

        try {
            useCase()
            assert(false) { "Should have thrown" }
        } catch (e: RuntimeException) {
            assertEquals("Server error", e.message)
        }
    }
}
