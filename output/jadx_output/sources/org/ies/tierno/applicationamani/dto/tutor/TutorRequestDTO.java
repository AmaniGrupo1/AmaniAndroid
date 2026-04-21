package org.ies.tierno.applicationamani.dto.tutor;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TutorRequestDTO.kt */
/* JADX INFO: loaded from: classes12.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;", "", "nombre", "", "telefono", "email", "dni", "tipo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNombre", "()Ljava/lang/String;", "getTelefono", "getEmail", "getDni", "getTipo", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TutorRequestDTO {
    public static final int $stable = 0;
    private final String dni;
    private final String email;
    private final String nombre;
    private final String telefono;
    private final String tipo;

    public static /* synthetic */ TutorRequestDTO copy$default(TutorRequestDTO tutorRequestDTO, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tutorRequestDTO.nombre;
        }
        if ((i & 2) != 0) {
            str2 = tutorRequestDTO.telefono;
        }
        if ((i & 4) != 0) {
            str3 = tutorRequestDTO.email;
        }
        if ((i & 8) != 0) {
            str4 = tutorRequestDTO.dni;
        }
        if ((i & 16) != 0) {
            str5 = tutorRequestDTO.tipo;
        }
        String str6 = str5;
        String str7 = str3;
        return tutorRequestDTO.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTelefono() {
        return this.telefono;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDni() {
        return this.dni;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTipo() {
        return this.tipo;
    }

    public final TutorRequestDTO copy(String nombre, String telefono, String email, String dni, String tipo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        return new TutorRequestDTO(nombre, telefono, email, dni, tipo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TutorRequestDTO)) {
            return false;
        }
        TutorRequestDTO tutorRequestDTO = (TutorRequestDTO) other;
        return Intrinsics.areEqual(this.nombre, tutorRequestDTO.nombre) && Intrinsics.areEqual(this.telefono, tutorRequestDTO.telefono) && Intrinsics.areEqual(this.email, tutorRequestDTO.email) && Intrinsics.areEqual(this.dni, tutorRequestDTO.dni) && Intrinsics.areEqual(this.tipo, tutorRequestDTO.tipo);
    }

    public int hashCode() {
        return (((((((this.nombre.hashCode() * 31) + this.telefono.hashCode()) * 31) + this.email.hashCode()) * 31) + this.dni.hashCode()) * 31) + this.tipo.hashCode();
    }

    public String toString() {
        return "TutorRequestDTO(nombre=" + this.nombre + ", telefono=" + this.telefono + ", email=" + this.email + ", dni=" + this.dni + ", tipo=" + this.tipo + ")";
    }

    public TutorRequestDTO(String nombre, String telefono, String email, String dni, String tipo) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(telefono, "telefono");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(dni, "dni");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        this.nombre = nombre;
        this.telefono = telefono;
        this.email = email;
        this.dni = dni;
        this.tipo = tipo;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getTelefono() {
        return this.telefono;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getDni() {
        return this.dni;
    }

    public final String getTipo() {
        return this.tipo;
    }
}
