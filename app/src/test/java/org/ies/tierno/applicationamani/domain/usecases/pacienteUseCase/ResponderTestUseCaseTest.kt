package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ResponderTestUseCaseTest {

    private lateinit var repository: TestRepositoryApi
    private lateinit var useCase: ResponderTestUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ResponderTestUseCase(repository)
    }

    @Test
    fun `invoke should return true when repository succeeds`() = runTest {
        coEvery { repository.responderTest(any(), any()) } returns true

        val result = useCase(1L, emptyList())

        assertTrue(result)
        coVerify { repository.responderTest(1L, emptyList()) }
    }

    @Test(expected = Exception::class)
    fun `invoke should throw when repository throws`() = runTest {
        coEvery { repository.responderTest(any(), any()) } throws Exception("fail")

        useCase(1L, emptyList())
    }
}
