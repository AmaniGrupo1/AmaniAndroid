package org.ies.tierno.applicationamani.dto.citas;

import com.google.gson.annotations.SerializedName;
import j$.time.LocalTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FranjaDisponibilidadResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\r\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ\u0010\u0010\u000e\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J<\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0011J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\fR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001b\u001a\u0004\b\u001d\u0010\fR\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u001e\u001a\u0004\b\u001f\u0010\u000fR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b!\u0010\u0011¨\u0006\""}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;", "", "j$/time/LocalTime", "hora", "horaFin", "", "ocupado", "", "descripcion", "<init>", "(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)V", "component1", "()Lj$/time/LocalTime;", "component2", "component3", "()Z", "component4", "()Ljava/lang/String;", "copy", "(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Lj$/time/LocalTime;", "getHora", "getHoraFin", "Z", "getOcupado", "Ljava/lang/String;", "getDescripcion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class FranjaDisponibilidadResponse {
    public static final int $stable = 8;
    private final String descripcion;
    private final LocalTime hora;
    private final LocalTime horaFin;

    @SerializedName("ocupado")
    private final boolean ocupado;

    public static /* synthetic */ FranjaDisponibilidadResponse copy$default(FranjaDisponibilidadResponse franjaDisponibilidadResponse, LocalTime localTime, LocalTime localTime2, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            localTime = franjaDisponibilidadResponse.hora;
        }
        if ((i & 2) != 0) {
            localTime2 = franjaDisponibilidadResponse.horaFin;
        }
        if ((i & 4) != 0) {
            z = franjaDisponibilidadResponse.ocupado;
        }
        if ((i & 8) != 0) {
            str = franjaDisponibilidadResponse.descripcion;
        }
        return franjaDisponibilidadResponse.copy(localTime, localTime2, z, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LocalTime getHora() {
        return this.hora;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LocalTime getHoraFin() {
        return this.horaFin;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getOcupado() {
        return this.ocupado;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescripcion() {
        return this.descripcion;
    }

    public final FranjaDisponibilidadResponse copy(LocalTime hora, LocalTime horaFin, boolean ocupado, String descripcion) {
        Intrinsics.checkNotNullParameter(hora, "hora");
        return new FranjaDisponibilidadResponse(hora, horaFin, ocupado, descripcion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FranjaDisponibilidadResponse)) {
            return false;
        }
        FranjaDisponibilidadResponse franjaDisponibilidadResponse = (FranjaDisponibilidadResponse) other;
        return Intrinsics.areEqual(this.hora, franjaDisponibilidadResponse.hora) && Intrinsics.areEqual(this.horaFin, franjaDisponibilidadResponse.horaFin) && this.ocupado == franjaDisponibilidadResponse.ocupado && Intrinsics.areEqual(this.descripcion, franjaDisponibilidadResponse.descripcion);
    }

    public int hashCode() {
        return (((((this.hora.hashCode() * 31) + (this.horaFin == null ? 0 : this.horaFin.hashCode())) * 31) + Boolean.hashCode(this.ocupado)) * 31) + (this.descripcion != null ? this.descripcion.hashCode() : 0);
    }

    public String toString() {
        return "FranjaDisponibilidadResponse(hora=" + this.hora + ", horaFin=" + this.horaFin + ", ocupado=" + this.ocupado + ", descripcion=" + this.descripcion + ")";
    }

    public FranjaDisponibilidadResponse(LocalTime hora, LocalTime horaFin, boolean ocupado, String descripcion) {
        Intrinsics.checkNotNullParameter(hora, "hora");
        this.hora = hora;
        this.horaFin = horaFin;
        this.ocupado = ocupado;
        this.descripcion = descripcion;
    }

    public /* synthetic */ FranjaDisponibilidadResponse(LocalTime localTime, LocalTime localTime2, boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(localTime, (i & 2) != 0 ? null : localTime2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : str);
    }

    public final LocalTime getHora() {
        return this.hora;
    }

    public final LocalTime getHoraFin() {
        return this.horaFin;
    }

    public final boolean getOcupado() {
        return this.ocupado;
    }

    public final String getDescripcion() {
        return this.descripcion;
    }
}
