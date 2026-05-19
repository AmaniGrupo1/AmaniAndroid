package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarPsicologoAdminUseCaseTest {
    private lateinit var repository: AuthRepository
    private lateinit var useCase: ListarPsicologoAdminUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarPsicologoAdminUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() =
        runTest {
            every { repository.getPsicologos() } returns flowOf(emptyList())

            useCase().test {
                assertEquals(emptyList<PsicologoSelfResponseDTO>(), awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should emit populated list`() =
        runTest {
            val psicologo =
                PsicologoSelfResponseDTO(
                    idPsicologo = 1L,
                    nombre = "Dr. García",
                    apellido = "López",
                    especialidad = "Clínica",
                    experiencia = 10,
                    descripcion = "TCC",
                    licencia = "LIC1",
                )
            every { repository.getPsicologos() } returns flowOf(listOf(psicologo))

            useCase().test {
                assertEquals(listOf(psicologo), awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should propagate error when repository flow throws`() =
        runTest {
            every { repository.getPsicologos() } returns
                flow {
                    throw RuntimeException("Error API")
                }

            useCase().test {
                awaitError()
            }
        }
}
