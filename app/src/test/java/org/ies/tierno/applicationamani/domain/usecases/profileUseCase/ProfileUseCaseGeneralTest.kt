package org.ies.tierno.applicationamani.domain.usecases.profileUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ProfileUseCaseGeneralTest {
    private lateinit var repository: ProfileRepository
    private lateinit var useCase: ProfileUseCaseGeneral

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ProfileUseCaseGeneral(repository)
    }

    @Test
    fun `getProfile should return success`() =
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
            coEvery { repository.getProfile(1L) } returns Result.success(dto)

            val result = useCase.getProfile(1L)

            assertTrue(result.isSuccess)
            assertEquals(dto, result.getOrNull())
        }

    @Test
    fun `uploadPerfil should return success`() =
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
            val file = mockk<MultipartBody.Part>()
            coEvery { repository.uploadFoto(1L, file) } returns Result.success(dto)

            val result = useCase.uploadPerfil(1L, file)

            assertTrue(result.isSuccess)
            coVerify { repository.uploadFoto(1L, file) }
        }

    @Test
    fun `obtenerPsicologoAsignado should return success`() =
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
            coEvery { repository.obtenerPsicologoAsignado(1L) } returns Result.success(dto)

            val result = useCase.obtenerPsicologoAsignado(1L)

            assertTrue(result.isSuccess)
        }

    @Test
    fun `getPacienteById should return success`() =
        runTest {
            val dto =
                PacienteProfileResponseDTO(idPaciente = 1L, telefono = "123", genero = "Hombre", fechaNacimiento = null, usuario = null)
            coEvery { repository.getPacienteById(1L) } returns Result.success(dto)

            val result = useCase.getPacienteById(1L)

            assertTrue(result.isSuccess)
            assertEquals(dto, result.getOrNull())
        }

    @Test
    fun `getPacienteByIdFirebase should return success`() =
        runTest {
            val dto =
                PacienteProfileResponseDTO(idPaciente = 1L, telefono = "123", genero = "Hombre", fechaNacimiento = null, usuario = null)
            coEvery { repository.getPacienteByIdFirebase(1L) } returns Result.success(dto)

            val result = useCase.getPacienteByIdFirebase(1L)

            assertTrue(result.isSuccess)
        }

    @Test
    fun `getPsicologoById should return success`() =
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
            coEvery { repository.getPsicologoById(1L) } returns Result.success(dto)

            val result = useCase.getPsicologoById(1L)

            assertTrue(result.isSuccess)
        }
}
