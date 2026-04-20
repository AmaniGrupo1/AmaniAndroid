package org.ies.tierno.applicationamani.dto.agenda.request;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HorarioRequestDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J=\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/agenda/request/FranjaHorarioDTO;", "", "diaSemana", "", "horaInicio", "", "horaFin", "activo", "", "motivo", "<init>", "(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getDiaSemana", "()S", "getHoraInicio", "()Ljava/lang/String;", "getHoraFin", "getActivo", "()Z", "getMotivo", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class FranjaHorarioDTO {
    public static final int $stable = 0;
    private final boolean activo;
    private final short diaSemana;
    private final String horaFin;
    private final String horaInicio;
    private final String motivo;

    public static /* synthetic */ FranjaHorarioDTO copy$default(FranjaHorarioDTO franjaHorarioDTO, short s, String str, String str2, boolean z, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            s = franjaHorarioDTO.diaSemana;
        }
        if ((i & 2) != 0) {
            str = franjaHorarioDTO.horaInicio;
        }
        if ((i & 4) != 0) {
            str2 = franjaHorarioDTO.horaFin;
        }
        if ((i & 8) != 0) {
            z = franjaHorarioDTO.activo;
        }
        if ((i & 16) != 0) {
            str3 = franjaHorarioDTO.motivo;
        }
        String str4 = str3;
        String str5 = str2;
        return franjaHorarioDTO.copy(s, str, str5, z, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final short getDiaSemana() {
        return this.diaSemana;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getHoraInicio() {
        return this.horaInicio;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getHoraFin() {
        return this.horaFin;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getActivo() {
        return this.activo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    public final FranjaHorarioDTO copy(short diaSemana, String horaInicio, String horaFin, boolean activo, String motivo) {
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        return new FranjaHorarioDTO(diaSemana, horaInicio, horaFin, activo, motivo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FranjaHorarioDTO)) {
            return false;
        }
        FranjaHorarioDTO franjaHorarioDTO = (FranjaHorarioDTO) other;
        return this.diaSemana == franjaHorarioDTO.diaSemana && Intrinsics.areEqual(this.horaInicio, franjaHorarioDTO.horaInicio) && Intrinsics.areEqual(this.horaFin, franjaHorarioDTO.horaFin) && this.activo == franjaHorarioDTO.activo && Intrinsics.areEqual(this.motivo, franjaHorarioDTO.motivo);
    }

    public int hashCode() {
        return (((((((Short.hashCode(this.diaSemana) * 31) + this.horaInicio.hashCode()) * 31) + this.horaFin.hashCode()) * 31) + Boolean.hashCode(this.activo)) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode());
    }

    public String toString() {
        short s = this.diaSemana;
        return "FranjaHorarioDTO(diaSemana=" + ((int) s) + ", horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", activo=" + this.activo + ", motivo=" + this.motivo + ")";
    }

    public FranjaHorarioDTO(short diaSemana, String horaInicio, String horaFin, boolean activo, String motivo) {
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        this.diaSemana = diaSemana;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.activo = activo;
        this.motivo = motivo;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FranjaHorarioDTO(short s, String str, String str2, boolean z, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        String str4;
        if ((i & 16) == 0) {
            str4 = str3;
        } else {
            str4 = null;
        }
        this(s, str, str2, z, str4);
    }

    public final short getDiaSemana() {
        return this.diaSemana;
    }

    public final String getHoraInicio() {
        return this.horaInicio;
    }

    public final String getHoraFin() {
        return this.horaFin;
    }

    public final boolean getActivo() {
        return this.activo;
    }

    public final String getMotivo() {
        return this.motivo;
    }
}
