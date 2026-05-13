package org.ies.tierno.applicationamani.data

import app.cash.turbine.test
import com.google.firebase.auth.FirebaseAuth
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkAll
import kotlinx.coroutines.test.runTest
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.ResponseBody.Companion.toResponseBody
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.admin.MessageResponse
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class AuthRepositoryTest {

    private lateinit var api: AuthApi
    private lateinit var tokenDataStore: TokenDataStore
    private lateinit var userSessionDataStore: UserSessionDataStore
    private lateinit var repository: AuthRepository

    @Before
    fun setUp() {
        mockkStatic(FirebaseAuth::class)
        val firebaseAuth = mockk<FirebaseAuth>(relaxed = true)
        every { FirebaseAuth.getInstance() } returns firebaseAuth

        api = mockk()
        tokenDataStore = mockk(relaxed = true)
        userSessionDataStore = mockk(relaxed = true)
        repository = AuthRepository(api, tokenDataStore, userSessionDataStore)
    }

    @After
    fun tearDown() {
        unmockkAll()
    }

    @Test
    fun `login should return success and save token when response is successful`() = runTest {
        val request = LoginRequestDTO("user@test.com", "pass")
        val body = LoginResponseDTO(
            token = "abc123", idUsuario = 1L, nombre = "Test",
            rol = "PACIENTE", idPsicologo = null, idPaciente = 1L
        )
        coEvery { api.login(request) } returns Response.success(body)

        val result = repository.login(request)

        assertTrue(result.isSuccess)
        assertEquals(body, result.getOrNull())
        coVerify { tokenDataStore.saveToken("abc123") }
        coVerify { userSessionDataStore.saveSession(any()) }
    }

    @Test
    fun `login should return failure with credentials message when 401`() = runTest {
        val request = LoginRequestDTO("user@test.com", "pass")
        val errorBody = "".toResponseBody("application/json".toMediaTypeOrNull())
        coEvery { api.login(request) } returns Response.error(401, errorBody)

        val result = repository.login(request)

        assertTrue(result.isFailure)
        assertEquals("Credenciales incorrectas", result.exceptionOrNull()?.message)
    }

    @Test
    fun `login should return failure with connection message on connection exception`() = runTest {
        val request = LoginRequestDTO("user@test.com", "pass")
        coEvery { api.login(request) } throws Exception("Connection refused")

        val result = repository.login(request)

        assertTrue(result.isFailure)
        assertTrue(result.exceptionOrNull()?.message?.contains("No se puede conectar") == true)
    }

    @Test
    fun `asignarPsicologo should return success when api returns successful`() = runTest {
        coEvery { api.asignarPsicologo(any()) } returns Response.success(true)

        val result = repository.asignarPsicologo(1L, 2L)

        assertTrue(result.isSuccess)
        assertEquals(true, result.getOrNull())
    }

    @Test
    fun `registerPaciente should return success when api returns successful`() = runTest {
        val body = LoginResponseDTO(
            token = "t", idUsuario = 1L, nombre = "N",
            rol = "P", idPsicologo = null, idPaciente = 1L
        )
        coEvery { api.registerPaciente(any()) } returns Response.success(body)

        val result = repository.registerPaciente(mockk(relaxed = true))

        assertTrue(result.isSuccess)
    }

    @Test
    fun `registerAdmin should return success when api returns successful`() = runTest {
        val body = LoginResponseDTO(
            token = "t", idUsuario = 1L, nombre = "N",
            rol = "ADMIN", idPsicologo = null, idPaciente = null
        )
        coEvery { api.registerAdmin(any()) } returns Response.success(body)

        val result = repository.registerAdmin(RegistryPacienteDTO("N", "E", "e@mail.com", "pass"))

        assertTrue(result.isSuccess)
    }

    @Test
    fun `registerPsicologo should return success when api returns successful`() = runTest {
        val body = PsicologoSelfResponseDTO(idPsicologo = 1L, nombre = "P", apellido = "A", especialidad = "Esp", experiencia = null, descripcion = null, licencia = null)
        coEvery { api.registerPsicologo(any()) } returns Response.success(body)

        val result = repository.registerPsicologo(PsicologoRequestDTO(nombrePsicologo = "P", apellidoPsicologo = "A", email = "e@mail.com", password = "pass", especialidad = "Esp"))

        assertTrue(result.isSuccess)
        assertEquals(body, result.getOrNull())
    }

    @Test
    fun `getPacientesConPsicologo should emit list when api succeeds`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo>()
        coEvery { api.getPacientesConPsicologo() } returns Response.success(list)

        repository.getPacientesConPsicologo().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getPacientesConPsicologo should emit empty list on generic exception`() = runTest {
        coEvery { api.getPacientesConPsicologo() } throws Exception("fail")

        repository.getPacientesConPsicologo().test {
            assertEquals(emptyList<org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getPaciente should emit list when api succeeds`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO>()
        coEvery { api.getPacientes() } returns Response.success(list)

        repository.getPaciente().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getPsicologos should emit list when api succeeds`() = runTest {
        val list = emptyList<PsicologoSelfResponseDTO>()
        coEvery { api.getPsicologos() } returns Response.success(list)

        repository.getPsicologos().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getPacientesByPsicologo should emit list when api succeeds`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO>()
        coEvery { api.getPacientesByPsicologo() } returns Response.success(list)

        repository.getPacientesByPsicologo().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `darBajaPaciente should return success when api succeeds`() = runTest {
        coEvery { api.darBajaPaciente(1L) } returns Response.success(MessageResponse("Baja correcta"))

        val result = repository.darBajaPaciente(1L)

        assertTrue(result.isSuccess)
        assertEquals("Baja correcta", result.getOrNull()?.message)
    }

    @Test
    fun `logout should clear token and session`() = runTest {
        repository.logout()

        coVerify { tokenDataStore.clearToken() }
        coVerify { userSessionDataStore.clearSession() }
    }

    @Test
    fun `crearPacienteDesdePsicologo should return success when api succeeds`() = runTest {
        val body = LoginResponseDTO(
            token = "t", idUsuario = 1L, nombre = "N",
            rol = "P", idPsicologo = null, idPaciente = 1L
        )
        coEvery { api.crearPacienteDesdePsicologo(any()) } returns Response.success(body)

        val result = repository.crearPacienteDesdePsicologo(mockk(relaxed = true))

        assertTrue(result.isSuccess)
    }

    @Test
    fun `getPacientesSinPsicologo should emit list when api succeeds`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO>()
        coEvery { api.getPacientesSinPsicologo() } returns Response.success(list)

        repository.getPacientesSinPsicologo().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }
}
