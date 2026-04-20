package org.ies.tierno.applicationamani.dto.citas;

import androidx.media3.extractor.text.ttml.TtmlNode;
import j$.time.LocalTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CitaDetalleResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0015J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0019J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0015J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0015J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0015J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0082\u0001\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b#\u0010\u0015J\u0010\u0010$\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b$\u0010%J\u001a\u0010(\u001a\u00020'2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010*\u001a\u0004\b+\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010,\u001a\u0004\b-\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010.\u001a\u0004\b/\u0010\u0017R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u00100\u001a\u0004\b1\u0010\u0019R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010,\u001a\u0004\b2\u0010\u0015R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\n\u00100\u001a\u0004\b3\u0010\u0019R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010,\u001a\u0004\b4\u0010\u0015R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010,\u001a\u0004\b5\u0010\u0015R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010,\u001a\u0004\b6\u0010\u0015R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u00107\u001a\u0004\b8\u0010 ¨\u00069"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;", "", "", TtmlNode.ATTR_ID, "", "fecha", "j$/time/LocalTime", "hora", "pacienteId", "pacienteNombre", "psicologoId", "psicologoNombre", "motivo", "estado", "", "durationMinutes", "<init>", "(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "component1", "()J", "component2", "()Ljava/lang/String;", "component3", "()Lj$/time/LocalTime;", "component4", "()Ljava/lang/Long;", "component5", "component6", "component7", "component8", "component9", "component10", "()Ljava/lang/Integer;", "copy", "(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "Ljava/lang/String;", "getFecha", "Lj$/time/LocalTime;", "getHora", "Ljava/lang/Long;", "getPacienteId", "getPacienteNombre", "getPsicologoId", "getPsicologoNombre", "getMotivo", "getEstado", "Ljava/lang/Integer;", "getDurationMinutes", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CitaDetalleResponse {
    public static final int $stable = 8;
    private final Integer durationMinutes;
    private final String estado;
    private final String fecha;
    private final LocalTime hora;
    private final long id;
    private final String motivo;
    private final Long pacienteId;
    private final String pacienteNombre;
    private final Long psicologoId;
    private final String psicologoNombre;

    public static /* synthetic */ CitaDetalleResponse copy$default(CitaDetalleResponse citaDetalleResponse, long j, String str, LocalTime localTime, Long l, String str2, Long l2, String str3, String str4, String str5, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            j = citaDetalleResponse.id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = citaDetalleResponse.fecha;
        }
        return citaDetalleResponse.copy(j2, str, (i & 4) != 0 ? citaDetalleResponse.hora : localTime, (i & 8) != 0 ? citaDetalleResponse.pacienteId : l, (i & 16) != 0 ? citaDetalleResponse.pacienteNombre : str2, (i & 32) != 0 ? citaDetalleResponse.psicologoId : l2, (i & 64) != 0 ? citaDetalleResponse.psicologoNombre : str3, (i & 128) != 0 ? citaDetalleResponse.motivo : str4, (i & 256) != 0 ? citaDetalleResponse.estado : str5, (i & 512) != 0 ? citaDetalleResponse.durationMinutes : num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFecha() {
        return this.fecha;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LocalTime getHora() {
        return this.hora;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getPacienteId() {
        return this.pacienteId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPacienteNombre() {
        return this.pacienteNombre;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getPsicologoId() {
        return this.psicologoId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPsicologoNombre() {
        return this.psicologoNombre;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getEstado() {
        return this.estado;
    }

    public final CitaDetalleResponse copy(long id, String fecha, LocalTime hora, Long pacienteId, String pacienteNombre, Long psicologoId, String psicologoNombre, String motivo, String estado, Integer durationMinutes) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        return new CitaDetalleResponse(id, fecha, hora, pacienteId, pacienteNombre, psicologoId, psicologoNombre, motivo, estado, durationMinutes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CitaDetalleResponse)) {
            return false;
        }
        CitaDetalleResponse citaDetalleResponse = (CitaDetalleResponse) other;
        return this.id == citaDetalleResponse.id && Intrinsics.areEqual(this.fecha, citaDetalleResponse.fecha) && Intrinsics.areEqual(this.hora, citaDetalleResponse.hora) && Intrinsics.areEqual(this.pacienteId, citaDetalleResponse.pacienteId) && Intrinsics.areEqual(this.pacienteNombre, citaDetalleResponse.pacienteNombre) && Intrinsics.areEqual(this.psicologoId, citaDetalleResponse.psicologoId) && Intrinsics.areEqual(this.psicologoNombre, citaDetalleResponse.psicologoNombre) && Intrinsics.areEqual(this.motivo, citaDetalleResponse.motivo) && Intrinsics.areEqual(this.estado, citaDetalleResponse.estado) && Intrinsics.areEqual(this.durationMinutes, citaDetalleResponse.durationMinutes);
    }

    public int hashCode() {
        return (((((((((((((((((Long.hashCode(this.id) * 31) + this.fecha.hashCode()) * 31) + this.hora.hashCode()) * 31) + (this.pacienteId == null ? 0 : this.pacienteId.hashCode())) * 31) + (this.pacienteNombre == null ? 0 : this.pacienteNombre.hashCode())) * 31) + (this.psicologoId == null ? 0 : this.psicologoId.hashCode())) * 31) + (this.psicologoNombre == null ? 0 : this.psicologoNombre.hashCode())) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode())) * 31) + (this.estado == null ? 0 : this.estado.hashCode())) * 31) + (this.durationMinutes != null ? this.durationMinutes.hashCode() : 0);
    }

    public String toString() {
        return "CitaDetalleResponse(id=" + this.id + ", fecha=" + this.fecha + ", hora=" + this.hora + ", pacienteId=" + this.pacienteId + ", pacienteNombre=" + this.pacienteNombre + ", psicologoId=" + this.psicologoId + ", psicologoNombre=" + this.psicologoNombre + ", motivo=" + this.motivo + ", estado=" + this.estado + ", durationMinutes=" + this.durationMinutes + ")";
    }

    public CitaDetalleResponse(long id, String fecha, LocalTime hora, Long pacienteId, String pacienteNombre, Long psicologoId, String psicologoNombre, String motivo, String estado, Integer durationMinutes) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.pacienteId = pacienteId;
        this.pacienteNombre = pacienteNombre;
        this.psicologoId = psicologoId;
        this.psicologoNombre = psicologoNombre;
        this.motivo = motivo;
        this.estado = estado;
        this.durationMinutes = durationMinutes;
    }

    public /* synthetic */ CitaDetalleResponse(long j, String str, LocalTime localTime, Long l, String str2, Long l2, String str3, String str4, String str5, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, localTime, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : l2, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? null : str4, (i & 256) != 0 ? null : str5, (i & 512) != 0 ? null : num);
    }

    public final long getId() {
        return this.id;
    }

    public final String getFecha() {
        return this.fecha;
    }

    public final LocalTime getHora() {
        return this.hora;
    }

    public final Long getPacienteId() {
        return this.pacienteId;
    }

    public final String getPacienteNombre() {
        return this.pacienteNombre;
    }

    public final Long getPsicologoId() {
        return this.psicologoId;
    }

    public final String getPsicologoNombre() {
        return this.psicologoNombre;
    }

    public final String getMotivo() {
        return this.motivo;
    }

    public final String getEstado() {
        return this.estado;
    }

    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }
}
