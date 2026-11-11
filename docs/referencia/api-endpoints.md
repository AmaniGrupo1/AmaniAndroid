# API y endpoints

Esta referencia se extrae de las anotaciones Retrofit de `app/src/main/java/org/ies/tierno/applicationamani/data/remoto/`. Describe las rutas que el cliente intenta consumir, no constituye un contrato del servidor.

La URL base activa se configura en `RetrofitModule` como un servicio Cloud Run. Las rutas que empiezan por `/` se muestran tal cual aparecen en el código. Los cuerpos, parámetros, permisos, respuestas y códigos de error dependen del backend y no se infieren aquí.

<!-- TODO: enlazar una especificación OpenAPI autoritativa del backend cuando esté disponible -->

## Autenticación y usuarios

Fuente: `AuthApi.kt`.

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

## Perfiles

Fuente: `ProfileApi.kt`.

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

## Agenda, citas y terapias

Fuente: `CitasApi.kt`. La ruta comentada para crear una cita desde administración no se incluye como endpoint activo.

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

| Fuente | Método | Ruta |
|---|---|---|
| `TestApi.kt` | `POST` | `/api/admin/preguntas` |
| `TestApi.kt` | `GET` | `/api/paciente/preguntas` |
| `TestApi.kt` | `POST` | `/api/paciente/preguntas/responder/{idPaciente}` |
| `SituacionApi.kt` | `GET` | `api/situaciones` |
| `SituacionApi.kt` | `GET` | `api/situaciones/{id}` |
| `SituacionApi.kt` | `POST` | `api/situaciones/create` |
| `SituacionApi.kt` | `PUT` | `api/situaciones/update/{id}` |
| `SituacionApi.kt` | `DELETE` | `api/situaciones/delete/{id}` |
| `HistorialApi.kt` | `GET` | `/api/historial-clinico/paciente/{idPaciente}` |
| `HistorialApi.kt` | `POST` | `/api/historial-clinico` |
| `HistorialCitaApi.kt` | `GET` | `/api/historial-citas` |

## Diario emocional

Fuente: `DiarioApi.kt`.

| Método | Ruta |
|---|---|
| `GET` | `/api/diario-emocion` |
| `GET` | `/api/diario-emocion/{id}` |
| `GET` | `/api/diario-emocion/paciente/{idPaciente}` |
| `POST` | `/api/diario-emocion` |
| `PUT` | `/api/diario-emocion/{id}` |
| `DELETE` | `/api/diario-emocion/{id}` |

## Notificaciones, documentos y soporte

| Fuente | Método | Ruta |
|---|---|---|
| `NotificacionApi.kt` | `GET` | `api/notificaciones/{idUsuario}` |
| `NotificacionApi.kt` | `PUT` | `api/notificaciones/leer/{id}` |
| `NotificacionApi.kt` | `PUT` | `api/notificaciones/leer-todas/{idUsuario}` |
| `NotificacionApi.kt` | `GET` | `api/notificaciones/no-leidas/{idUsuario}` |
| `NotificacionApi.kt` | `PUT` | `api/notificaciones/configuracion/{idUsuario}/activar` |
| `NotificacionApi.kt` | `GET` | `api/notificaciones/configuracion/{idUsuario}` |
| `DocumentoLegalApi.kt` | `GET` | `api/documentos-legales` |
| `DocumentoLegalApi.kt` | `GET` | `api/documentos-legales/{id}` |
| `DocumentoLegalApi.kt` | `POST` | `api/documentos-legales/crear` |
| `DocumentoLegalApi.kt` | `PUT` | `api/documentos-legales/{id}` |
| `DocumentoLegalApi.kt` | `DELETE` | `api/documentos-legales/delete/{id}` |
| `DocumentoLegalApi.kt` | `GET` | `api/documentos-legales/tipo/{tipo}` |
| `SoporteTicketApi.kt` | `GET` | `api/tickets-soporte/` |
| `SoporteTicketApi.kt` | `GET` | `api/tickets-soporte/{idTicket}` |
| `SoporteTicketApi.kt` | `POST` | `api/tickets-soporte` |

## Ajustes

Fuente: `AjustesApi.kt`.

| Método | Ruta |
|---|---|
| `PUT` | `api/ajustes/{idUsuario}/idioma` |
| `PUT` | `api/ajustes/tema` |

## Pagos, chat, roles y asistente

| Fuente | Método | Ruta |
|---|---|---|
| `PaymentApiService.kt` | `POST` | `/api/payments/create-intent` |
| `ChatApi.kt` | `POST` | `/api/chats/messages` |
| `AdminApiService.kt` | `PUT` | `/api/admin/cambiar-rol` |
| `AdminApiService.kt` | `GET` | `/api/admin/listarUsuarios` |
| `CopilotoAi.kt` | `POST` | `api/rag/ask` |
| `CopilotoAi.kt` | `POST` | `api/rag/upload` |

`api/rag/upload` y las operaciones de carga de fotos de `ProfileApi.kt` usan solicitudes multipart.

## Siguientes pasos

Consulta [datos y persistencia](datos-y-persistencia.md) o [referencia Kotlin](kotlin.md) para la documentación generada de código.
