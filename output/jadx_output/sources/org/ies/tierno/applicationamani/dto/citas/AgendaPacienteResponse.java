package org.ies.tierno.applicationamani.dto.citas;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.components.Routes;

/* JADX INFO: compiled from: AgendaPacienteResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J4\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;", "", "idPaciente", "", "idPsicologoAsignado", Routes.CITAS, "", "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;", "<init>", "(JLjava/lang/Long;Ljava/util/List;)V", "getIdPaciente", "()J", "getIdPsicologoAsignado", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getCitas", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AgendaPacienteResponse {
    public static final int $stable = 8;
    private final List<CitaDetalleResponse> citas;
    private final long idPaciente;
    private final Long idPsicologoAsignado;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AgendaPacienteResponse copy$default(AgendaPacienteResponse agendaPacienteResponse, long j, Long l, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            j = agendaPacienteResponse.idPaciente;
        }
        if ((i & 2) != 0) {
            l = agendaPacienteResponse.idPsicologoAsignado;
        }
        if ((i & 4) != 0) {
            list = agendaPacienteResponse.citas;
        }
        return agendaPacienteResponse.copy(j, l, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getIdPsicologoAsignado() {
        return this.idPsicologoAsignado;
    }

    public final List<CitaDetalleResponse> component3() {
        return this.citas;
    }

    public final AgendaPacienteResponse copy(long idPaciente, Long idPsicologoAsignado, List<CitaDetalleResponse> citas) {
        Intrinsics.checkNotNullParameter(citas, "citas");
        return new AgendaPacienteResponse(idPaciente, idPsicologoAsignado, citas);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgendaPacienteResponse)) {
            return false;
        }
        AgendaPacienteResponse agendaPacienteResponse = (AgendaPacienteResponse) other;
        return this.idPaciente == agendaPacienteResponse.idPaciente && Intrinsics.areEqual(this.idPsicologoAsignado, agendaPacienteResponse.idPsicologoAsignado) && Intrinsics.areEqual(this.citas, agendaPacienteResponse.citas);
    }

    public int hashCode() {
        return (((Long.hashCode(this.idPaciente) * 31) + (this.idPsicologoAsignado == null ? 0 : this.idPsicologoAsignado.hashCode())) * 31) + this.citas.hashCode();
    }

    public String toString() {
        return "AgendaPacienteResponse(idPaciente=" + this.idPaciente + ", idPsicologoAsignado=" + this.idPsicologoAsignado + ", citas=" + this.citas + ")";
    }

    public AgendaPacienteResponse(long idPaciente, Long idPsicologoAsignado, List<CitaDetalleResponse> citas) {
        Intrinsics.checkNotNullParameter(citas, "citas");
        this.idPaciente = idPaciente;
        this.idPsicologoAsignado = idPsicologoAsignado;
        this.citas = citas;
    }

    public /* synthetic */ AgendaPacienteResponse(long j, Long l, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? null : l, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final Long getIdPsicologoAsignado() {
        return this.idPsicologoAsignado;
    }

    public final List<CitaDetalleResponse> getCitas() {
        return this.citas;
    }
}
