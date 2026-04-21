package org.ies.tierno.applicationamani.domain.models.psicologo;

import j$.time.LocalTime;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CitaPsicologo.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ.\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0010\u0010\fJ\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u001b\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001a\u001a\u0004\b\u001c\u0010\f¨\u0006\u001d"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/psicologo/CitaPsicologo;", "", "j$/time/LocalTime", "hora", "", "paciente", "motivo", "<init>", "(Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Lj$/time/LocalTime;", "component2", "()Ljava/lang/String;", "component3", "copy", "(Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/psicologo/CitaPsicologo;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lj$/time/LocalTime;", "getHora", "Ljava/lang/String;", "getPaciente", "getMotivo", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CitaPsicologo {
    public static final int $stable = 8;
    private final LocalTime hora;
    private final String motivo;
    private final String paciente;

    public static /* synthetic */ CitaPsicologo copy$default(CitaPsicologo citaPsicologo, LocalTime localTime, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            localTime = citaPsicologo.hora;
        }
        if ((i & 2) != 0) {
            str = citaPsicologo.paciente;
        }
        if ((i & 4) != 0) {
            str2 = citaPsicologo.motivo;
        }
        return citaPsicologo.copy(localTime, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LocalTime getHora() {
        return this.hora;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPaciente() {
        return this.paciente;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    public final CitaPsicologo copy(LocalTime hora, String paciente, String motivo) {
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        return new CitaPsicologo(hora, paciente, motivo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CitaPsicologo)) {
            return false;
        }
        CitaPsicologo citaPsicologo = (CitaPsicologo) other;
        return Intrinsics.areEqual(this.hora, citaPsicologo.hora) && Intrinsics.areEqual(this.paciente, citaPsicologo.paciente) && Intrinsics.areEqual(this.motivo, citaPsicologo.motivo);
    }

    public int hashCode() {
        return (((this.hora.hashCode() * 31) + this.paciente.hashCode()) * 31) + this.motivo.hashCode();
    }

    public String toString() {
        return "CitaPsicologo(hora=" + this.hora + ", paciente=" + this.paciente + ", motivo=" + this.motivo + ")";
    }

    public CitaPsicologo(LocalTime hora, String paciente, String motivo) {
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        this.hora = hora;
        this.paciente = paciente;
        this.motivo = motivo;
    }

    public final LocalTime getHora() {
        return this.hora;
    }

    public final String getPaciente() {
        return this.paciente;
    }

    public final String getMotivo() {
        return this.motivo;
    }
}
