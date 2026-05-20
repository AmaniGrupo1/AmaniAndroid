package org.ies.tierno.applicationamani.presentation.viewmodels

import android.util.Log
import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkAll
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.time.LocalDate

@OptIn(ExperimentalCoroutinesApi::class)
class LoginViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val loginUseCase: LoginUseCase = mockk()
    private val asignarPacienteAlPsicologoUseCase: AsignarPacienteAlPsicologoUseCase = mockk()
    private val userSessionDataStore: UserSessionDataStore = mockk(relaxed = true)
    private val tokenDataStore: TokenDataStore = mockk(relaxed = true)
    private val tokenHolder: TokenHolder = mockk(relaxed = true)
    private lateinit var viewModel: LoginViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)

        mockkStatic(Log::class)
        every { Log.e(any<String>(), any<String>()) } returns 0

        viewModel = LoginViewModel(loginUseCase, asignarPacienteAlPsicologoUseCase, userSessionDataStore, tokenDataStore, tokenHolder)
    }

    @After
    fun tearDown() {
        unmockkAll()
        Dispatchers.resetMain()
    }

    @Test
    fun `login flow - Success should save session and update result`() =
        runTest {
            val response = mockk<LoginResponseDTO>(relaxed = true)
            coEvery { loginUseCase.login(any()) } returns Result.success(response)

            viewModel.setUsername("test@example.com")
            viewModel.setPassword("password123")

            viewModel.loginResult.test {
                assertNull(awaitItem())
                viewModel.login()
                advanceUntilIdle()
                val result = awaitItem()
                assertTrue(result!!.isSuccess)
                coVerify { userSessionDataStore.saveSession(any()) }
            }
        }

    @Test
    fun `login validation - invalid email format should set error`() =
        runTest {
            viewModel.setUsername("invalid-email")
            viewModel.setPassword("123456")

            viewModel.login()

            assertEquals("Introduce un correo electrónico válido", viewModel.loginError.value)
            coVerify(exactly = 0) { loginUseCase.login(any()) }
        }

    @Test
    fun `psychologist validation - underage should fail`() =
        runTest {
            viewModel.setNombre("Juan")
            viewModel.setApellido("Perez")
            viewModel.setEmail("juan@test.com")
            viewModel.setRegPassword("password123")
            viewModel.setDateOfBirth(LocalDate.now().minusYears(17)) // 17 years old
            viewModel.setTelefono("123456789")
            viewModel.setRegistroEspecialidad("Clinica")

            viewModel.registrarPsicologo()

            assertEquals("Debes ser mayor de 18 años", viewModel.dateError.value)
            coVerify(exactly = 0) { loginUseCase.registrarPsicologo(any()) }
        }

    @Test
    fun `isLoginFormValid returns true only when data is correct`() {
        viewModel.setUsername("test@example.com")
        viewModel.setPassword("abc12345")
        assertTrue(viewModel.isLoginFormValid())

        viewModel.setUsername("invalid")
        assertFalse(viewModel.isLoginFormValid())
    }

    @Test
    fun `login with 401 error should show specific error message`() =
        runTest {
            val httpException = mockk<retrofit2.HttpException>()
            every { httpException.code() } returns 401
            coEvery { loginUseCase.login(any()) } returns Result.failure(httpException)

            viewModel.setUsername("test@example.com")
            viewModel.setPassword("wrong123")
            viewModel.login()
            advanceUntilIdle()

            assertEquals("Credenciales incorrectas", viewModel.loginError.value)
        }
}
