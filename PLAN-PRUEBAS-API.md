# Plan de Pruebas API REST - Amani

## 1. Objetivo
Validar funcionalidad, seguridad por roles, integridad de datos y estabilidad de flujos críticos de la API REST consumida por la app Android Amani.

## 2. Alcance
Incluye:
- Autenticación y autorización (`/auth/**`, `/api/**`)
- Módulo de citas y agenda (`/api/citas/**`)
- Diario emocional (`/api/diario/**`)
- Mensajería, notificaciones y soporte
- Endpoints administrativos clave (`/api/admin/**`)
- Gestión de perfil y psicólogos

No incluye en esta fase:
- Pruebas E2E de UI (Jetpack Compose)
- Pruebas de carga masiva WebSocket/Firebase
- Pruebas de integración con Firebase Cloud Messaging

## 3. Entorno de prueba
- **Plataforma**: Android (Kotlin)
- **Test runner**: JUnit 4 (`testDebugUnitTest`)
- **Dispatcher**: `StandardTestDispatcher` + `Dispatchers.setMain`
- **Mocking**: MockK (`coEvery` / `coVerify`)
- **Flow testing**: Turbine (`flow.test { awaitItem() }`)
- **Dependencias**: `kotlinx-coroutines-test`, `mockk-android`, `app.cash.turbine:turbine`
- **Datos semilla** (fakes):
  - 1 ADMIN
  - 2 PSICOLOGOS
  - 3 PACIENTES (1 con tutor asignado)
  - Citas en estados `PENDIENTE`, `CONFIRMADA`, `CANCELADA`, `COMPLETADA`
  - Tickets de soporte en estados `ABIERTO`, `CERRADO`

## 4. Criterios de entrada/salida
Entrada:
- APK compilable en variant `debug`
- Colección Postman importada (si se valida contra backend real)
- Tokens por rol disponibles en `UserSessionDataStore` fake

Salida:
- 100% casos P0 en verde
- Sin defectos críticos o altos abiertos
- `koverHtmlReport` generado y verificado (`./gradlew :app:koverVerify`)
- Evidencia de ejecución guardada en CI (GitHub Actions / Bitrise)

## 5. Matriz de casos de prueba

## P0 - Críticos
| ID | Módulo | Endpoint | Precondiciones | Request (resumen) | Resultado esperado |
|---|---|---|---|---|---|
| TC-AUTH-01 | Auth | `POST /auth/login` | Usuario activo existente | email/password correctos | `200`, JWT no vacío, rol correcto |
| TC-AUTH-02 | Auth | `POST /auth/login` | Usuario existente | password incorrecta | `401` con error controlado |
| TC-AUTH-03 | Auth | `POST /auth/register-paciente` | Email no registrado | payload válido | `200/201`, paciente creado |
| TC-AUTH-04 | Auth | `POST /auth/register-admin` | Email no registrado | payload válido | `200/201`, admin creado |
| TC-AUTH-05 | Auth | `POST /api/admin/psicologos/create` | Token ADMIN | payload PsicologoRequestDTO válido | `200/201`, psicólogo creado |
| TC-SEC-01 | Seguridad | `GET /api/citas/mis-citas` | Sin token / sesión expirada | sin `Authorization` válido | `401` o excepción controlada en Repository |
| TC-SEC-02 | Seguridad | `GET /api/admin/psicologos` | Token PACIENTE | request con JWT PACIENTE | `403` o excepción controlada |
| TC-SEC-03 | Seguridad | `GET /api/admin/psicologos/pacientes` | Token PSICOLOGO | request con JWT PSICOLOGO | `403` (solo ADMIN) |
| TC-CITA-01 | Citas | `POST /api/citas/psicologo/cita` | Psicólogo y paciente válidos | payload CrearCitaRequestDTO válido | `200/201`, cita persistida |
| TC-CITA-02 | Citas | `PATCH /api/citas/{id}/cancelar` | Cita existente cancelable | id de cita | `200`, estado `CANCELADA` |
| TC-CITA-03 | Citas | `GET /api/citas/psicologo/{id}/disponibilidad` | Horario definido + citas previas | fecha objetivo | `200`, slots coherentes |
| TC-CITA-04 | Citas | `PATCH /api/citas/cambio/{id}/estado` | Cita en estado final | transición inválida | `400/409`, no cambia estado |
| TC-CITA-05 | Citas | `PUT /api/citas/psicologo/{id}/horario` | Psicólogo existente | horario semanal válido | `200`, horario actualizado |
| TC-CITA-06 | Citas | `POST /api/citas/psicologo/{id}/dias-no-disponibles` | Psicólogo con agenda | fecha bloqueo válida | `200/201` |
| TC-SOP-01 | Soporte | `POST /api/tickets-soporte` | Usuario autenticado | payload TicketSoporteRequestDTO válido | `200/201`, ticket creado |
| TC-SOP-02 | Soporte | `GET /api/tickets-soporte/{id}` | Ticket existente del usuario | id válido | `200`, TicketSoporteResponseDTO correcto |
| TC-NOT-01 | Notificación | `GET /api/notificaciones/{idUsuario}` | Usuario con notificaciones | idUsuario | `200`, lista/contador correctos |
| TC-NOT-02 | Notificación | `PUT /api/notificaciones/leer/{id}` | Notificación no leída existente | id válido | `200`, marcada como leída |
| TC-NOT-03 | Notificación | `PUT /api/notificaciones/configuracion/{idUsuario}/activar` | Usuario autenticado | activar=true/false | `200`, estado toggle persistido |

