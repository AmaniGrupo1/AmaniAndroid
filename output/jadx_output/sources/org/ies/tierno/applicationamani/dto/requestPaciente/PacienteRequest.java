package org.ies.tierno.applicationamani.dto.requestPaciente;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO;

/* JADX INFO: compiled from: PacienteRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001By\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\t\u0010-\u001a\u00020\tHÆ\u0003J\t\u0010.\u001a\u00020\u000bHÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u00100\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\"J\u000f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00030\u000fHÆ\u0003J\u000f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00110\u000fHÆ\u0003J\u000f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00130\u000fHÆ\u0003J\u0094\u0001\u00104\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000f2\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000fHÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u00020\u000b2\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u000209HÖ\u0001J\t\u0010:\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0015\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0015\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010#\u001a\u0004\b$\u0010\"R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010&R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010&¨\u0006;"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;", "", "idUsuario", "", "fechaNacimiento", "", "genero", "telefono", "usuario", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;", "aceptaTerminos", "", "aceptaVideoconferencia", "aceptaComunicacion", "idSituaciones", "", "tutores", "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;", "direccion", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getIdUsuario", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getFechaNacimiento", "()Ljava/lang/String;", "getGenero", "getTelefono", "getUsuario", "()Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;", "getAceptaTerminos", "()Z", "getAceptaVideoconferencia", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getAceptaComunicacion", "getIdSituaciones", "()Ljava/util/List;", "getTutores", "getDireccion", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PacienteRequest {
    public static final int $stable = 8;
    private final Boolean aceptaComunicacion;
    private final boolean aceptaTerminos;
    private final Boolean aceptaVideoconferencia;
    private final List<DireccionRequest> direccion;
    private final String fechaNacimiento;
    private final String genero;
    private final List<Long> idSituaciones;
    private final Long idUsuario;
    private final String telefono;
    private final List<TutorRequestDTO> tutores;
    private final UsuarioRequest usuario;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PacienteRequest copy$default(PacienteRequest pacienteRequest, Long l, String str, String str2, String str3, UsuarioRequest usuarioRequest, boolean z, Boolean bool, Boolean bool2, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            l = pacienteRequest.idUsuario;
        }
        if ((i & 2) != 0) {
            str = pacienteRequest.fechaNacimiento;
        }
        if ((i & 4) != 0) {
            str2 = pacienteRequest.genero;
        }
        if ((i & 8) != 0) {
            str3 = pacienteRequest.telefono;
        }
        if ((i & 16) != 0) {
            usuarioRequest = pacienteRequest.usuario;
        }
        if ((i & 32) != 0) {
            z = pacienteRequest.aceptaTerminos;
        }
        if ((i & 64) != 0) {
            bool = pacienteRequest.aceptaVideoconferencia;
        }
        if ((i & 128) != 0) {
            bool2 = pacienteRequest.aceptaComunicacion;
        }
        if ((i & 256) != 0) {
            list = pacienteRequest.idSituaciones;
        }
        if ((i & 512) != 0) {
            list2 = pacienteRequest.tutores;
        }
        if ((i & 1024) != 0) {
            list3 = pacienteRequest.direccion;
        }
        List list4 = list2;
        List list5 = list3;
        Boolean bool3 = bool2;
        List list6 = list;
        boolean z2 = z;
        Boolean bool4 = bool;
        UsuarioRequest usuarioRequest2 = usuarioRequest;
        String str4 = str2;
        return pacienteRequest.copy(l, str, str4, str3, usuarioRequest2, z2, bool4, bool3, list6, list4, list5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdUsuario() {
        return this.idUsuario;
    }

    public final List<TutorRequestDTO> component10() {
        return this.tutores;
    }

    public final List<DireccionRequest> component11() {
        return this.direccion;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGenero() {
        return this.genero;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UsuarioRequest getUsuario() {
        return this.usuario;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getAceptaTerminos() {
        return this.aceptaTerminos;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getAceptaVideoconferencia() {
        return this.aceptaVideoconferencia;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Boolean getAceptaComunicacion() {
        return this.aceptaComunicacion;
    }

    public final List<Long> component9() {
        return this.idSituaciones;
    }

    public final PacienteRequest copy(Long idUsuario, String fechaNacimiento, String genero, String telefono, UsuarioRequest usuario, boolean aceptaTerminos, Boolean aceptaVideoconferencia, Boolean aceptaComunicacion, List<Long> idSituaciones, List<TutorRequestDTO> tutores, List<DireccionRequest> direccion) {
        Intrinsics.checkNotNullParameter(fechaNacimiento, "fechaNacimiento");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(usuario, "usuario");
        Intrinsics.checkNotNullParameter(idSituaciones, "idSituaciones");
        Intrinsics.checkNotNullParameter(tutores, "tutores");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        return new PacienteRequest(idUsuario, fechaNacimiento, genero, telefono, usuario, aceptaTerminos, aceptaVideoconferencia, aceptaComunicacion, idSituaciones, tutores, direccion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PacienteRequest)) {
            return false;
        }
        PacienteRequest pacienteRequest = (PacienteRequest) other;
        return Intrinsics.areEqual(this.idUsuario, pacienteRequest.idUsuario) && Intrinsics.areEqual(this.fechaNacimiento, pacienteRequest.fechaNacimiento) && Intrinsics.areEqual(this.genero, pacienteRequest.genero) && Intrinsics.areEqual(this.telefono, pacienteRequest.telefono) && Intrinsics.areEqual(this.usuario, pacienteRequest.usuario) && this.aceptaTerminos == pacienteRequest.aceptaTerminos && Intrinsics.areEqual(this.aceptaVideoconferencia, pacienteRequest.aceptaVideoconferencia) && Intrinsics.areEqual(this.aceptaComunicacion, pacienteRequest.aceptaComunicacion) && Intrinsics.areEqual(this.idSituaciones, pacienteRequest.idSituaciones) && Intrinsics.areEqual(this.tutores, pacienteRequest.tutores) && Intrinsics.areEqual(this.direccion, pacienteRequest.direccion);
    }

    public int hashCode() {
        return ((((((((((((((((((((this.idUsuario == null ? 0 : this.idUsuario.hashCode()) * 31) + this.fechaNacimiento.hashCode()) * 31) + this.genero.hashCode()) * 31) + this.telefono.hashCode()) * 31) + this.usuario.hashCode()) * 31) + Boolean.hashCode(this.aceptaTerminos)) * 31) + (this.aceptaVideoconferencia == null ? 0 : this.aceptaVideoconferencia.hashCode())) * 31) + (this.aceptaComunicacion != null ? this.aceptaComunicacion.hashCode() : 0)) * 31) + this.idSituaciones.hashCode()) * 31) + this.tutores.hashCode()) * 31) + this.direccion.hashCode();
    }

    public String toString() {
        return "PacienteRequest(idUsuario=" + this.idUsuario + ", fechaNacimiento=" + this.fechaNacimiento + ", genero=" + this.genero + ", telefono=" + this.telefono + ", usuario=" + this.usuario + ", aceptaTerminos=" + this.aceptaTerminos + ", aceptaVideoconferencia=" + this.aceptaVideoconferencia + ", aceptaComunicacion=" + this.aceptaComunicacion + ", idSituaciones=" + this.idSituaciones + ", tutores=" + this.tutores + ", direccion=" + this.direccion + ")";
    }

    public PacienteRequest(Long idUsuario, String fechaNacimiento, String genero, String telefono, UsuarioRequest usuario, boolean aceptaTerminos, Boolean aceptaVideoconferencia, Boolean aceptaComunicacion, List<Long> idSituaciones, List<TutorRequestDTO> tutores, List<DireccionRequest> direccion) {
        Intrinsics.checkNotNullParameter(fechaNacimiento, "fechaNacimiento");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(usuario, "usuario");
        Intrinsics.checkNotNullParameter(idSituaciones, "idSituaciones");
        Intrinsics.checkNotNullParameter(tutores, "tutores");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        this.idUsuario = idUsuario;
        this.fechaNacimiento = fechaNacimiento;
        this.genero = genero;
        this.telefono = telefono;
        this.usuario = usuario;
        this.aceptaTerminos = aceptaTerminos;
        this.aceptaVideoconferencia = aceptaVideoconferencia;
        this.aceptaComunicacion = aceptaComunicacion;
        this.idSituaciones = idSituaciones;
        this.tutores = tutores;
        this.direccion = direccion;
    }

    public /* synthetic */ PacienteRequest(Long l, String str, String str2, String str3, UsuarioRequest usuarioRequest, boolean z, Boolean bool, Boolean bool2, List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, str, str2, str3, usuarioRequest, z, bool, bool2, list, list2, list3);
    }

    public final Long getIdUsuario() {
        return this.idUsuario;
    }

    public final String getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final String getGenero() {
        return this.genero;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final UsuarioRequest getUsuario() {
        return this.usuario;
    }

    public final boolean getAceptaTerminos() {
        return this.aceptaTerminos;
    }

    public final Boolean getAceptaVideoconferencia() {
        return this.aceptaVideoconferencia;
    }

    public final Boolean getAceptaComunicacion() {
        return this.aceptaComunicacion;
    }

    public final List<Long> getIdSituaciones() {
        return this.idSituaciones;
    }

    public final List<TutorRequestDTO> getTutores() {
        return this.tutores;
    }

    public final List<DireccionRequest> getDireccion() {
        return this.direccion;
    }
}
