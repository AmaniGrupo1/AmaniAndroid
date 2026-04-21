package org.ies.tierno.applicationamani.utils

import android.content.Context
import android.os.Build
import android.print.PrintAttributes
import android.print.PrintManager
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.annotation.RequiresApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

@RequiresApi(Build.VERSION_CODES.O)
fun exportarAgendaAPdf(
    context: Context,
    citas: List<AgendaItemDTO>,
    titulo: String = "Agenda AMANI"
) {
    val html = construirHtmlAgenda(citas, titulo)

    val webView = WebView(context)
    webView.webViewClient = object : WebViewClient() {
        override fun onPageFinished(view: WebView, url: String) {
            val printManager = context.getSystemService(Context.PRINT_SERVICE) as PrintManager
            val printAdapter = view.createPrintDocumentAdapter(titulo)
            val printAttributes = PrintAttributes.Builder()
                .setMediaSize(PrintAttributes.MediaSize.ISO_A4)
                .setResolution(PrintAttributes.Resolution("pdf", "pdf", 600, 600))
                .setMinMargins(PrintAttributes.Margins.NO_MARGINS)
                .build()
            printManager.print(titulo, printAdapter, printAttributes)
        }
    }
    webView.loadDataWithBaseURL(null, html, "text/html", "UTF-8", null)
}