## P1 - Alta prioridad
| ID | Módulo | Endpoint | Precondiciones | Request (resumen) | Resultado esperado |
|---|---|---|---|---|---|
| TC-AGENDA-01 | Agenda | `GET /api/citas/paciente/{idPaciente}/agenda` | Paciente con citas | month=YYYY-MM | `200`, lista AgendaItemDTO |
| TC-AGENDA-02 | Agenda | `GET /api/citas/psicologo/{idPsicologo}/agenda` | Psicólogo con citas | month=YYYY-MM | `200`, lista AgendaItemDTO |
| TC-AGENDA-03 | Agenda | `DELETE /api/citas/psicologo/{id}/dias-no-disponibles/{fecha}` | Día bloqueado existente | idPsicologo + fecha | `200`, bloqueo eliminado |
| TC-CITA-07 | Citas | `PUT /api/citas/psicologo/{idCita}/editar` | Cita existente | payload CrearCitaRequestDTO | `200`, cita actualizada |
| TC-CITA-08 | Citas | `GET /api/citas/psicologo/{idPsicologo}/duracion` | Psicólogo configurado | — | `200`, duración en minutos |
| TC-CITA-09 | Citas | `GET /api/citas/psicologo/terapias` | Terapias configuradas | — | `200`, lista TerapiaResponseDTO |
| TC-DIARIO-01 | Diario | `POST /api/diario-emocion` | Paciente válido | emoción/intensidad/nota válidas | `200/201` |
| TC-DIARIO-02 | Diario | `GET /api/diario-emocion/{idPaciente}` | Paciente con entradas | id válido | `200`, lista de entradas |
| TC-PROF-01 | Perfil | `GET /api/perfil/psicologo/{id}` | Psicólogo existente | id válido | `200`, PsicologoProfileResponseDTO |
| TC-PROF-02 | Perfil | `GET /api/perfil/paciente/{id}` | Paciente existente | id válido | `200`, PacienteProfileResponseDTO |
| TC-PROF-03 | Perfil | `POST /api/psicologo/{id}/foto` | Token válido + archivo imagen | multipart imagen válida | `200`, URL/path guardado |
| TC-MSG-01 | Mensajes | `POST /api/mensajes` | Emisor/receptor válidos | payload mensaje | `200/201`, mensaje creado |
| TC-MSG-02 | Mensajes | `PATCH /api/mensajes/{id}/leido` | Mensaje existente | id válido | `200`, `leido=true` |
| TC-ADM-01 | Admin | `POST /api/admin/psicologos/asignar-psicologo` | IDs existentes | asignación válida | `200`, relación persistida |
| TC-ADM-02 | Admin | `GET /api/pacientes/sin-psicologo` | Pacientes sin asignar | — | `200`, lista PacienteBasicoResponseDTO |
| TC-ADM-03 | Admin | `GET /api/admin/psicologos/pacientes` | Token ADMIN | — | `200`, ListaPacientesAndPsicologo |

