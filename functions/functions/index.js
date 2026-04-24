const {
  onNewFatalIssuePublished,
  onRegressionAlertPublished,
  onVelocityAlertPublished,
} = require("firebase-functions/v2/alerts/crashlytics");
const {defineString} = require("firebase-functions/params");

// Variables de entorno
const PLANE_TOKEN = defineString("PLANE_API_TOKEN");
const PLANE_URL = defineString("PLANE_BASE_URL");
const WORKSPACE_SLUG = defineString("PLANE_WORKSPACE_SLUG");
const PROJECT_CRASHES = defineString("PLANE_PROJECT_CRASHES");
const LABEL_CRASH = defineString("PLANE_LABEL_CRASH");

// ─── Helper: crear issue en Plane ───────────────────────────────────────────
/**
 * Crea un issue en Plane usando la API REST.
 * @param {Object} params Parámetros para la creación del issue.
 * @param {string} params.name Título del issue.
 * @param {string} params.description Descripción en HTML.
 * @param {string} params.priority Prioridad ("urgent", "high", etc).
 * @param {string[]} [params.labelIds] Array de IDs de etiquetas.
 */
async function crearIssueEnPlane({
  name,
  description,
  priority,
  labelIds = [],
}) {
  const baseUrl = PLANE_URL.value();
  const workspace = WORKSPACE_SLUG.value();
  const project = PROJECT_CRASHES.value();
  const url = `${baseUrl}/api/v1/workspaces/${workspace}` +
      `/projects/${project}/issues/`;

  const validLabelIds = labelIds.filter((id) => id && id.trim() !== "");

  const response = await fetch(url, {
    method: "POST",
    headers: {
      "X-API-Key": PLANE_TOKEN.value(),
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      name,
      description_html: description,
      priority, // "urgent" | "high" | "medium" | "low" | "none"
      label_ids: validLabelIds,
    }),
  });

  if (!response.ok) {
    const errorBody = await response.text();
    console.error(
        `❌ Error al crear issue en Plane: ${response.status} - ${errorBody}`,
    );
    throw new Error(`Plane API error: ${response.status}`);
  }
}

// ─── 1. Crash fatal NUEVO ────────────────────────────────────────────────────
// Se dispara la primera vez que aparece un tipo de crash en producción
exports.onNuevoCrashFatal = onNewFatalIssuePublished(async (event) => {
  if (!event.data.appId.includes("android")) {
    console.log(
        `Ignorando crash de App ID ${event.data.appId} (no es Android)`,
    );
    return;
  }

  const issue = event.data.payload.issue;

  await crearIssueEnPlane({
    name: `[CRASH FATAL] ${issue.title}`,
    description: `
      <h3>🚨 Nuevo crash fatal detectado</h3>
      <ul>
        <li><b>ID:</b> ${issue.id}</li>
        <li><b>Subtítulo:</b> ${issue.subtitle}</li>
        <li><b>App ID:</b> ${event.data.appId}</li>
        <li><b>Versión:</b> ${issue.appVersion}</li>
        <li><b>Estado:</b> ${issue.state}</li>
      </ul>
      <p><a href="${issue.fireflyConsoleUri}">Ver en Firebase Console →</a></p>
    `,
    priority: "urgent",
    labelIds: [LABEL_CRASH.value()],
  });

  console.log(`✅ Issue creado en Plane: ${issue.title}`);
});

// ─── 2. Regresión (crash resuelto que VUELVE a aparecer) ────────────────────
exports.onRegresionCrash = onRegressionAlertPublished(async (event) => {
  if (!event.data.appId.includes("android")) {
    return;
  }

  const issue = event.data.payload.issue;

  await crearIssueEnPlane({
    name: `[REGRESIÓN] ${issue.title}`,
    description: `
      <h3>⚠️ Crash resuelto que ha reaparecido</h3>
      <ul>
        <li><b>ID:</b> ${issue.id}</li>
        <li><b>App ID:</b> ${event.data.appId}</li>
        <li><b>Versión donde reaparece:</b> ${issue.appVersion}</li>
      </ul>
      <p><a href="${issue.fireflyConsoleUri}">Ver en Firebase Console →</a></p>
    `,
    priority: "high",
    labelIds: [LABEL_CRASH.value()],
  });

  console.log(`🔁 Regresión detectada: ${issue.title}`);
});

// ─── 3. Alerta de velocidad (crash afecta a X% de usuarios en la sesión) ────
exports.onAlertaVelocidad = onVelocityAlertPublished(async (event) => {
  if (!event.data.appId.includes("android")) {
    return;
  }

  const issue = event.data.payload.issue;
  const crashes = event.data.payload.crashes;

  await crearIssueEnPlane({
    name: `[VELOCIDAD] ${issue.title} — ${crashes} crashes recientes`,
    description: `
      <h3>📈 Crash con alta tasa de impacto</h3>
      <ul>
        <li><b>ID:</b> ${issue.id}</li>
        <li><b>Crashes en la ventana de tiempo:</b> ${crashes}</li>
        <li><b>Versión:</b> ${issue.appVersion}</li>
        <li><b>App ID:</b> ${event.data.appId}</li>
      </ul>
      <p><a href="${issue.fireflyConsoleUri}">Ver en Firebase Console →</a></p>
    `,
    priority: "urgent",
    labelIds: [LABEL_CRASH.value()],
  });

  console.log(`🚀 Alerta de velocidad: ${issue.title}`);
});
