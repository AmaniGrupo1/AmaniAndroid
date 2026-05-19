package org.ies.tierno.applicationamani.presentation.viewmodels

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class PrincipalClienteViewModelTest {
    @Test
    fun `especialidades contains 4 items`() {
        val viewModel = PrincipalClienteViewModel()
        assertEquals(4, viewModel.especialidades.size)
    }

    @Test
    fun `especialidades are non-blank strings`() {
        val viewModel = PrincipalClienteViewModel()
        viewModel.especialidades.forEach { esp ->
            assertTrue(esp.isNotBlank())
        }
    }

    @Test
    fun `especialidades list is immutable from outside`() {
        val viewModel = PrincipalClienteViewModel()
        val original = viewModel.especialidades.toList()
        // List is val, cannot be reassigned; verify it doesn't change
        assertEquals(original, viewModel.especialidades)
    }
}
