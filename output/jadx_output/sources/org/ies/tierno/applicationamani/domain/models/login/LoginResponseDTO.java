package org.ies.tierno.applicationamani.domain.models.login;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoginResponseDTO.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013JN\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0013¨\u0006$"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "", "idUsuario", "", "nombre", "", "rol", "token", "idPsicologo", "idPaciente", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V", "getIdUsuario", "()J", "getNombre", "()Ljava/lang/String;", "getRol", "getToken", "getIdPsicologo", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getIdPaciente", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class LoginResponseDTO {
    public static final int $stable = 0;
    private final Long idPaciente;
    private final Long idPsicologo;
    private final long idUsuario;
    private final String nombre;
    private final String rol;
    private final String token;

    public static /* synthetic */ LoginResponseDTO copy$default(LoginResponseDTO loginResponseDTO, long j, String str, String str2, String str3, Long l, Long l2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = loginResponseDTO.idUsuario;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = loginResponseDTO.nombre;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = loginResponseDTO.rol;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = loginResponseDTO.token;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            l = loginResponseDTO.idPsicologo;
        }
        Long l3 = l;
        if ((i & 32) != 0) {
            l2 = loginResponseDTO.idPaciente;
        }
        return loginResponseDTO.copy(j2, str4, str5, str6, l3, l2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdUsuario() {
        return this.idUsuario;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRol() {
        return this.rol;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    public final LoginResponseDTO copy(long idUsuario, String nombre, String rol, String token, Long idPsicologo, Long idPaciente) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        Intrinsics.checkNotNullParameter(token, "token");
        return new LoginResponseDTO(idUsuario, nombre, rol, token, idPsicologo, idPaciente);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoginResponseDTO)) {
            return false;
        }
        LoginResponseDTO loginResponseDTO = (LoginResponseDTO) other;
        return this.idUsuario == loginResponseDTO.idUsuario && Intrinsics.areEqual(this.nombre, loginResponseDTO.nombre) && Intrinsics.areEqual(this.rol, loginResponseDTO.rol) && Intrinsics.areEqual(this.token, loginResponseDTO.token) && Intrinsics.areEqual(this.idPsicologo, loginResponseDTO.idPsicologo) && Intrinsics.areEqual(this.idPaciente, loginResponseDTO.idPaciente);
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.idUsuario) * 31) + this.nombre.hashCode()) * 31) + this.rol.hashCode()) * 31) + this.token.hashCode()) * 31) + (this.idPsicologo == null ? 0 : this.idPsicologo.hashCode())) * 31) + (this.idPaciente != null ? this.idPaciente.hashCode() : 0);
    }

    public String toString() {
        return "LoginResponseDTO(idUsuario=" + this.idUsuario + ", nombre=" + this.nombre + ", rol=" + this.rol + ", token=" + this.token + ", idPsicologo=" + this.idPsicologo + ", idPaciente=" + this.idPaciente + ")";
    }

    public LoginResponseDTO(long idUsuario, String nombre, String rol, String token, Long idPsicologo, Long idPaciente) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        Intrinsics.checkNotNullParameter(token, "token");
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.rol = rol;
        this.token = token;
        this.idPsicologo = idPsicologo;
        this.idPaciente = idPaciente;
    }

    public final long getIdUsuario() {
        return this.idUsuario;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getRol() {
        return this.rol;
    }

    public final String getToken() {
        return this.token;
    }

    public final Long getIdPsicologo() {
        return this.idPsicologo;
    }

    public final Long getIdPaciente() {
        return this.idPaciente;
    }
}
