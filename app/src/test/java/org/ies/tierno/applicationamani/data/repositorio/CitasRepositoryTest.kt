package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.ResponseBody.Companion.toResponseBody
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.data.remoto.HistorialCitaApi
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime

class CitasRepositoryTest {
    private lateinit var citasApi: CitasApi
    private lateinit var historialCitaApi: HistorialCitaApi
    private lateinit var repository: CitasRepository

    @Before
    fun setUp() {
        citasApi = mockk()
        historialCitaApi = mockk(relaxed = true)
        repository = CitasRepository(citasApi, historialCitaApi)
    }

    private fun agendaItem(
        id: Long = 1L,
        estado: String = "PENDIENTE",
    ) = AgendaItemDTO(
        id = id,
        idPaciente = 1L,
        fecha = LocalDate.of(2024, 1, 1),
        horaInicio = LocalTime.of(10, 0),
        horaFin = LocalTime.of(11, 0),
        tipo = "Cognitive",
        estado = estado,
        motivo = null,
        duracionMinutos = 60,
        nombrePaciente = "P",
        nombrePsicologo = "D",
        terapia = TerapiaResponseDTO(idTipo = 1L, nombre = "Cognitive", duracionMinutos = 60, precio = BigDecimal.ZERO),
        metodoPago = MetodoPago.ONLINE,
        estadoPago = EstadoPago.PENDIENTE,
        modalidad = ModalidadCita.PRESENCIAL,
    )

    @Test
    fun `getAgendaPaciente should return success with list`() =
        runTest {
            val list = listOf(agendaItem())
            coEvery { citasApi.getAgendaPaciente(1L, "2024-01") } returns list

            val result = repository.getAgendaPaciente(1L, "2024-01")

            assertTrue(result.isSuccess)
            assertEquals(list, result.getOrNull())
        }

    @Test
    fun `getAgendaPaciente should return failure on exception`() =
        runTest {
            coEvery { citasApi.getAgendaPaciente(1L, "2024-01") } throws Exception("network error")

            val result = repository.getAgendaPaciente(1L, "2024-01")

            assertTrue(result.isFailure)
        }

    @Test
    fun `getAgendaPsicologo should return success with list`() =
        runTest {
            val list = listOf(agendaItem())
            coEvery { citasApi.getAgendaPsicologo(1L, "2024-01") } returns list

            val result = repository.getAgendaPsicologo(1L, "2024-01")

            assertTrue(result.isSuccess)
            assertEquals(list, result.getOrNull())
        }

    @Test
    fun `getDuracion should return success`() =
        runTest {
            coEvery { citasApi.getDuracion(1L) } returns 60

            val result = repository.getDuracion(1L)

            assertTrue(result.isSuccess)
            assertEquals(60, result.getOrNull())
        }

    @Test
    fun `getDisponibilidadDia should return success`() =
        runTest {
            val response =
                DisponibilidadDiaResponse(
                    fecha = LocalDate.of(2024, 1, 1),
                    diaCompleto = false,
                    slotsLibres = emptyList(),
                )
            coEvery { citasApi.getDisponibilidadDia(1L, "2024-01-01", 60) } returns response

            val result = repository.getDisponibilidadDia(1L, "2024-01-01", 60)

            assertTrue(result.isSuccess)
            assertEquals(response, result.getOrNull())
        }

    @Test
    fun `crearCita should return success`() =
        runTest {
            val dto = agendaItem()
            coEvery { citasApi.crearCitaPsicologo(any()) } returns dto

            val result = repository.crearCita(mockk(relaxed = true))

            assertTrue(result.isSuccess)
            assertEquals(dto, result.getOrNull())
        }

    @Test
    fun `cancelarCita should return success`() =
        runTest {
            val dto = agendaItem(estado = "CANCELADA")
            coEvery { citasApi.cancelarCita(1L) } returns dto

            val result = repository.cancelarCita(1L)

            assertTrue(result.isSuccess)
            assertEquals(dto, result.getOrNull())
        }

    @Test
    fun `editarCita should return success when response is successful`() =
        runTest {
            val dto = agendaItem()
            coEvery { citasApi.editarCita(1L, any()) } returns Response.success(dto)

            val result = repository.editarCita(1L, mockk(relaxed = true))

            assertTrue(result.isSuccess)
            assertEquals(dto, result.getOrNull())
        }

    @Test
    fun `editarCita should return failure when response is not successful`() =
        runTest {
            val errorBody = "error".toResponseBody("application/json".toMediaTypeOrNull())
            coEvery { citasApi.editarCita(1L, any()) } returns Response.error(400, errorBody)

            val result = repository.editarCita(1L, mockk(relaxed = true))

            assertTrue(result.isFailure)
        }

