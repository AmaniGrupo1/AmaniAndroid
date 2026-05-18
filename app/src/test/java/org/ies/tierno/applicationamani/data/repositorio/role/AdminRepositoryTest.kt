package org.ies.tierno.applicationamani.data.repositorio.role

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.role.AdminApiService
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class AdminRepositoryTest {

    private lateinit var api: AdminApiService
    private lateinit var repository: AdminRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = AdminRepository(api)
    }

    @Test
    fun `cambiarRol should return response from api`() = runTest {
        val request = CambiarRolRequestDTO(1L, "admin")
        val expected = Response.success(mockk<CambiarRolResponseDTO>())
        coEvery { api.cambiarRol(request) } returns expected

        val result = repository.cambiarRol(request)

        assertEquals(expected, result)
    }

    @Test
    fun `getUsuarios should return response from api`() = runTest {
        val rol = "PACIENTE"
        val dni = "123"
        val expected = Response.success(emptyList<UsuarioDTO>())
        coEvery { api.getUsuarios(rol, dni) } returns expected

        val result = repository.getUsuarios(rol, dni)

        assertEquals(expected, result)
    }
}
