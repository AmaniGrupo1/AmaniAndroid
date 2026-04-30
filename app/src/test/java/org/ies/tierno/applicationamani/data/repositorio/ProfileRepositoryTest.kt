package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ProfileRepositoryTest {

    private lateinit var api: ProfileApi
    private lateinit var repository: ProfileRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = ProfileRepository(api)
    }

    @Test
    fun `getProfile should return success`() = runTest {
        val dto = PsicologoProfileResponseDTO(idPsicologo = 1L, especialidad = "N", experiencia = 5, descripcion = "D", licencia = "123", usuario = null)
        coEvery { api.getProfilePsicologo(1L) } returns dto

        val result = repository.getProfile(1L)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `getProfile should return failure on exception`() = runTest {
        coEvery { api.getProfilePsicologo(1L) } throws Exception("fail")

        val result = repository.getProfile(1L)

        assertTrue(result.isFailure)
    }

    @Test
    fun `uploadFoto should return success`() = runTest {
        val dto = PsicologoProfileResponseDTO(idPsicologo = 1L, especialidad = "N", experiencia = 5, descripcion = "D", licencia = "123", usuario = null)
        val file = mockk<MultipartBody.Part>()
        coEvery { api.uploadFoto(1L, file) } returns dto

        val result = repository.uploadFoto(1L, file)

        assertTrue(result.isSuccess)
        coVerify { api.uploadFoto(1L, file) }
    }

    @Test
    fun `obtenerPsicologoAsignado should return success`() = runTest {
        val dto = PsicologoProfileResponseDTO(idPsicologo = 1L, especialidad = "N", experiencia = 5, descripcion = "D", licencia = "123", usuario = null)
        coEvery { api.obtenerPsicologoAsignado(1L) } returns dto

        val result = repository.obtenerPsicologoAsignado(1L)

        assertTrue(result.isSuccess)
    }

    @Test
    fun `getPacienteById should return success`() = runTest {
        val dto = PacienteProfileResponseDTO(idPaciente = 1L, telefono = "123", genero = "Hombre", fechaNacimiento = null, usuario = null)
        coEvery { api.getPacienteById(1L) } returns dto

        val result = repository.getPacienteById(1L)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `getPacienteByIdFirebase should return success`() = runTest {
        val dto = PacienteProfileResponseDTO(idPaciente = 1L, telefono = "123", genero = "Hombre", fechaNacimiento = null, usuario = null)
        coEvery { api.getPacienteByIdFirebase(1L) } returns dto

        val result = repository.getPacienteByIdFirebase(1L)

        assertTrue(result.isSuccess)
    }

    @Test
    fun `getPsicologoById should return success`() = runTest {
        val dto = PsicologoProfileResponseDTO(idPsicologo = 1L, especialidad = "N", experiencia = 5, descripcion = "D", licencia = "123", usuario = null)
        coEvery { api.getPsicologoById(1L) } returns dto

        val result = repository.getPsicologoById(1L)

        assertTrue(result.isSuccess)
    }
}
