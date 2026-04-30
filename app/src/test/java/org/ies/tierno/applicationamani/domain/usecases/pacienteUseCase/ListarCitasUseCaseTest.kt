package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

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
        val list = emptyList<org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO>()
        coEvery { repository.getMisCitas() } returns list

        val result = useCase()

        assertEquals(list, result)
        coVerify { repository.getMisCitas() }
    }
}
