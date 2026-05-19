package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkAll
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase
import org.junit.After
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class IdiomaViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: IdiomaUseCase
    private lateinit var dataStore: UserSessionDataStore
    private lateinit var viewModel: IdiomaViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
        dataStore = mockk(relaxed = true)
        mockkStatic(AppCompatDelegate::class)
        mockkStatic(LocaleListCompat::class)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
        unmockkAll()
    }

    @Test
    fun `cambiarIdioma should call useCase and update dataStore`() =
        runTest {
            val session = UserSession(1L, "Test", "USER", idioma = "es")
            every { dataStore.sessionFlow } returns flowOf(session)
            coEvery { dataStore.getSession() } returns session

            viewModel = IdiomaViewModel(useCase, dataStore)
            advanceUntilIdle()

            viewModel.cambiarIdioma("en")
            advanceUntilIdle()

            coVerify { useCase.actualizarIdioma(1L, "en") }
            coVerify { dataStore.saveSession(any()) }
        }

    @Test
    fun `cambiarTema should update dataStore and call useCase`() =
        runTest {
            val session = UserSession(1L, "Test", "USER", tema = false)
            every { dataStore.sessionFlow } returns flowOf(session)
            coEvery { dataStore.getSession() } returns session

            viewModel = IdiomaViewModel(useCase, dataStore)
            advanceUntilIdle()

            viewModel.cambiarTema(true)
            advanceUntilIdle()

            coVerify { dataStore.saveSession(any()) }
            coVerify { useCase.actualizarTema(true) }
        }
}
