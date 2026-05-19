package org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ProfilePacienteViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: ProfileUseCaseGeneral
    private lateinit var viewModel: ProfilePacienteViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
        viewModel = ProfilePacienteViewModel(useCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `fetchProfile updates perfil on success`() =
        runTest {
            val expected = mockk<PacienteProfileResponseDTO>()
            coEvery { useCase.getPacienteProfile(1L) } returns Result.success(expected)

            viewModel.fetchProfile(1L)
            advanceUntilIdle()

            assertEquals(expected, viewModel.perfil.value)
            assertNull(viewModel.error.value)
        }

    @Test
    fun `updateProfile calls fetchProfile on success`() =
        runTest {
            coEvery { useCase.updatePacienteProfile(any(), any()) } returns Result.success(mockk())
            coEvery { useCase.getPacienteProfile(1L) } returns Result.success(mockk())

            viewModel.updateProfile(1L, mockk())
            advanceUntilIdle()

            coEvery { useCase.getPacienteProfile(1L) }
        }

    @Test
    fun `resetState resets all states`() =
        runTest {
            viewModel.resetState()
            assertNull(viewModel.error.value)
            assertEquals(ProfilePacienteViewModel.UploadStatus.Idle, viewModel.uploadStatus.value)
            assertEquals(false, viewModel.isLoading.value)
        }
}
