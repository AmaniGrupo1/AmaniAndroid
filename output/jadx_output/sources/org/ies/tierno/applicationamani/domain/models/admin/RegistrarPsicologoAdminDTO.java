package org.ies.tierno.applicationamani.domain.models.admin;

import androidx.autofill.HintConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: RegistrarPsicologoAdminDTO.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003Jf\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\tHÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006("}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/admin/RegistrarPsicologoAdminDTO;", "", "nombrePsicologo", "", "apellidoPsicologo", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "especialidad", "experiencia", "", "descripcion", "licencia", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getNombrePsicologo", "()Ljava/lang/String;", "getApellidoPsicologo", "getEmail", "getPassword", "getEspecialidad", "getExperiencia", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescripcion", "getLicencia", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/admin/RegistrarPsicologoAdminDTO;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
@Serializable
public final /* data */ class RegistrarPsicologoAdminDTO {
    public static final int $stable = 0;
    private final String apellidoPsicologo;
    private final String descripcion;
    private final String email;
    private final String especialidad;
    private final Integer experiencia;
    private final String licencia;
    private final String nombrePsicologo;
    private final String password;

    public static /* synthetic */ RegistrarPsicologoAdminDTO copy$default(RegistrarPsicologoAdminDTO registrarPsicologoAdminDTO, String str, String str2, String str3, String str4, String str5, Integer num, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = registrarPsicologoAdminDTO.nombrePsicologo;
        }
        if ((i & 2) != 0) {
            str2 = registrarPsicologoAdminDTO.apellidoPsicologo;
        }
        if ((i & 4) != 0) {
            str3 = registrarPsicologoAdminDTO.email;
        }
        if ((i & 8) != 0) {
            str4 = registrarPsicologoAdminDTO.password;
        }
        if ((i & 16) != 0) {
            str5 = registrarPsicologoAdminDTO.especialidad;
        }
        if ((i & 32) != 0) {
            num = registrarPsicologoAdminDTO.experiencia;
        }
        if ((i & 64) != 0) {
            str6 = registrarPsicologoAdminDTO.descripcion;
        }
        if ((i & 128) != 0) {
            str7 = registrarPsicologoAdminDTO.licencia;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str5;
        Integer num2 = num;
        return registrarPsicologoAdminDTO.copy(str, str2, str3, str4, str10, num2, str8, str9);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombrePsicologo() {
        return this.nombrePsicologo;
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

    public final RegistrarPsicologoAdminDTO copy(String nombrePsicologo, String apellidoPsicologo, String email, String password, String especialidad, Integer experiencia, String descripcion, String licencia) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        return new RegistrarPsicologoAdminDTO(nombrePsicologo, apellidoPsicologo, email, password, especialidad, experiencia, descripcion, licencia);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RegistrarPsicologoAdminDTO)) {
            return false;
        }
        RegistrarPsicologoAdminDTO registrarPsicologoAdminDTO = (RegistrarPsicologoAdminDTO) other;
        return Intrinsics.areEqual(this.nombrePsicologo, registrarPsicologoAdminDTO.nombrePsicologo) && Intrinsics.areEqual(this.apellidoPsicologo, registrarPsicologoAdminDTO.apellidoPsicologo) && Intrinsics.areEqual(this.email, registrarPsicologoAdminDTO.email) && Intrinsics.areEqual(this.password, registrarPsicologoAdminDTO.password) && Intrinsics.areEqual(this.especialidad, registrarPsicologoAdminDTO.especialidad) && Intrinsics.areEqual(this.experiencia, registrarPsicologoAdminDTO.experiencia) && Intrinsics.areEqual(this.descripcion, registrarPsicologoAdminDTO.descripcion) && Intrinsics.areEqual(this.licencia, registrarPsicologoAdminDTO.licencia);
    }

    public int hashCode() {
        return (((((((((((((this.nombrePsicologo.hashCode() * 31) + this.apellidoPsicologo.hashCode()) * 31) + this.email.hashCode()) * 31) + (this.password == null ? 0 : this.password.hashCode())) * 31) + this.especialidad.hashCode()) * 31) + (this.experiencia == null ? 0 : this.experiencia.hashCode())) * 31) + (this.descripcion == null ? 0 : this.descripcion.hashCode())) * 31) + (this.licencia != null ? this.licencia.hashCode() : 0);
    }

    public String toString() {
        return "RegistrarPsicologoAdminDTO(nombrePsicologo=" + this.nombrePsicologo + ", apellidoPsicologo=" + this.apellidoPsicologo + ", email=" + this.email + ", password=" + this.password + ", especialidad=" + this.especialidad + ", experiencia=" + this.experiencia + ", descripcion=" + this.descripcion + ", licencia=" + this.licencia + ")";
    }

    public RegistrarPsicologoAdminDTO(String nombrePsicologo, String apellidoPsicologo, String email, String password, String especialidad, Integer experiencia, String descripcion, String licencia) {
        Intrinsics.checkNotNullParameter(nombrePsicologo, "nombrePsicologo");
        Intrinsics.checkNotNullParameter(apellidoPsicologo, "apellidoPsicologo");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(especialidad, "especialidad");
        this.nombrePsicologo = nombrePsicologo;
        this.apellidoPsicologo = apellidoPsicologo;
        this.email = email;
        this.password = password;
        this.especialidad = especialidad;
        this.experiencia = experiencia;
        this.descripcion = descripcion;
        this.licencia = licencia;
    }

    public /* synthetic */ RegistrarPsicologoAdminDTO(String str, String str2, String str3, String str4, String str5, Integer num, String str6, String str7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4, str5, (i & 32) != 0 ? null : num, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7);
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
}
