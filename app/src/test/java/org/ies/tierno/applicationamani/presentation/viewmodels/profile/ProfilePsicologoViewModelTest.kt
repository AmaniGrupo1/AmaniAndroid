package org.ies.tierno.applicationamani.presentation.viewmodels.profile

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
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ProfilePsicologoViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val profileUseCaseGeneral: ProfileUseCaseGeneral = mockk(relaxed = true)
    private lateinit var viewModel: ProfilePsicologoViewModel

    private val testProfile = PsicologoProfileResponseDTO(
        idPsicologo = 1L, especialidad = "Clínica", experiencia = 10,
        descripcion = "Experta en TCC", licencia = "LIC123",
        usuario = UsuarioProfileResponseDTO(idUsuario = 1L, nombre = "Ana", apellido = "García", email = null, fotoPerfilUrl = null)
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
    fun `initial state has null perfil and no error`() {
        viewModel = ProfilePsicologoViewModel(profileUseCaseGeneral)
        assertNull(viewModel.perfil.value)
        assertNull(viewModel.error.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `fetchProfile success updates perfil`() = runTest {
        coEvery { profileUseCaseGeneral.getProfile(1L) } returns Result.success(testProfile)

        viewModel = ProfilePsicologoViewModel(profileUseCaseGeneral)
        viewModel.fetchProfile(1L)
        advanceUntilIdle()

        assertNotNull(viewModel.perfil.value)
        assertEquals("Clínica", viewModel.perfil.value?.especialidad)
        assertNull(viewModel.error.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `fetchProfile failure sets error`() = runTest {
        coEvery { profileUseCaseGeneral.getProfile(1L) } returns Result.failure(Exception("No encontrado"))

        viewModel = ProfilePsicologoViewModel(profileUseCaseGeneral)
        viewModel.fetchProfile(1L)
        advanceUntilIdle()

        assertNull(viewModel.perfil.value)
        assertEquals("No encontrado", viewModel.error.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `fetchProfile sets isLoading during request`() = runTest {
        coEvery { profileUseCaseGeneral.getProfile(1L) } returns Result.success(testProfile)

        viewModel = ProfilePsicologoViewModel(profileUseCaseGeneral)
        viewModel.fetchProfile(1L)
        // isLoading is true right after call before advanceUntilIdle
        assertTrue(viewModel.isLoading.value)

        advanceUntilIdle()

        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `boundary fetchProfile with id 0 still calls useCase`() = runTest {
        coEvery { profileUseCaseGeneral.getProfile(0L) } returns Result.failure(Exception("ID inválido"))

        viewModel = ProfilePsicologoViewModel(profileUseCaseGeneral)
        viewModel.fetchProfile(0L)
        advanceUntilIdle()

        assertEquals("ID inválido", viewModel.error.value)
    }
}
