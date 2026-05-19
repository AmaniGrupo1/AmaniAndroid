package org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class IdiomaUseCaseTest {
    private lateinit var repository: AjustesRepository
    private lateinit var useCase: IdiomaUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = IdiomaUseCase(repository)
    }

    @Test
    fun `actualizarIdioma should call repository`() =
        runTest {
            val idUsuario = 1L
            val idioma = "en"
            coEvery { repository.cambiarIdioma(idUsuario, idioma) } returns Unit

            useCase.actualizarIdioma(idUsuario, idioma)

            coVerify { repository.cambiarIdioma(idUsuario, idioma) }
        }

    @Test
    fun `actualizarTema should return result from repository`() =
        runTest {
            val tema = true
            val expected = Result.success(mockk<AjusteResponseDTO>())
            coEvery { repository.actualizarTema(tema) } returns expected

            val result = useCase.actualizarTema(tema)

            assertEquals(expected, result)
        }
}
