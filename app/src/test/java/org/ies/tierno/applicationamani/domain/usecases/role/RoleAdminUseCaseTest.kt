package org.ies.tierno.applicationamani.domain.usecases.role

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class RoleAdminUseCaseTest {
    private lateinit var repository: AdminRepository
    private lateinit var useCase: RoleAdminUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = RoleAdminUseCase(repository)
    }

    @Test
    fun `invoke should return response from repository`() =
        runTest {
            val idUsuario = 1L
            val nuevoRol = Rol.ADMIN
            val expected = Response.success(mockk<CambiarRolResponseDTO>())

            coEvery { repository.cambiarRol(any()) } returns expected

            val result = useCase(idUsuario, nuevoRol)

            assertEquals(expected, result)
        }
}
