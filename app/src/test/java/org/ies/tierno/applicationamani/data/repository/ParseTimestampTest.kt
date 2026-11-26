package org.ies.tierno.applicationamani.data.repository

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ParseTimestampTest {
    @Test
    fun `acepta numeros y strings numericos`() {
        assertEquals(1700000000000L, parseTimestamp(1700000000000L))
        assertEquals(1700000000000L, parseTimestamp("1700000000000"))
        assertEquals(1700000000000L, parseTimestamp(1.7E12))
    }

    @Test
    fun `acepta ISO con offset`() {
        assertEquals(1700000000000L, parseTimestamp("2023-11-14T22:13:20Z"))
        assertEquals(1700000000000L, parseTimestamp("2023-11-14T23:13:20+01:00"))
    }

    @Test
    fun `acepta ISO sin offset del backend legacy`() {
        val parsed = parseTimestamp("2026-05-26T09:01:38.875604537")
        assertEquals(true, parsed != null && parsed > 0)
    }

    @Test
    fun `valores no interpretables devuelven null`() {
        assertNull(parseTimestamp(null))
        assertNull(parseTimestamp("no-es-fecha"))
        assertNull(parseTimestamp(true))
    }
}
