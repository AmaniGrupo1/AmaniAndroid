package org.ies.tierno.applicationamani.domain.models.admin;

import com.google.gson.annotations.SerializedName;
import j$.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO;

/* JADX INFO: compiled from: ListaPacientesAndPsicologo.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0014J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0014J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0014J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJv\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0014J\u0010\u0010!\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b%\u0010&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010'\u001a\u0004\b(\u0010\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010)\u001a\u0004\b*\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010)\u001a\u0004\b+\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010)\u001a\u0004\b,\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010)\u001a\u0004\b-\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010)\u001a\u0004\b.\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010/\u001a\u0004\b0\u0010\u001aR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u00101\u001a\u0004\b2\u0010\u001c¨\u00063"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;", "", "", "idPsicologo", "", "nombrePsicologo", "apellidoPsicologo", "emailPsicologo", "especialidad", "licencia", "j$/time/LocalDateTime", "fechaDadoAlta", "", "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;", "pacientes", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)V", "component1", "()Ljava/lang/Long;", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "component6", "component7", "()Lj$/time/LocalDateTime;", "component8", "()Ljava/util/List;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Long;", "getIdPsicologo", "Ljava/lang/String;", "getNombrePsicologo", "getApellidoPsicologo", "getEmailPsicologo", "getEspecialidad", "getLicencia", "Lj$/time/LocalDateTime;", "getFechaDadoAlta", "Ljava/util/List;", "getPacientes", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PsicologoConPacientesDTO {
    public static final int $stable = 8;

    @SerializedName("apellidoPsicologo")
    private final String apellidoPsicologo;

    @SerializedName("emailPsicologo")
    private final String emailPsicologo;

    @SerializedName("especialidad")
    private final String especialidad;

    @SerializedName("fechaDadoAlta")
    private final LocalDateTime fechaDadoAlta;

    @SerializedName("idPsicologo")
    private final Long idPsicologo;

    @SerializedName("licencia")
    private final String licencia;

    @SerializedName("nombrePsicologo")
    private final String nombrePsicologo;

    @SerializedName("pacientes")
    private final List<PacientesAsignadoDTO> pacientes;

    public PsicologoConPacientesDTO() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PsicologoConPacientesDTO copy$default(PsicologoConPacientesDTO psicologoConPacientesDTO, Long l, String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            l = psicologoConPacientesDTO.idPsicologo;
        }
        if ((i & 2) != 0) {
            str = psicologoConPacientesDTO.nombrePsicologo;
        }
        if ((i & 4) != 0) {
            str2 = psicologoConPacientesDTO.apellidoPsicologo;
        }
        if ((i & 8) != 0) {
            str3 = psicologoConPacientesDTO.emailPsicologo;
        }
        if ((i & 16) != 0) {
            str4 = psicologoConPacientesDTO.especialidad;
        }
        if ((i & 32) != 0) {
            str5 = psicologoConPacientesDTO.licencia;
        }
        if ((i & 64) != 0) {
            localDateTime = psicologoConPacientesDTO.fechaDadoAlta;
        }
        if ((i & 128) != 0) {
            list = psicologoConPacientesDTO.pacientes;
        }
        LocalDateTime localDateTime2 = localDateTime;
        List list2 = list;
        String str6 = str4;
        String str7 = str5;
        return psicologoConPacientesDTO.copy(l, str, str2, str3, str6, str7, localDateTime2, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getApellidoPsicologo() {
        return this.apellidoPsicologo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEmailPsicologo() {
        return this.emailPsicologo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getEspecialidad() {
        return this.especialidad;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLicencia() {
        return this.licencia;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final LocalDateTime getFechaDadoAlta() {
        return this.fechaDadoAlta;
    }

    public final List<PacientesAsignadoDTO> component8() {
        return this.pacientes;
    }

    public final PsicologoConPacientesDTO copy(Long idPsicologo, String nombrePsicologo, String apellidoPsicologo, String emailPsicologo, String especialidad, String licencia, LocalDateTime fechaDadoAlta, List<PacientesAsignadoDTO> pacientes) {
        return new PsicologoConPacientesDTO(idPsicologo, nombrePsicologo, apellidoPsicologo, emailPsicologo, especialidad, licencia, fechaDadoAlta, pacientes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsicologoConPacientesDTO)) {
            return false;
        }
        PsicologoConPacientesDTO psicologoConPacientesDTO = (PsicologoConPacientesDTO) other;
        return Intrinsics.areEqual(this.idPsicologo, psicologoConPacientesDTO.idPsicologo) && Intrinsics.areEqual(this.nombrePsicologo, psicologoConPacientesDTO.nombrePsicologo) && Intrinsics.areEqual(this.apellidoPsicologo, psicologoConPacientesDTO.apellidoPsicologo) && Intrinsics.areEqual(this.emailPsicologo, psicologoConPacientesDTO.emailPsicologo) && Intrinsics.areEqual(this.especialidad, psicologoConPacientesDTO.especialidad) && Intrinsics.areEqual(this.licencia, psicologoConPacientesDTO.licencia) && Intrinsics.areEqual(this.fechaDadoAlta, psicologoConPacientesDTO.fechaDadoAlta) && Intrinsics.areEqual(this.pacientes, psicologoConPacientesDTO.pacientes);
    }

    public int hashCode() {
        return ((((((((((((((this.idPsicologo == null ? 0 : this.idPsicologo.hashCode()) * 31) + (this.nombrePsicologo == null ? 0 : this.nombrePsicologo.hashCode())) * 31) + (this.apellidoPsicologo == null ? 0 : this.apellidoPsicologo.hashCode())) * 31) + (this.emailPsicologo == null ? 0 : this.emailPsicologo.hashCode())) * 31) + (this.especialidad == null ? 0 : this.especialidad.hashCode())) * 31) + (this.licencia == null ? 0 : this.licencia.hashCode())) * 31) + (this.fechaDadoAlta == null ? 0 : this.fechaDadoAlta.hashCode())) * 31) + (this.pacientes != null ? this.pacientes.hashCode() : 0);
    }

    public String toString() {
        return "PsicologoConPacientesDTO(idPsicologo=" + this.idPsicologo + ", nombrePsicologo=" + this.nombrePsicologo + ", apellidoPsicologo=" + this.apellidoPsicologo + ", emailPsicologo=" + this.emailPsicologo + ", especialidad=" + this.especialidad + ", licencia=" + this.licencia + ", fechaDadoAlta=" + this.fechaDadoAlta + ", pacientes=" + this.pacientes + ")";
    }

    public PsicologoConPacientesDTO(Long idPsicologo, String nombrePsicologo, String apellidoPsicologo, String emailPsicologo, String especialidad, String licencia, LocalDateTime fechaDadoAlta, List<PacientesAsignadoDTO> list) {
        this.idPsicologo = idPsicologo;
        this.nombrePsicologo = nombrePsicologo;
        this.apellidoPsicologo = apellidoPsicologo;
        this.emailPsicologo = emailPsicologo;
        this.especialidad = especialidad;
        this.licencia = licencia;
        this.fechaDadoAlta = fechaDadoAlta;
        this.pacientes = list;
    }

    public /* synthetic */ PsicologoConPacientesDTO(Long l, String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : localDateTime, (i & 128) != 0 ? null : list);
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

    public final String getEmailPsicologo() {
        return this.emailPsicologo;
    }

    public final String getEspecialidad() {
        return this.especialidad;
    }

    public final String getLicencia() {
        return this.licencia;
    }

    public final LocalDateTime getFechaDadoAlta() {
        return this.fechaDadoAlta;
    }

    public final List<PacientesAsignadoDTO> getPacientes() {
        return this.pacientes;
    }
}
