package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class GetPacientesSinPsicologoUseCaseTest {

    private lateinit var repository: AuthRepository
    private lateinit var useCase: GetPacientesSinPsicologoUseCase

    private val testPaciente = PacienteBasicoResponseDTO(
        idPaciente = 1L, idUsuario = 10L, nombre = "Juan", apellido = "Perez",
        email = "j@t.com", dni = "123", fechaNacimiento = "2000-01-01",
        genero = "Hombre", telefono = "123", direcciones = null, tutores = null
    )

    @Before
    fun setUp() {
        repository = mockk()
        useCase = GetPacientesSinPsicologoUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() = runTest {
        every { repository.getPacientesSinPsicologo() } returns flowOf(emptyList())

        useCase().test {
            assertEquals(emptyList<PacienteBasicoResponseDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should emit populated list`() = runTest {
        every { repository.getPacientesSinPsicologo() } returns flowOf(listOf(testPaciente))

        useCase().test {
            assertEquals(listOf(testPaciente), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should propagate error when repository flow throws`() = runTest {
        every { repository.getPacientesSinPsicologo() } returns flow {
            throw RuntimeException("Error API")
        }

        useCase().test {
            awaitError()
        }
    }
}