## P2 - Complementarios
| ID | Módulo | Endpoint | Precondiciones | Request (resumen) | Resultado esperado |
|---|---|---|---|---|---|
| TC-AUTH-06 | Auth | `PUT /auth/pacientes/{id}/baja` | Paciente activo | id válido | `200`, mensaje "Baja correcta" |
| TC-AUTH-07 | Auth | `POST /auth/registrar/pacienteDesde/psicologo` | Token PSICOLOGO | PacienteRequest válido | `200/201`, paciente creado |
| TC-CITA-10 | Citas | `GET /api/citas/psicologo/{idPsicologo}/horario-actual` | Horario configurado | id válido | `200`, HorarioRequestDTO |
| TC-TEST-01 | Tests | `POST /api/tests/preguntas` | Token ADMIN | PreguntaRequest válido | `200/201`, OpcionAdminDTO |
| TC-TEST-02 | Tests | `GET /api/tests/preguntas` | Preguntas existentes | — | `200`, lista OpcionAdminDTO |
| TC-SIT-01 | Situación | `GET /api/situaciones` | Situaciones configuradas | — | `200`, lista SituacionDTO |
| TC-SIT-02 | Situación | `GET /api/situaciones/{id}` | Situación existente | id válido | `200`, SituacionDTO |

## 6. Explicación de por qué estos casos
- `AUTH/SEC`: cualquier fallo aquí expone datos clínicos o rompe acceso total. El patrón `Result<T>` en Repository encapsula errores, por lo que los tests deben verificar `isFailure` y el mensaje correcto.
- `CITAS`: es el flujo de negocio más sensible por conflictos de agenda y estados. Los slots de disponibilidad dependen del horario configurado + citas existentes + días bloqueados.
- `DIARIO/PROGRESO`: son datos clínicos, requieren consistencia y aislamiento por paciente. Se persisten localmente (Room) y se sincronizan (`DiarioSyncManager`).
- `MENSAJERIA/NOTIFICACIONES`: impacta seguimiento terapéutico y operación diaria. Los mensajes usan Firebase Realtime DB como fallback cuando la API REST no está disponible.
- `SOPORTE/ADMIN`: cubre operación interna y gestión de incidencias.

## 7. Base de automatización

## 7.1 Unit + Integración (JUnit 4 + MockK + Turbine)
Estructura sugerida en `app/src/test/java/...`:

```
app/src/test/java/org/ies/tierno/applicationamani/
├── data/
│   ├── AuthRepositoryTest.kt
│   ├── CitasRepositoryTest.kt
│   ├── DiarioEmocionalRepositoryTest.kt
│   ├── NotificacionRepositoryTest.kt
│   ├── ProfileRepositoryTest.kt
│   ├── SoporteTicketRepositoryTest.kt
│   └── SituacionRepositoryTest.kt
├── domain/
│   └── usecases/
│       ├── adminUseCase/
│       │   └── CrearPreguntaUseCaseTest.kt
│       ├── login/
│       │   └── LoginUseCaseTest.kt
│       ├── notificacion/
│       │   └── NotificacionUseCaseTest.kt
│       ├── pacienteUseCase/
│       │   └── ResponderTestUseCaseTest.kt
│       ├── profileUseCase/
│       │   └── ProfileUseCaseGeneralTest.kt
│       └── psicologosUseCase/
│           └── ...
└── presentation/
    └── viewmodels/
        ├── chat/
        │   └── ChatViewModelTest.kt
        ├── diario/
        │   └── DiarioEmocionalViewModelTest.kt
        ├── notificacion/
        │   └── NotificacionViewModelTest.kt
        ├── profile/
        │   └── PacienteViewModelTest.kt
        ├── soporte/
        │   └── SoporteTicketViewModelTest.kt
        └── LoginViewModelTest.kt
```

