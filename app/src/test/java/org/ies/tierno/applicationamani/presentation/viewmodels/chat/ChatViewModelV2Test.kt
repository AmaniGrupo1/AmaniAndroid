package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.content.Context
import android.net.Uri
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.MessageContent
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.ChatRepository
import org.ies.tierno.applicationamani.domain.repository.ChatResult
import org.ies.tierno.applicationamani.domain.repository.MediaType
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

/** Doble de prueba en memoria: no toca Firebase real. */
private class FakeChatRepository : ChatRepository {
    val live = MutableSharedFlow<ChatResult<List<ChatMessage>>>(replay = 1)
    var older: ChatResult<List<ChatMessage>> = ChatResult.Success(emptyList())
    var sendResult: ChatResult<Unit> = ChatResult.Success(Unit)
    val sent = mutableListOf<ChatMessage>()
    val readBatches = mutableListOf<List<String>>()
    var olderCalls = 0
    private var counter = 0

    override fun observeMessages(chatId: String, pageSize: Int): Flow<ChatResult<List<ChatMessage>>> = live

    override suspend fun loadOlderMessages(chatId: String, beforeTimestamp: Long, pageSize: Int): ChatResult<List<ChatMessage>> {
        olderCalls++
        return older
    }

    override suspend fun sendTextMessage(chatId: String, message: ChatMessage): ChatResult<Unit> {
        sent += message
        return sendResult
    }

    override suspend fun uploadMedia(chatId: String, uri: Uri, type: MediaType): ChatResult<String> =
        ChatResult.Success("https://example.invalid/file")

    override fun newMessageId(chatId: String): String = "msg_${++counter}"

    override suspend fun markAsRead(chatId: String, messageIds: List<String>): ChatResult<Unit> {
        readBatches += messageIds
        return ChatResult.Success(Unit)
    }
}

@OptIn(ExperimentalCoroutinesApi::class)
class ChatViewModelV2Test {
    private val me = "1"
    private val other = "2"
    private lateinit var repo: FakeChatRepository

    @Before
    fun setUp() {
        Dispatchers.setMain(UnconfinedTestDispatcher())
        repo = FakeChatRepository()
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private fun viewModel(auth: suspend () -> Unit = {}) =
        ChatViewModelV2(mockk<Context>(relaxed = true), repo, "1_2", me, other, auth)

    private fun msg(id: String, ts: Long, from: String = other, status: MessageStatus = MessageStatus.SENT) =
        ChatMessage(id, from, if (from == me) other else me, MessageContent.Text(id), ts, status)

    @Test
    fun `mensaje vacio o en blanco no se envia`() = runTest {
        val vm = viewModel()
        vm.sendText("   \n ")
        assertTrue(repo.sent.isEmpty())
        assertTrue(vm.uiState.value.messages.isEmpty())
    }

    @Test
    fun `mensaje demasiado largo se rechaza con error`() = runTest {
        val vm = viewModel()
        vm.sendText("a".repeat(ChatViewModelV2.MAX_MESSAGE_LENGTH + 1))
        assertTrue(repo.sent.isEmpty())
        assertNotNull(vm.uiState.value.error)
    }

    @Test
    fun `envio valido inserta optimista con el id definitivo y no duplica al volver del listener`() = runTest {
        val vm = viewModel()
        repo.live.emit(ChatResult.Success(emptyList()))

        vm.sendText("  hola  ")

        val sent = repo.sent.single()
        assertEquals("msg_1", sent.id)
        assertEquals("hola", (sent.content as MessageContent.Text).body)
        assertEquals(MessageStatus.SENDING, vm.uiState.value.messages.single().status)

        // El listener devuelve el mismo nodo (misma clave) ya confirmado.
        repo.live.emit(ChatResult.Success(listOf(sent.copy(status = MessageStatus.SENT))))
        val messages = vm.uiState.value.messages
        assertEquals(1, messages.size)
        assertEquals(MessageStatus.SENT, messages.single().status)
    }

    @Test
    fun `mensaje fallido se conserva y el reintento reutiliza el mismo id`() = runTest {
        val vm = viewModel()
        repo.live.emit(ChatResult.Success(listOf(msg("a", 100))))
        repo.sendResult = ChatResult.Error(RuntimeException("sin red"))

        vm.sendText("hola")
        val failed = vm.uiState.value.messages.single { it.id == "msg_1" }
        assertEquals(MessageStatus.FAILED, failed.status)

        // Llega otra emisión del listener: el FAILED NO debe desaparecer.
        repo.live.emit(ChatResult.Success(listOf(msg("a", 100), msg("b", 200))))
        assertTrue(vm.uiState.value.messages.any { it.id == "msg_1" && it.status == MessageStatus.FAILED })

        repo.sendResult = ChatResult.Success(Unit)
        vm.retrySend("msg_1")
        assertEquals(listOf("msg_1", "msg_1"), repo.sent.map { it.id })
        assertEquals(MessageStatus.SENDING, vm.uiState.value.messages.single { it.id == "msg_1" }.status)
    }

    @Test
    fun `las paginas antiguas sobreviven a nuevos mensajes y la lista queda ordenada`() = runTest {
        val vm = viewModel()
        repo.live.emit(ChatResult.Success(listOf(msg("m3", 300), msg("m4", 400))))
        repo.older = ChatResult.Success(listOf(msg("m1", 100), msg("m2", 200)))

        vm.loadOlderMessages()
        assertEquals(listOf("m1", "m2", "m3", "m4"), vm.uiState.value.messages.map { it.id })

        repo.live.emit(ChatResult.Success(listOf(msg("m3", 300), msg("m4", 400), msg("m5", 500))))
        assertEquals(listOf("m1", "m2", "m3", "m4", "m5"), vm.uiState.value.messages.map { it.id })
    }

    @Test
    fun `pagina vacia desactiva hasMoreMessages`() = runTest {
        val vm = viewModel()
        repo.live.emit(ChatResult.Success(listOf(msg("m1", 100))))
        vm.loadOlderMessages()
        assertFalse(vm.uiState.value.hasMoreMessages)
        vm.loadOlderMessages()
        assertEquals(1, repo.olderCalls) // no vuelve a consultar
    }

    @Test
    fun `solo se marcan como leidos mensajes del otro con la pantalla visible y una sola vez`() = runTest {
        val vm = viewModel()
        repo.live.emit(
            ChatResult.Success(
                listOf(msg("in1", 100), msg("mine", 200, from = me), msg("in2", 300, status = MessageStatus.READ)),
            ),
        )
        assertTrue(repo.readBatches.isEmpty()) // pantalla no visible todavía

        vm.onScreenResumed()
        assertEquals(listOf(listOf("in1")), repo.readBatches)

        vm.onScreenResumed()
        assertEquals(1, repo.readBatches.size) // sin duplicar escrituras
    }

    @Test
    fun `error del listener apaga la carga y se muestra`() = runTest {
        val failing = object : ChatRepository by repo {
            override fun observeMessages(chatId: String, pageSize: Int): Flow<ChatResult<List<ChatMessage>>> =
                flow { throw IllegalStateException("permission_denied") }
        }
        val vm = ChatViewModelV2(mockk<Context>(relaxed = true), failing, "1_2", me, other)
        assertFalse(vm.uiState.value.isLoadingInitial)
        assertEquals("permission_denied", vm.uiState.value.error)
        assertFalse(vm.uiState.value.canSendMessages)
    }

    @Test
    fun `se refresca la sesion Firebase antes de observar`() = runTest {
        var calls = 0
        viewModel(auth = { calls++ })
        assertTrue(calls >= 1)
    }
}
