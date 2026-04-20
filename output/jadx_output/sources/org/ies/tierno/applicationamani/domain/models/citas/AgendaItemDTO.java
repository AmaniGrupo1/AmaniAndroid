package org.ies.tierno.applicationamani.domain.models.citas;

import androidx.media3.extractor.text.ttml.TtmlNode;
import j$.time.LocalDate;
import j$.time.LocalTime;
import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO;

/* JADX INFO: compiled from: AgendaItemDTO.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0087\b\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u001eJ\u0010\u0010 \u001a\u00020\tHÆ\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\"\u0010!J\u0012\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b#\u0010!J\u0012\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b&\u0010!J\u0012\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b'\u0010!J\u0010\u0010(\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\b(\u0010)J\u0012\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b*\u0010!J\u0012\u0010+\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0004\b+\u0010,J\u0012\u0010-\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b-\u0010.J¬\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b/\u00100J\u0010\u00101\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b1\u0010!J\u0010\u00102\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b2\u00103J\u001a\u00106\u001a\u0002052\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b6\u00107R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u00108\u001a\u0004\b9\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010:\u001a\u0004\b;\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010<\u001a\u0004\b=\u0010\u001eR\u0017\u0010\b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010<\u001a\u0004\b>\u0010\u001eR\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010?\u001a\u0004\b@\u0010!R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010?\u001a\u0004\bA\u0010!R\u0019\u0010\f\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\f\u0010?\u001a\u0004\bB\u0010!R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010C\u001a\u0004\bD\u0010%R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010?\u001a\u0004\bE\u0010!R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0010\u0010?\u001a\u0004\bF\u0010!R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010G\u001a\u0004\bH\u0010)R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0013\u0010?\u001a\u0004\bI\u0010!R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010J\u001a\u0004\bK\u0010,R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010L\u001a\u0004\bM\u0010.¨\u0006N"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "", "", TtmlNode.ATTR_ID, "j$/time/LocalDate", "fecha", "j$/time/LocalTime", "horaInicio", "horaFin", "", "tipo", "estado", "motivo", "", "duracionMinutos", "nombrePaciente", "nombrePsicologo", "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "terapiaResponseDTO", "metodoPago", "Ljava/math/BigDecimal;", "monto", "idTipoTerapia", "<init>", "(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)V", "component1", "()J", "component2", "()Lj$/time/LocalDate;", "component3", "()Lj$/time/LocalTime;", "component4", "component5", "()Ljava/lang/String;", "component6", "component7", "component8", "()Ljava/lang/Integer;", "component9", "component10", "component11", "()Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "component12", "component13", "()Ljava/math/BigDecimal;", "component14", "()Ljava/lang/Long;", "copy", "(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "Lj$/time/LocalDate;", "getFecha", "Lj$/time/LocalTime;", "getHoraInicio", "getHoraFin", "Ljava/lang/String;", "getTipo", "getEstado", "getMotivo", "Ljava/lang/Integer;", "getDuracionMinutos", "getNombrePaciente", "getNombrePsicologo", "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "getTerapiaResponseDTO", "getMetodoPago", "Ljava/math/BigDecimal;", "getMonto", "Ljava/lang/Long;", "getIdTipoTerapia", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AgendaItemDTO {
    public static final int $stable = 8;
    private final Integer duracionMinutos;
    private final String estado;
    private final LocalDate fecha;
    private final LocalTime horaFin;
    private final LocalTime horaInicio;
    private final long id;
    private final Long idTipoTerapia;
    private final String metodoPago;
    private final BigDecimal monto;
    private final String motivo;
    private final String nombrePaciente;
    private final String nombrePsicologo;
    private final TerapiaResponseDTO terapiaResponseDTO;
    private final String tipo;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final TerapiaResponseDTO getTerapiaResponseDTO() {
        return this.terapiaResponseDTO;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getMetodoPago() {
        return this.metodoPago;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final BigDecimal getMonto() {
        return this.monto;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LocalDate getFecha() {
        return this.fecha;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LocalTime getHoraInicio() {
        return this.horaInicio;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final LocalTime getHoraFin() {
        return this.horaFin;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTipo() {
        return this.tipo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getEstado() {
        return this.estado;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getDuracionMinutos() {
        return this.duracionMinutos;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getNombrePaciente() {
        return this.nombrePaciente;
    }

    public final AgendaItemDTO copy(long id, LocalDate fecha, LocalTime horaInicio, LocalTime horaFin, String tipo, String estado, String motivo, Integer duracionMinutos, String nombrePaciente, String nombrePsicologo, TerapiaResponseDTO terapiaResponseDTO, String metodoPago, BigDecimal monto, Long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        Intrinsics.checkNotNullParameter(terapiaResponseDTO, "terapiaResponseDTO");
        return new AgendaItemDTO(id, fecha, horaInicio, horaFin, tipo, estado, motivo, duracionMinutos, nombrePaciente, nombrePsicologo, terapiaResponseDTO, metodoPago, monto, idTipoTerapia);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgendaItemDTO)) {
            return false;
        }
        AgendaItemDTO agendaItemDTO = (AgendaItemDTO) other;
        return this.id == agendaItemDTO.id && Intrinsics.areEqual(this.fecha, agendaItemDTO.fecha) && Intrinsics.areEqual(this.horaInicio, agendaItemDTO.horaInicio) && Intrinsics.areEqual(this.horaFin, agendaItemDTO.horaFin) && Intrinsics.areEqual(this.tipo, agendaItemDTO.tipo) && Intrinsics.areEqual(this.estado, agendaItemDTO.estado) && Intrinsics.areEqual(this.motivo, agendaItemDTO.motivo) && Intrinsics.areEqual(this.duracionMinutos, agendaItemDTO.duracionMinutos) && Intrinsics.areEqual(this.nombrePaciente, agendaItemDTO.nombrePaciente) && Intrinsics.areEqual(this.nombrePsicologo, agendaItemDTO.nombrePsicologo) && Intrinsics.areEqual(this.terapiaResponseDTO, agendaItemDTO.terapiaResponseDTO) && Intrinsics.areEqual(this.metodoPago, agendaItemDTO.metodoPago) && Intrinsics.areEqual(this.monto, agendaItemDTO.monto) && Intrinsics.areEqual(this.idTipoTerapia, agendaItemDTO.idTipoTerapia);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((Long.hashCode(this.id) * 31) + this.fecha.hashCode()) * 31) + this.horaInicio.hashCode()) * 31) + this.horaFin.hashCode()) * 31) + this.tipo.hashCode()) * 31) + (this.estado == null ? 0 : this.estado.hashCode())) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode())) * 31) + (this.duracionMinutos == null ? 0 : this.duracionMinutos.hashCode())) * 31) + (this.nombrePaciente == null ? 0 : this.nombrePaciente.hashCode())) * 31) + (this.nombrePsicologo == null ? 0 : this.nombrePsicologo.hashCode())) * 31) + this.terapiaResponseDTO.hashCode()) * 31) + (this.metodoPago == null ? 0 : this.metodoPago.hashCode())) * 31) + (this.monto == null ? 0 : this.monto.hashCode())) * 31) + (this.idTipoTerapia != null ? this.idTipoTerapia.hashCode() : 0);
    }

    public String toString() {
        return "AgendaItemDTO(id=" + this.id + ", fecha=" + this.fecha + ", horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", tipo=" + this.tipo + ", estado=" + this.estado + ", motivo=" + this.motivo + ", duracionMinutos=" + this.duracionMinutos + ", nombrePaciente=" + this.nombrePaciente + ", nombrePsicologo=" + this.nombrePsicologo + ", terapiaResponseDTO=" + this.terapiaResponseDTO + ", metodoPago=" + this.metodoPago + ", monto=" + this.monto + ", idTipoTerapia=" + this.idTipoTerapia + ")";
    }

    public AgendaItemDTO(long id, LocalDate fecha, LocalTime horaInicio, LocalTime horaFin, String tipo, String estado, String motivo, Integer duracionMinutos, String nombrePaciente, String nombrePsicologo, TerapiaResponseDTO terapiaResponseDTO, String metodoPago, BigDecimal monto, Long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        Intrinsics.checkNotNullParameter(terapiaResponseDTO, "terapiaResponseDTO");
        this.id = id;
        this.fecha = fecha;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.tipo = tipo;
        this.estado = estado;
        this.motivo = motivo;
        this.duracionMinutos = duracionMinutos;
        this.nombrePaciente = nombrePaciente;
        this.nombrePsicologo = nombrePsicologo;
        this.terapiaResponseDTO = terapiaResponseDTO;
        this.metodoPago = metodoPago;
        this.monto = monto;
        this.idTipoTerapia = idTipoTerapia;
    }

    public /* synthetic */ AgendaItemDTO(long j, LocalDate localDate, LocalTime localTime, LocalTime localTime2, String str, String str2, String str3, Integer num, String str4, String str5, TerapiaResponseDTO terapiaResponseDTO, String str6, BigDecimal bigDecimal, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, localDate, localTime, localTime2, str, str2, str3, num, str4, str5, terapiaResponseDTO, (i & 2048) != 0 ? null : str6, (i & 4096) != 0 ? null : bigDecimal, (i & 8192) != 0 ? null : l);
    }

    public final long getId() {
        return this.id;
    }

    public final LocalDate getFecha() {
        return this.fecha;
    }

    public final LocalTime getHoraInicio() {
        return this.horaInicio;
    }

    public final LocalTime getHoraFin() {
        return this.horaFin;
    }

    public final String getTipo() {
        return this.tipo;
    }

    public final String getEstado() {
        return this.estado;
    }

    public final String getMotivo() {
        return this.motivo;
    }

    public final Integer getDuracionMinutos() {
        return this.duracionMinutos;
    }

    public final String getNombrePaciente() {
        return this.nombrePaciente;
    }

    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    public final TerapiaResponseDTO getTerapiaResponseDTO() {
        return this.terapiaResponseDTO;
    }

    public final String getMetodoPago() {
        return this.metodoPago;
    }

    public final BigDecimal getMonto() {
        return this.monto;
    }

    public final Long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }
}
