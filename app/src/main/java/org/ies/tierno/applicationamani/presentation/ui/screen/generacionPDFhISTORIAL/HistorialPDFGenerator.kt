package org.ies.tierno.applicationamani.presentation.ui.screen.generacionPDFhISTORIAL

import android.content.Context
import android.content.Intent
import androidx.core.content.FileProvider
import com.itextpdf.io.font.constants.StandardFonts
import com.itextpdf.kernel.font.PdfFontFactory
import com.itextpdf.kernel.geom.PageSize
import com.itextpdf.kernel.pdf.PdfDocument
import com.itextpdf.kernel.pdf.PdfWriter
import com.itextpdf.layout.Document
import com.itextpdf.layout.element.Paragraph
import com.itextpdf.layout.properties.TextAlignment
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import java.io.File
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Generador de documentos PDF para el historial clínico del paciente.
 *
 * Utiliza la librería iText para crear un documento PDF formateado con
 * los datos del historial clínico, incluyendo diagnósticos, tratamientos
 * y observaciones. También proporciona un método para compartir el PDF
 * mediante un [Intent] de Android.
 */
object HistorialPDFGenerator {
    private val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm", Locale("es", "ES"))

    suspend fun generarPDF(
        context: Context,
        historial: List<HistorialClinicoResponseDTO>,
        nombrePaciente: String,
    ): File =
        withContext(Dispatchers.IO) {
            val pdfFile =
                File(
                    context.cacheDir,
                    "historial_clinico_${System.currentTimeMillis()}.pdf",
                )

            PdfWriter(pdfFile).use { writer ->
                val pdfDoc = PdfDocument(writer)
                pdfDoc.setDefaultPageSize(PageSize.A4)
                val document = Document(pdfDoc)

                val boldFont = PdfFontFactory.createFont(StandardFonts.HELVETICA_BOLD)
                val normalFont = PdfFontFactory.createFont(StandardFonts.HELVETICA)

                // Título principal
                document.add(
                    Paragraph("HISTORIAL CLÍNICO")
                        .setFont(boldFont)
                        .setFontSize(20F)
                        .setTextAlignment(TextAlignment.CENTER)
                        .setMarginBottom(20F),
                )

                // Información paciente
                document.add(
                    Paragraph("Paciente: $nombrePaciente")
                        .setFont(boldFont)
                        .setFontSize(12F)
                        .setMarginBottom(5F),
                )

                document.add(
                    Paragraph("Fecha de generación: ${LocalDateTime.now().format(dateFormatter)}")
                        .setFont(normalFont)
                        .setFontSize(10F)
                        .setMarginBottom(20F),
                )

                document.add(Paragraph("─".repeat(80)).setFont(normalFont).setFontSize(8F))

                // Historial
                historial.forEachIndexed { index, item ->
                    document.add(
                        Paragraph("${index + 1}. ${item.titulo}")
                            .setFont(boldFont)
                            .setFontSize(14F)
                            .setMarginTop(15F)
                            .setMarginBottom(5F),
                    )

                    document.add(
                        Paragraph("Fecha: ${formatFecha(item.creadoEn)}")
                            .setFont(normalFont)
                            .setFontSize(10F)
                            .setMarginBottom(3F),
                    )

                    // Diagnóstico
                    document.add(
                        Paragraph("Diagnóstico:")
                            .setFont(boldFont)
                            .setFontSize(11F)
                            .setMarginTop(5F)
                            .setMarginBottom(3F),
                    )
                    document.add(
                        Paragraph(item.diagnostico.ifEmpty { "No especificado" })
                            .setFont(normalFont)
                            .setFontSize(10F)
                            .setMarginBottom(10F),
                    )

                    // Tratamiento
                    document.add(
                        Paragraph("Tratamiento:")
                            .setFont(boldFont)
                            .setFontSize(11F)
                            .setMarginTop(5F)
                            .setMarginBottom(3F),
                    )
                    document.add(
                        Paragraph(item.tratamiento.ifEmpty { "No especificado" })
                            .setFont(normalFont)
                            .setFontSize(10F)
                            .setMarginBottom(10F),
                    )

                    // Observaciones
                    if (item.observaciones.isNotBlank()) {
                        document.add(
                            Paragraph("Observaciones:")
                                .setFont(boldFont)
                                .setFontSize(11F)
                                .setMarginTop(5F)
                                .setMarginBottom(3F),
                        )
                        document.add(
                            Paragraph(item.observaciones)
                                .setFont(normalFont)
                                .setFontSize(10F)
                                .setMarginBottom(10F),
                        )
                    }

                    if (index < historial.size - 1) {
                        document.add(Paragraph("─".repeat(80)).setFont(normalFont).setFontSize(8F))
                    }
                }

                // Footer
                document.add(Paragraph("─".repeat(80)).setFont(normalFont).setFontSize(8F).setMarginTop(20F))
                document.add(
                    Paragraph("Documento generado por AMANI Psicología - Plataforma de gestión terapéutica")
                        .setFont(normalFont)
                        .setFontSize(8F)
                        .setTextAlignment(TextAlignment.CENTER)
                        .setMarginTop(10F),
                )

                document.close()
            }

            pdfFile
        }

    private fun formatFecha(fechaStr: String): String =
        try {
            LocalDateTime.parse(fechaStr).format(dateFormatter)
        } catch (e: Exception) {
            fechaStr
        }

    fun compartirPDF(
        context: Context,
        pdfFile: File,
    ) {
        val uri =
            FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                pdfFile,
            )

        val shareIntent =
            Intent(Intent.ACTION_SEND).apply {
                type = "application/pdf"
                putExtra(Intent.EXTRA_STREAM, uri)
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }

        context.startActivity(Intent.createChooser(shareIntent, "Compartir PDF"))
    }
}
