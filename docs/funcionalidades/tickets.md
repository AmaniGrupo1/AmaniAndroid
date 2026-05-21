# Gestión de Tickets de Soporte

El módulo de reportes técnicos permite a cualquier paciente enviar observaciones detalladas sobre el comportamiento de la plataforma directamente a los administradores del sistema, asegurando la continuidad e idoneidad del servicio de atención psicológica.

## Componentes y Flujo General

El ciclo de vida completo del soporte técnico es de naturaleza bidireccional y sincrónica:
1. El usuario navega hacia la pantalla declarativa `TicketScreen` <!-- TODO: verificar nombre real --> en el cliente Android.
2. Ingresa sus comentarios en un bloque de texto que es interceptado por un estado reactivo del modelo de vista interno.
3. Al accionar el botón primario de envío, la capa lógica ensambla el contenedor de transporte (DTO) asegurándose de anexar automáticamente el identificador de sesión y lo despacha de forma asíncrona hacia Spring Boot a través del cliente de red Retrofit.

## Infraestructura Backend

Para sustentar correctamente estos registros sin mezclarlos con expedientes médicos confidenciales, el área de soporte cuenta con una representación clara e individual dentro de las entrañas estructurales del backend relacional en PostgreSQL:

### Entidad de Persistencia (JPA)
La clase base Java/Kotlin del lado del servidor que se ancla a la tabla SQL utiliza anotaciones estándar del motor de inyección de persistencia:

```kotlin
@Entity
@Table(name = "support_tickets")
data class SupportTicketEntity(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,
    val patientId: String,
    val description: String,
    val status: String = "PENDING",
    val createdAt: LocalDateTime = LocalDateTime.now()
)
```

### Contenedor de Transporte (DTO)
Para evitar la filtración de claves de la base de datos hacia los clientes HTTP, las respuestas del servidor siempre se camuflan bajo objetos de transferencia limpios:

```kotlin
data class TicketResponseDto(
    val ticketId: Long,
    val statusMessage: String
)
```

### Endpoints (Rutas API)
El controlador expone habitualmente las siguientes rutas:
- `POST /api/tickets/create`: Escucha el cuerpo JSON del cliente Android para instanciar la consulta.
- `GET /api/tickets/history`: Devuelve una lista paginada del estado actual de todos los boletos para mostrarlos en el historial del aplicativo del usuario.

!!! warning "Restricciones Lógicas de Bloqueo"
    Para evitar saturación de la base de datos debido a peticiones malintencionadas o denegaciones de servicio (DDoS locales), los modelos de vista de Android están obligados a bloquear lógicamente el botón de envío durante al menos 10 segundos inmediatos después del despacho del reporte inicial de un ticket, protegiendo así los orígenes remotos HTTP.
