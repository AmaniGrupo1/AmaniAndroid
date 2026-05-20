package org.ies.tierno.applicationamani.presentation.viewmodels

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
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class SettingsClienteViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val sessionDataStore: UserSessionDataStore = mockk()
    private val profileUseCase: ProfileUseCaseGeneral = mockk()
    private lateinit var viewModel: SettingsClienteViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        viewModel = SettingsClienteViewModel(sessionDataStore, profileUseCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `cargarUsuario should load profile when session has idPaciente`() =
        runTest {
            coEvery { sessionDataStore.getSession() } returns
                UserSession(
                    idUsuario = 1L,
                    nombre = "Test",
                    rol = "PACIENTE",
                    idPsicologo = null,
                    idPaciente = 1L,
                )
            coEvery { profileUseCase.getPacienteById(1L) } returns
                Result.success(
                    PacienteProfileResponseDTO(
                        idPaciente = 1L,
                        telefono = "123",
                        genero = "Hombre",
                        fechaNacimiento = null,
                        usuario =
                            UsuarioProfileResponseDTO(
                                idUsuario = 1L,
                                nombre = "Test",
                                apellido = null,
                                email = null,
                                fotoPerfilUrl = null,
                            ),
                    ),
                )

            viewModel.cargarUsuario()
            advanceUntilIdle()

            assertEquals("Test", viewModel.nombre)
            assertNull(viewModel.errorMessage)
            assertFalse(viewModel.isLoading)
            coVerify { profileUseCase.getPacienteById(1L) }
        }

    @Test
    fun `cargarUsuario should show error when no session`() =
        runTest {
            coEvery { sessionDataStore.getSession() } returns null

            viewModel.cargarUsuario()
            advanceUntilIdle()

            assertEquals("No se encontró sesión activa", viewModel.errorMessage)
            assertFalse(viewModel.isLoading)
        }

    @Test
    fun `cargarUsuario should show error when profile fails`() =
        runTest {
            coEvery { sessionDataStore.getSession() } returns
                UserSession(
                    idUsuario = 1L,
                    nombre = "Test",
                    rol = "PACIENTE",
                    idPsicologo = null,
                    idPaciente = 1L,
                )
            coEvery { profileUseCase.getPacienteById(1L) } returns Result.failure(Exception("fail"))

            viewModel.cargarUsuario()
            advanceUntilIdle()

            assertEquals("Error al cargar datos del perfil", viewModel.errorMessage)
            assertFalse(viewModel.isLoading)
        }
}
