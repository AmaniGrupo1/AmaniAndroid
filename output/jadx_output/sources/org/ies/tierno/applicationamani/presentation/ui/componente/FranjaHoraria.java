package org.ies.tierno.applicationamani.presentation.ui.componente;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VistaDiariaHoras.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J=\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;", "", "diaSemana", "", "horaInicio", "", "horaFin", "activo", "", "motivo", "<init>", "(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getDiaSemana", "()S", "getHoraInicio", "()Ljava/lang/String;", "getHoraFin", "getActivo", "()Z", "getMotivo", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class FranjaHoraria {
    public static final int $stable = 0;
    private final boolean activo;
    private final short diaSemana;
    private final String horaFin;
    private final String horaInicio;
    private final String motivo;

    public static /* synthetic */ FranjaHoraria copy$default(FranjaHoraria franjaHoraria, short s, String str, String str2, boolean z, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            s = franjaHoraria.diaSemana;
        }
        if ((i & 2) != 0) {
            str = franjaHoraria.horaInicio;
        }
        if ((i & 4) != 0) {
            str2 = franjaHoraria.horaFin;
        }
        if ((i & 8) != 0) {
            z = franjaHoraria.activo;
        }
        if ((i & 16) != 0) {
            str3 = franjaHoraria.motivo;
        }
        String str4 = str3;
        String str5 = str2;
        return franjaHoraria.copy(s, str, str5, z, str4);
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

    public final FranjaHoraria copy(short diaSemana, String horaInicio, String horaFin, boolean activo, String motivo) {
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        return new FranjaHoraria(diaSemana, horaInicio, horaFin, activo, motivo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FranjaHoraria)) {
            return false;
        }
        FranjaHoraria franjaHoraria = (FranjaHoraria) other;
        return this.diaSemana == franjaHoraria.diaSemana && Intrinsics.areEqual(this.horaInicio, franjaHoraria.horaInicio) && Intrinsics.areEqual(this.horaFin, franjaHoraria.horaFin) && this.activo == franjaHoraria.activo && Intrinsics.areEqual(this.motivo, franjaHoraria.motivo);
    }

    public int hashCode() {
        return (((((((Short.hashCode(this.diaSemana) * 31) + this.horaInicio.hashCode()) * 31) + this.horaFin.hashCode()) * 31) + Boolean.hashCode(this.activo)) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode());
    }

    public String toString() {
        short s = this.diaSemana;
        return "FranjaHoraria(diaSemana=" + ((int) s) + ", horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", activo=" + this.activo + ", motivo=" + this.motivo + ")";
    }

    public FranjaHoraria(short diaSemana, String horaInicio, String horaFin, boolean activo, String motivo) {
        Intrinsics.checkNotNullParameter(horaInicio, "horaInicio");
        Intrinsics.checkNotNullParameter(horaFin, "horaFin");
        this.diaSemana = diaSemana;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.activo = activo;
        this.motivo = motivo;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FranjaHoraria(short s, String str, String str2, boolean z, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z2;
        String str4;
        if ((i & 8) == 0) {
            z2 = z;
        } else {
            z2 = true;
        }
        if ((i & 16) == 0) {
            str4 = str3;
        } else {
            str4 = null;
        }
        this(s, str, str2, z2, str4);
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
