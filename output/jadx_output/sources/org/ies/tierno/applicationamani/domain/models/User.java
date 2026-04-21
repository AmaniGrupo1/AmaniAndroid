package org.ies.tierno.applicationamani.domain.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: User.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003JE\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/User;", "", "nombre", "", "apellidos", "genero", "direccion", "telefono", "codigoPostal", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNombre", "()Ljava/lang/String;", "getApellidos", "getGenero", "getDireccion", "getTelefono", "getCodigoPostal", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class User {
    public static final int $stable = 0;
    private final String apellidos;
    private final String codigoPostal;
    private final String direccion;
    private final String genero;
    private final String nombre;
    private final String telefono;

    public static /* synthetic */ User copy$default(User user, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = user.nombre;
        }
        if ((i & 2) != 0) {
            str2 = user.apellidos;
        }
        if ((i & 4) != 0) {
            str3 = user.genero;
        }
        if ((i & 8) != 0) {
            str4 = user.direccion;
        }
        if ((i & 16) != 0) {
            str5 = user.telefono;
        }
        if ((i & 32) != 0) {
            str6 = user.codigoPostal;
        }
        String str7 = str5;
        String str8 = str6;
        return user.copy(str, str2, str3, str4, str7, str8);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApellidos() {
        return this.apellidos;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGenero() {
        return this.genero;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDireccion() {
        return this.direccion;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCodigoPostal() {
        return this.codigoPostal;
    }

    public final User copy(String nombre, String apellidos, String genero, String direccion, String telefono, String codigoPostal) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellidos, "apellidos");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(codigoPostal, "codigoPostal");
        return new User(nombre, apellidos, genero, direccion, telefono, codigoPostal);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof User)) {
            return false;
        }
        User user = (User) other;
        return Intrinsics.areEqual(this.nombre, user.nombre) && Intrinsics.areEqual(this.apellidos, user.apellidos) && Intrinsics.areEqual(this.genero, user.genero) && Intrinsics.areEqual(this.direccion, user.direccion) && Intrinsics.areEqual(this.telefono, user.telefono) && Intrinsics.areEqual(this.codigoPostal, user.codigoPostal);
    }

    public int hashCode() {
        return (((((((((this.nombre.hashCode() * 31) + this.apellidos.hashCode()) * 31) + this.genero.hashCode()) * 31) + this.direccion.hashCode()) * 31) + this.telefono.hashCode()) * 31) + this.codigoPostal.hashCode();
    }

    public String toString() {
        return "User(nombre=" + this.nombre + ", apellidos=" + this.apellidos + ", genero=" + this.genero + ", direccion=" + this.direccion + ", telefono=" + this.telefono + ", codigoPostal=" + this.codigoPostal + ")";
    }

    public User(String nombre, String apellidos, String genero, String direccion, String telefono, String codigoPostal) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(apellidos, "apellidos");
        Intrinsics.checkNotNullParameter(genero, "genero");
        Intrinsics.checkNotNullParameter(direccion, "direccion");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(codigoPostal, "codigoPostal");
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.genero = genero;
        this.direccion = direccion;
        this.telefono = telefono;
        this.codigoPostal = codigoPostal;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getApellidos() {
        return this.apellidos;
    }

    public final String getGenero() {
        return this.genero;
    }

    public final String getDireccion() {
        return this.direccion;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final String getCodigoPostal() {
        return this.codigoPostal;
    }
}
