package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class TodosLosPacientesUseCaseTest {
    private lateinit var repository: AuthRepository
    private lateinit var useCase: TodosLosPacientesUseCase

    private val testPaciente =
        DatosPacienteAdminDTO(
            idPaciente = 1L,
            nombreUsuario = "Juan",
            apellidoUsuario = "Perez",
            emailUsuario = "j@t.com",
            fechaNacimiento = "2000-01-01",
            genero = "Hombre",
            telefono = "123",
            createdAt = "2025-01-01",
            updatedAt = "2025-01-01",
            activo = true,
            metodoPago = "ONLINE",
            estadoPago = "PAGADO",
            situaciones = emptyList(),
            tutores = emptyList(),
            direccion = emptyList(),
            edad = 25,
        )

    @Before
    fun setUp() {
        repository = mockk()
        useCase = TodosLosPacientesUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() =
        runTest {
            every { repository.getPaciente() } returns flowOf(emptyList())

            useCase().test {
                assertEquals(emptyList<DatosPacienteAdminDTO>(), awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should emit populated list`() =
        runTest {
            every { repository.getPaciente() } returns flowOf(listOf(testPaciente))

            useCase().test {
                assertEquals(listOf(testPaciente), awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `invoke should propagate error when repository flow throws`() =
        runTest {
            every { repository.getPaciente() } returns
                flow {
                    throw RuntimeException("Error API")
                }

            useCase().test {
                awaitError()
            }
        }
}
