package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MessageBubbleTest {
    @Test
    fun `toUiContent should keep document placeholder visible when attachment url is missing`() {
        val message = Message(
            content = "📄 Documento",
            attachmentName = "informe.pdf",
        )

        val result = message.toUiContent()

        assertTrue(result is MessageUiContent.AttachmentPlaceholder)
        assertEquals("informe.pdf", (result as MessageUiContent.AttachmentPlaceholder).label)
    }

    @Test
    fun `toUiContent should fallback to document when attachment type is missing`() {
        val message = Message(
            content = "📄 Documento",
            attachmentUrl = "https://example.com/informe.pdf",
            attachmentType = null,
            attachmentName = "informe.pdf",
        )

        val result = message.toUiContent()

        assertTrue(result is MessageUiContent.Document)
        assertEquals("informe.pdf", (result as MessageUiContent.Document).name)
    }

    @Test
    fun `toUiContent should keep supported image attachments as image`() {
        val message = Message(
            content = "",
            attachmentUrl = "https://example.com/foto.jpg",
            attachmentType = AttachmentType.IMAGE,
        )

        val result = message.toUiContent()

        assertTrue(result is MessageUiContent.Image)
    }
}