    @Test
    fun `getPacientesDelPsicologo should return patients for matching psychologist`() =
        runTest {
            val pacientes = listOf(PacientesAsignadoDTO(1L, "P", "A", "e@mail.com"))
            val psicologos =
                listOf(
                    ListaPacientesAndPsicologo(
                        idPsicologo = 1L,
                        nombrePsicologo = "N",
                        apellidoPsicologo = "A",
                        emailPsicologo = "e@mail.com",
                        especialidad = "E",
                        licencia = "L",
                        fechaDadoAlta = "2024-01-01",
                        pacientes = pacientes,
                    ),
                )
            coEvery { citasApi.getPsicologosConPacientes() } returns psicologos

            val result = repository.getPacientesDelPsicologo(1L)

            assertTrue(result.isSuccess)
            assertEquals(pacientes, result.getOrNull())
        }

    @Test
    fun `getPacientesDelPsicologo should return empty list when psychologist not found`() =
        runTest {
            coEvery { citasApi.getPsicologosConPacientes() } returns emptyList()

            val result = repository.getPacientesDelPsicologo(1L)

            assertTrue(result.isSuccess)
            assertEquals(emptyList<PacientesAsignadoDTO>(), result.getOrNull())
        }

    @Test
    fun `actualizarHorario should return success`() =
        runTest {
            coEvery { citasApi.actualizarHorario(1L, any()) } returns Unit

            val result = repository.actualizarHorario(1L, HorarioRequestDTO(franjas = emptyList()))

            assertTrue(result.isSuccess)
        }

    @Test
    fun `actualizarDuracion should return success`() =
        runTest {
            coEvery { citasApi.actualizarDuracion(1L, 45) } returns Response.success(Unit)

            val result = repository.actualizarDuracion(1L, 45)

            assertTrue(result.isSuccess)
        }

    @Test
    fun `bloquearDiaNoDisponible should return success`() =
        runTest {
            coEvery { citasApi.marcarDiaNoDisponible(1L, any()) } returns Unit

            val result = repository.bloquearDiaNoDisponible(1L, "2024-01-01", "09:00", "10:00", "Vacaciones")

            assertTrue(result.isSuccess)
        }

    @Test
    fun `quitarDiaNoDisponible should return success`() =
        runTest {
            coEvery { citasApi.eliminarDiaNoDisponible(1L, "2024-01-01") } returns Unit

            val result = repository.quitarDiaNoDisponible(1L, "2024-01-01")

            assertTrue(result.isSuccess)
        }

    @Test
    fun `getTerapias should return success`() =
        runTest {
            val list = listOf(TerapiaResponseDTO(1L, "Cognitive", 60, BigDecimal.ZERO))
            coEvery { citasApi.getTerapias() } returns list

            val result = repository.getTerapias()

            assertTrue(result.isSuccess)
            assertEquals(list, result.getOrNull())
        }

    @Test
    fun `getHorarioActual should return success`() =
        runTest {
            val horario = HorarioRequestDTO(franjas = emptyList())
            coEvery { citasApi.getHorarioActual(1L) } returns horario

            val result = repository.getHorarioActual(1L)

            assertTrue(result.isSuccess)
            assertEquals(horario, result.getOrNull())
        }

    @Test
    fun `getMisCitas should return list`() =
        runTest {
            val list =
                listOf(
                    CitaPacienteViewResponseDTO(
                        idCita = 1L,
                        fecha = "2024-01-01",
                        horaInicio = "10:00",
                        horaFin = "11:00",
                        durationMinutes = 60,
                        estado = "PENDIENTE",
                        modalidad = "online",
                        motivo = null,
                        tipoTerapia = "Cognitive",
                        minutosRestantes = null,
                        esProxima = null,
                        metodoPago = MetodoPago.ONLINE,
                        estadoPago = EstadoPago.PENDIENTE,
                    ),
                )
            coEvery { citasApi.getMisCitas() } returns list

            val result = repository.getMisCitas()

            assertEquals(list, result)
        }

    @Test
    fun `cambiarEstadoCita should return success when response is successful`() =
        runTest {
            coEvery { citasApi.cambiarEstadoCita(1L, any()) } returns Response.success(Unit)

            val result = repository.cambiarEstadoCita(1L, EstadoCita.CONFIRMADA)

            assertTrue(result.isSuccess)
        }

    @Test
    fun `cambiarEstadoCita should return failure when response is not successful`() =
        runTest {
            val errorBody = "error".toResponseBody("application/json".toMediaTypeOrNull())
            coEvery { citasApi.cambiarEstadoCita(1L, any()) } returns Response.error(400, errorBody)

            val result = repository.cambiarEstadoCita(1L, EstadoCita.CONFIRMADA)

            assertTrue(result.isFailure)
        }
}
