package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.content.Context
import android.os.Looper
import android.util.Log
import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkConstructor
import io.mockk.mockkStatic
import io.mockk.unmockkAll
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.domain.usecases.generalizado.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.MarkMessageDeliveredUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.ObserveTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.ObserveUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.SendMessageUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.StartTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.StopTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.UpdateUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ChatViewModelTest {
    private val testDispatcher = StandardTestDispatcher()

    private val sendMessageUseCase: SendMessageUseCase = mockk(relaxed = true)
    private val getMessagesUseCase: GetMessagesUseCase = mockk(relaxed = true)
    private val markMessagesAsReadUseCase: MarkMessagesAsReadUseCase = mockk(relaxed = true)
    private val markMessageDeliveredUseCase: MarkMessageDeliveredUseCase = mockk(relaxed = true)
    private val fileStorageService: FileStorageService = mockk(relaxed = true)
    private val startTypingUseCase: StartTypingUseCase = mockk(relaxed = true)
    private val stopTypingUseCase: StopTypingUseCase = mockk(relaxed = true)
    private val observeTypingUseCase: ObserveTypingUseCase = mockk(relaxed = true)
    private val observeUserOnlineUseCase: ObserveUserOnlineUseCase = mockk(relaxed = true)
    private val updateUserOnlineUseCase: UpdateUserOnlineUseCase = mockk(relaxed = true)
    private val profileUseCaseGeneral: ProfileUseCaseGeneral = mockk(relaxed = true)
    private val authRepository: org.ies.tierno.applicationamani.data.AuthRepository = mockk(relaxed = true)
    private val context: Context = mockk(relaxed = true)

    private lateinit var viewModel: ChatViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)

        // Mock Log
        mockkStatic(Log::class)
        every { Log.e(any<String>(), any<String>()) } returns 0
        every { Log.d(any<String>(), any<String>()) } returns 0
        every { Log.w(any<String>(), any<String>()) } returns 0
        every { Log.e(any<String>(), any<String>(), any()) } returns 0

        // Mock Looper
        mockkStatic(Looper::class)
        val looper = mockk<Looper>()
        every { Looper.myLooper() } returns looper
        every { Looper.getMainLooper() } returns looper

        // Mock Media3 Util
        mockkStatic(androidx.media3.common.util.Util::class)
        every {
            androidx.media3.common.util.Util
                .isRunningOnEmulator()
        } returns false
        every {
            androidx.media3.common.util.Util
                .getCurrentOrMainLooper()
        } returns looper

        // Mock ExoPlayer Builder
        mockkConstructor(androidx.media3.exoplayer.ExoPlayer.Builder::class)
        every { anyConstructed<androidx.media3.exoplayer.ExoPlayer.Builder>().build() } returns mockk(relaxed = true)

        // Default mocks
        every { observeTypingUseCase(any(), any()) } returns flowOf(false)
        every { observeUserOnlineUseCase(any()) } returns flowOf(false)
        every { getMessagesUseCase(any(), any()) } returns flowOf(emptyList())
        coEvery { profileUseCaseGeneral.getPsicologoById(any()) } returns Result.success(mockk(relaxed = true))
        coEvery { authRepository.ensureFirebaseAuthenticated() } returns Unit

        viewModel = createViewModel()
    }

    @After
    fun tearDown() {
        unmockkAll()
        Dispatchers.resetMain()
    }

    private fun createViewModel() =
        ChatViewModel(
            1L,
            2L,
            "Psicologo",
            sendMessageUseCase,
            getMessagesUseCase,
            markMessagesAsReadUseCase,
            markMessageDeliveredUseCase,
            fileStorageService,
            startTypingUseCase,
            stopTypingUseCase,
            observeTypingUseCase,
            observeUserOnlineUseCase,
            updateUserOnlineUseCase,
            profileUseCaseGeneral,
            authRepository,
            context,
        )

    @Test
    fun `initial state is correct`() =
        runTest {
            viewModel.uiState.test {
                var state = awaitItem()
                if (state is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Loading) {
                    state = awaitItem()
                }
                state as org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success
                assertEquals("1", state.currentUserId)
                assertEquals(emptyList<org.ies.tierno.applicationamani.domain.models.Message>(), state.messages)
                cancelAndIgnoreRemainingEvents()
            }
        }

    @Test
    fun `when messages are observed, they are updated in state`() =
        runTest {
            val messages = listOf(mockk<org.ies.tierno.applicationamani.domain.models.Message>(relaxed = true))
            val messagesFlow = MutableStateFlow(emptyList<org.ies.tierno.applicationamani.domain.models.Message>())
            every { getMessagesUseCase(any(), any()) } returns messagesFlow

            viewModel = createViewModel()

            viewModel.uiState.test {
                var state = awaitItem()
                if (state is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Loading) {
                    state = awaitItem()
                }
                assertEquals(emptyList<org.ies.tierno.applicationamani.domain.models.Message>(), (state as org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success).messages)

                messagesFlow.value = messages
                var nextState = awaitItem()
                assertEquals(messages, (nextState as org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success).messages)
                cancelAndIgnoreRemainingEvents()
            }
        }

    @Test
    fun `when messages observation fails, error is updated in state`() =
        runTest {
            val errorFlow =
                flow<List<org.ies.tierno.applicationamani.domain.models.Message>> {
                    throw Exception("Network Error")
                }
            every { getMessagesUseCase(any(), any()) } returns errorFlow

            viewModel = createViewModel()

            viewModel.uiState.test {
                var lastState = awaitItem()
                while (lastState !is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Error) {
                    lastState = awaitItem()
                }
                assertEquals("Network Error", lastState.message)
                cancelAndIgnoreRemainingEvents()
            }
        }

    @Test
    fun `when sendTextMessage is called, it clears input and calls usecase`() =
        runTest {
            coEvery { sendMessageUseCase(any(), any(), any()) } returns Result.success(Unit)

            viewModel.uiState.test {
                var state = awaitItem()
                if (state is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Loading) {
                    state = awaitItem()
                }

                viewModel.onInputChanged("Hello")
                state = awaitItem()
                assertEquals("Hello", (state as org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success).inputText)

                viewModel.sendMessage()

                state = awaitItem()
                while ((state as? org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success)?.inputText != "") {
                    state = awaitItem()
                }
                assertEquals("", (state as org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Success).inputText)
                cancelAndIgnoreRemainingEvents()
            }
            coVerify { sendMessageUseCase(1L, 2L, "Hello") }
        }

    @Test
    fun `when sendTextMessage fails, error is shown in UI`() =
        runTest {
            coEvery { sendMessageUseCase(any(), any(), any()) } returns Result.failure(Exception("Failed to send"))

            viewModel.uiState.test {
                var state = awaitItem()
                if (state is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Loading) {
                    state = awaitItem()
                }

                viewModel.onInputChanged("Hello")
                awaitItem()

                viewModel.sendMessage()

                state = awaitItem()
                while (state !is org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiState.Error) {
                    state = awaitItem()
                }
                assertEquals("Failed to send", state.message)
                cancelAndIgnoreRemainingEvents()
            }
        }

    @Test
    fun `when onInputChanged is called with non-empty text, it starts typing`() =
        runTest {
            viewModel.onInputChanged("H")
            advanceUntilIdle()
            coVerify { startTypingUseCase(1L, 2L) }
        }

    @Test
    fun `when onInputChanged is called with empty text, it stops typing`() =
        runTest {
            viewModel.onInputChanged("")
            advanceUntilIdle()
            coVerify { stopTypingUseCase(1L, 2L) }
        }

    @Test
    fun `when toggleAudioPlayback is called with invalid URL, it shows error`() =
        runTest {
            viewModel.toggleAudioPlayback("msg1", "invalid-url")

            viewModel.audioUiState.test {
                val state = awaitItem()
                assertEquals(AudioPlaybackStatus.ERROR, state.status)
                assertEquals("URL de audio inválida", state.errorMessage)
                cancelAndIgnoreRemainingEvents()
            }
        }
}
