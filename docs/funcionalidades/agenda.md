# Agenda del Profesional

Para los psicólogos registrados dentro del sistema AMANI, administrar sus calendarios y disponer de reportes ordenados de citas pasadas y venideras es crucial. Por eso, el aplicativo móvil incorpora un completo administrador y visualizador interactivo ubicado en la pantalla gráfica `AgendaScreen` <!-- TODO: verificar nombre real -->.

## Arquitectura de la Agenda

Al aterrizar en la pantalla del calendario del profesional, Jetpack Compose le encarga inmediatamente a la capa de dominio la recolección de las sesiones mediante el inyector global **Koin**. A través del ViewModel, el sistema emite eventos que provocan peticiones a los servidores externos, obteniendo las horas y fechas exactas para renderizarlas de manera elegante sobre cuadrículas generadas bajo la especificación de diseño oficial.

El psicólogo puede alternar entre las vistas mensuales y semanales, logrando ubicar temporalmente cada cita de sus múltiples pacientes asignados mediante tarjetas descriptivas interactivas.

## Exportación a Documento Portátil (PDF)

Una funcionalidad avanzada obligatoria para el entorno clínico y de auditoría institucional es la generación de informes o calendarios estáticos exportables. AMANI implementa la generación estructurada de archivos PDF valiéndose íntegramente de la poderosa y versátil biblioteca **iText7**.

### Flujo Técnico de Generación y Permisos

1. **Intención de Usuario**: El psicólogo selecciona la acción "Exportar a PDF" en el menú contextual superior.
2. **Orquestación de Archivos**: El ViewModel delega la tarea hacia un módulo especializado en documentos. Este interactor usa `iText7` para dibujar en la memoria temporal los títulos de columnas, párrafos técnicos y volcar el listado temporal de pacientes extraído del repositorio.
3. **Escritura Nativa de Archivos**: Dado que Android protege rígidamente los almacenamientos locales de archivos para evitar abusos por parte de los desarrolladores, la aplicación requiere permisos lógicos. No obstante, para versiones modernas de Android (API mayor a 29), el uso nativo de *Storage Access Framework* (SAF) o el sistema `MediaStore` permite guardar estos archivos sin obligar al psicólogo a aprobar incómodos permisos de escritura globales.

!!! warning "Consideraciones Legales Médicas"
    Los archivos PDF exportables generados por `iText7` contienen obligatoriamente Información Personal de Salud (PHI). Por ende, el cliente Android nunca debe intentar sincronizar temporalmente o respaldar agresivamente estos reportes en nubes públicas del dispositivo como Google Drive de manera automática o silenciosa para evadir multas de regulaciones de seguridad internacional.
