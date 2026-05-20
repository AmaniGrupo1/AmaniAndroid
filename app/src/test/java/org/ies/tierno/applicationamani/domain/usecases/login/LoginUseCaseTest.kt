package org.ies.tierno.applicationamani.domain.usecases.login

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class LoginUseCaseTest {
    private lateinit var repository: AuthRepository
    private lateinit var useCase: LoginUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = LoginUseCase(repository)
    }

    @Test
    fun `login should return result from repository`() =
        runTest {
            val request = LoginRequestDTO("email", "password")
            val expected = Result.success(mockk<LoginResponseDTO>())
            coEvery { repository.login(request) } returns expected

            val result = useCase.login(request)

            assertEquals(expected, result)
        }

    @Test
    fun `registerPaciente should return result from repository`() =
        runTest {
            val request = mockk<PacienteRequest>()
            val expected = Result.success(mockk<LoginResponseDTO>())
            coEvery { repository.registerPaciente(request) } returns expected

            val result = useCase.registerPaciente(request)

            assertEquals(expected, result)
        }

    @Test
    fun `registrarAdmin should return result from repository`() =
        runTest {
            val request = RegistryPacienteDTO("name", "lastname", "email", "pass")
            val expected = Result.success(mockk<LoginResponseDTO>())
            coEvery { repository.registerAdmin(request) } returns expected

            val result = useCase.registrarAdmin(request)

            assertEquals(expected, result)
        }

    @Test
    fun `registrarPsicologo should return result from repository`() =
        runTest {
            val request = PsicologoRequestDTO("name", "lastname", "email", "pass", "spec")
            val expected = Result.success(mockk<PsicologoSelfResponseDTO>())
            coEvery { repository.registerPsicologo(request) } returns expected

            val result = useCase.registrarPsicologo(request)

            assertEquals(expected, result)
        }

    @Test
    fun `registrarPacienteDesdePsicologo should return result from repository`() =
        runTest {
            val request = mockk<PacienteRequest>()
            val expected = Result.success(mockk<LoginResponseDTO>())
            coEvery { repository.crearPacienteDesdePsicologo(request) } returns expected

            val result = useCase.registrarPacienteDesdePsicologo(request)

            assertEquals(expected, result)
        }
}
