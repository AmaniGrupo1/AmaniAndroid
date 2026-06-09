package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.ui.semantics.ProgressBarRangeInfo
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.hasProgressBarRangeInfo
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.MutableStateFlow
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.junit.Before
import org.junit.Rule
import org.junit.Test

class ChatScreenTest {
    @get:Rule
    val composeTestRule = createComposeRule()

    private val viewModel: ChatViewModel = mockk(relaxed = true)
    private val uiStateFlow = MutableStateFlow(ChatUiState())
    private val audioUiStateFlow = MutableStateFlow(AudioPlaybackUiState())

    @Before
    fun setUp() {
        every { viewModel.uiState } returns uiStateFlow
        every { viewModel.audioUiState } returns audioUiStateFlow
        every { viewModel.isRecording } returns MutableStateFlow(false)
        every { viewModel.recordingFile } returns MutableStateFlow(null)
    }

    @Test
    fun whenMessagesAreEmpty_showsEmptyState() {
        uiStateFlow.value = ChatUiState(messages = emptyList(), isLoading = false)

        composeTestRule.setContent {
            ChatScreen(
                viewModel = viewModel,
                onNavigateBack = {},
                otherUserName = "Test User",
            )
        }

        composeTestRule.onNodeWithText("Aún no hay mensajes").assertIsDisplayed()
    }

    @Test
    fun whenIsLoading_showsProgressIndicator() {
        uiStateFlow.value = ChatUiState(isLoading = true)

        composeTestRule.setContent {
            ChatScreen(
                viewModel = viewModel,
                onNavigateBack = {},
                otherUserName = "Test User",
            )
        }

        composeTestRule.onNode(hasProgressBarRangeInfo(ProgressBarRangeInfo.Indeterminate)).assertExists()
    }

    @Test
    fun whenOtherIsTyping_showsTypingIndicator() {
        uiStateFlow.value = ChatUiState(isOtherTyping = true)

        composeTestRule.setContent {
            ChatScreen(
                viewModel = viewModel,
                onNavigateBack = {},
                otherUserName = "Test User",
            )
        }

        composeTestRule.onNodeWithText("Escribiendo...").assertIsDisplayed()
    }

    @Test
    fun whenMessagesArePresent_showsMessages() {
        val messages =
            listOf(
                Message(id = "1", content = "Hello", senderId = "2"),
            )
        uiStateFlow.value = ChatUiState(messages = messages, currentUserId = "1")

        composeTestRule.setContent {
            ChatScreen(
                viewModel = viewModel,
                onNavigateBack = {},
                otherUserName = "Test User",
            )
        }

        composeTestRule.onNodeWithText("Hello").assertIsDisplayed()
    }

    @Test
    fun whenErrorIsPresent_showsSnackbar() {
        // We use a small delay or manual trigger if needed,
        // but here we just check if it eventually shows up.
        uiStateFlow.value = ChatUiState(error = "Network Error")

        composeTestRule.setContent {
            ChatScreen(
                viewModel = viewModel,
                onNavigateBack = {},
                otherUserName = "Test User",
            )
        }

        composeTestRule.onNodeWithText("Network Error").assertIsDisplayed()
    }
}
