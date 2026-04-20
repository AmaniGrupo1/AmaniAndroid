package org.ies.tierno.applicationamani.dto.citas;

import com.google.gson.annotations.SerializedName;
import j$.time.LocalDate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisponibilidadDiaResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J4\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001c\u001a\u0004\b\u001d\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010\u000eR \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b!\u0010\u0010¨\u0006\""}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "", "j$/time/LocalDate", "fecha", "", "diaCompleto", "", "Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;", "slotsLibres", "<init>", "(Lj$/time/LocalDate;ZLjava/util/List;)V", "component1", "()Lj$/time/LocalDate;", "component2", "()Z", "component3", "()Ljava/util/List;", "copy", "(Lj$/time/LocalDate;ZLjava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Lj$/time/LocalDate;", "getFecha", "Z", "getDiaCompleto", "Ljava/util/List;", "getSlotsLibres", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class DisponibilidadDiaResponse {
    public static final int $stable = 8;
    private final boolean diaCompleto;
    private final LocalDate fecha;

    @SerializedName("slotsLibres")
    private final List<FranjaDisponibilidadResponse> slotsLibres;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DisponibilidadDiaResponse copy$default(DisponibilidadDiaResponse disponibilidadDiaResponse, LocalDate localDate, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            localDate = disponibilidadDiaResponse.fecha;
        }
        if ((i & 2) != 0) {
            z = disponibilidadDiaResponse.diaCompleto;
        }
        if ((i & 4) != 0) {
            list = disponibilidadDiaResponse.slotsLibres;
        }
        return disponibilidadDiaResponse.copy(localDate, z, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LocalDate getFecha() {
        return this.fecha;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getDiaCompleto() {
        return this.diaCompleto;
    }

    public final List<FranjaDisponibilidadResponse> component3() {
        return this.slotsLibres;
    }

    public final DisponibilidadDiaResponse copy(LocalDate fecha, boolean diaCompleto, List<FranjaDisponibilidadResponse> slotsLibres) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(slotsLibres, "slotsLibres");
        return new DisponibilidadDiaResponse(fecha, diaCompleto, slotsLibres);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DisponibilidadDiaResponse)) {
            return false;
        }
        DisponibilidadDiaResponse disponibilidadDiaResponse = (DisponibilidadDiaResponse) other;
        return Intrinsics.areEqual(this.fecha, disponibilidadDiaResponse.fecha) && this.diaCompleto == disponibilidadDiaResponse.diaCompleto && Intrinsics.areEqual(this.slotsLibres, disponibilidadDiaResponse.slotsLibres);
    }

    public int hashCode() {
        return (((this.fecha.hashCode() * 31) + Boolean.hashCode(this.diaCompleto)) * 31) + this.slotsLibres.hashCode();
    }

    public String toString() {
        return "DisponibilidadDiaResponse(fecha=" + this.fecha + ", diaCompleto=" + this.diaCompleto + ", slotsLibres=" + this.slotsLibres + ")";
    }

    public DisponibilidadDiaResponse(LocalDate fecha, boolean diaCompleto, List<FranjaDisponibilidadResponse> slotsLibres) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(slotsLibres, "slotsLibres");
        this.fecha = fecha;
        this.diaCompleto = diaCompleto;
        this.slotsLibres = slotsLibres;
    }

    public /* synthetic */ DisponibilidadDiaResponse(LocalDate localDate, boolean z, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(localDate, z, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final LocalDate getFecha() {
        return this.fecha;
    }

    public final boolean getDiaCompleto() {
        return this.diaCompleto;
    }

    public final List<FranjaDisponibilidadResponse> getSlotsLibres() {
        return this.slotsLibres;
    }
}
