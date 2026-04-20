package org.ies.tierno.applicationamani.dto.citas;

import j$.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CitaAdminResponseDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0014J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0014J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0014J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u0014J\u0012\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b \u0010\u001bJ\u0012\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b!\u0010\u001bJ\u0094\u0001\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\"\u0010#J\u0010\u0010$\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b$\u0010\u0014J\u0010\u0010%\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b%\u0010&J\u001a\u0010)\u001a\u00020(2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b)\u0010*R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010+\u001a\u0004\b,\u0010\u0014R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010+\u001a\u0004\b-\u0010\u0014R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010.\u001a\u0004\b/\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010+\u001a\u0004\b0\u0010\u0014R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010+\u001a\u0004\b1\u0010\u0014R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u00102\u001a\u0004\b3\u0010\u001bR\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b\f\u00104\u001a\u0004\b5\u0010\u001dR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010+\u001a\u0004\b6\u0010\u0014R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010+\u001a\u0004\b7\u0010\u0014R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000f\u00102\u001a\u0004\b8\u0010\u001bR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0010\u00102\u001a\u0004\b9\u0010\u001b¨\u0006:"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;", "", "", "nombrePaciente", "apellidoPaciente", "", "idPsicologo", "nombrePsicologo", "apellidoPsicologo", "j$/time/LocalDateTime", "startDatetime", "", "durationMinutes", "estadoCita", "motivo", "createdAt", "updatedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/lang/Long;", "component4", "component5", "component6", "()Lj$/time/LocalDateTime;", "component7", "()Ljava/lang/Integer;", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;", "toString", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getNombrePaciente", "getApellidoPaciente", "Ljava/lang/Long;", "getIdPsicologo", "getNombrePsicologo", "getApellidoPsicologo", "Lj$/time/LocalDateTime;", "getStartDatetime", "Ljava/lang/Integer;", "getDurationMinutes", "getEstadoCita", "getMotivo", "getCreatedAt", "getUpdatedAt", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CitaAdminResponseDTO {
    public static final int $stable = 8;
    private final String apellidoPaciente;
    private final String apellidoPsicologo;
    private final LocalDateTime createdAt;
    private final Integer durationMinutes;
    private final String estadoCita;
    private final Long idPsicologo;
    private final String motivo;
    private final String nombrePaciente;
    private final String nombrePsicologo;
    private final LocalDateTime startDatetime;
    private final LocalDateTime updatedAt;

    public CitaAdminResponseDTO() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public static /* synthetic */ CitaAdminResponseDTO copy$default(CitaAdminResponseDTO citaAdminResponseDTO, String str, String str2, Long l, String str3, String str4, LocalDateTime localDateTime, Integer num, String str5, String str6, LocalDateTime localDateTime2, LocalDateTime localDateTime3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = citaAdminResponseDTO.nombrePaciente;
        }
        if ((i & 2) != 0) {
            str2 = citaAdminResponseDTO.apellidoPaciente;
        }
        if ((i & 4) != 0) {
            l = citaAdminResponseDTO.idPsicologo;
        }
        if ((i & 8) != 0) {
            str3 = citaAdminResponseDTO.nombrePsicologo;
        }
        if ((i & 16) != 0) {
            str4 = citaAdminResponseDTO.apellidoPsicologo;
        }
        if ((i & 32) != 0) {
            localDateTime = citaAdminResponseDTO.startDatetime;
        }
        if ((i & 64) != 0) {
            num = citaAdminResponseDTO.durationMinutes;
        }
        if ((i & 128) != 0) {
            str5 = citaAdminResponseDTO.estadoCita;
        }
        if ((i & 256) != 0) {
            str6 = citaAdminResponseDTO.motivo;
        }
        if ((i & 512) != 0) {
            localDateTime2 = citaAdminResponseDTO.createdAt;
        }
        if ((i & 1024) != 0) {
            localDateTime3 = citaAdminResponseDTO.updatedAt;
        }
        LocalDateTime localDateTime4 = localDateTime2;
        LocalDateTime localDateTime5 = localDateTime3;
        String str7 = str5;
        String str8 = str6;
        LocalDateTime localDateTime6 = localDateTime;
        Integer num2 = num;
        String str9 = str4;
        Long l2 = l;
        return citaAdminResponseDTO.copy(str, str2, l2, str3, str9, localDateTime6, num2, str7, str8, localDateTime4, localDateTime5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombrePaciente() {
        return this.nombrePaciente;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final LocalDateTime getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final LocalDateTime getUpdatedAt() {
        return this.updatedAt;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApellidoPaciente() {
        return this.apellidoPaciente;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getApellidoPsicologo() {
        return this.apellidoPsicologo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final LocalDateTime getStartDatetime() {
        return this.startDatetime;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getEstadoCita() {
        return this.estadoCita;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMotivo() {
        return this.motivo;
    }

    public final CitaAdminResponseDTO copy(String nombrePaciente, String apellidoPaciente, Long idPsicologo, String nombrePsicologo, String apellidoPsicologo, LocalDateTime startDatetime, Integer durationMinutes, String estadoCita, String motivo, LocalDateTime createdAt, LocalDateTime updatedAt) {
        return new CitaAdminResponseDTO(nombrePaciente, apellidoPaciente, idPsicologo, nombrePsicologo, apellidoPsicologo, startDatetime, durationMinutes, estadoCita, motivo, createdAt, updatedAt);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CitaAdminResponseDTO)) {
            return false;
        }
        CitaAdminResponseDTO citaAdminResponseDTO = (CitaAdminResponseDTO) other;
        return Intrinsics.areEqual(this.nombrePaciente, citaAdminResponseDTO.nombrePaciente) && Intrinsics.areEqual(this.apellidoPaciente, citaAdminResponseDTO.apellidoPaciente) && Intrinsics.areEqual(this.idPsicologo, citaAdminResponseDTO.idPsicologo) && Intrinsics.areEqual(this.nombrePsicologo, citaAdminResponseDTO.nombrePsicologo) && Intrinsics.areEqual(this.apellidoPsicologo, citaAdminResponseDTO.apellidoPsicologo) && Intrinsics.areEqual(this.startDatetime, citaAdminResponseDTO.startDatetime) && Intrinsics.areEqual(this.durationMinutes, citaAdminResponseDTO.durationMinutes) && Intrinsics.areEqual(this.estadoCita, citaAdminResponseDTO.estadoCita) && Intrinsics.areEqual(this.motivo, citaAdminResponseDTO.motivo) && Intrinsics.areEqual(this.createdAt, citaAdminResponseDTO.createdAt) && Intrinsics.areEqual(this.updatedAt, citaAdminResponseDTO.updatedAt);
    }

    public int hashCode() {
        return ((((((((((((((((((((this.nombrePaciente == null ? 0 : this.nombrePaciente.hashCode()) * 31) + (this.apellidoPaciente == null ? 0 : this.apellidoPaciente.hashCode())) * 31) + (this.idPsicologo == null ? 0 : this.idPsicologo.hashCode())) * 31) + (this.nombrePsicologo == null ? 0 : this.nombrePsicologo.hashCode())) * 31) + (this.apellidoPsicologo == null ? 0 : this.apellidoPsicologo.hashCode())) * 31) + (this.startDatetime == null ? 0 : this.startDatetime.hashCode())) * 31) + (this.durationMinutes == null ? 0 : this.durationMinutes.hashCode())) * 31) + (this.estadoCita == null ? 0 : this.estadoCita.hashCode())) * 31) + (this.motivo == null ? 0 : this.motivo.hashCode())) * 31) + (this.createdAt == null ? 0 : this.createdAt.hashCode())) * 31) + (this.updatedAt != null ? this.updatedAt.hashCode() : 0);
    }

    public String toString() {
        return "CitaAdminResponseDTO(nombrePaciente=" + this.nombrePaciente + ", apellidoPaciente=" + this.apellidoPaciente + ", idPsicologo=" + this.idPsicologo + ", nombrePsicologo=" + this.nombrePsicologo + ", apellidoPsicologo=" + this.apellidoPsicologo + ", startDatetime=" + this.startDatetime + ", durationMinutes=" + this.durationMinutes + ", estadoCita=" + this.estadoCita + ", motivo=" + this.motivo + ", createdAt=" + this.createdAt + ", updatedAt=" + this.updatedAt + ")";
    }

    public CitaAdminResponseDTO(String nombrePaciente, String apellidoPaciente, Long idPsicologo, String nombrePsicologo, String apellidoPsicologo, LocalDateTime startDatetime, Integer durationMinutes, String estadoCita, String motivo, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.nombrePaciente = nombrePaciente;
        this.apellidoPaciente = apellidoPaciente;
        this.idPsicologo = idPsicologo;
        this.nombrePsicologo = nombrePsicologo;
        this.apellidoPsicologo = apellidoPsicologo;
        this.startDatetime = startDatetime;
        this.durationMinutes = durationMinutes;
        this.estadoCita = estadoCita;
        this.motivo = motivo;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public /* synthetic */ CitaAdminResponseDTO(String str, String str2, Long l, String str3, String str4, LocalDateTime localDateTime, Integer num, String str5, String str6, LocalDateTime localDateTime2, LocalDateTime localDateTime3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : localDateTime, (i & 64) != 0 ? null : num, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : localDateTime2, (i & 1024) != 0 ? null : localDateTime3);
    }

    public final String getNombrePaciente() {
        return this.nombrePaciente;
    }

    public final String getApellidoPaciente() {
        return this.apellidoPaciente;
    }

    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    public final String getApellidoPsicologo() {
        return this.apellidoPsicologo;
    }

    public final LocalDateTime getStartDatetime() {
        return this.startDatetime;
    }

    public final Integer getDurationMinutes() {
        return this.durationMinutes;
    }

    public final String getEstadoCita() {
        return this.estadoCita;
    }

    public final String getMotivo() {
        return this.motivo;
    }

    public final LocalDateTime getCreatedAt() {
        return this.createdAt;
    }

    public final LocalDateTime getUpdatedAt() {
        return this.updatedAt;
    }
}
