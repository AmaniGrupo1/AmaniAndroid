package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class GetAllPacientAndPsicologoVeiwModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: GetAllClientAndPsicologoUseCase
    private lateinit var viewModel: GetAllPacientAndPsicologoVeiwModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `init loads data from useCase`() =
        runTest {
            val expected = listOf(mockk<ListaPacientesAndPsicologo>())
            every { useCase() } returns flowOf(expected)

            viewModel = GetAllPacientAndPsicologoVeiwModel(useCase)

            viewModel.paciente.test {
                // First item is initialValue emptyList()
                assertEquals(emptyList<ListaPacientesAndPsicologo>(), awaitItem())
                // Second item should be from useCase
                assertEquals(expected, awaitItem())
            }
        }
}