@RequiresApi(Build.VERSION_CODES.O)
private fun construirHtmlAgenda(
    citas: List<AgendaItemDTO>,
    titulo: String
): String {
    val formatterFecha = DateTimeFormatter.ofPattern(
        "EEEE, d 'de' MMMM 'de' yyyy",
        Locale.Builder().setLanguage("es").setRegion("ES").build()
    )
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")
    val fechaGeneracion = LocalDate.now().format(
        DateTimeFormatter.ofPattern("dd/MM/yyyy")
    )

    // Agrupar por fecha y ordenar
    val citasPorDia = citas
        .filter { it.estado?.uppercase() != "CANCELADA" }
        .groupBy { it.fecha }
        .toSortedMap()

    val filasHtml = if (citasPorDia.isEmpty()) {
        """
        <tr>
          <td colspan="6" class="vacio">No hay citas para mostrar</td>
        </tr>
        """.trimIndent()
    } else {
        buildString {
            citasPorDia.forEach { (fecha, citasDelDia) ->
                // Fila separadora de fecha
                append(
                    """
                    <tr class="fila-fecha">
                      <td colspan="6">
                        <span class="icono-cal">📅</span>
                        ${fecha.format(formatterFecha).replaceFirstChar { it.uppercase() }}
                        <span class="badge-count">${citasDelDia.size} cita${if (citasDelDia.size != 1) "s" else ""}</span>
                      </td>
                    </tr>
                    """.trimIndent()
                )
                // Filas de cada cita
                citasDelDia.sortedBy { it.horaInicio }.forEach { cita ->
                    val colorEstado = when (cita.estado?.uppercase()) {
                        "CONFIRMADA" -> "#2196F3"
                        "COMPLETADA" -> "#4CAF50"
                        "PENDIENTE" -> "#FF9800"
                        else -> "#9E9E9E"
                    }
                    val iconoPago = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> "✅"
                        EstadoPago.PENDIENTE -> "⏳"
                        EstadoPago.FALLIDO -> "❌"
                        EstadoPago.REEMBOLSADO -> "↩️"
                        null -> "—"
                    }
                    append(
                        """
                        <tr>
                          <td>${cita.horaInicio.format(formatterHora)} – ${
                            cita.horaFin.format(
                                formatterHora
                            )
                        }</td>
                          <td><strong>${cita.nombrePaciente ?: "—"}</strong></td>
                          <td>${cita.terapia?.nombre ?: "—"}</td>
                          <td>
                            <span class="estado-badge" style="background:${colorEstado}20;color:${colorEstado};border:1px solid ${colorEstado}40">
                              ${
                            cita.estado?.lowercase()?.replaceFirstChar { it.uppercase() } ?: "—"
                        }
                            </span>
                          </td>
                          <td class="center">$iconoPago ${
                            cita.estadoPago?.name?.lowercase()
                                ?.replaceFirstChar { it.uppercase() } ?: "—"
                        }</td>
                          <td>${
                            cita.motivo?.take(40)
                                ?.let { if (cita.motivo.length > 40) "$it…" else it } ?: "—"
                        }</td>
                        </tr>
                        """.trimIndent()
                    )
                }
            }
        }
    }

    return """
    <!DOCTYPE html>
    <html lang="es">
    <head>
      <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
          font-family: 'Helvetica Neue', Arial, sans-serif;
          font-size: 12px;
          color: #212121;
          padding: 32px;
          background: #fff;
        }
        
        /* Cabecera */
        .header {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding-bottom: 16px;
          border-bottom: 3px solid #5C6BC0;
          margin-bottom: 24px;
        }
        .header-left h1 {
          font-size: 22px;
          color: #5C6BC0;
          font-weight: 700;
          letter-spacing: -0.5px;
        }
        .header-left p {
          font-size: 11px;
          color: #757575;
          margin-top: 4px;
        }
        .header-right {
          text-align: right;
          font-size: 11px;
          color: #757575;
        }
        .header-right strong {
          display: block;
          font-size: 13px;
          color: #5C6BC0;
        }

        /* Resumen */
        .resumen {
          display: flex;
          gap: 16px;
          margin-bottom: 24px;
        }
        .resumen-card {
          flex: 1;
          padding: 12px 16px;
          border-radius: 8px;
          background: #F5F5F5;
          border-left: 4px solid #5C6BC0;
        }
        .resumen-card .valor {
          font-size: 22px;
          font-weight: 700;
          color: #5C6BC0;
        }
        .resumen-card .etiqueta {
          font-size: 10px;
          color: #757575;
          text-transform: uppercase;
          letter-spacing: 0.5px;
        }
        
        /* Tabla */
        table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 24px;
        }
        thead tr {
          background: #5C6BC0;
          color: #fff;
        }
        thead th {
          padding: 10px 12px;
          text-align: left;
          font-size: 11px;
          font-weight: 600;
          letter-spacing: 0.5px;
          text-transform: uppercase;
        }
        tbody tr {
          border-bottom: 1px solid #EEEEEE;
        }
        tbody tr:hover { background: #FAFAFA; }
        tbody td {
          padding: 10px 12px;
          vertical-align: middle;
        }
        .fila-fecha td {
          background: #EDE7F6;
          color: #4527A0;
          font-weight: 700;
          font-size: 12px;
          padding: 8px 12px;
          border-left: 4px solid #7E57C2;
        }
        .fila-fecha .icono-cal { margin-right: 8px; }
        .fila-fecha .badge-count {
          background: #7E57C2;
          color: #fff;
          border-radius: 10px;
          padding: 2px 8px;
          font-size: 10px;
          margin-left: 8px;
          font-weight: 600;
        }
        .estado-badge {
          padding: 2px 8px;
          border-radius: 10px;
          font-size: 10px;
          font-weight: 600;
          white-space: nowrap;
        }
        .center { text-align: center; }
        .vacio {
          text-align: center;
          padding: 40px;
          color: #BDBDBD;
          font-style: italic;
        }
        
        /* Pie de página */
        .footer {
          margin-top: 32px;
          padding-top: 12px;
          border-top: 1px solid #EEEEEE;
          font-size: 10px;
          color: #BDBDBD;
          text-align: center;
        }
        
        @media print {
          body { padding: 0; }
          .fila-fecha { page-break-after: avoid; }
        }
      </style>
    </head>
    <body>
      
      <!-- Cabecera -->
      <div class="header">
        <div class="header-left">
          <h1>🧠 $titulo</h1>
          <p>Informe de citas generado automáticamente</p>
        </div>
        <div class="header-right">
          <strong>AMANI Psicología</strong>
          Generado el $fechaGeneracion
        </div>
      </div>

      <!-- Tarjetas de resumen -->
      <div class="resumen">
        <div class="resumen-card">
          <div class="valor">${citas.filter { it.estado?.uppercase() != "CANCELADA" }.size}</div>
          <div class="etiqueta">Total citas</div>
        </div>
        <div class="resumen-card">
          <div class="valor">${citas.count { it.estado?.uppercase() == "CONFIRMADA" }}</div>
          <div class="etiqueta">Confirmadas</div>
        </div>
        <div class="resumen-card">
          <div class="valor">${citas.count { it.estado?.uppercase() == "COMPLETADA" }}</div>
          <div class="etiqueta">Completadas</div>
        </div>
        <div class="resumen-card">
          <div class="valor">${citasPorDia.size}</div>
          <div class="etiqueta">Días con citas</div>
        </div>
      </div>

      <!-- Tabla de citas -->
      <table>
        <thead>
          <tr>
            <th>Horario</th>
            <th>Paciente</th>
            <th>Terapia</th>
            <th>Estado</th>
            <th>Pago</th>
            <th>Motivo</th>
          </tr>
        </thead>
        <tbody>
          $filasHtml
        </tbody>
      </table>

      <div class="footer">
        AMANI Psicología · Documento generado el $fechaGeneracion · Uso interno
      </div>
      
    </body>
    </html>
    """.trimIndent()
}