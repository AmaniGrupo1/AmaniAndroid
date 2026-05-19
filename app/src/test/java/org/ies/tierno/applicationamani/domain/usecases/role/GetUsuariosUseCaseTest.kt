package org.ies.tierno.applicationamani.domain.usecases.role

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class GetUsuariosUseCaseTest {
    private lateinit var repository: AdminRepository
    private lateinit var useCase: GetUsuariosUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = GetUsuariosUseCase(repository)
    }

    @Test
    fun `invoke should return response from repository`() =
        runTest {
            val rol = "PACIENTE"
            val dni = "12345678A"
            val expected = Response.success(emptyList<UsuarioDTO>())

            coEvery { repository.getUsuarios(rol, dni) } returns expected

            val result = useCase(rol, dni)

            assertEquals(expected, result)
        }

    @Test
    fun `invoke with null params should return response from repository`() =
        runTest {
            val expected = Response.success(emptyList<UsuarioDTO>())

            coEvery { repository.getUsuarios(null, null) } returns expected

            val result = useCase()

            assertEquals(expected, result)
        }
}
