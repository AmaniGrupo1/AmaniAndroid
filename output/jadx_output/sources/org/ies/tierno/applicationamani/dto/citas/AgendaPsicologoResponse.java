package org.ies.tierno.applicationamani.dto.citas;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.components.Routes;

/* JADX INFO: compiled from: AgendaPsicologoResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u0007HÆ\u0003JG\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;", "", "horaInicio", "", "horaFin", "duracionSesion", "diasNoDisponibles", "", "", Routes.CITAS, "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;", "<init>", "(IIILjava/util/List;Ljava/util/List;)V", "getHoraInicio", "()I", "getHoraFin", "getDuracionSesion", "getDiasNoDisponibles", "()Ljava/util/List;", "getCitas", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AgendaPsicologoResponse {
    public static final int $stable = 8;
    private final List<CitaDetalleResponse> citas;
    private final List<String> diasNoDisponibles;
    private final int duracionSesion;
    private final int horaFin;
    private final int horaInicio;

    public AgendaPsicologoResponse() {
        this(0, 0, 0, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AgendaPsicologoResponse copy$default(AgendaPsicologoResponse agendaPsicologoResponse, int i, int i2, int i3, List list, List list2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = agendaPsicologoResponse.horaInicio;
        }
        if ((i4 & 2) != 0) {
            i2 = agendaPsicologoResponse.horaFin;
        }
        if ((i4 & 4) != 0) {
            i3 = agendaPsicologoResponse.duracionSesion;
        }
        if ((i4 & 8) != 0) {
            list = agendaPsicologoResponse.diasNoDisponibles;
        }
        if ((i4 & 16) != 0) {
            list2 = agendaPsicologoResponse.citas;
        }
        List list3 = list2;
        int i5 = i3;
        return agendaPsicologoResponse.copy(i, i2, i5, list, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getHoraInicio() {
        return this.horaInicio;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getHoraFin() {
        return this.horaFin;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getDuracionSesion() {
        return this.duracionSesion;
    }

    public final List<String> component4() {
        return this.diasNoDisponibles;
    }

    public final List<CitaDetalleResponse> component5() {
        return this.citas;
    }

    public final AgendaPsicologoResponse copy(int horaInicio, int horaFin, int duracionSesion, List<String> diasNoDisponibles, List<CitaDetalleResponse> citas) {
        Intrinsics.checkNotNullParameter(diasNoDisponibles, "diasNoDisponibles");
        Intrinsics.checkNotNullParameter(citas, "citas");
        return new AgendaPsicologoResponse(horaInicio, horaFin, duracionSesion, diasNoDisponibles, citas);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgendaPsicologoResponse)) {
            return false;
        }
        AgendaPsicologoResponse agendaPsicologoResponse = (AgendaPsicologoResponse) other;
        return this.horaInicio == agendaPsicologoResponse.horaInicio && this.horaFin == agendaPsicologoResponse.horaFin && this.duracionSesion == agendaPsicologoResponse.duracionSesion && Intrinsics.areEqual(this.diasNoDisponibles, agendaPsicologoResponse.diasNoDisponibles) && Intrinsics.areEqual(this.citas, agendaPsicologoResponse.citas);
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.horaInicio) * 31) + Integer.hashCode(this.horaFin)) * 31) + Integer.hashCode(this.duracionSesion)) * 31) + this.diasNoDisponibles.hashCode()) * 31) + this.citas.hashCode();
    }

    public String toString() {
        return "AgendaPsicologoResponse(horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", duracionSesion=" + this.duracionSesion + ", diasNoDisponibles=" + this.diasNoDisponibles + ", citas=" + this.citas + ")";
    }

    public AgendaPsicologoResponse(int horaInicio, int horaFin, int duracionSesion, List<String> diasNoDisponibles, List<CitaDetalleResponse> citas) {
        Intrinsics.checkNotNullParameter(diasNoDisponibles, "diasNoDisponibles");
        Intrinsics.checkNotNullParameter(citas, "citas");
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.duracionSesion = duracionSesion;
        this.diasNoDisponibles = diasNoDisponibles;
        this.citas = citas;
    }

    public /* synthetic */ AgendaPsicologoResponse(int i, int i2, int i3, List list, List list2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 8 : i, (i4 & 2) != 0 ? 20 : i2, (i4 & 4) != 0 ? 60 : i3, (i4 & 8) != 0 ? CollectionsKt.emptyList() : list, (i4 & 16) != 0 ? CollectionsKt.emptyList() : list2);
    }

    public final int getHoraInicio() {
        return this.horaInicio;
    }

    public final int getHoraFin() {
        return this.horaFin;
    }

    public final int getDuracionSesion() {
        return this.duracionSesion;
    }

    public final List<String> getDiasNoDisponibles() {
        return this.diasNoDisponibles;
    }

    public final List<CitaDetalleResponse> getCitas() {
        return this.citas;
    }
}
