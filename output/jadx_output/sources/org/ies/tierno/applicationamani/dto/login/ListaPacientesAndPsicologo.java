package org.ies.tierno.applicationamani.dto.login;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PsicologoConPacientesDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003Ja\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "", "idPsicologo", "", "nombrePsicologo", "", "apellidoPsicologo", "emailPsicologo", "especialidad", "licencia", "fechaDadoAlta", "pacientes", "", "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getIdPsicologo", "()J", "getNombrePsicologo", "()Ljava/lang/String;", "getApellidoPsicologo", "getEmailPsicologo", "getEspecialidad", "getLicencia", "getFechaDadoAlta", "getPacientes", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class ListaPacientesAndPsicologo {
    public static final int $stable = 8;
    private final String apellidoPsicologo;
    private final String emailPsicologo;
    private final String especialidad;
    private final String fechaDadoAlta;
    private final long idPsicologo;
    private final String licencia;
    private final String nombrePsicologo;
    private final List<PacientesAsignadoDTO> pacientes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListaPacientesAndPsicologo copy$default(ListaPacientesAndPsicologo listaPacientesAndPsicologo, long j, String str, String str2, String str3, String str4, String str5, String str6, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            j = listaPacientesAndPsicologo.idPsicologo;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = listaPacientesAndPsicologo.nombrePsicologo;
        }
        String str7 = str;
        if ((i & 4) != 0) {
            str2 = listaPacientesAndPsicologo.apellidoPsicologo;
        }
        String str8 = str2;
        if ((i & 8) != 0) {
            str3 = listaPacientesAndPsicologo.emailPsicologo;
        }
        return listaPacientesAndPsicologo.copy(j2, str7, str8, str3, (i & 16) != 0 ? listaPacientesAndPsicologo.especialidad : str4, (i & 32) != 0 ? listaPacientesAndPsicologo.licencia : str5, (i & 64) != 0 ? listaPacientesAndPsicologo.fechaDadoAlta : str6, (i & 128) != 0 ? listaPacientesAndPsicologo.pacientes : list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPsicologo() {
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
    public final String getFechaDadoAlta() {
        return this.fechaDadoAlta;
    }

    public final List<PacientesAsignadoDTO> component8() {
        return this.pacientes;
    }

    public final ListaPacientesAndPsicologo copy(long idPsicologo, String nombrePsicologo, String apellidoPsicologo, String emailPsicologo, String especialidad, String licencia, String fechaDadoAlta, List<PacientesAsignadoDTO> pacientes) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(emailPsicologo, "emailPsicologo");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        Intrinsics.checkNotNullParameter(fechaDadoAlta, "fechaDadoAlta");
        Intrinsics.checkNotNullParameter(pacientes, "pacientes");
        return new ListaPacientesAndPsicologo(idPsicologo, nombrePsicologo, apellidoPsicologo, emailPsicologo, especialidad, licencia, fechaDadoAlta, pacientes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ListaPacientesAndPsicologo)) {
            return false;
        }
        ListaPacientesAndPsicologo listaPacientesAndPsicologo = (ListaPacientesAndPsicologo) other;
        return this.idPsicologo == listaPacientesAndPsicologo.idPsicologo && Intrinsics.areEqual(this.nombrePsicologo, listaPacientesAndPsicologo.nombrePsicologo) && Intrinsics.areEqual(this.apellidoPsicologo, listaPacientesAndPsicologo.apellidoPsicologo) && Intrinsics.areEqual(this.emailPsicologo, listaPacientesAndPsicologo.emailPsicologo) && Intrinsics.areEqual(this.especialidad, listaPacientesAndPsicologo.especialidad) && Intrinsics.areEqual(this.licencia, listaPacientesAndPsicologo.licencia) && Intrinsics.areEqual(this.fechaDadoAlta, listaPacientesAndPsicologo.fechaDadoAlta) && Intrinsics.areEqual(this.pacientes, listaPacientesAndPsicologo.pacientes);
    }

    public int hashCode() {
        return (((((((((((((Long.hashCode(this.idPsicologo) * 31) + this.nombrePsicologo.hashCode()) * 31) + this.apellidoPsicologo.hashCode()) * 31) + this.emailPsicologo.hashCode()) * 31) + this.especialidad.hashCode()) * 31) + (this.licencia == null ? 0 : this.licencia.hashCode())) * 31) + this.fechaDadoAlta.hashCode()) * 31) + this.pacientes.hashCode();
    }

    public String toString() {
        return "ListaPacientesAndPsicologo(idPsicologo=" + this.idPsicologo + ", nombrePsicologo=" + this.nombrePsicologo + ", apellidoPsicologo=" + this.apellidoPsicologo + ", emailPsicologo=" + this.emailPsicologo + ", especialidad=" + this.especialidad + ", licencia=" + this.licencia + ", fechaDadoAlta=" + this.fechaDadoAlta + ", pacientes=" + this.pacientes + ")";
    }

    public ListaPacientesAndPsicologo(long idPsicologo, String nombrePsicologo, String apellidoPsicologo, String emailPsicologo, String especialidad, String licencia, String fechaDadoAlta, List<PacientesAsignadoDTO> pacientes) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(emailPsicologo, "emailPsicologo");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        Intrinsics.checkNotNullParameter(fechaDadoAlta, "fechaDadoAlta");
        Intrinsics.checkNotNullParameter(pacientes, "pacientes");
        this.idPsicologo = idPsicologo;
        this.nombrePsicologo = nombrePsicologo;
        this.apellidoPsicologo = apellidoPsicologo;
        this.emailPsicologo = emailPsicologo;
        this.especialidad = especialidad;
        this.licencia = licencia;
        this.fechaDadoAlta = fechaDadoAlta;
        this.pacientes = pacientes;
    }

    public final long getIdPsicologo() {
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

    public final String getFechaDadoAlta() {
        return this.fechaDadoAlta;
    }

    public final List<PacientesAsignadoDTO> getPacientes() {
        return this.pacientes;
    }
}
