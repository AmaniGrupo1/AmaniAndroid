package org.ies.tierno.applicationamani.dto.perfil;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UsuarioProfileResponseDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003JJ\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006 "}, d2 = {"Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;", "", "idUsuario", "", "nombre", "", "apellido", "email", "fotoPerfilUrl", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdUsuario", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getNombre", "()Ljava/lang/String;", "getApellido", "getEmail", "getFotoPerfilUrl", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class UsuarioProfileResponseDTO {
    public static final int $stable = 0;
    private final String apellido;
    private final String email;
    private final String fotoPerfilUrl;
    private final Long idUsuario;
    private final String nombre;

    public UsuarioProfileResponseDTO() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ UsuarioProfileResponseDTO copy$default(UsuarioProfileResponseDTO usuarioProfileResponseDTO, Long l, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            l = usuarioProfileResponseDTO.idUsuario;
        }
        if ((i & 2) != 0) {
            str = usuarioProfileResponseDTO.nombre;
        }
        if ((i & 4) != 0) {
            str2 = usuarioProfileResponseDTO.apellido;
        }
        if ((i & 8) != 0) {
            str3 = usuarioProfileResponseDTO.email;
        }
        if ((i & 16) != 0) {
            str4 = usuarioProfileResponseDTO.fotoPerfilUrl;
        }
        String str5 = str4;
        String str6 = str2;
        return usuarioProfileResponseDTO.copy(l, str, str6, str3, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdUsuario() {
        return this.idUsuario;
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
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFotoPerfilUrl() {
        return this.fotoPerfilUrl;
    }

    public final UsuarioProfileResponseDTO copy(Long idUsuario, String nombre, String apellido, String email, String fotoPerfilUrl) {
        return new UsuarioProfileResponseDTO(idUsuario, nombre, apellido, email, fotoPerfilUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UsuarioProfileResponseDTO)) {
            return false;
        }
        UsuarioProfileResponseDTO usuarioProfileResponseDTO = (UsuarioProfileResponseDTO) other;
        return Intrinsics.areEqual(this.idUsuario, usuarioProfileResponseDTO.idUsuario) && Intrinsics.areEqual(this.nombre, usuarioProfileResponseDTO.nombre) && Intrinsics.areEqual(this.apellido, usuarioProfileResponseDTO.apellido) && Intrinsics.areEqual(this.email, usuarioProfileResponseDTO.email) && Intrinsics.areEqual(this.fotoPerfilUrl, usuarioProfileResponseDTO.fotoPerfilUrl);
    }

    public int hashCode() {
        return ((((((((this.idUsuario == null ? 0 : this.idUsuario.hashCode()) * 31) + (this.nombre == null ? 0 : this.nombre.hashCode())) * 31) + (this.apellido == null ? 0 : this.apellido.hashCode())) * 31) + (this.email == null ? 0 : this.email.hashCode())) * 31) + (this.fotoPerfilUrl != null ? this.fotoPerfilUrl.hashCode() : 0);
    }

    public String toString() {
        return "UsuarioProfileResponseDTO(idUsuario=" + this.idUsuario + ", nombre=" + this.nombre + ", apellido=" + this.apellido + ", email=" + this.email + ", fotoPerfilUrl=" + this.fotoPerfilUrl + ")";
    }

    public UsuarioProfileResponseDTO(Long idUsuario, String nombre, String apellido, String email, String fotoPerfilUrl) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.fotoPerfilUrl = fotoPerfilUrl;
    }

    public /* synthetic */ UsuarioProfileResponseDTO(Long l, String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4);
    }

    public final Long getIdUsuario() {
        return this.idUsuario;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getApellido() {
        return this.apellido;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFotoPerfilUrl() {
        return this.fotoPerfilUrl;
    }
}
