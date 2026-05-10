package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.content.Context
import android.os.Looper
import android.util.Log
import app.cash.turbine.test
import io.mockk.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.*
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.domain.usecases.*
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
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
        every { androidx.media3.common.util.Util.isRunningOnEmulator() } returns false
        every { androidx.media3.common.util.Util.getCurrentOrMainLooper() } returns looper

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

    private fun createViewModel() = ChatViewModel(
        1L, 2L, "Psicologo",
        sendMessageUseCase, getMessagesUseCase, markMessagesAsReadUseCase,
        markMessageDeliveredUseCase, fileStorageService, startTypingUseCase,
        stopTypingUseCase, observeTypingUseCase, observeUserOnlineUseCase,
        updateUserOnlineUseCase, profileUseCaseGeneral, authRepository, context
    )

    @Test
    fun `initial state is correct`() = runTest {
        viewModel.uiState.test {
            val state = awaitItem()
            assertEquals("1", state.currentUserId)
            assertEquals(emptyList<org.ies.tierno.applicationamani.domain.models.Message>(), state.messages)
            assertNull(state.error)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when messages are observed, they are updated in state`() = runTest {
        val messages = listOf(mockk<org.ies.tierno.applicationamani.domain.models.Message>(relaxed = true))
        val messagesFlow = MutableStateFlow(emptyList<org.ies.tierno.applicationamani.domain.models.Message>())
        every { getMessagesUseCase(any(), any()) } returns messagesFlow

        viewModel = createViewModel()

        viewModel.uiState.test {
            assertEquals(emptyList<org.ies.tierno.applicationamani.domain.models.Message>(), awaitItem().messages)
            
            messagesFlow.value = messages
            assertEquals(messages, awaitItem().messages)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when messages observation fails, error is updated in state`() = runTest {
        val errorFlow = flow<List<org.ies.tierno.applicationamani.domain.models.Message>> {
            throw Exception("Network Error")
        }
        every { getMessagesUseCase(any(), any()) } returns errorFlow

        viewModel = createViewModel()
        
        viewModel.uiState.test {
            // Skip initial state and potentially intermediate loading states
            var lastState = awaitItem()
            while (lastState.error == null) {
                lastState = awaitItem()
            }
            assertEquals("Network Error", lastState.error)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when sendTextMessage is called, it clears input and calls usecase`() = runTest {
        coEvery { sendMessageUseCase(any(), any(), any()) } returns Result.success(Unit)
        
        viewModel.uiState.test {
            awaitItem() // Initial
            
            viewModel.onInputChanged("Hello")
            assertEquals("Hello", awaitItem().inputText)
            
            viewModel.sendMessage()
            
            // Wait for input to be cleared
            var state = awaitItem()
            while (state.inputText != "") {
                state = awaitItem()
            }
            assertEquals("", state.inputText)
            cancelAndIgnoreRemainingEvents()
        }
        coVerify { sendMessageUseCase(1L, 2L, "Hello") }
    }

    @Test
    fun `when sendTextMessage fails, error is shown in UI`() = runTest {
        coEvery { sendMessageUseCase(any(), any(), any()) } returns Result.failure(Exception("Failed to send"))
        
        viewModel.uiState.test {
            awaitItem() // Initial
            
            viewModel.onInputChanged("Hello")
            awaitItem() // Input changed
            
            viewModel.sendMessage()
            
            // Wait for error
            var state = awaitItem()
            while (state.error == null) {
                state = awaitItem()
            }
            assertEquals("Failed to send", state.error)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when onInputChanged is called with non-empty text, it starts typing`() = runTest {
        viewModel.onInputChanged("H")
        advanceUntilIdle()
        coVerify { startTypingUseCase(1L, 2L) }
    }

    @Test
    fun `when onInputChanged is called with empty text, it stops typing`() = runTest {
        viewModel.onInputChanged("")
        advanceUntilIdle()
        coVerify { stopTypingUseCase(1L, 2L) }
    }

    @Test
    fun `when toggleAudioPlayback is called with invalid URL, it shows error`() = runTest {
        viewModel.toggleAudioPlayback("msg1", "invalid-url")
        
        viewModel.audioUiState.test {
            val state = awaitItem()
            assertEquals(AudioPlaybackStatus.ERROR, state.status)
            assertEquals("URL de audio inválida", state.errorMessage)
            cancelAndIgnoreRemainingEvents()
        }
    }
}
