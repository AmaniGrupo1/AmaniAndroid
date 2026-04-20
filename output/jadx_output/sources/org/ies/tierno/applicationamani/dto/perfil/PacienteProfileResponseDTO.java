package org.ies.tierno.applicationamani.dto.perfil;

import j$.time.LocalDate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PacienteProfileResponseDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015JL\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0010J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010 \u001a\u0004\b!\u0010\u000eR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\"\u001a\u0004\b#\u0010\u0010R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\"\u001a\u0004\b$\u0010\u0010R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010%\u001a\u0004\b&\u0010\u0013R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010'\u001a\u0004\b(\u0010\u0015¨\u0006)"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;", "", "", "idPaciente", "", "telefono", "genero", "j$/time/LocalDate", "fechaNacimiento", "Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;", "usuario", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDate;Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;)V", "component1", "()Ljava/lang/Long;", "component2", "()Ljava/lang/String;", "component3", "component4", "()Lj$/time/LocalDate;", "component5", "()Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDate;Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;)Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Long;", "getIdPaciente", "Ljava/lang/String;", "getTelefono", "getGenero", "Lj$/time/LocalDate;", "getFechaNacimiento", "Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;", "getUsuario", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PacienteProfileResponseDTO {
    public static final int $stable = 8;
    private final LocalDate fechaNacimiento;
    private final String genero;
    private final Long idPaciente;
    private final String telefono;
    private final UsuarioProfileResponseDTO usuario;

    public PacienteProfileResponseDTO() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ PacienteProfileResponseDTO copy$default(PacienteProfileResponseDTO pacienteProfileResponseDTO, Long l, String str, String str2, LocalDate localDate, UsuarioProfileResponseDTO usuarioProfileResponseDTO, int i, Object obj) {
        if ((i & 1) != 0) {
            l = pacienteProfileResponseDTO.idPaciente;
        }
        if ((i & 2) != 0) {
            str = pacienteProfileResponseDTO.telefono;
        }
        if ((i & 4) != 0) {
            str2 = pacienteProfileResponseDTO.genero;
        }
        if ((i & 8) != 0) {
            localDate = pacienteProfileResponseDTO.fechaNacimiento;
        }
        if ((i & 16) != 0) {
            usuarioProfileResponseDTO = pacienteProfileResponseDTO.usuario;
        }
        UsuarioProfileResponseDTO usuarioProfileResponseDTO2 = usuarioProfileResponseDTO;
        String str3 = str2;
        return pacienteProfileResponseDTO.copy(l, str, str3, localDate, usuarioProfileResponseDTO2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGenero() {
        return this.genero;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final LocalDate getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UsuarioProfileResponseDTO getUsuario() {
        return this.usuario;
    }

    public final PacienteProfileResponseDTO copy(Long idPaciente, String telefono, String genero, LocalDate fechaNacimiento, UsuarioProfileResponseDTO usuario) {
        return new PacienteProfileResponseDTO(idPaciente, telefono, genero, fechaNacimiento, usuario);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PacienteProfileResponseDTO)) {
            return false;
        }
        PacienteProfileResponseDTO pacienteProfileResponseDTO = (PacienteProfileResponseDTO) other;
        return Intrinsics.areEqual(this.idPaciente, pacienteProfileResponseDTO.idPaciente) && Intrinsics.areEqual(this.telefono, pacienteProfileResponseDTO.telefono) && Intrinsics.areEqual(this.genero, pacienteProfileResponseDTO.genero) && Intrinsics.areEqual(this.fechaNacimiento, pacienteProfileResponseDTO.fechaNacimiento) && Intrinsics.areEqual(this.usuario, pacienteProfileResponseDTO.usuario);
    }

    public int hashCode() {
        return ((((((((this.idPaciente == null ? 0 : this.idPaciente.hashCode()) * 31) + (this.telefono == null ? 0 : this.telefono.hashCode())) * 31) + (this.genero == null ? 0 : this.genero.hashCode())) * 31) + (this.fechaNacimiento == null ? 0 : this.fechaNacimiento.hashCode())) * 31) + (this.usuario != null ? this.usuario.hashCode() : 0);
    }

    public String toString() {
        return "PacienteProfileResponseDTO(idPaciente=" + this.idPaciente + ", telefono=" + this.telefono + ", genero=" + this.genero + ", fechaNacimiento=" + this.fechaNacimiento + ", usuario=" + this.usuario + ")";
    }

    public PacienteProfileResponseDTO(Long idPaciente, String telefono, String genero, LocalDate fechaNacimiento, UsuarioProfileResponseDTO usuario) {
        this.idPaciente = idPaciente;
        this.telefono = telefono;
        this.genero = genero;
        this.fechaNacimiento = fechaNacimiento;
        this.usuario = usuario;
    }

    public /* synthetic */ PacienteProfileResponseDTO(Long l, String str, String str2, LocalDate localDate, UsuarioProfileResponseDTO usuarioProfileResponseDTO, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : localDate, (i & 16) != 0 ? null : usuarioProfileResponseDTO);
    }

    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final String getGenero() {
        return this.genero;
    }

    public final LocalDate getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final UsuarioProfileResponseDTO getUsuario() {
        return this.usuario;
    }
}
