package org.ies.tierno.applicationamani.dto.citas;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BloqueoRequestDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J7\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;", "", "fecha", "", "horaInicio", "horaFin", "motivo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFecha", "()Ljava/lang/String;", "getHoraInicio", "getHoraFin", "getMotivo", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class BloqueoRequestDTO {
    public static final int $stable = 0;
    private final String fecha;

    @SerializedName("horaFin")
    private final String horaFin;

    @SerializedName("horaInicio")
    private final String horaInicio;
    private final String motivo;

    public static /* synthetic */ BloqueoRequestDTO copy$default(BloqueoRequestDTO bloqueoRequestDTO, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = bloqueoRequestDTO.fecha;
        }
        if ((i & 2) != 0) {
            str2 = bloqueoRequestDTO.horaInicio;
        }
        if ((i & 4) != 0) {
            str3 = bloqueoRequestDTO.horaFin;
        }
        if ((i & 8) != 0) {
            str4 = bloqueoRequestDTO.motivo;
        }
        return bloqueoRequestDTO.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFecha() {
        return this.fecha;
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
    public final String getMotivo() {
        return this.motivo;
    }

    public final BloqueoRequestDTO copy(String fecha, String horaInicio, String horaFin, String motivo) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        return new BloqueoRequestDTO(fecha, horaInicio, horaFin, motivo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BloqueoRequestDTO)) {
            return false;
        }
        BloqueoRequestDTO bloqueoRequestDTO = (BloqueoRequestDTO) other;
        return Intrinsics.areEqual(this.fecha, bloqueoRequestDTO.fecha) && Intrinsics.areEqual(this.horaInicio, bloqueoRequestDTO.horaInicio) && Intrinsics.areEqual(this.horaFin, bloqueoRequestDTO.horaFin) && Intrinsics.areEqual(this.motivo, bloqueoRequestDTO.motivo);
    }

    public int hashCode() {
        return (((((this.fecha.hashCode() * 31) + (this.horaInicio == null ? 0 : this.horaInicio.hashCode())) * 31) + (this.horaFin == null ? 0 : this.horaFin.hashCode())) * 31) + (this.motivo != null ? this.motivo.hashCode() : 0);
    }

    public String toString() {
        return "BloqueoRequestDTO(fecha=" + this.fecha + ", horaInicio=" + this.horaInicio + ", horaFin=" + this.horaFin + ", motivo=" + this.motivo + ")";
    }

    public BloqueoRequestDTO(String fecha, String horaInicio, String horaFin, String motivo) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        this.fecha = fecha;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.motivo = motivo;
    }

    public /* synthetic */ BloqueoRequestDTO(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4);
    }

    public final String getFecha() {
        return this.fecha;
    }

    public final String getHoraInicio() {
        return this.horaInicio;
    }

    public final String getHoraFin() {
        return this.horaFin;
    }

    public final String getMotivo() {
        return this.motivo;
    }
}
