package org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarPacientesByPsicologoTest {

    private lateinit var repository: AuthRepository
    private lateinit var useCase: ListarPacientesByPsicologo

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarPacientesByPsicologo(repository)
    }

    @Test
    fun `invoke should emit list from repository`() = runTest {
        val list = listOf(
            PacientePsicologoResponseDTO(idPaciente = 1L, idUsuario = 10L, nombre = "Juan", apellido = "Perez", email = "j@t.com", dni = "123", telefono = "")
        )
        every { repository.getPacientesByPsicologo() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should emit empty list when no pacientes`() = runTest {
        every { repository.getPacientesByPsicologo() } returns flowOf(emptyList())

        useCase().test {
            assertEquals(emptyList<PacientePsicologoResponseDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should propagate error when repository flow throws`() = runTest {
        every { repository.getPacientesByPsicologo() } returns flow {
            throw RuntimeException("Error API")
        }

        useCase().test {
            awaitError()
        }
    }
}
