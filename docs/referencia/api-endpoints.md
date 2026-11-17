# API y endpoints

Esta página documenta las **16 interfaces Retrofit** declaradas en [`app/src/main/java/org/ies/tierno/applicationamani/data/remoto/`](https://github.com/AmaniGrupo1/AmaniAndroid/tree/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto) y registradas en [`di/RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt).

!!! note "URL base y contrato del servidor"
    La URL base activa en [`RetrofitModule.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/di/RetrofitModule.kt) es `https://amani-api-560473593904.europe-west1.run.app/`. Las rutas se listan tal como figuran en las anotaciones `@GET`, `@POST`, `@PUT`, `@PATCH` y `@DELETE` del cliente.

<!-- TODO: confirmar y enlazar la especificación OpenAPI/Swagger del backend REST cuando esté publicada -->

## Autenticación y usuarios (`AuthApi.kt`)

Fuente: [`AuthApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/AuthApi.kt).

| Método | Ruta |
|---|---|
| `POST` | `auth/login` |
| `POST` | `/auth/register-paciente` |
| `POST` | `/auth/register-admin` |
| `POST` | `/api/admin/psicologos/create` |
| `GET` | `/api/admin/psicologos/pacientes` |
| `GET` | `/api/pacientes/admin` |
| `PUT` | `/auth/pacientes/{id}/baja` |
| `PUT` | `/auth/psicologos/{id}/alta` |
| `POST` | `/api/admin/psicologos/asignar-psicologo` |
| `GET` | `/api/admin/psicologos` |
| `GET` | `/api/admin/psicologos/listaPsicologoBaja` |
| `GET` | `/api/psicologo/pacientes/getAll` |
| `POST` | `/auth/registrar/pacienteDesde/psicologo` |
| `GET` | `/api/pacientes/sin-psicologo` |
| `GET` | `/api/auth/firebase-token` |

## Perfiles (`ProfileApi.kt`)

Fuente: [`ProfileApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/ProfileApi.kt).

| Método | Ruta |
|---|---|
| `POST` | `/api/psicologo/{id}/foto` |
| `GET` | `/api/psicologo/{id}/perfil` |
| `GET` | `/api/psicologo/pacientes/{idPaciente}/psicologo` |
| `GET` | `/api/pacientes/{id}` |
| `GET` | `/api/pacientes/usuario/{id}` |
| `GET` | `/api/psicologo/usuario/{id}` |
| `PUT` | `/api/psicologo/update/{id}` |
| `GET` | `/api/psicologo/admin/{id}/perfil` |
| `PUT` | `/api/psicologo/admin/{id}/update` |
| `POST` | `/api/psicologo/admin/{id}/foto` |
| `GET` | `/api/psicologo/paciente/{id}/get` |
| `PUT` | `/api/psicologo/paciente/update/{id}` |
| `POST` | `/api/psicologo/paciente/{id}/foto` |
| `PUT` | `/api/admin/psicologos/editar/{id}` |

## Agenda, citas y terapias (`CitasApi.kt`)

Fuente: [`CitasApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/CitasApi.kt).

| Método | Ruta |
|---|---|
| `GET` | `/api/citas/paciente/{idPaciente}/agenda` |
| `GET` | `/api/citas/psicologo/{idPsicologo}/agenda` |
| `GET` | `/api/citas/psicologo/{idPsicologo}/disponibilidad` |
| `GET` | `/api/jitsi/token/{room}` |
| `PATCH` | `/api/citas/{id}/cancelar` |
| `PUT` | `/api/citas/psicologo/{idCita}/editar` |
| `GET` | `/api/admin/psicologos/pacientes` |
| `PUT` | `/api/citas/psicologo/{idPsicologo}/horario` |
| `POST` | `/api/citas/psicologo/{idPsicologo}/dias-no-disponibles` |
| `DELETE` | `/api/citas/psicologo/{idPsicologo}/dias-no-disponibles/{fecha}` |
| `POST` | `/api/citas/psicologo/cita` |
| `PUT` | `/api/citas/psicologo/{idPsicologo}/duracion` |
| `GET` | `/api/citas/psicologo/{idPsicologo}/duracion-obtenida` |
| `GET` | `/api/citas/psicologo/terapias/get` |
| `POST` | `/api/citas/psicologo/terapias` |
| `GET` | `/api/citas/psicologo/{idPsicologo}/horario-actual` |
| `PATCH` | `/api/citas/cambio/{id}/estado` |
| `PATCH` | `/api/citas/cambio/{id}/estado-pago` |
| `GET` | `/api/citas/mis-citas` |
| `PUT` | `/api/citas/update/{id}` |
| `DELETE` | `/api/citas/delete/{id}` |

## Cuestionarios, situaciones e historial

| Interfaz | Método | Ruta |
|---|---|---|
| [`TestApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/TestApi.kt) | `POST` | `/api/admin/preguntas` |
| [`TestApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/TestApi.kt) | `GET` | `/api/paciente/preguntas` |
| [`TestApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/TestApi.kt) | `POST` | `/api/paciente/preguntas/responder/{idPaciente}` |
| [`SituacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SituacionApi.kt) | `GET` | `api/situaciones` |
| [`SituacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SituacionApi.kt) | `GET` | `api/situaciones/{id}` |
| [`SituacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SituacionApi.kt) | `POST` | `api/situaciones/create` |
| [`SituacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SituacionApi.kt) | `PUT` | `api/situaciones/update/{id}` |
| [`SituacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SituacionApi.kt) | `DELETE` | `api/situaciones/delete/{id}` |
| [`HistorialApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/HistorialApi.kt) | `GET` | `/api/historial-clinico/paciente/{idPaciente}` |
| [`HistorialApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/HistorialApi.kt) | `POST` | `/api/historial-clinico` |
| [`HistorialCitaApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/HistorialCitaApi.kt) | `GET` | `/api/historial-citas` |

## Diario emocional (`DiarioApi.kt`)

Fuente: [`DiarioApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DiarioApi.kt).

| Método | Ruta |
|---|---|
| `GET` | `/api/diario-emocion` |
| `GET` | `/api/diario-emocion/{id}` |
| `GET` | `/api/diario-emocion/paciente/{idPaciente}` |
| `POST` | `/api/diario-emocion` |
| `PUT` | `/api/diario-emocion/{id}` |
| `DELETE` | `/api/diario-emocion/{id}` |

## Notificaciones, documentos legales, soporte, ajustes, pagos y asistente

| Interfaz | Método | Ruta |
|---|---|---|
| [`NotificacionApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/NotificacionApi.kt) | `GET` / `PUT` | `api/notificaciones/{idUsuario}`, `leer/{id}`, `leer-todas/{idUsuario}`, `no-leidas/{idUsuario}`, `configuracion/{idUsuario}`, `configuracion/{idUsuario}/activar` |
| [`DocumentoLegalApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/DocumentoLegalApi.kt) | `GET` / `POST` / `PUT` / `DELETE` | `api/documentos-legales`, `/{id}`, `/crear`, `/delete/{id}`, `/tipo/{tipo}` |
| [`SoporteTicketApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/SoporteTicketApi.kt) | `GET` / `POST` | `api/tickets-soporte/`, `api/tickets-soporte/{idTicket}`, `api/tickets-soporte` |
| [`AjustesApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/AjustesApi.kt) | `PUT` | `api/ajustes/{idUsuario}/idioma`, `api/ajustes/tema` |
| [`PaymentApiService.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/PaymentApiService.kt) | `POST` | `/api/payments/create-intent` |
| [`ChatApi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/ChatApi.kt) | `POST` | `/api/chats/messages` |
| [`AdminApiService.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/role/AdminApiService.kt) | `PUT` / `GET` | `/api/admin/cambiar-rol`, `/api/admin/listarUsuarios` |
| [`CopilotoAi.kt`](https://github.com/AmaniGrupo1/AmaniAndroid/blob/master/app/src/main/java/org/ies/tierno/applicationamani/data/remoto/copiloto/CopilotoAi.kt) | `POST` | `api/rag/ask`, `api/rag/upload` |

!!! tip "Solicitudes `Multipart`"
    Tanto `api/rag/upload` en `CopilotoAi.kt` como los endpoints `.../foto` en `ProfileApi.kt` están anotados con `@Multipart` para enviar archivos mediante `MultipartBody.Part`.

## Siguientes pasos

- Consulta [Capa de datos](datos-y-persistencia.md) para ver cómo los repositorios e interceptores procesan estas llamadas.
- Revisa [Referencia Kotlin](kotlin.md) para navegar por la documentación KDoc generada con Dokka.

*[API]: Application Programming Interface
*[REST]: Representational State Transfer
*[URL]: Uniform Resource Locator
