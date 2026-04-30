package org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarPacientesByPsicologoTest {

    private lateinit var auth: AuthRepository
    private lateinit var useCase: ListarPacientesByPsicologo

    @Before
    fun setUp() {
        auth = mockk()
        useCase = ListarPacientesByPsicologo(auth)
    }

    @Test
    fun `invoke should emit list from auth repository`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO>()
        every { auth.getPacientesByPsicologo() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }
}
