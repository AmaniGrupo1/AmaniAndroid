package org.ies.tierno.applicationamani.dto.psicologo;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PsicologoSelfResponseDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003JZ\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\tHÖ\u0001J\t\u0010&\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011¨\u0006'"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "", "idPsicologo", "", "nombre", "", "apellido", "especialidad", "experiencia", "", "descripcion", "licencia", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getIdPsicologo", "()J", "getNombre", "()Ljava/lang/String;", "getApellido", "getEspecialidad", "getExperiencia", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescripcion", "getLicencia", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PsicologoSelfResponseDTO {
    public static final int $stable = 0;
    private final String apellido;
    private final String descripcion;
    private final String especialidad;
    private final Integer experiencia;
    private final long idPsicologo;
    private final String licencia;
    private final String nombre;

    public static /* synthetic */ PsicologoSelfResponseDTO copy$default(PsicologoSelfResponseDTO psicologoSelfResponseDTO, long j, String str, String str2, String str3, Integer num, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            j = psicologoSelfResponseDTO.idPsicologo;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = psicologoSelfResponseDTO.nombre;
        }
        String str6 = str;
        if ((i & 4) != 0) {
            str2 = psicologoSelfResponseDTO.apellido;
        }
        String str7 = str2;
        if ((i & 8) != 0) {
            str3 = psicologoSelfResponseDTO.especialidad;
        }
        String str8 = str3;
        if ((i & 16) != 0) {
            num = psicologoSelfResponseDTO.experiencia;
        }
        return psicologoSelfResponseDTO.copy(j2, str6, str7, str8, num, (i & 32) != 0 ? psicologoSelfResponseDTO.descripcion : str4, (i & 64) != 0 ? psicologoSelfResponseDTO.licencia : str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getApellido() {
        return this.apellido;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEspecialidad() {
        return this.especialidad;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getExperiencia() {
        return this.experiencia;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDescripcion() {
        return this.descripcion;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLicencia() {
        return this.licencia;
    }

    public final PsicologoSelfResponseDTO copy(long idPsicologo, String nombre, String apellido, String especialidad, Integer experiencia, String descripcion, String licencia) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        return new PsicologoSelfResponseDTO(idPsicologo, nombre, apellido, especialidad, experiencia, descripcion, licencia);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsicologoSelfResponseDTO)) {
            return false;
        }
        PsicologoSelfResponseDTO psicologoSelfResponseDTO = (PsicologoSelfResponseDTO) other;
        return this.idPsicologo == psicologoSelfResponseDTO.idPsicologo && Intrinsics.areEqual(this.nombre, psicologoSelfResponseDTO.nombre) && Intrinsics.areEqual(this.apellido, psicologoSelfResponseDTO.apellido) && Intrinsics.areEqual(this.especialidad, psicologoSelfResponseDTO.especialidad) && Intrinsics.areEqual(this.experiencia, psicologoSelfResponseDTO.experiencia) && Intrinsics.areEqual(this.descripcion, psicologoSelfResponseDTO.descripcion) && Intrinsics.areEqual(this.licencia, psicologoSelfResponseDTO.licencia);
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.idPsicologo) * 31) + this.nombre.hashCode()) * 31) + this.apellido.hashCode()) * 31) + this.especialidad.hashCode()) * 31) + (this.experiencia == null ? 0 : this.experiencia.hashCode())) * 31) + (this.descripcion == null ? 0 : this.descripcion.hashCode())) * 31) + (this.licencia != null ? this.licencia.hashCode() : 0);
    }

    public String toString() {
        return "PsicologoSelfResponseDTO(idPsicologo=" + this.idPsicologo + ", nombre=" + this.nombre + ", apellido=" + this.apellido + ", especialidad=" + this.especialidad + ", experiencia=" + this.experiencia + ", descripcion=" + this.descripcion + ", licencia=" + this.licencia + ")";
    }

    public PsicologoSelfResponseDTO(long idPsicologo, String nombre, String apellido, String especialidad, Integer experiencia, String descripcion, String licencia) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        this.idPsicologo = idPsicologo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.especialidad = especialidad;
        this.experiencia = experiencia;
        this.descripcion = descripcion;
        this.licencia = licencia;
    }

    public final long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getApellido() {
        return this.apellido;
    }

    public final String getEspecialidad() {
        return this.especialidad;
    }

    public final Integer getExperiencia() {
        return this.experiencia;
    }

    public final String getDescripcion() {
        return this.descripcion;
    }

    public final String getLicencia() {
        return this.licencia;
    }
}
