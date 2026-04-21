package org.ies.tierno.applicationamani.dto.citas;

import com.google.gson.annotations.SerializedName;
import j$.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita;

/* JADX INFO: compiled from: CrearCitaRequestDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0011JV\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0016J\u001a\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\"\u0010#R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010$\u001a\u0004\b%\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010$\u001a\u0004\b&\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b(\u0010\u0014R\u001a\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b*\u0010\u0016R\u001a\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010+\u001a\u0004\b,\u0010\u0018R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010-\u001a\u0004\b.\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010$\u001a\u0004\b/\u0010\u0011¨\u00060"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;", "", "", "idPaciente", "idPsicologo", "j$/time/LocalDateTime", "startDatetime", "", "durationMinutes", "", "motivo", "Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;", "estado", "idTipoTerapia", "<init>", "(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V", "component1", "()J", "component2", "component3", "()Lj$/time/LocalDateTime;", "component4", "()I", "component5", "()Ljava/lang/String;", "component6", "()Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;", "component7", "copy", "(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getIdPaciente", "getIdPsicologo", "Lj$/time/LocalDateTime;", "getStartDatetime", "I", "getDurationMinutes", "Ljava/lang/String;", "getMotivo", "Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;", "getEstado", "getIdTipoTerapia", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CrearCitaRequestDTO {
    public static final int $stable = 8;

    @SerializedName("durationMinutes")
    private final int durationMinutes;
    private final EstadoCita estado;

    @SerializedName("idPaciente")
    private final long idPaciente;

    @SerializedName("idPsicologo")
    private final long idPsicologo;
    private final long idTipoTerapia;

    @SerializedName("motivo")
    private final String motivo;

    @SerializedName("startDatetime")
    private final LocalDateTime startDatetime;

    public static /* synthetic */ CrearCitaRequestDTO copy$default(CrearCitaRequestDTO crearCitaRequestDTO, long j, long j2, LocalDateTime localDateTime, int i, String str, EstadoCita estadoCita, long j3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = crearCitaRequestDTO.idPaciente;
        }
        long j4 = j;
        if ((i2 & 2) != 0) {
            j2 = crearCitaRequestDTO.idPsicologo;
        }
        return crearCitaRequestDTO.copy(j4, j2, (i2 & 4) != 0 ? crearCitaRequestDTO.startDatetime : localDateTime, (i2 & 8) != 0 ? crearCitaRequestDTO.durationMinutes : i, (i2 & 16) != 0 ? crearCitaRequestDTO.motivo : str, (i2 & 32) != 0 ? crearCitaRequestDTO.estado : estadoCita, (i2 & 64) != 0 ? crearCitaRequestDTO.idTipoTerapia : j3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LocalDateTime getStartDatetime() {
        return this.startDatetime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getDurationMinutes() {
        return this.durationMinutes;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final EstadoCita getEstado() {
        return this.estado;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }

    public final CrearCitaRequestDTO copy(long idPaciente, long idPsicologo, LocalDateTime startDatetime, int durationMinutes, String motivo, EstadoCita estado, long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(startDatetime, "startDatetime");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        Intrinsics.checkNotNullParameter(estado, "estado");
        return new CrearCitaRequestDTO(idPaciente, idPsicologo, startDatetime, durationMinutes, motivo, estado, idTipoTerapia);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CrearCitaRequestDTO)) {
            return false;
        }
        CrearCitaRequestDTO crearCitaRequestDTO = (CrearCitaRequestDTO) other;
        return this.idPaciente == crearCitaRequestDTO.idPaciente && this.idPsicologo == crearCitaRequestDTO.idPsicologo && Intrinsics.areEqual(this.startDatetime, crearCitaRequestDTO.startDatetime) && this.durationMinutes == crearCitaRequestDTO.durationMinutes && Intrinsics.areEqual(this.motivo, crearCitaRequestDTO.motivo) && this.estado == crearCitaRequestDTO.estado && this.idTipoTerapia == crearCitaRequestDTO.idTipoTerapia;
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.idPaciente) * 31) + Long.hashCode(this.idPsicologo)) * 31) + this.startDatetime.hashCode()) * 31) + Integer.hashCode(this.durationMinutes)) * 31) + this.motivo.hashCode()) * 31) + this.estado.hashCode()) * 31) + Long.hashCode(this.idTipoTerapia);
    }

    public String toString() {
        return "CrearCitaRequestDTO(idPaciente=" + this.idPaciente + ", idPsicologo=" + this.idPsicologo + ", startDatetime=" + this.startDatetime + ", durationMinutes=" + this.durationMinutes + ", motivo=" + this.motivo + ", estado=" + this.estado + ", idTipoTerapia=" + this.idTipoTerapia + ")";
    }

    public CrearCitaRequestDTO(long idPaciente, long idPsicologo, LocalDateTime startDatetime, int durationMinutes, String motivo, EstadoCita estado, long idTipoTerapia) {
        Intrinsics.checkNotNullParameter(startDatetime, "startDatetime");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        Intrinsics.checkNotNullParameter(estado, "estado");
        this.idPaciente = idPaciente;
        this.idPsicologo = idPsicologo;
        this.startDatetime = startDatetime;
        this.durationMinutes = durationMinutes;
        this.motivo = motivo;
        this.estado = estado;
        this.idTipoTerapia = idTipoTerapia;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CrearCitaRequestDTO(long j, long j2, LocalDateTime localDateTime, int i, String str, EstadoCita estadoCita, long j3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        EstadoCita estadoCita2;
        if ((i2 & 32) == 0) {
            estadoCita2 = estadoCita;
        } else {
            estadoCita2 = EstadoCita.pendiente;
        }
        this(j, j2, localDateTime, i, str, estadoCita2, j3);
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final LocalDateTime getStartDatetime() {
        return this.startDatetime;
    }

    public final int getDurationMinutes() {
        return this.durationMinutes;
    }

    public final String getMotivo() {
        return this.motivo;
    }

    public final EstadoCita getEstado() {
        return this.estado;
    }

    public final long getIdTipoTerapia() {
        return this.idTipoTerapia;
    }
}
