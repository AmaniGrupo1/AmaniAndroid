package org.ies.tierno.applicationamani.dto.psicologo;

import androidx.autofill.HintConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PsicologoRequestDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J|\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\tHÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006."}, d2 = {"Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;", "", "nombrePsicologo", "", "apellidoPsicologo", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "especialidad", "experiencia", "", "descripcion", "licencia", "fechaNacimiento", "telefono", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNombrePsicologo", "()Ljava/lang/String;", "getApellidoPsicologo", "getEmail", "getPassword", "getEspecialidad", "getExperiencia", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescripcion", "getLicencia", "getFechaNacimiento", "getTelefono", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PsicologoRequestDTO {
    public static final int $stable = 0;
    private final String apellidoPsicologo;
    private final String descripcion;
    private final String email;
    private final String especialidad;
    private final Integer experiencia;
    private final String fechaNacimiento;
    private final String licencia;
    private final String nombrePsicologo;
    private final String password;
    private final String telefono;

    public static /* synthetic */ PsicologoRequestDTO copy$default(PsicologoRequestDTO psicologoRequestDTO, String str, String str2, String str3, String str4, String str5, Integer num, String str6, String str7, String str8, String str9, int i, Object obj) {
        if ((i & 1) != 0) {
            str = psicologoRequestDTO.nombrePsicologo;
        }
        if ((i & 2) != 0) {
            str2 = psicologoRequestDTO.apellidoPsicologo;
        }
        if ((i & 4) != 0) {
            str3 = psicologoRequestDTO.email;
        }
        if ((i & 8) != 0) {
            str4 = psicologoRequestDTO.password;
        }
        if ((i & 16) != 0) {
            str5 = psicologoRequestDTO.especialidad;
        }
        if ((i & 32) != 0) {
            num = psicologoRequestDTO.experiencia;
        }
        if ((i & 64) != 0) {
            str6 = psicologoRequestDTO.descripcion;
        }
        if ((i & 128) != 0) {
            str7 = psicologoRequestDTO.licencia;
        }
        if ((i & 256) != 0) {
            str8 = psicologoRequestDTO.fechaNacimiento;
        }
        if ((i & 512) != 0) {
            str9 = psicologoRequestDTO.telefono;
        }
        String str10 = str8;
        String str11 = str9;
        String str12 = str6;
        String str13 = str7;
        String str14 = str5;
        Integer num2 = num;
        return psicologoRequestDTO.copy(str, str2, str3, str4, str14, num2, str12, str13, str10, str11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApellidoPsicologo() {
        return this.apellidoPsicologo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getEspecialidad() {
        return this.especialidad;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getExperiencia() {
        return this.experiencia;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDescripcion() {
        return this.descripcion;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getLicencia() {
        return this.licencia;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final PsicologoRequestDTO copy(String nombrePsicologo, String apellidoPsicologo, String email, String password, String especialidad, Integer experiencia, String descripcion, String licencia, String fechaNacimiento, String telefono) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        return new PsicologoRequestDTO(nombrePsicologo, apellidoPsicologo, email, password, especialidad, experiencia, descripcion, licencia, fechaNacimiento, telefono);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsicologoRequestDTO)) {
            return false;
        }
        PsicologoRequestDTO psicologoRequestDTO = (PsicologoRequestDTO) other;
        return Intrinsics.areEqual(this.nombrePsicologo, psicologoRequestDTO.nombrePsicologo) && Intrinsics.areEqual(this.apellidoPsicologo, psicologoRequestDTO.apellidoPsicologo) && Intrinsics.areEqual(this.email, psicologoRequestDTO.email) && Intrinsics.areEqual(this.password, psicologoRequestDTO.password) && Intrinsics.areEqual(this.especialidad, psicologoRequestDTO.especialidad) && Intrinsics.areEqual(this.experiencia, psicologoRequestDTO.experiencia) && Intrinsics.areEqual(this.descripcion, psicologoRequestDTO.descripcion) && Intrinsics.areEqual(this.licencia, psicologoRequestDTO.licencia) && Intrinsics.areEqual(this.fechaNacimiento, psicologoRequestDTO.fechaNacimiento) && Intrinsics.areEqual(this.telefono, psicologoRequestDTO.telefono);
    }

    public int hashCode() {
        return (((((((((((((((((this.nombrePsicologo.hashCode() * 31) + this.apellidoPsicologo.hashCode()) * 31) + this.email.hashCode()) * 31) + this.password.hashCode()) * 31) + this.especialidad.hashCode()) * 31) + (this.experiencia == null ? 0 : this.experiencia.hashCode())) * 31) + (this.descripcion == null ? 0 : this.descripcion.hashCode())) * 31) + (this.licencia == null ? 0 : this.licencia.hashCode())) * 31) + (this.fechaNacimiento == null ? 0 : this.fechaNacimiento.hashCode())) * 31) + (this.telefono != null ? this.telefono.hashCode() : 0);
    }

    public String toString() {
        return "PsicologoRequestDTO(nombrePsicologo=" + this.nombrePsicologo + ", apellidoPsicologo=" + this.apellidoPsicologo + ", email=" + this.email + ", password=" + this.password + ", especialidad=" + this.especialidad + ", experiencia=" + this.experiencia + ", descripcion=" + this.descripcion + ", licencia=" + this.licencia + ", fechaNacimiento=" + this.fechaNacimiento + ", telefono=" + this.telefono + ")";
    }

    public PsicologoRequestDTO(String nombrePsicologo, String apellidoPsicologo, String email, String password, String especialidad, Integer experiencia, String descripcion, String licencia, String fechaNacimiento, String telefono) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        this.nombrePsicologo = nombrePsicologo;
        this.apellidoPsicologo = apellidoPsicologo;
        this.email = email;
        this.password = password;
        this.especialidad = especialidad;
        this.experiencia = experiencia;
        this.descripcion = descripcion;
        this.licencia = licencia;
        this.fechaNacimiento = fechaNacimiento;
        this.telefono = telefono;
    }

    public /* synthetic */ PsicologoRequestDTO(String str, String str2, String str3, String str4, String str5, Integer num, String str6, String str7, String str8, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i & 32) != 0 ? null : num, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : str9);
    }

    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
    }

    public final String getApellidoPsicologo() {
        return this.apellidoPsicologo;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getPassword() {
        return this.password;
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

    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final String getTelefono() {
        return this.telefono;
    }
}
