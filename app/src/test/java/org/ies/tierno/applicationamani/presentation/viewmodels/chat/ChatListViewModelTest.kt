package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import io.mockk.coEvery
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
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ChatListViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val userSessionDataStore: UserSessionDataStore = mockk(relaxed = true)
    private val profileUseCaseGeneral: ProfileUseCaseGeneral = mockk(relaxed = true)
    private val listarPacientesByPsicologo: ListarPacientesByPsicologo = mockk(relaxed = true)

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        coEvery { userSessionDataStore.getSession() } returns UserSession(
            idUsuario = 1L, nombre = "Paciente", rol = "PACIENTE",
            idPsicologo = 10L, idPaciente = 5L
        )
        every { listarPacientesByPsicologo() } returns flowOf(emptyList())
        coEvery { profileUseCaseGeneral.getPsicologoById(any()) } returns Result.success(
            PsicologoProfileResponseDTO(
                idPsicologo = 10L, especialidad = "Clínica", experiencia = 5,
                descripcion = "Test", licencia = "123",
                usuario = UsuarioProfileResponseDTO(idUsuario = 10L, nombre = "Dr. García", apellido = "López", email = null, fotoPerfilUrl = null)
            )
        )
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `paciente session loads psicologo as partner`() = runTest {
        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()

        assertEquals(1L, viewModel.currentUserId.value)
        assertEquals("PACIENTE", viewModel.currentUserRol.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `no session sets error`() = runTest {
        coEvery { userSessionDataStore.getSession() } returns null

        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()

        assertEquals("No hay sesión activa", viewModel.error.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `unsupported rol sets error`() = runTest {
        coEvery { userSessionDataStore.getSession() } returns UserSession(
            idUsuario = 1L, nombre = "Admin", rol = "ADMIN", idPsicologo = null, idPaciente = null
        )

        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()

        assertNotNull(viewModel.error.value)
    }

    @Test
    fun `psicologo session loads assigned patients`() = runTest {
        coEvery { userSessionDataStore.getSession() } returns UserSession(
            idUsuario = 10L, nombre = "Dr. García", rol = "PSICOLOGO",
            idPsicologo = 10L, idPaciente = null
        )
        val pacientes = listOf(
            PacientePsicologoResponseDTO(idPaciente = 5L, idUsuario = 100L, nombre = "Juan", apellido = "Perez", email = "j@t.com", dni = "1", telefono = "")
        )
        every { listarPacientesByPsicologo() } returns flowOf(pacientes)
        coEvery { profileUseCaseGeneral.getPacienteByIdFirebase(any()) } returns Result.success(
            PacienteProfileResponseDTO(
                idPaciente = 5L, telefono = "123", genero = "Hombre", fechaNacimiento = null,
                usuario = UsuarioProfileResponseDTO(idUsuario = 100L, nombre = "Juan", apellido = "Perez", email = null, fotoPerfilUrl = null)
            )
        )

        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()

        assertEquals("PSICOLOGO", viewModel.currentUserRol.value)
    }

    @Test
    fun `retry clears error and reloads`() = runTest {
        coEvery { userSessionDataStore.getSession() } returns null

        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()
        assertNotNull(viewModel.error.value)

        coEvery { userSessionDataStore.getSession() } returns UserSession(
            idUsuario = 1L, nombre = "Paciente", rol = "PACIENTE", idPsicologo = 10L, idPaciente = 5L
        )

        viewModel.retry()
        advanceUntilIdle()

        assertNull(viewModel.error.value)
    }

    @Test
    fun `paciente without psicologo resolves via profile`() = runTest {
        coEvery { userSessionDataStore.getSession() } returns UserSession(
            idUsuario = 1L, nombre = "Paciente", rol = "PACIENTE",
            idPsicologo = null, idPaciente = 5L
        )
        coEvery { profileUseCaseGeneral.obtenerPsicologoAsignado(5L) } returns Result.success(
            PsicologoProfileResponseDTO(
                idPsicologo = 10L, especialidad = "Clínica", experiencia = 5,
                descripcion = "Test", licencia = "123",
                usuario = UsuarioProfileResponseDTO(idUsuario = 10L, nombre = "Dr. García", apellido = "López", email = null, fotoPerfilUrl = null)
            )
        )

        val viewModel = ChatListViewModel(userSessionDataStore, profileUseCaseGeneral, listarPacientesByPsicologo)
        advanceUntilIdle()

        assertNull(viewModel.error.value)
    }
}
