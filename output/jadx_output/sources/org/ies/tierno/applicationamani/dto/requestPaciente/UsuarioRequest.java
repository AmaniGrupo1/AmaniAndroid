package org.ies.tierno.applicationamani.dto.requestPaciente;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.enumm.Rol;

/* JADX INFO: compiled from: UsuarioRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001cJb\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020\r2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;", "", TtmlNode.ATTR_ID, "", "nombre", "", "dni", "apellido", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "rol", "Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;", "activo", "", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)V", "getId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getNombre", "()Ljava/lang/String;", "getDni", "getApellido", "getEmail", "getPassword", "getRol", "()Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;", "getActivo", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class UsuarioRequest {
    public static final int $stable = 0;
    private final Boolean activo;
    private final String apellido;
    private final String dni;
    private final String email;
    private final Long id;
    private final String nombre;
    private final String password;
    private final Rol rol;

    public static /* synthetic */ UsuarioRequest copy$default(UsuarioRequest usuarioRequest, Long l, String str, String str2, String str3, String str4, String str5, Rol rol, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            l = usuarioRequest.id;
        }
        if ((i & 2) != 0) {
            str = usuarioRequest.nombre;
        }
        if ((i & 4) != 0) {
            str2 = usuarioRequest.dni;
        }
        if ((i & 8) != 0) {
            str3 = usuarioRequest.apellido;
        }
        if ((i & 16) != 0) {
            str4 = usuarioRequest.email;
        }
        if ((i & 32) != 0) {
            str5 = usuarioRequest.password;
        }
        if ((i & 64) != 0) {
            rol = usuarioRequest.rol;
        }
        if ((i & 128) != 0) {
            bool = usuarioRequest.activo;
        }
        Rol rol2 = rol;
        Boolean bool2 = bool;
        String str6 = str4;
        String str7 = str5;
        return usuarioRequest.copy(l, str, str2, str3, str6, str7, rol2, bool2);
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
    public final String getDni() {
        return this.dni;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getApellido() {
        return this.apellido;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Rol getRol() {
        return this.rol;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Boolean getActivo() {
        return this.activo;
    }

    public final UsuarioRequest copy(Long id, String nombre, String dni, String apellido, String email, String password, Rol rol, Boolean activo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(rol, "rol");
        return new UsuarioRequest(id, nombre, dni, apellido, email, password, rol, activo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UsuarioRequest)) {
            return false;
        }
        UsuarioRequest usuarioRequest = (UsuarioRequest) other;
        return Intrinsics.areEqual(this.id, usuarioRequest.id) && Intrinsics.areEqual(this.nombre, usuarioRequest.nombre) && Intrinsics.areEqual(this.dni, usuarioRequest.dni) && Intrinsics.areEqual(this.apellido, usuarioRequest.apellido) && Intrinsics.areEqual(this.email, usuarioRequest.email) && Intrinsics.areEqual(this.password, usuarioRequest.password) && this.rol == usuarioRequest.rol && Intrinsics.areEqual(this.activo, usuarioRequest.activo);
    }

    public int hashCode() {
        return ((((((((((((((this.id == null ? 0 : this.id.hashCode()) * 31) + this.nombre.hashCode()) * 31) + this.dni.hashCode()) * 31) + this.apellido.hashCode()) * 31) + this.email.hashCode()) * 31) + this.password.hashCode()) * 31) + this.rol.hashCode()) * 31) + (this.activo != null ? this.activo.hashCode() : 0);
    }

    public String toString() {
        return "UsuarioRequest(id=" + this.id + ", nombre=" + this.nombre + ", dni=" + this.dni + ", apellido=" + this.apellido + ", email=" + this.email + ", password=" + this.password + ", rol=" + this.rol + ", activo=" + this.activo + ")";
    }

    public UsuarioRequest(Long id, String nombre, String dni, String apellido, String email, String password, Rol rol, Boolean activo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(apellido, "apellido");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(rol, "rol");
        this.id = id;
        this.nombre = nombre;
        this.dni = dni;
        this.apellido = apellido;
        this.email = email;
        this.password = password;
        this.rol = rol;
        this.activo = activo;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ UsuarioRequest(Long l, String str, String str2, String str3, String str4, String str5, Rol rol, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Boolean bool2;
        l = (i & 1) != 0 ? null : l;
        if ((i & 128) == 0) {
            bool2 = bool;
        } else {
            bool2 = true;
        }
        this(l, str, str2, str3, str4, str5, rol, bool2);
    }

    public final Long getId() {
        return this.id;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getDni() {
        return this.dni;
    }

    public final String getApellido() {
        return this.apellido;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getPassword() {
        return this.password;
    }

    public final Rol getRol() {
        return this.rol;
    }

    public final Boolean getActivo() {
        return this.activo;
    }
}
