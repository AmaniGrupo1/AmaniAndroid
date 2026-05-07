package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ListarPsicologosAdminViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase = mockk()

    private val testPsicologo = PsicologoSelfResponseDTO(
        idPsicologo = 1L, nombre = "Dr. García", apellido = "López",
        especialidad = "Clínica", experiencia = 10, descripcion = "TCC", licencia = "LIC1"
    )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `init loads psicologos from useCase`() = runTest {
        every { listarPsicologoAdminUseCase() } returns flowOf(listOf(testPsicologo))

        val viewModel = ListarPsicologosAdminViewModel(listarPsicologoAdminUseCase)
        advanceUntilIdle()

        assertEquals(1, viewModel.psicologos.value.size)
        assertEquals("Dr. García", viewModel.psicologos.value[0].nombre)
    }

    @Test
    fun `init with empty list results in empty psicologos`() = runTest {
        every { listarPsicologoAdminUseCase() } returns flowOf(emptyList())

        val viewModel = ListarPsicologosAdminViewModel(listarPsicologoAdminUseCase)
        advanceUntilIdle()

        assertTrue(viewModel.psicologos.value.isEmpty())
    }

    @Test
    fun `init with multiple psicologos loads all`() = runTest {
        val psicologos = listOf(
            PsicologoSelfResponseDTO(idPsicologo = 1L, nombre = "Dr. García", apellido = "López", especialidad = "Clínica", experiencia = 10, descripcion = "TCC", licencia = "LIC1"),
            PsicologoSelfResponseDTO(idPsicologo = 2L, nombre = "Dra. López", apellido = "Ruiz", especialidad = "Infantil", experiencia = 5, descripcion = null, licencia = "LIC2"),
            PsicologoSelfResponseDTO(idPsicologo = 3L, nombre = "Dr. Ruiz", apellido = "Martín", especialidad = "Familiar", experiencia = 8, descripcion = null, licencia = "LIC3")
        )
        every { listarPsicologoAdminUseCase() } returns flowOf(psicologos)

        val viewModel = ListarPsicologosAdminViewModel(listarPsicologoAdminUseCase)
        advanceUntilIdle()

        assertEquals(3, viewModel.psicologos.value.size)
    }
}
