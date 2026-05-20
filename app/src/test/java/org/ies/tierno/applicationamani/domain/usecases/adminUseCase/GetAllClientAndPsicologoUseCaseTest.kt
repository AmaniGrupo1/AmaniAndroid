package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class GetAllClientAndPsicologoUseCaseTest {
    private lateinit var repository: AuthRepository
    private lateinit var useCase: GetAllClientAndPsicologoUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = GetAllClientAndPsicologoUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() =
        runTest {
            val list = emptyList<ListaPacientesAndPsicologo>()
            every { repository.getPacientesConPsicologo() } returns flowOf(list)

            useCase().test {
                assertEquals(list, awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should emit populated list`() =
        runTest {
            val list =
                listOf(
                    ListaPacientesAndPsicologo(
                        idPsicologo = 1L,
                        nombrePsicologo = "Dr. García",
                        apellidoPsicologo = "López",
                        emailPsicologo = "g@test.com",
                        especialidad = "Clínica",
                        licencia = "LIC1",
                        fechaDadoAlta = "2025-01-01",
                        pacientes = emptyList(),
                    ),
                )
            every { repository.getPacientesConPsicologo() } returns flowOf(list)

            useCase().test {
                assertEquals(list, awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should propagate error when repository flow throws`() =
        runTest {
            every { repository.getPacientesConPsicologo() } returns
                flow {
                    throw RuntimeException("Error API")
                }

            useCase().test {
                awaitError()
            }
        }
}
