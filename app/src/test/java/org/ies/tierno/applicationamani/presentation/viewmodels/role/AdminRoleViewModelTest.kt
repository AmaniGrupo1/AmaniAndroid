package org.ies.tierno.applicationamani.presentation.viewmodels.role

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.usecases.role.RoleAdminUseCase
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response

@OptIn(ExperimentalCoroutinesApi::class)
class AdminRoleViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: RoleAdminUseCase
    private lateinit var viewModel: AdminRoleViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
        viewModel = AdminRoleViewModel(useCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `cambiarRol updates success on successful response`() =
        runTest {
            val body =
                CambiarRolResponseDTO(
                    idUsuario = 1L,
                    nombre = "Test",
                    email = "test@test.com",
                    rolAnterior = Rol.paciente,
                    nuevoRol = Rol.admin,
                    mensaje = "ok",
                )
            coEvery { useCase(any(), any()) } returns Response.success(body)

            viewModel.cambiarRol(1L, Rol.admin)
            advanceUntilIdle()

            assertEquals("ok", viewModel.success.value)
            assertNull(viewModel.error.value)
        }

    @Test
    fun `cambiarRol updates error on error response`() =
        runTest {
            coEvery { useCase(any(), any()) } returns Response.error(500, mockk(relaxed = true))

            viewModel.cambiarRol(1L, Rol.admin)
            advanceUntilIdle()

            assertTrue(viewModel.error.value?.contains("500") == true)
            assertNull(viewModel.success.value)
        }

    @Test
    fun `clearMessages resets messages`() =
        runTest {
            coEvery { useCase(any(), any()) } returns Response.success(mockk(relaxed = true))
            viewModel.cambiarRol(1L, Rol.admin)
            advanceUntilIdle()

            viewModel.clearMessages()
            assertNull(viewModel.success.value)
            assertNull(viewModel.error.value)
        }
}
