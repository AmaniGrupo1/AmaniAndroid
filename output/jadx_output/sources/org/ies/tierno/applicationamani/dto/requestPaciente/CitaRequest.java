package org.ies.tierno.applicationamani.dto.requestPaciente;

import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CitaRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010!J\u0080\u0001\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010.J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\bHÖ\u0001J\t\u00103\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!¨\u00064"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;", "", "idPaciente", "", "idPsicologo", "startDatetime", "", "durationMinutes", "", "metodoPago", "monto", "Ljava/math/BigDecimal;", "estadoPago", "estado", "motivo", "idTipoTerapia", "<init>", "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getIdPaciente", "()J", "getIdPsicologo", "getStartDatetime", "()Ljava/lang/String;", "getDurationMinutes", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMetodoPago", "getMonto", "()Ljava/math/BigDecimal;", "getEstadoPago", "getEstado", "getMotivo", "getIdTipoTerapia", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CitaRequest {
    public static final int $stable = 8;
    private final Integer durationMinutes;
    private final String estado;
    private final String estadoPago;
    private final long idPaciente;
    private final long idPsicologo;
    private final Long idTipoTerapia;
    private final String metodoPago;
    private final BigDecimal monto;
    private final String motivo;
    private final String startDatetime;

    public static /* synthetic */ CitaRequest copy$default(CitaRequest citaRequest, long j, long j2, String str, Integer num, String str2, BigDecimal bigDecimal, String str3, String str4, String str5, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            j = citaRequest.idPaciente;
        }
        return citaRequest.copy(j, (i & 2) != 0 ? citaRequest.idPsicologo : j2, (i & 4) != 0 ? citaRequest.startDatetime : str, (i & 8) != 0 ? citaRequest.durationMinutes : num, (i & 16) != 0 ? citaRequest.metodoPago : str2, (i & 32) != 0 ? citaRequest.monto : bigDecimal, (i & 64) != 0 ? citaRequest.estadoPago : str3, (i & 128) != 0 ? citaRequest.estado : str4, (i & 256) != 0 ? citaRequest.motivo : str5, (i & 512) != 0 ? citaRequest.idTipoTerapia : l);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStartDatetime() {
        return this.startDatetime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMetodoPago() {
        return this.metodoPago;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final BigDecimal getMonto() {
        return this.monto;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEstadoPago() {
        return this.estadoPago;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getEstado() {
        return this.estado;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    public final CitaRequest copy(long idPaciente, long idPsicologo, String startDatetime, Integer durationMinutes, String metodoPago, BigDecimal monto, String estadoPago, String estado, String motivo, Long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(startDatetime, "startDatetime");
        return new CitaRequest(idPaciente, idPsicologo, startDatetime, durationMinutes, metodoPago, monto, estadoPago, estado, motivo, idTipoTerapia);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CitaRequest)) {
            return false;
        }
        CitaRequest citaRequest = (CitaRequest) other;
        return this.idPaciente == citaRequest.idPaciente && this.idPsicologo == citaRequest.idPsicologo && Intrinsics.areEqual(this.startDatetime, citaRequest.startDatetime) && Intrinsics.areEqual(this.durationMinutes, citaRequest.durationMinutes) && Intrinsics.areEqual(this.metodoPago, citaRequest.metodoPago) && Intrinsics.areEqual(this.monto, citaRequest.monto) && Intrinsics.areEqual(this.estadoPago, citaRequest.estadoPago) && Intrinsics.areEqual(this.estado, citaRequest.estado) && Intrinsics.areEqual(this.motivo, citaRequest.motivo) && Intrinsics.areEqual(this.idTipoTerapia, citaRequest.idTipoTerapia);
    }

    public int hashCode() {
        return (((((((((((((((((Long.hashCode(this.idPaciente) * 31) + Long.hashCode(this.idPsicologo)) * 31) + this.startDatetime.hashCode()) * 31) + (this.durationMinutes == null ? 0 : this.durationMinutes.hashCode())) * 31) + (this.metodoPago == null ? 0 : this.metodoPago.hashCode())) * 31) + (this.monto == null ? 0 : this.monto.hashCode())) * 31) + (this.estadoPago == null ? 0 : this.estadoPago.hashCode())) * 31) + (this.estado == null ? 0 : this.estado.hashCode())) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode())) * 31) + (this.idTipoTerapia != null ? this.idTipoTerapia.hashCode() : 0);
    }

    public String toString() {
        return "CitaRequest(idPaciente=" + this.idPaciente + ", idPsicologo=" + this.idPsicologo + ", startDatetime=" + this.startDatetime + ", durationMinutes=" + this.durationMinutes + ", metodoPago=" + this.metodoPago + ", monto=" + this.monto + ", estadoPago=" + this.estadoPago + ", estado=" + this.estado + ", motivo=" + this.motivo + ", idTipoTerapia=" + this.idTipoTerapia + ")";
    }

    public CitaRequest(long idPaciente, long idPsicologo, String startDatetime, Integer durationMinutes, String metodoPago, BigDecimal monto, String estadoPago, String estado, String motivo, Long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(startDatetime, "startDatetime");
        this.idPaciente = idPaciente;
        this.idPsicologo = idPsicologo;
        this.startDatetime = startDatetime;
        this.durationMinutes = durationMinutes;
        this.metodoPago = metodoPago;
        this.monto = monto;
        this.estadoPago = estadoPago;
        this.estado = estado;
        this.motivo = motivo;
        this.idTipoTerapia = idTipoTerapia;
    }

    public /* synthetic */ CitaRequest(long j, long j2, String str, Integer num, String str2, BigDecimal bigDecimal, String str3, String str4, String str5, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, str, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : bigDecimal, (i & 64) != 0 ? "PENDIENTE" : str3, (i & 128) != 0 ? null : str4, (i & 256) != 0 ? null : str5, (i & 512) != 0 ? null : l);
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final String getStartDatetime() {
        return this.startDatetime;
    }

    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }

    public final String getMetodoPago() {
        return this.metodoPago;
    }

    public final BigDecimal getMonto() {
        return this.monto;
    }

    public final String getEstadoPago() {
        return this.estadoPago;
    }

    public final String getEstado() {
        return this.estado;
    }

    public final String getMotivo() {
        return this.motivo;
    }

    public final Long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }
}
