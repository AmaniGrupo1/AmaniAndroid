package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

class CrearPreguntaUseCaseTest {

    private lateinit var repository: TestRepositoryApi
    private lateinit var useCase: CrearPreguntaUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = CrearPreguntaUseCase(repository)
    }

    @Test
    fun `invoke should return DTO when repository succeeds`() = runTest {
        val dto = OpcionAdminDTO("Texto", "opcion_multiple", emptyList())
        coEvery { repository.createPregunta(any()) } returns dto

        val result = useCase(PreguntaRequest("Texto", "opcion_multiple", emptyList()))

        assertEquals(dto, result)
        coVerify { repository.createPregunta(any()) }
    }

    @Test(expected = Exception::class)
    fun `invoke should throw when repository throws`() = runTest {
        coEvery { repository.createPregunta(any()) } throws Exception("fail")

        useCase(PreguntaRequest("Texto", "opcion_multiple", emptyList()))
    }
}
