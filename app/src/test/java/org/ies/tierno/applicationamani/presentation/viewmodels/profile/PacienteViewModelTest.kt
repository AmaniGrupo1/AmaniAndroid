package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class PacienteViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val profileUseCase: ProfileUseCaseGeneral = mockk()
    private lateinit var viewModel: PacienteViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        viewModel = PacienteViewModel(profileUseCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state is correct`() {
        assertNull(viewModel.psicologoAsignado.value)
        assertFalse(viewModel.isLoading.value)
        assertNull(viewModel.error.value)
    }

    @Test
    fun `cargarPsicologoAsignado updates state on success`() =
        runTest {
            val dto =
                PsicologoProfileResponseDTO(
                    idPsicologo = 1L,
                    especialidad = "N",
                    experiencia = 5,
                    descripcion = "D",
                    licencia = "123",
                    usuario = null,
                )
            coEvery { profileUseCase.obtenerPsicologoAsignado(1L) } returns Result.success(dto)

            viewModel.cargarPsicologoAsignado(1L)
            advanceUntilIdle()

            assertEquals(dto, viewModel.psicologoAsignado.value)
            assertNull(viewModel.error.value)
            assertFalse(viewModel.isLoading.value)
            coVerify { profileUseCase.obtenerPsicologoAsignado(1L) }
        }

    @Test
    fun `cargarPsicologoAsignado updates error on failure`() =
        runTest {
            coEvery { profileUseCase.obtenerPsicologoAsignado(1L) } returns Result.failure(Exception("fail"))

            viewModel.cargarPsicologoAsignado(1L)
            advanceUntilIdle()

            assertNull(viewModel.psicologoAsignado.value)
            assertEquals("fail", viewModel.error.value)
            assertFalse(viewModel.isLoading.value)
        }
}
