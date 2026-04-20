#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Generador de reporte PDF de auditoría de seguridad APK
"""

from reportlab.lib.pagesizes import A4
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, PageBreak, ListFlowable, ListItem
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from datetime import datetime
import json
import os

def generate_pdf_report(input_json, output_pdf):
    # Load findings
    with open(input_json, 'r') as f:
        data = json.load(f)

    findings = data['findings']
    apk_info = data['apk_info']

    # Create document
    doc = SimpleDocTemplate(output_pdf, pagesize=A4,
                           rightMargin=72, leftMargin=72,
                           topMargin=72, bottomMargin=72)

    # Styles
    styles = getSampleStyleSheet()

    # Custom styles
    title_style = ParagraphStyle(
        'CustomTitle',
        parent=styles['Heading1'],
        fontSize=24,
        textColor=colors.HexColor('#1a1a1a'),
        spaceAfter=30,
        alignment=1  # Center
    )

    subtitle_style = ParagraphStyle(
        'CustomSubtitle',
        parent=styles['Normal'],
        fontSize=14,
        textColor=colors.HexColor('#666666'),
        spaceAfter=20,
        alignment=1
    )

    heading2_style = ParagraphStyle(
        'CustomHeading2',
        parent=styles['Heading2'],
        fontSize=14,
        textColor=colors.HexColor('#1a1a1a'),
        spaceBefore=20,
        spaceAfter=10
    )

    heading3_style = ParagraphStyle(
        'CustomHeading3',
        parent=styles['Heading3'],
        fontSize=12,
        textColor=colors.HexColor('#333333'),
        spaceBefore=15,
        spaceAfter=8
    )

    normal_style = ParagraphStyle(
        'CustomNormal',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.HexColor('#1a1a1a'),
        spaceAfter=8
    )

    critical_style = ParagraphStyle(
        'Critical',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.red,
        spaceAfter=8,
        fontWeight='bold'
    )

    high_style = ParagraphStyle(
        'High',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.orange,
        spaceAfter=8,
        fontWeight='bold'
    )

    medium_style = ParagraphStyle(
        'Medium',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.darkgoldenrod,
        spaceAfter=8,
        fontWeight='bold'
    )

    low_style = ParagraphStyle(
        'Low',
        parent=styles['Normal'],
        fontSize=10,
        textColor=colors.darkgreen,
        spaceAfter=8,
        fontWeight='bold'
    )

    # Build story
    story = []

    # ============================================
    # COVER PAGE
    # ============================================
    story.append(Paragraph("ANALISIS DE SEGURIDAD - APK", title_style))
    story.append(Spacer(1, 20))
    story.append(Paragraph(f"Aplicacion: {apk_info['package']}", subtitle_style))
    story.append(Paragraph(f"Hash APK: {apk_info['apk_hash'][:16]}...", subtitle_style))
    story.append(Spacer(1, 40))
    story.append(Paragraph(f"Fecha: {datetime.now().strftime('%Y-%m-%d')}", normal_style))
    story.append(Paragraph("Analista: Senior Mobile Security Auditor", normal_style))
    story.append(PageBreak())

    # ============================================
    # EXECUTIVE SUMMARY
    # ============================================
    story.append(Paragraph("RESUMEN EJECUTIVO", heading2_style))

    # Severity counts
    severity_counts = {'Critical': 0, 'High': 0, 'Medium': 0, 'Low': 0}
    for finding in findings:
        sev = finding['severity']
        if sev in severity_counts:
            severity_counts[sev] += 1

    summary_data = [
        ['Severidad', 'Cantidad', 'Porcentaje'],
        ['Crítico', str(severity_counts['Critical']), f'{severity_counts["Critical"]/len(findings)*100:.0f}%'],
        ['Alto', str(severity_counts['High']), f'{severity_counts["High"]/len(findings)*100:.0f}%'],
        ['Medio', str(severity_counts['Medium']), f'{severity_counts["Medium"]/len(findings)*100:.0f}%'],
        ['Bajo', str(severity_counts['Low']), f'{severity_counts["Low"]/len(findings)*100:.0f}%'],
        ['Total', str(len(findings)), '100%']
    ]

    summary_table = Table(summary_data, colWidths=[150, 100, 100])
    summary_table.setStyle(TableStyle([
        ('BACKGROUND', (0, 0), (-1, 0), colors.HexColor('#1a1a1a')),
        ('TEXTCOLOR', (0, 0), (-1, 0), colors.white),
        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, -1), 10),
        ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
        ('TOPPADDING', (1, 1), (-1, -1), 6),
        ('BOTTOMPADDING', (1, 1), (-1, -1), 6),
        ('GRID', (0, 0), (-1, -1), 0.5, colors.grey),
    ]))

    story.append(summary_table)
    story.append(Spacer(1, 20))

    # Critical findings summary
    story.append(Paragraph("HALLAZGOS CRITICOS (Accion Requerida):", heading3_style))
    critical_findings = [f for f in findings if f['severity'] == 'Critical']
    for f in critical_findings:
        story.append(Paragraph(f"- {f['id']}: {f['title']} (CVSS: {f['cvss_score']})", normal_style))
    story.append(Spacer(1, 20))

    # ============================================
    # ANALYSIS ENVIRONMENT
    # ============================================
    story.append(Paragraph("ENTORNO DE ANALISIS", heading2_style))
    env_data = [
        ['Aplicacion', apk_info['package']],
        ['Version', f"{apk_info['version_name']} (build {apk_info['version_code']})"],
        ['Compile SDK', str(apk_info['compile_sdk'])],
        ['Min SDK', str(apk_info['min_sdk'])],
        ['Target SDK', str(apk_info['target_sdk'])],
        ['Hash APK', apk_info['apk_hash']],
    ]
    env_table = Table(env_data, colWidths=[150, 350])
    env_table.setStyle(TableStyle([
        ('FONTNAME', (0, 0), (0, -1), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, -1), 10),
        ('GRID', (0, 0), (-1, -1), 0.5, colors.grey),
        ('TOPPADDING', (0, 0), (-1, -1), 4),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 4),
    ]))
    story.append(env_table)
    story.append(Spacer(1, 20))

    # Tools
    story.append(Paragraph("Herramientas Utilizadas:", heading3_style))
    tools_list = [
        "APKTool 3.0.1 - Descompilacion de APK",
        "Jadx 1.5.5 - Descompilacion DEX a Java/Kotlin",
        "AAPT - Metadatos de APK",
        "Apksigner - Verificacion de firma",
        "Semgrep - Analisis estatico",
        "Strings (binutils) - Extraccion de strings"
    ]
    for tool in tools_list:
        story.append(Paragraph(f"  * {tool}", normal_style))
    story.append(Spacer(1, 20))

    # ============================================
    # DETAILED FINDINGS
    # ============================================
    story.append(Paragraph("HALLAZGOS DETALLADOS", heading2_style))

    for finding in findings:
        # ID and Title
        story.append(Spacer(1, 10))
        severity_paragraph = Paragraph(f"{finding['id']} - {finding['title']}",
                                       critical_style if finding['severity'] == 'Critical' else
                                       high_style if finding['severity'] == 'High' else
                                       medium_style if finding['severity'] == 'Medium' else
                                       low_style)
        story.append(severity_paragraph)

        # CVSS
        story.append(Paragraph(f"CVSS v3.1: {finding['cvss']}", normal_style))
        story.append(Paragraph(f"Score: {finding['cvss_score']}", normal_style))

        # CWE
        story.append(Paragraph(f"CWE: {finding['cwe']}", normal_style))

        # MASVS and MASTG
        story.append(Paragraph(f"MASVS: {finding.get('masvs', 'N/A')}", normal_style))
        story.append(Paragraph(f"MASTG: {finding.get('mastg', 'N/A')}", normal_style))

        # Status and Confidence
        story.append(Paragraph(f"Estado: {finding['status']}", normal_style))
        story.append(Paragraph(f"Confianza: {finding['confidence']}", normal_style))

        # Description
        story.append(Spacer(1, 5))
        story.append(Paragraph("Descripcion:", heading3_style))
        story.append(Paragraph(finding['description'], normal_style))

        # Evidence
        story.append(Spacer(1, 5))
        story.append(Paragraph("Evidencia:", heading3_style))
        story.append(Paragraph(finding['evidence'], normal_style))

        # Risk
        story.append(Spacer(1, 5))
        story.append(Paragraph("Riesgo:", heading3_style))
        story.append(Paragraph(finding['risk'], normal_style))

        # Exploitation
        story.append(Spacer(1, 5))
        story.append(Paragraph("Escenario de Explotacion:", heading3_style))
        story.append(Paragraph(finding['exploitation'], normal_style))

        # Impact
        story.append(Spacer(1, 5))
        story.append(Paragraph("Impacto:", heading3_style))
        story.append(Paragraph(finding['impact'], normal_style))

        # Recommendation
        story.append(Spacer(1, 5))
        story.append(Paragraph("Recomendacion:", heading3_style))
        story.append(Paragraph(finding['recommendation'], normal_style))

        # Notes
        if finding.get('notes'):
            story.append(Spacer(1, 5))
            story.append(Paragraph("Notas:", heading3_style))
            story.append(Paragraph(finding['notes'], normal_style))

        story.append(PageBreak())

    # ============================================
    # COMPLIANCE MAPPING
    # ============================================
    story.append(Paragraph("MAPEO DE CUMPLIMIENTO MASVS", heading2_style))

    compliance_data = [
        ['Control', 'Estado', 'Observaciones'],
    ]

    for finding in findings:
        if finding.get('masvs'):
            compliance_data.append([
                finding['masvs'],
                'NO CUMPLE' if finding['severity'] in ['Critical', 'High'] else 'CUMPLE PARCIAL',
                finding['title'][:50]
            ])

    compliance_table = Table(compliance_data, colWidths=[150, 100, 250])
    compliance_table.setStyle(TableStyle([
        ('BACKGROUND', (0, 0), (-1, 0), colors.HexColor('#1a1a1a')),
        ('TEXTCOLOR', (0, 0), (-1, 0), colors.white),
        ('ALIGN', (0, 0), (-1, -1), 'LEFT'),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, -1), 9),
        ('GRID', (0, 0), (-1, -1), 0.5, colors.grey),
        ('TOPPADDING', (0, 0), (-1, -1), 4),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 4),
    ]))
    story.append(compliance_table)
    story.append(Spacer(1, 20))

    # ============================================
    # CONCLUSIONS
    # ============================================
    story.append(Paragraph("CONCLUSIONES TECNICAS", heading2_style))

    story.append(Paragraph("1. Generalidades:", normal_style))
    story.append(Paragraph("   - Se detectaron 10 hallazgos de seguridad en la aplicacion.", normal_style))
    story.append(Paragraph("   - 2 hallazgos son críticos y requieren acción inmediata.", normal_style))
    story.append(Paragraph("   - 4 hallazgos de alto riesgo deben abordarse antes del lanzamiento.", normal_style))
    story.append(Spacer(1, 10))

    story.append(Paragraph("2. Riesgos Principales:", normal_style))
    story.append(Paragraph("   - Debug mode habilitado permite depuración remota.", normal_style))
    story.append(Paragraph("   - API key expuesta puede ser usada para abuso de servicios.", normal_style))
    story.append(Paragraph("   - Tráfico no cifrado expone datos en tránsito.", normal_style))
    story.append(Spacer(1, 10))

    story.append(Paragraph("3. Recomendaciones Prioritarias:", normal_style))
    story.append(Paragraph("   1. Deshabilitar android:debuggable en AndroidManifest.xml", normal_style))
    story.append(Paragraph("   2. Rotar API key expuesta y mover a backend", normal_style))
    story.append(Paragraph("   3. Configurar Network Security Config para HTTPS-only", normal_style))
    story.append(Paragraph("   4. Deshabilitar android:allowBackup o usar cifrado", normal_style))
    story.append(Paragraph("   5. Revisar y restringir reglas de Firebase", normal_style))

    # ============================================
    # BUILD PDF
    # ============================================
    doc.build(story)
    print(f"PDF generado: {output_pdf}")

if __name__ == "__main__":
    input_file = "/analysis/output/hallazgos.json"
    output_file = "/analysis/output/informe_apk.pdf"

    if os.path.exists(input_file):
        generate_pdf_report(input_file, output_file)
    else:
        print(f"Error: {input_file} no encontrado")