Anotaciones recomendadas:
- Unitarias: `@Before` + MockK `mockk()` / `mockk(relaxed = true)`
- Corrutinas: `runTest { }` + `StandardTestDispatcher()` + `Dispatchers.setMain(testDispatcher)` / `Dispatchers.resetMain()`
- Flow: `flow.test { assertEquals(..., awaitItem()); awaitComplete() }`
- Suspend functions: `coEvery { api.xxx() } returns ...` / `coVerify { api.xxx() }`

Ejemplo mínimo de patrón:
```kotlin
@OptIn(ExperimentalCoroutinesApi::class)
class EjemploRepositoryTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var api: EjemploApi
    private lateinit var repository: EjemploRepository

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        api = mockk()
        repository = EjemploRepository(api)
    }

    @After
    fun tearDown() { Dispatchers.resetMain() }

    @Test
    fun `endpoint should return success`() = runTest {
        coEvery { api.getData() } returns Response.success(mockData)
        val result = repository.fetchData()
        assertTrue(result.isSuccess)
    }
}
```

## 7.2 Contrato/API (Postman + Newman) — Validación backend
Si se dispone del backend desplegado, colección sugerida:
- `doc/postman/amani-api.postman_collection.json`

Comando ejemplo:
```bash
newman run doc/postman/amani-api.postman_collection.json \
  --env-var baseUrl=http://localhost:8080 \
  --reporters cli,junit \
  --reporter-junit-export app/build/reports/newman-report.xml
```

## 7.3 Pipeline CI recomendado (GitHub Actions)
```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up JDK 21
        uses: actions/setup-java@v4
        with:
          java-version: '21'
          distribution: 'temurin'
      - name: Run unit tests
        run: ./gradlew :app:testDebugUnitTest
      - name: Kover verify
        run: ./gradlew :app:koverVerify
      - name: Kover HTML report
        run: ./gradlew :app:koverHtmlReport
      - name: Upload coverage report
        uses: actions/upload-artifact@v4
        with:
          name: kover-html-report
          path: app/build/reports/kover/html/
```

## 8. Cobertura mínima por capa (Kover)
| Capa | Líneas mínimas | Exclusiones |
|---|---|---|
| Repositories (`*data.repositorio.*`) | 80% | `.di.*`, `.dto.*`, `.models.*` |
| UseCases (`*domain.usecases.*`) | 80% | `.di.*`, `.dto.*`, `.models.*` |
| ViewModels (`*presentation.viewmodels.*`) | 50% | `.ui.*`, `*Activity`, `*Application` |
| Global | 7% (overall) | UI/Compose, DTOs, Activities, DI |

Configuración en `app/build.gradle.kts`:
```kotlin
kover {
    reports {
        variant("debug") {
            filters {
                excludes {
                    classes(
                        "*.di.*",
                        "*.ui.*",
                        "*Activity",
                        "*Application",
                        "*.dto.*",
                        "*.models.*",
                        "*.R",
                        "*.R$*"
                    )
                }
            }
            verify {
                rule { minBound(7) }
            }
        }
    }
}
```

## 9. Definición de Done de QA
- [ ] P0 y P1 ejecutados y aprobados (`./gradlew :app:testDebugUnitTest` en verde)
- [ ] Kover verify pasa (`./gradlew :app:koverVerify`)
- [ ] Reporte HTML generado (`app/build/reports/kover/html/index.html`)
- [ ] Dashboard externo actualizado (`coverage-dashboard.html`)
- [ ] Defectos críticos/altos cerrados
- [ ] Regresión básica de seguridad completada (login 401/403, token expiry)
- [ ] CI pipeline verde
