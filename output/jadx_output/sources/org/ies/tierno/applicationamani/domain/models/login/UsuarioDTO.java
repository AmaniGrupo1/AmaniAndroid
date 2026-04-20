package org.ies.tierno.applicationamani.domain.models.login;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UsuarioDTO.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0016JV\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\n2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016¨\u0006%"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/login/UsuarioDTO;", "", TtmlNode.ATTR_ID, "", "nombre", "", "apellido", "email", "rol", "activo", "", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getNombre", "()Ljava/lang/String;", "getApellido", "getEmail", "getRol", "getActivo", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/ies/tierno/applicationamani/domain/models/login/UsuarioDTO;", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class UsuarioDTO {
    public static final int $stable = 0;
    private final Boolean activo;
    private final String apellido;
    private final String email;

    @SerializedName(TtmlNode.ATTR_ID)
    private final Long id;
    private final String nombre;
    private final String rol;

    public UsuarioDTO() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ UsuarioDTO copy$default(UsuarioDTO usuarioDTO, Long l, String str, String str2, String str3, String str4, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            l = usuarioDTO.id;
        }
        if ((i & 2) != 0) {
            str = usuarioDTO.nombre;
        }
        if ((i & 4) != 0) {
            str2 = usuarioDTO.apellido;
        }
        if ((i & 8) != 0) {
            str3 = usuarioDTO.email;
        }
        if ((i & 16) != 0) {
            str4 = usuarioDTO.rol;
        }
        if ((i & 32) != 0) {
            bool = usuarioDTO.activo;
        }
        String str5 = str4;
        Boolean bool2 = bool;
        return usuarioDTO.copy(l, str, str2, str3, str5, bool2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getId() {
        return this.id;
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
    public final String getRol() {
        return this.rol;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Boolean getActivo() {
        return this.activo;
    }

    public final UsuarioDTO copy(Long id, String nombre, String apellido, String email, String rol, Boolean activo) {
        return new UsuarioDTO(id, nombre, apellido, email, rol, activo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UsuarioDTO)) {
            return false;
        }
        UsuarioDTO usuarioDTO = (UsuarioDTO) other;
        return Intrinsics.areEqual(this.id, usuarioDTO.id) && Intrinsics.areEqual(this.nombre, usuarioDTO.nombre) && Intrinsics.areEqual(this.apellido, usuarioDTO.apellido) && Intrinsics.areEqual(this.email, usuarioDTO.email) && Intrinsics.areEqual(this.rol, usuarioDTO.rol) && Intrinsics.areEqual(this.activo, usuarioDTO.activo);
    }

    public int hashCode() {
        return ((((((((((this.id == null ? 0 : this.id.hashCode()) * 31) + (this.nombre == null ? 0 : this.nombre.hashCode())) * 31) + (this.apellido == null ? 0 : this.apellido.hashCode())) * 31) + (this.email == null ? 0 : this.email.hashCode())) * 31) + (this.rol == null ? 0 : this.rol.hashCode())) * 31) + (this.activo != null ? this.activo.hashCode() : 0);
    }

    public String toString() {
        return "UsuarioDTO(id=" + this.id + ", nombre=" + this.nombre + ", apellido=" + this.apellido + ", email=" + this.email + ", rol=" + this.rol + ", activo=" + this.activo + ")";
    }

    public UsuarioDTO(Long id, String nombre, String apellido, String email, String rol, Boolean activo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.rol = rol;
        this.activo = activo;
    }

    public /* synthetic */ UsuarioDTO(Long l, String str, String str2, String str3, String str4, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : bool);
    }

    public final Long getId() {
        return this.id;
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

    public final String getRol() {
        return this.rol;
    }

    public final Boolean getActivo() {
        return this.activo;
    }
}
