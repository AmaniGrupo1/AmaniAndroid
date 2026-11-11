# Seguridad y alcance

Esta página describe mecanismos visibles en el cliente y límites de la evidencia disponible; no es una auditoría de seguridad ni una certificación de cumplimiento.

## Autenticación y configuración

- El cliente guarda el JWT en Android DataStore y lo añade mediante interceptores OkHttp.
- La sesión también guarda identificadores y preferencias para restaurar el estado de usuario.
- Firebase ofrece reglas versionadas en la raíz del repositorio. Antes de usar datos reales, el equipo debe validar que la autorización del servidor y de Firebase se ajusta a los roles y participantes previstos.
- El manifiesto de Android declara `usesCleartextTraffic="true"`. `PLAN-MEJORA.md` propone limitar HTTP a desarrollo y usar HTTPS en release; no se ha cambiado esa configuración en este trabajo.
- El build de release no tiene minificación habilitada actualmente.

No se deben incluir contraseñas, tokens, datos clínicos o capturas con información personal en commits o en el sitio.

<!-- TODO: confirmar revisión de permisos por rol/participante para backend y Firebase antes de usar datos reales -->
<!-- TODO: confirmar política de privacidad, retención y tratamiento de datos aplicable al despliegue -->

## Siguientes pasos

Consulta la [configuración](referencia/configuracion.md) y el [despliegue](despliegue.md).
