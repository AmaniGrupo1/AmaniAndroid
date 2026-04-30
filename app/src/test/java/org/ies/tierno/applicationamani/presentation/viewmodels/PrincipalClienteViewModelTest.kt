package org.ies.tierno.applicationamani.presentation.viewmodels

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test

class PrincipalClienteViewModelTest {

    @Test
    fun `especialidades contains 4 items`() {
        val viewModel = PrincipalClienteViewModel()
        assertEquals(4, viewModel.especialidades.size)
        assertEquals("Especialidad 1", viewModel.especialidades[0])
    }
}
